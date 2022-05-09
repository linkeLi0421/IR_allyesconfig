; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_sercos3.c_pt.bc'
source_filename = "../drivers/uio/uio_sercos3.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sercos3_priv = type { i32, %struct.spinlock }

@__initcall__kmod_uio_sercos3__236_223_sercos3_pci_driver_init6 = internal global ptr @sercos3_pci_driver_init, section ".initcall6.init", align 4
@sercos3_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sercos3_pci_ids, ptr @sercos3_pci_probe, ptr @sercos3_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sercos3_pci_driver_exit = internal global ptr @sercos3_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [72 x i8] c"uio_sercos3.description=UIO driver for the Automata Sercos III PCI card\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [59 x i8] c"uio_sercos3.author=John Ogness <john.ogness@linutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"uio_sercos3.file=drivers/uio/uio_sercos3\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"uio_sercos3.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uio_sercos3\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sercos3\00", [24 x i8] zeroinitializer }, align 32
@sercos3_pci_ids = internal global { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36912, i32 6513, i32 13616, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 6513, i32 13621, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 6513, i32 14208, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sercos3_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&priv->ier0_cache_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sercos_III_PCI\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"sercos3_pci_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 216, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 223, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 217, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"sercos3_pci_ids\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 194, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 153, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 155, i32 15 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [29 x i8] c"../drivers/uio/uio_sercos3.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 156, i32 18 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_sercos3_pci_driver_exit, ptr @__initcall__kmod_uio_sercos3__236_223_sercos3_pci_driver_init6, ptr @sercos3_pci_driver_exit, ptr @sercos3_pci_driver, ptr @.str, ptr @.str.1, ptr @sercos3_pci_ids, ptr @sercos3_pci_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sercos3_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sercos3_pci_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sercos3_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sercos3_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sercos3_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sercos3_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @sercos3_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sercos3_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 284, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i85 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #4
  %tobool4.not = icmp eq ptr %call.i85, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pci_enable_device(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_disable_crit_edge

if.end10.out_disable_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_disable

if.end14:                                         ; preds = %if.end10
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 8
  %addr.i = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end14.out_unmap_crit_edge, label %if.end.i

if.end14.out_unmap_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

if.end.i:                                         ; preds = %if.end14
  %end.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %4
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call.i86 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %cond.i) #4
  %internal_addr.i = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 5
  %5 = ptrtoint ptr %internal_addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i86, ptr %internal_addr.i, align 4
  %tobool21.not.i = icmp eq ptr %call.i86, null
  br i1 %tobool21.not.i, label %if.end.i.out_unmap_crit_edge, label %if.end23.i

if.end.i.out_unmap_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

if.end23.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27.i = icmp eq i32 %7, 0
  br i1 %cmp27.i, label %if.end23.i.if.end18_crit_edge, label %cond.false29.i

if.end23.i.if.end18_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

cond.false29.i:                                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 8
  %sub36.i = add i32 %7, 1
  %add37.i = sub i32 %sub36.i, %9
  br label %if.end18

if.end18:                                         ; preds = %cond.false29.i, %if.end23.i.if.end18_crit_edge
  %cond39.i = phi i32 [ %add37.i, %cond.false29.i ], [ 0, %if.end23.i.if.end18_crit_edge ]
  %size.i = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond39.i, ptr %size.i, align 4
  %memtype.i = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %11 = ptrtoint ptr %memtype.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %memtype.i, align 4
  %arrayidx.i87 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %12 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i87, align 8
  %addr.i88 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %14 = ptrtoint ptr %addr.i88 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %addr.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i89 = icmp eq i32 %13, 0
  br i1 %tobool.not.i89, label %if.end18.out_unmap_crit_edge, label %if.end.i98

if.end18.out_unmap_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

if.end.i98:                                       ; preds = %if.end18
  %end.i90 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 1
  %15 = ptrtoint ptr %end.i90 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i91 = icmp eq i32 %16, 0
  %sub.i92 = sub i32 1, %13
  %add.i93 = add i32 %sub.i92, %16
  %cond.i94 = select i1 %cmp.i91, i32 0, i32 %add.i93
  %call.i95 = tail call ptr @ioremap(i32 noundef %13, i32 noundef %cond.i94) #4
  %internal_addr.i96 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 5
  %17 = ptrtoint ptr %internal_addr.i96 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i95, ptr %internal_addr.i96, align 4
  %tobool21.not.i97 = icmp eq ptr %call.i95, null
  br i1 %tobool21.not.i97, label %if.end.i98.out_unmap_crit_edge, label %if.end23.i100

if.end.i98.out_unmap_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

if.end23.i100:                                    ; preds = %if.end.i98
  %18 = ptrtoint ptr %end.i90 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp27.i99 = icmp eq i32 %19, 0
  br i1 %cmp27.i99, label %if.end23.i100.if.end22_crit_edge, label %cond.false29.i103

if.end23.i100.if.end22_crit_edge:                 ; preds = %if.end23.i100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

cond.false29.i103:                                ; preds = %if.end23.i100
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i87, align 8
  %sub36.i101 = add i32 %19, 1
  %add37.i102 = sub i32 %sub36.i101, %21
  br label %if.end22

if.end22:                                         ; preds = %cond.false29.i103, %if.end23.i100.if.end22_crit_edge
  %cond39.i104 = phi i32 [ %add37.i102, %cond.false29.i103 ], [ 0, %if.end23.i100.if.end22_crit_edge ]
  %size.i105 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 3
  %22 = ptrtoint ptr %size.i105 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond39.i104, ptr %size.i105, align 4
  %memtype.i106 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %23 = ptrtoint ptr %memtype.i106 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %memtype.i106, align 4
  %call23 = tail call fastcc i32 @sercos3_setup_iomem(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 2, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_unmap_crit_edge

if.end22.out_unmap_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

if.end26:                                         ; preds = %if.end22
  %call27 = tail call fastcc i32 @sercos3_setup_iomem(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 3, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.out_unmap_crit_edge

if.end26.out_unmap_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

if.end30:                                         ; preds = %if.end26
  %call31 = tail call fastcc i32 @sercos3_setup_iomem(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 4, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body, label %if.end30.out_unmap_crit_edge

if.end30.out_unmap_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

do.body:                                          ; preds = %if.end30
  %ier0_cache_lock = getelementptr inbounds %struct.sercos3_priv, ptr %call.i85, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ier0_cache_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @sercos3_pci_probe.__key, i16 noundef signext 3) #4
  %priv36 = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %priv36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i85, ptr %priv36, align 4
  %name = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.3, ptr %name, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.4, ptr %version, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %irq37 = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %irq37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %irq37, align 4
  %irq_flags = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %irq_flags, align 4
  %handler = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sercos3_handler, ptr %handler, align 4
  %irqcontrol = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 12
  %32 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sercos3_irqcontrol, ptr %irqcontrol, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call39 = tail call i32 @__uio_register_device(ptr noundef null, ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body.cleanup_crit_edge, label %do.body.out_unmap_crit_edge

do.body.out_unmap_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unmap

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out_unmap:                                        ; preds = %do.body.out_unmap_crit_edge, %if.end30.out_unmap_crit_edge, %if.end26.out_unmap_crit_edge, %if.end22.out_unmap_crit_edge, %if.end.i98.out_unmap_crit_edge, %if.end18.out_unmap_crit_edge, %if.end.i.out_unmap_crit_edge, %if.end14.out_unmap_crit_edge
  %internal_addr = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 5
  %34 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %internal_addr, align 4
  %tobool43.not = icmp eq ptr %35, null
  br i1 %tobool43.not, label %out_unmap.for.inc_crit_edge, label %if.then44

out_unmap.for.inc_crit_edge:                      ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then44:                                        ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %35) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %out_unmap.for.inc_crit_edge
  %internal_addr.1 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 5
  %36 = ptrtoint ptr %internal_addr.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %internal_addr.1, align 4
  %tobool43.not.1 = icmp eq ptr %37, null
  br i1 %tobool43.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then44.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then44.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %37) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then44.1, %for.inc.for.inc.1_crit_edge
  %internal_addr.2 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 2, i32 5
  %38 = ptrtoint ptr %internal_addr.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %internal_addr.2, align 4
  %tobool43.not.2 = icmp eq ptr %39, null
  br i1 %tobool43.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then44.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then44.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %39) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then44.2, %for.inc.1.for.inc.2_crit_edge
  %internal_addr.3 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 3, i32 5
  %40 = ptrtoint ptr %internal_addr.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %internal_addr.3, align 4
  %tobool43.not.3 = icmp eq ptr %41, null
  br i1 %tobool43.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then44.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then44.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %41) #4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then44.3, %for.inc.2.for.inc.3_crit_edge
  %internal_addr.4 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 4, i32 5
  %42 = ptrtoint ptr %internal_addr.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %internal_addr.4, align 4
  %tobool43.not.4 = icmp eq ptr %43, null
  br i1 %tobool43.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then44.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then44.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %43) #4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then44.4, %for.inc.3.for.inc.4_crit_edge
  tail call void @pci_release_regions(ptr noundef %dev) #4
  br label %out_disable

out_disable:                                      ; preds = %for.inc.4, %if.end10.out_disable_crit_edge
  tail call void @pci_disable_device(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %out_disable, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %out_disable ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sercos3_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @uio_unregister_device(ptr noundef %1) #4
  tail call void @pci_release_regions(ptr noundef %dev) #4
  tail call void @pci_disable_device(ptr noundef %dev) #4
  %internal_addr = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %internal_addr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %3) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %internal_addr.1 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 1, i32 5
  %4 = ptrtoint ptr %internal_addr.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %internal_addr.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %5) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %internal_addr.2 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 2, i32 5
  %6 = ptrtoint ptr %internal_addr.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %internal_addr.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %7) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %internal_addr.3 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 3, i32 5
  %8 = ptrtoint ptr %internal_addr.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %internal_addr.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %9) #4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %internal_addr.4 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 4, i32 5
  %10 = ptrtoint ptr %internal_addr.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %internal_addr.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %11) #4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sercos3_setup_iomem(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info, i32 noundef %n, i32 noundef %pci_bar) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %pci_bar
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %addr = getelementptr %struct.uio_info, ptr %info, i32 0, i32 3, i32 %n, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %pci_bar, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %sub = sub i32 1, %4
  %add = add i32 %sub, %6
  %cond = select i1 %cmp, i32 0, i32 %add
  %call = tail call ptr @ioremap(i32 noundef %4, i32 noundef %cond) #4
  %internal_addr = getelementptr %struct.uio_info, ptr %info, i32 0, i32 3, i32 %n, i32 5
  %7 = ptrtoint ptr %internal_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %internal_addr, align 4
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.end.return_crit_edge, label %if.end23

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end23:                                         ; preds = %if.end
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27 = icmp eq i32 %9, 0
  br i1 %cmp27, label %if.end23.cond.end38_crit_edge, label %cond.false29

if.end23.cond.end38_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end38

cond.false29:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %sub36 = add i32 %9, 1
  %add37 = sub i32 %sub36, %11
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false29, %if.end23.cond.end38_crit_edge
  %cond39 = phi i32 [ %add37, %cond.false29 ], [ 0, %if.end23.cond.end38_crit_edge ]
  %size = getelementptr %struct.uio_info, ptr %info, i32 0, i32 3, i32 %n, i32 3
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond39, ptr %size, align 4
  %memtype = getelementptr %struct.uio_info, ptr %info, i32 0, i32 3, i32 %n, i32 4
  %13 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %memtype, align 4
  br label %return

return:                                           ; preds = %cond.end38, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end38 ], [ -1, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sercos3_handler(i32 noundef %irq, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %internal_addr = getelementptr %struct.uio_info, ptr %info, i32 0, i32 3, i32 3, i32 5
  %2 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %internal_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %add.ptr5 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %6 = and i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ier0_cache_lock = getelementptr inbounds %struct.sercos3_priv, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %ier0_cache_lock) #4
  %7 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %internal_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %or.i = or i32 %12, %10
  store i32 %or.i, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !36
  tail call void @_raw_spin_unlock(ptr noundef %ier0_cache_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sercos3_irqcontrol(ptr nocapture noundef readonly %info, i32 noundef %irq_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ier0_cache_lock = getelementptr inbounds %struct.sercos3_priv, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ier0_cache_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_on)
  %tobool.not = icmp eq i32 %irq_on, 0
  %internal_addr.i8 = getelementptr %struct.uio_info, ptr %info, i32 0, i32 3, i32 3, i32 5
  %2 = ptrtoint ptr %internal_addr.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %internal_addr.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %or.i10 = or i32 %7, %5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i10) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %8) #4, !srcloc !36
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i10, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #4, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %ier0_cache_lock) #4
  ret i32 0
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
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_unregister_device(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_uio_sercos3__236_223_sercos3_pci_driver_init6, !1, !"__initcall__kmod_uio_sercos3__236_223_sercos3_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_sercos3.c", i32 223, i32 1}
!2 = !{ptr @__exitcall_sercos3_pci_driver_exit, !1, !"__exitcall_sercos3_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_sercos3.c", i32 224, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/uio/uio_sercos3.c", i32 225, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/uio/uio_sercos3.c", i32 226, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/uio/uio_sercos3.c", i32 217, i32 10}
!13 = !{ptr @sercos3_pci_driver, !14, !"sercos3_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/uio/uio_sercos3.c", i32 216, i32 26}
!15 = !{ptr @sercos3_pci_ids, !16, !"sercos3_pci_ids", i1 false, i1 false}
!16 = !{!"../drivers/uio/uio_sercos3.c", i32 194, i32 29}
!17 = !{ptr @sercos3_pci_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/uio/uio_sercos3.c", i32 153, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/uio/uio_sercos3.c", i32 155, i32 15}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/uio/uio_sercos3.c", i32 156, i32 18}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4984597}
!34 = !{i64 2152524946}
!35 = !{i64 2152526301}
!36 = !{i64 4984179}
