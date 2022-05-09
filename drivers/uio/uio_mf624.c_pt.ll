; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_mf624.c_pt.bc'
source_filename = "../drivers/uio/uio_mf624.c"
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

@__initcall__kmod_uio_mf624__236_223_mf624_pci_driver_init6 = internal global ptr @mf624_pci_driver_init, section ".initcall6.init", align 4
@mf624_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mf624_pci_id, ptr @mf624_pci_probe, ptr @mf624_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mf624_pci_driver_exit = internal global ptr @mf624_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [37 x i8] c"uio_mf624.file=drivers/uio/uio_mf624\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"uio_mf624.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [53 x i8] c"uio_mf624.author=Rostislav Lisovy <lisovy@gmail.com>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uio_mf624\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mf624\00", [26 x i8] zeroinitializer }, align 32
@mf624_pci_id = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6252, i32 1572, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"PCI chipset, interrupts, status bits, special functions\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC, DAC, DIO\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Counter/timer chip\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"mf624_pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 215, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 223, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 216, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"mf624_pci_id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 210, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 150, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 155, i32 45 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 159, i32 45 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [27 x i8] c"../drivers/uio/uio_mf624.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 163, i32 45 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_mf624_pci_driver_exit, ptr @__initcall__kmod_uio_mf624__236_223_mf624_pci_driver_init6, ptr @mf624_pci_driver_exit, ptr @mf624_pci_driver, ptr @.str, ptr @.str.1, ptr @mf624_pci_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mf624_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mf624_pci_id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mf624_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mf624_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mf624_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @pci_unregister_driver(ptr noundef nonnull @mf624_pci_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf624_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %name = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %name, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.2, ptr %version, align 4
  %mem = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.3, ptr %mem, align 4
  %and.i = and i32 %3, -4096
  %addr.i = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i, ptr %addr.i, align 4
  %and11.i = and i32 %3, 4095
  %offs.i = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %offs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and11.i, ptr %offs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end9.out_release_crit_edge, label %if.end.i

if.end9.out_release_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_release

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %add14.i = add nuw nsw i32 %and11.i, 4095
  %sub16.i = add i32 %add14.i, %cond.i
  %and17.i = and i32 %sub16.i, -4096
  %size.i = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and17.i, ptr %size.i, align 4
  %memtype.i = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %10 = ptrtoint ptr %memtype.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %memtype.i, align 4
  %call.i64 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #3
  %internal_addr.i = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 5
  %11 = ptrtoint ptr %internal_addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i64, ptr %internal_addr.i, align 4
  %tobool19.not.i = icmp eq ptr %call.i64, null
  br i1 %tobool19.not.i, label %if.end.i.out_release_crit_edge, label %if.end13

if.end.i.out_release_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_release

if.end13:                                         ; preds = %if.end.i
  %arrayidx15 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1
  %arrayidx.i65 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %12 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i65, align 8
  %end.i66 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 1
  %14 = ptrtoint ptr %end.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i66, align 4
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.4, ptr %arrayidx15, align 4
  %and.i67 = and i32 %13, -4096
  %addr.i68 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %17 = ptrtoint ptr %addr.i68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i67, ptr %addr.i68, align 4
  %and11.i69 = and i32 %13, 4095
  %offs.i70 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 2
  %18 = ptrtoint ptr %offs.i70 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and11.i69, ptr %offs.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i71 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i71, label %if.end13.out_unmap0_crit_edge, label %if.end.i85

if.end13.out_unmap0_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_unmap0

if.end.i85:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i72 = icmp eq i32 %15, 0
  %sub.i73 = sub i32 1, %13
  %add.i74 = add i32 %sub.i73, %15
  %cond.i75 = select i1 %cmp.i72, i32 0, i32 %add.i74
  %add14.i76 = add nuw nsw i32 %and11.i69, 4095
  %sub16.i77 = add i32 %add14.i76, %cond.i75
  %and17.i78 = and i32 %sub16.i77, -4096
  %size.i79 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 3
  %19 = ptrtoint ptr %size.i79 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and17.i78, ptr %size.i79, align 4
  %memtype.i80 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %20 = ptrtoint ptr %memtype.i80 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %memtype.i80, align 4
  %call.i81 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 2) #3
  %internal_addr.i82 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 1, i32 5
  %21 = ptrtoint ptr %internal_addr.i82 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i81, ptr %internal_addr.i82, align 4
  %tobool19.not.i83 = icmp eq ptr %call.i81, null
  br i1 %tobool19.not.i83, label %if.end.i85.out_unmap0_crit_edge, label %if.end19

if.end.i85.out_unmap0_crit_edge:                  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_unmap0

if.end19:                                         ; preds = %if.end.i85
  %arrayidx21 = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 2
  %call22 = tail call fastcc i32 @mf624_setup_mem(ptr noundef %dev, i32 noundef 4, ptr noundef %arrayidx21, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.out_unmap1_crit_edge

if.end19.out_unmap1_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_unmap1

if.end25:                                         ; preds = %if.end19
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %irq26 = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %irq26, align 4
  %irq_flags = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %irq_flags, align 4
  %handler = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mf624_irq_handler, ptr %handler, align 4
  %irqcontrol = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mf624_irqcontrol, ptr %irqcontrol, align 4
  %call28 = tail call i32 @__uio_register_device(ptr noundef null, ptr noundef %dev1, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %out_unmap2

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_unmap2:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %internal_addr = getelementptr %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 2, i32 5
  %29 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %internal_addr, align 4
  tail call void @iounmap(ptr noundef %30) #3
  br label %out_unmap1

out_unmap1:                                       ; preds = %out_unmap2, %if.end19.out_unmap1_crit_edge
  %31 = ptrtoint ptr %internal_addr.i82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %internal_addr.i82, align 4
  tail call void @iounmap(ptr noundef %32) #3
  br label %out_unmap0

out_unmap0:                                       ; preds = %out_unmap1, %if.end.i85.out_unmap0_crit_edge, %if.end13.out_unmap0_crit_edge
  %33 = ptrtoint ptr %internal_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %internal_addr.i, align 4
  tail call void @iounmap(ptr noundef %34) #3
  br label %out_release

out_release:                                      ; preds = %out_unmap0, %if.end.i.out_release_crit_edge, %if.end9.out_release_crit_edge
  tail call void @pci_release_regions(ptr noundef %dev) #3
  br label %out_disable

out_disable:                                      ; preds = %out_release, %if.end5.out_disable_crit_edge
  tail call void @pci_disable_device(ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %out_disable, %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %out_disable ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mf624_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %internal_addr.i = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %internal_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %internal_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %5 = and i32 %4, -1224736769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #3, !srcloc !35
  tail call void @uio_unregister_device(ptr noundef %1) #3
  tail call void @pci_release_regions(ptr noundef %dev) #3
  tail call void @pci_disable_device(ptr noundef %dev) #3
  %6 = ptrtoint ptr %internal_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %internal_addr.i, align 4
  tail call void @iounmap(ptr noundef %7) #3
  %internal_addr3 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 1, i32 5
  %8 = ptrtoint ptr %internal_addr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %internal_addr3, align 4
  tail call void @iounmap(ptr noundef %9) #3
  %internal_addr6 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 2, i32 5
  %10 = ptrtoint ptr %internal_addr6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %internal_addr6, align 4
  tail call void @iounmap(ptr noundef %11) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mf624_setup_mem(ptr noundef %dev, i32 noundef %bar, ptr nocapture noundef writeonly %mem, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %mem, align 4
  %and = and i32 %1, -4096
  %addr = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %addr, align 4
  %and11 = and i32 %1, 4095
  %offs = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 2
  %6 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and11, ptr %offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  %add14 = add nuw nsw i32 %and11, 4095
  %sub16 = add i32 %add14, %cond
  %and17 = and i32 %sub16, -4096
  %size = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and17, ptr %size, align 4
  %memtype = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 4
  %8 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %memtype, align 4
  %call = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef %bar) #3
  %internal_addr = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 5
  %9 = ptrtoint ptr %internal_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %internal_addr, align 4
  %tobool19.not = icmp eq ptr %call, null
  %. = select i1 %tobool19.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf624_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_addr = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 3, i32 0, i32 5
  %0 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %internal_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 76
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %9 = and i32 %8, -1090519041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #3, !srcloc !35
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %11 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %land.lhs.true7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true7:                                   ; preds = %if.end
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %13 = and i32 %12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %land.lhs.true7.cleanup_crit_edge, label %if.then11

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %internal_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %internal_addr, align 4
  %add.ptr.i19 = getelementptr i8, ptr %15, i32 76
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %17 = and i32 %16, -1207959553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %17) #3, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then11 ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mf624_irqcontrol(ptr nocapture noundef readonly %info, i32 noundef %irq_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %irq_on to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_on, label %entry.if.end3_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %internal_addr.i = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 3, i32 0, i32 5
  %1 = ptrtoint ptr %internal_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %internal_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 76
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %4 = and i32 %3, -1224736769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #3, !srcloc !35
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %internal_addr.i6 = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 3, i32 0, i32 5
  %5 = ptrtoint ptr %internal_addr.i6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %internal_addr.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 76
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %8 = or i32 %7, 1224736768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %8) #3, !srcloc !35
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then, %entry.if.end3_crit_edge
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
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

!0 = !{ptr @__initcall__kmod_uio_mf624__236_223_mf624_pci_driver_init6, !1, !"__initcall__kmod_uio_mf624__236_223_mf624_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_mf624.c", i32 223, i32 1}
!2 = !{ptr @__exitcall_mf624_pci_driver_exit, !1, !"__exitcall_mf624_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_mf624.c", i32 224, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author239, !7, !"__UNIQUE_ID_author239", i1 false, i1 false}
!7 = !{!"../drivers/uio/uio_mf624.c", i32 225, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/uio/uio_mf624.c", i32 216, i32 10}
!11 = !{ptr @mf624_pci_driver, !12, !"mf624_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/uio/uio_mf624.c", i32 215, i32 26}
!13 = !{ptr @mf624_pci_id, !14, !"mf624_pci_id", i1 false, i1 false}
!14 = !{!"../drivers/uio/uio_mf624.c", i32 210, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/uio/uio_mf624.c", i32 150, i32 18}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/uio/uio_mf624.c", i32 155, i32 45}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/uio/uio_mf624.c", i32 159, i32 45}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/uio/uio_mf624.c", i32 163, i32 45}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 4983663}
!33 = !{i64 2152524012}
!34 = !{i64 2152525367}
!35 = !{i64 4983245}
