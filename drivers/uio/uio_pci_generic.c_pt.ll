; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_pci_generic.c_pt.bc'
source_filename = "../drivers/uio/uio_pci_generic.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.uio_pci_generic_dev = type { %struct.uio_info, ptr }

@__initcall__kmod_uio_pci_generic__236_145_uio_pci_driver_init6 = internal global ptr @uio_pci_driver_init, section ".initcall6.init", align 4
@uio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr null, ptr @probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_uio_pci_driver_exit = internal global ptr @uio_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version237 = internal constant [31 x i8] c"uio_pci_generic.version=0.01.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uio_pci_generic\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.01.0\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file238 = internal constant [49 x i8] c"uio_pci_generic.file=drivers/uio/uio_pci_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [31 x i8] c"uio_pci_generic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [59 x i8] c"uio_pci_generic.author=Michael S. Tsirkin <mst@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [67 x i8] c"uio_pci_generic.description=Generic UIO driver for PCI 2.3 devices\00", section ".modinfo", align 1
@probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 82, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: pci_enable_device failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/uio/uio_pci_generic.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@probe._entry_ptr = internal global ptr @probe._entry, section ".printk_index", align 4
@probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 103, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"No IRQ assigned to device: no support for interrupts?\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@probe._entry_ptr.11 = internal global ptr @probe._entry.8, section ".printk_index", align 4
@probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 117, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device has more than 5 I/O memory resources.\0A\00", [50 x i8] zeroinitializer }, align 32
@probe._entry_ptr.14 = internal global ptr @probe._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"uio_pci_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 139, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 146, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 81, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 102, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [33 x i8] c"../drivers/uio/uio_pci_generic.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 114, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_version237, ptr @__exitcall_uio_pci_driver_exit, ptr @__initcall__kmod_uio_pci_generic__236_145_uio_pci_driver_init6, ptr @__modver_attr, ptr @probe._entry, ptr @probe._entry.12, ptr @probe._entry.8, ptr @probe._entry_ptr, ptr @probe._entry_ptr.11, ptr @probe._entry_ptr.14, ptr @uio_pci_driver_exit, ptr @uio_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @uio_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uio_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @uio_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call) #7
  br label %cleanup61

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %broken_intx_masking.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %2 = ptrtoint ptr %broken_intx_masking.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i = load i40, ptr %broken_intx_masking.i, align 1
  %3 = and i40 %bf.load.i, 1024
  %tobool.not.i = icmp eq i40 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup61_crit_edge

land.lhs.true.cleanup61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup61

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 288, i32 noundef 3520) #4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup61_crit_edge, label %if.end9

if.end4.cleanup61_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup61

if.end9:                                          ; preds = %if.end4
  %name = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %name, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %version, align 4
  %release = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @release, ptr %release, align 4
  %pdev12 = getelementptr inbounds %struct.uio_pci_generic_dev, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %pdev12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev12, align 4
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then17 [
    i32 0, label %if.end9.do.end25_crit_edge
    i32 -2147483648, label %if.end9.do.end25_crit_edge119
  ]

if.end9.do.end25_crit_edge119:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

if.end9.do.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %irq20 = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %irq20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %irq20, align 4
  %irq_flags = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %irq_flags, align 4
  %handler = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @irqhandler, ptr %handler, align 4
  br label %if.end27

do.end25:                                         ; preds = %if.end9.do.end25_crit_edge, %if.end9.do.end25_crit_edge119
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.9) #7
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.then17
  %mem = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3
  %arrayidx36 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 4
  %arrayidx30 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %15)
  %cmp31.not = icmp eq i32 %15, 262656
  br i1 %cmp31.not, label %if.end33, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end33:                                         ; preds = %if.end27
  %cmp37.not = icmp ult ptr %mem, %arrayidx36
  br i1 %cmp37.not, label %if.end43, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %memtype = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %16 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %memtype, align 4
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30, align 4
  %and = and i32 %18, -4096
  %addr = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %addr, align 4
  %and45 = and i32 %18, 4095
  %offs = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and45, ptr %offs, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %add.i = or i32 %and45, 4096
  %add = add i32 %add.i, %22
  %sub = sub i32 %add, %18
  %and49 = and i32 %sub, -4096
  %size = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and49, ptr %size, align 4
  %name50 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 2
  %24 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name50, align 4
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %mem, align 4
  %incdec.ptr = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1
  br label %for.inc

cleanup:                                          ; preds = %if.end33.4.cleanup_crit_edge, %if.end33.3.cleanup_crit_edge, %if.end33.2.cleanup_crit_edge, %if.end33.1.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  %uiomem.0113.lcssa = phi ptr [ %mem, %if.end33.cleanup_crit_edge ], [ %uiomem.1.ph, %if.end33.1.cleanup_crit_edge ], [ %uiomem.1.ph.1, %if.end33.2.cleanup_crit_edge ], [ %uiomem.1.ph.2, %if.end33.3.cleanup_crit_edge ], [ %uiomem.1.ph.3, %if.end33.4.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.13) #7
  br label %for.end

for.inc:                                          ; preds = %if.end43, %if.end27.for.inc_crit_edge
  %uiomem.1.ph = phi ptr [ %mem, %if.end27.for.inc_crit_edge ], [ %incdec.ptr, %if.end43 ]
  %arrayidx30.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %flags.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %27 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %28)
  %cmp31.not.1 = icmp eq i32 %28, 262656
  br i1 %cmp31.not.1, label %if.end33.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end33.1:                                       ; preds = %for.inc
  %cmp37.not.1 = icmp ult ptr %uiomem.1.ph, %arrayidx36
  br i1 %cmp37.not.1, label %if.end43.1, label %if.end33.1.cleanup_crit_edge

if.end33.1.cleanup_crit_edge:                     ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43.1:                                       ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #6
  %memtype.1 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph, i32 0, i32 4
  %29 = ptrtoint ptr %memtype.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %memtype.1, align 4
  %30 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30.1, align 4
  %and.1 = and i32 %31, -4096
  %addr.1 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph, i32 0, i32 1
  %32 = ptrtoint ptr %addr.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.1, ptr %addr.1, align 4
  %and45.1 = and i32 %31, 4095
  %offs.1 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph, i32 0, i32 2
  %33 = ptrtoint ptr %offs.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and45.1, ptr %offs.1, align 4
  %end.i.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %34 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i.1, align 4
  %add.i.1 = or i32 %and45.1, 4096
  %add.1 = add i32 %add.i.1, %35
  %sub.1 = sub i32 %add.1, %31
  %and49.1 = and i32 %sub.1, -4096
  %size.1 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph, i32 0, i32 3
  %36 = ptrtoint ptr %size.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and49.1, ptr %size.1, align 4
  %name50.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 2
  %37 = ptrtoint ptr %name50.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name50.1, align 4
  %39 = ptrtoint ptr %uiomem.1.ph to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %uiomem.1.ph, align 4
  %incdec.ptr.1 = getelementptr %struct.uio_mem, ptr %uiomem.1.ph, i32 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end43.1, %for.inc.for.inc.1_crit_edge
  %uiomem.1.ph.1 = phi ptr [ %uiomem.1.ph, %for.inc.for.inc.1_crit_edge ], [ %incdec.ptr.1, %if.end43.1 ]
  %arrayidx30.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %flags.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %40 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %41)
  %cmp31.not.2 = icmp eq i32 %41, 262656
  br i1 %cmp31.not.2, label %if.end33.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.end33.2:                                       ; preds = %for.inc.1
  %cmp37.not.2 = icmp ult ptr %uiomem.1.ph.1, %arrayidx36
  br i1 %cmp37.not.2, label %if.end43.2, label %if.end33.2.cleanup_crit_edge

if.end33.2.cleanup_crit_edge:                     ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43.2:                                       ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #6
  %memtype.2 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.1, i32 0, i32 4
  %42 = ptrtoint ptr %memtype.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %memtype.2, align 4
  %43 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx30.2, align 4
  %and.2 = and i32 %44, -4096
  %addr.2 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.1, i32 0, i32 1
  %45 = ptrtoint ptr %addr.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and.2, ptr %addr.2, align 4
  %46 = load i32, ptr %arrayidx30.2, align 4
  %and45.2 = and i32 %46, 4095
  %offs.2 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.1, i32 0, i32 2
  %47 = ptrtoint ptr %offs.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and45.2, ptr %offs.2, align 4
  %end.i.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %48 = ptrtoint ptr %end.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end.i.2, align 4
  %50 = load i32, ptr %arrayidx30.2, align 4
  %add.i.2 = or i32 %and45.2, 4096
  %add.2 = add i32 %add.i.2, %49
  %sub.2 = sub i32 %add.2, %50
  %and49.2 = and i32 %sub.2, -4096
  %size.2 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.1, i32 0, i32 3
  %51 = ptrtoint ptr %size.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and49.2, ptr %size.2, align 4
  %name50.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 2
  %52 = ptrtoint ptr %name50.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name50.2, align 4
  %54 = ptrtoint ptr %uiomem.1.ph.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %uiomem.1.ph.1, align 4
  %incdec.ptr.2 = getelementptr %struct.uio_mem, ptr %uiomem.1.ph.1, i32 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end43.2, %for.inc.1.for.inc.2_crit_edge
  %uiomem.1.ph.2 = phi ptr [ %uiomem.1.ph.1, %for.inc.1.for.inc.2_crit_edge ], [ %incdec.ptr.2, %if.end43.2 ]
  %arrayidx30.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %flags.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %55 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %56)
  %cmp31.not.3 = icmp eq i32 %56, 262656
  br i1 %cmp31.not.3, label %if.end33.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.end33.3:                                       ; preds = %for.inc.2
  %cmp37.not.3 = icmp ult ptr %uiomem.1.ph.2, %arrayidx36
  br i1 %cmp37.not.3, label %if.end43.3, label %if.end33.3.cleanup_crit_edge

if.end33.3.cleanup_crit_edge:                     ; preds = %if.end33.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43.3:                                       ; preds = %if.end33.3
  call void @__sanitizer_cov_trace_pc() #6
  %memtype.3 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.2, i32 0, i32 4
  %57 = ptrtoint ptr %memtype.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %memtype.3, align 4
  %58 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx30.3, align 4
  %and.3 = and i32 %59, -4096
  %addr.3 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.2, i32 0, i32 1
  %60 = ptrtoint ptr %addr.3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and.3, ptr %addr.3, align 4
  %61 = load i32, ptr %arrayidx30.3, align 4
  %and45.3 = and i32 %61, 4095
  %offs.3 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.2, i32 0, i32 2
  %62 = ptrtoint ptr %offs.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and45.3, ptr %offs.3, align 4
  %end.i.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %63 = ptrtoint ptr %end.i.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %end.i.3, align 4
  %65 = load i32, ptr %arrayidx30.3, align 4
  %add.i.3 = or i32 %and45.3, 4096
  %add.3 = add i32 %add.i.3, %64
  %sub.3 = sub i32 %add.3, %65
  %and49.3 = and i32 %sub.3, -4096
  %size.3 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.2, i32 0, i32 3
  %66 = ptrtoint ptr %size.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and49.3, ptr %size.3, align 4
  %name50.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 2
  %67 = ptrtoint ptr %name50.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name50.3, align 4
  %69 = ptrtoint ptr %uiomem.1.ph.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %uiomem.1.ph.2, align 4
  %incdec.ptr.3 = getelementptr %struct.uio_mem, ptr %uiomem.1.ph.2, i32 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end43.3, %for.inc.2.for.inc.3_crit_edge
  %uiomem.1.ph.3 = phi ptr [ %uiomem.1.ph.2, %for.inc.2.for.inc.3_crit_edge ], [ %incdec.ptr.3, %if.end43.3 ]
  %arrayidx30.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %flags.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %70 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %71)
  %cmp31.not.4 = icmp eq i32 %71, 262656
  br i1 %cmp31.not.4, label %if.end33.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end33.4:                                       ; preds = %for.inc.3
  %cmp37.not.4 = icmp ult ptr %uiomem.1.ph.3, %arrayidx36
  br i1 %cmp37.not.4, label %if.end43.4, label %if.end33.4.cleanup_crit_edge

if.end33.4.cleanup_crit_edge:                     ; preds = %if.end33.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43.4:                                       ; preds = %if.end33.4
  call void @__sanitizer_cov_trace_pc() #6
  %memtype.4 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.3, i32 0, i32 4
  %72 = ptrtoint ptr %memtype.4 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %memtype.4, align 4
  %73 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx30.4, align 4
  %and.4 = and i32 %74, -4096
  %addr.4 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.3, i32 0, i32 1
  %75 = ptrtoint ptr %addr.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and.4, ptr %addr.4, align 4
  %76 = load i32, ptr %arrayidx30.4, align 4
  %and45.4 = and i32 %76, 4095
  %offs.4 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.3, i32 0, i32 2
  %77 = ptrtoint ptr %offs.4 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and45.4, ptr %offs.4, align 4
  %end.i.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %78 = ptrtoint ptr %end.i.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %end.i.4, align 4
  %80 = load i32, ptr %arrayidx30.4, align 4
  %add.i.4 = or i32 %and45.4, 4096
  %add.4 = add i32 %add.i.4, %79
  %sub.4 = sub i32 %add.4, %80
  %and49.4 = and i32 %sub.4, -4096
  %size.4 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.1.ph.3, i32 0, i32 3
  %81 = ptrtoint ptr %size.4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and49.4, ptr %size.4, align 4
  %name50.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 2
  %82 = ptrtoint ptr %name50.4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name50.4, align 4
  %84 = ptrtoint ptr %uiomem.1.ph.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %uiomem.1.ph.3, align 4
  %incdec.ptr.4 = getelementptr %struct.uio_mem, ptr %uiomem.1.ph.3, i32 1
  br label %for.end

for.end:                                          ; preds = %if.end43.4, %for.inc.3.for.end_crit_edge, %cleanup
  %uiomem.0112 = phi ptr [ %uiomem.0113.lcssa, %cleanup ], [ %uiomem.1.ph.3, %for.inc.3.for.end_crit_edge ], [ %incdec.ptr.4, %if.end43.4 ]
  %cmp55116 = icmp ult ptr %uiomem.0112, %arrayidx36
  br i1 %cmp55116, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %uiomem.3117 = phi ptr [ %incdec.ptr57, %while.body.while.body_crit_edge ], [ %uiomem.0112, %for.end.while.body_crit_edge ]
  %size56 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.3117, i32 0, i32 3
  %85 = ptrtoint ptr %size56 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %size56, align 4
  %incdec.ptr57 = getelementptr %struct.uio_mem, ptr %uiomem.3117, i32 1
  %cmp55 = icmp ult ptr %incdec.ptr57, %arrayidx36
  br i1 %cmp55, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %call60 = tail call i32 @__devm_uio_register_device(ptr noundef null, ptr noundef %dev5, ptr noundef nonnull %call.i) #4
  br label %cleanup61

cleanup61:                                        ; preds = %while.end, %if.end4.cleanup61_crit_edge, %land.lhs.true.cleanup61_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call60, %while.end ], [ -19, %land.lhs.true.cleanup61_crit_edge ], [ -12, %if.end4.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @release(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.uio_pci_generic_dev, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  tail call void @pci_clear_master(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqhandler(i32 noundef %irq, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.uio_pci_generic_dev, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %call1 = tail call zeroext i1 @pci_check_and_mask_intx(ptr noundef %1) #4
  %. = zext i1 %call1 to i32
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_check_and_mask_intx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_uio_pci_generic__236_145_uio_pci_driver_init6, !1, !"__initcall__kmod_uio_pci_generic__236_145_uio_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_pci_generic.c", i32 145, i32 1}
!2 = !{ptr @__exitcall_uio_pci_driver_exit, !1, !"__exitcall_uio_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version237, !4, !"__UNIQUE_ID_version237", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_pci_generic.c", i32 146, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file238, !10, !"__UNIQUE_ID_file238", i1 false, i1 false}
!10 = !{!"../drivers/uio/uio_pci_generic.c", i32 147, i32 1}
!11 = !{ptr @__UNIQUE_ID_license239, !10, !"__UNIQUE_ID_license239", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author240, !13, !"__UNIQUE_ID_author240", i1 false, i1 false}
!13 = !{!"../drivers/uio/uio_pci_generic.c", i32 148, i32 1}
!14 = !{ptr @__UNIQUE_ID_description241, !15, !"__UNIQUE_ID_description241", i1 false, i1 false}
!15 = !{!"../drivers/uio/uio_pci_generic.c", i32 149, i32 1}
!16 = !{ptr @uio_pci_driver, !17, !"uio_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/uio/uio_pci_generic.c", i32 139, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/uio/uio_pci_generic.c", i32 81, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/uio/uio_pci_generic.c", i32 102, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/uio/uio_pci_generic.c", i32 114, i32 4}
!33 = !{ptr @probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
