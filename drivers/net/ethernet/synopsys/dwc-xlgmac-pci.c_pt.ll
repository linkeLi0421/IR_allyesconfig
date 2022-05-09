; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c_pt.bc'
source_filename = "../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xlgmac_resources = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.99 = type { ptr }

@__initcall__kmod_dwc_xlgmac__353_73_xlgmac_pci_driver_init6 = internal global ptr @xlgmac_pci_driver_init, section ".initcall6.init", align 4
@xlgmac_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @xlgmac_pci_tbl, ptr @xlgmac_probe, ptr @xlgmac_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_xlgmac_pci_driver_exit = internal global ptr @xlgmac_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description354 = internal constant [50 x i8] c"dwc_xlgmac.description=Synopsys DWC XLGMAC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version355 = internal constant [25 x i8] c"dwc_xlgmac.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc_xlgmac\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author356 = internal constant [50 x i8] c"dwc_xlgmac.author=Jie Deng <jiedeng@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [57 x i8] c"dwc_xlgmac.file=drivers/net/ethernet/synopsys/dwc-xlgmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [32 x i8] c"dwc_xlgmac.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc-xlgmac\00", [21 x i8] zeroinitializer }, align 32
@xlgmac_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5827, i32 29442, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@xlgmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 33, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ERROR: failed to enable device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xlgmac_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xlgmac_probe._entry_ptr = internal global ptr @xlgmac_probe._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"xlgmac_pci_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 66, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 76, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 67, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"xlgmac_pci_tbl\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 60, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [50 x i8] c"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 33, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__UNIQUE_ID_version355, ptr @__exitcall_xlgmac_pci_driver_exit, ptr @__initcall__kmod_dwc_xlgmac__353_73_xlgmac_pci_driver_init6, ptr @__modver_attr, ptr @xlgmac_pci_driver_exit, ptr @xlgmac_probe._entry, ptr @xlgmac_probe._entry_ptr, ptr @xlgmac_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xlgmac_pci_tbl, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @xlgmac_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @xlgmac_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_probe(ptr noundef %pcidev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %res = alloca %struct.xlgmac_resources, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #5
  %0 = getelementptr inbounds %struct.xlgmac_resources, ptr %res, i32 0, i32 1
  %call = tail call i32 @pcim_enable_device(ptr noundef %pcidev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %end = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 0, i32 1
  %1 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %for.body.preheader.for.inc_crit_edge, label %cond.end

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  br label %cleanup

cond.end:                                         ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp8 = icmp eq i32 %sub, -1
  br i1 %cmp8, label %cond.end.for.inc_crit_edge, label %cond.end.if.end10_crit_edge

cond.end.if.end10_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end10:                                         ; preds = %cond.end.5.if.end10_crit_edge, %cond.end.4.if.end10_crit_edge, %cond.end.3.if.end10_crit_edge, %cond.end.2.if.end10_crit_edge, %cond.end.1.if.end10_crit_edge, %cond.end.if.end10_crit_edge
  %i.045.lcssa = phi i32 [ 0, %cond.end.if.end10_crit_edge ], [ 1, %cond.end.1.if.end10_crit_edge ], [ 2, %cond.end.2.if.end10_crit_edge ], [ 3, %cond.end.3.if.end10_crit_edge ], [ 4, %cond.end.4.if.end10_crit_edge ], [ 5, %cond.end.5.if.end10_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.045.lcssa
  %call11 = tail call i32 @pcim_iomap_regions(ptr noundef %pcidev, i32 noundef %shl, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.for.end_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %end.1 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 1, i32 1
  %5 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.1 = icmp eq i32 %6, 0
  br i1 %cmp2.1, label %for.inc.for.inc.1_crit_edge, label %cond.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

cond.end.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 8
  %sub.1 = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1)
  %cmp8.1 = icmp eq i32 %sub.1, -1
  br i1 %cmp8.1, label %cond.end.1.for.inc.1_crit_edge, label %cond.end.1.if.end10_crit_edge

cond.end.1.if.end10_crit_edge:                    ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cond.end.1.for.inc.1_crit_edge:                   ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %end.2 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 2, i32 1
  %9 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.2 = icmp eq i32 %10, 0
  br i1 %cmp2.2, label %for.inc.1.for.inc.2_crit_edge, label %cond.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

cond.end.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 8
  %sub.2 = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2)
  %cmp8.2 = icmp eq i32 %sub.2, -1
  br i1 %cmp8.2, label %cond.end.2.for.inc.2_crit_edge, label %cond.end.2.if.end10_crit_edge

cond.end.2.if.end10_crit_edge:                    ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cond.end.2.for.inc.2_crit_edge:                   ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %cond.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %end.3 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 3, i32 1
  %13 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2.3 = icmp eq i32 %14, 0
  br i1 %cmp2.3, label %for.inc.2.for.inc.3_crit_edge, label %cond.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

cond.end.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3, align 8
  %sub.3 = sub i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3)
  %cmp8.3 = icmp eq i32 %sub.3, -1
  br i1 %cmp8.3, label %cond.end.3.for.inc.3_crit_edge, label %cond.end.3.if.end10_crit_edge

cond.end.3.if.end10_crit_edge:                    ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cond.end.3.for.inc.3_crit_edge:                   ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %end.4 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 4, i32 1
  %17 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2.4 = icmp eq i32 %18, 0
  br i1 %cmp2.4, label %for.inc.3.for.inc.4_crit_edge, label %cond.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

cond.end.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.4, align 8
  %sub.4 = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.4)
  %cmp8.4 = icmp eq i32 %sub.4, -1
  br i1 %cmp8.4, label %cond.end.4.for.inc.4_crit_edge, label %cond.end.4.if.end10_crit_edge

cond.end.4.if.end10_crit_edge:                    ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cond.end.4.for.inc.4_crit_edge:                   ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %cond.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %end.5 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 5, i32 1
  %21 = ptrtoint ptr %end.5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2.5 = icmp eq i32 %22, 0
  br i1 %cmp2.5, label %for.inc.4.for.end_crit_edge, label %cond.end.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cond.end.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.5, align 8
  %sub.5 = sub i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.5)
  %cmp8.5 = icmp eq i32 %sub.5, -1
  br i1 %cmp8.5, label %cond.end.5.for.end_crit_edge, label %cond.end.5.if.end10_crit_edge

cond.end.5.if.end10_crit_edge:                    ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cond.end.5.for.end_crit_edge:                     ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cond.end.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %if.end10.for.end_crit_edge
  %i.044 = phi i32 [ %i.045.lcssa, %if.end10.for.end_crit_edge ], [ 6, %cond.end.5.for.end_crit_edge ], [ 6, %for.inc.4.for.end_crit_edge ]
  tail call void @pci_set_master(ptr noundef %pcidev) #5
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 46
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %0, align 4
  %call16 = tail call ptr @pcim_iomap_table(ptr noundef %pcidev) #5
  %arrayidx17 = getelementptr ptr, ptr %call16, i32 %i.044
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx17, align 4
  %30 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %res, align 8
  %call19 = call i32 @xlgmac_drv_probe(ptr noundef %dev1, ptr noundef nonnull %res) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call19, %for.end ], [ %call11, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_remove(ptr noundef %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %call = tail call i32 @xlgmac_drv_remove(ptr noundef %dev) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xlgmac_drv_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xlgmac_drv_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_dwc_xlgmac__353_73_xlgmac_pci_driver_init6, !1, !"__initcall__kmod_dwc_xlgmac__353_73_xlgmac_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 73, i32 1}
!2 = !{ptr @__exitcall_xlgmac_pci_driver_exit, !1, !"__exitcall_xlgmac_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description354, !4, !"__UNIQUE_ID_description354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 75, i32 1}
!5 = !{ptr @__UNIQUE_ID_version355, !6, !"__UNIQUE_ID_version355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 76, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author356, !12, !"__UNIQUE_ID_author356", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 77, i32 1}
!13 = !{ptr @__UNIQUE_ID_file357, !14, !"__UNIQUE_ID_file357", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 78, i32 1}
!15 = !{ptr @__UNIQUE_ID_license358, !14, !"__UNIQUE_ID_license358", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 67, i32 11}
!18 = !{ptr @xlgmac_pci_driver, !19, !"xlgmac_pci_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 66, i32 26}
!20 = !{ptr @xlgmac_pci_tbl, !21, !"xlgmac_pci_tbl", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 60, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-pci.c", i32 33, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @xlgmac_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @xlgmac_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
