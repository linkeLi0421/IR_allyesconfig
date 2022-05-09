; ModuleID = '/llk/IR_all_yes/drivers/pci/msi/irqdomain.c_pt.bc'
source_filename = "../drivers/pci/msi/irqdomain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_msi_create_irq_domain\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_msi_create_irq_domain\09\09\09\09"
module asm "\09.long\09__crc_pci_msi_create_irq_domain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_create_irq_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_create_irq_domain\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_create_irq_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.73 = type { ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.70, %struct.anon.71, %union.anon.72 }
%union.anon.70 = type { i32 }
%struct.anon.71 = type { i16, i32 }
%union.anon.72 = type { ptr }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.78] }
%union.anon.78 = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/pci/msi/irqdomain.c\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_pci_msi_create_irq_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_create_irq_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_create_irq_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_create_irq_domain to i32), ptr @__kstrtab_pci_msi_create_irq_domain, ptr @__kstrtabns_pci_msi_create_irq_domain }, section "___ksymtab_gpl+pci_msi_create_irq_domain", align 4
@pci_msi_legacy_setup_msi_irqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/pci/msi/msi.h\00", [42 x i8] zeroinitializer }, align 32
@pci_msi_legacy_teardown_msi_irqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_msi_domain_ops_default = internal global { %struct.msi_domain_ops, [32 x i8] } { %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr @pci_msi_domain_check_cap, ptr null, ptr @pci_msi_domain_set_desc, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 167, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"../drivers/pci/msi/msi.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 17, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"pci_msi_domain_ops_default\00", align 1
@___asan_gen_.9 = private constant [31 x i8] c"../drivers/pci/msi/irqdomain.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 118, i32 30 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_msi_create_irq_domain, ptr @.str, ptr @.str.1, ptr @pci_msi_domain_ops_default], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_msi_domain_ops_default to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_msi_setup_msi_irqs(ptr noundef %dev, i32 noundef %nvec, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %msi.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 16
  %0 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @msi_domain_alloc_irqs_descs_locked(ptr noundef nonnull %1, ptr noundef %dev1, i32 noundef %nvec) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.b1.i = load i1, ptr @pci_msi_legacy_setup_msi_irqs.__already_done, align 1
  br i1 %.b1.i, label %if.end.cleanup_crit_edge, label %if.then.i, !prof !20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @pci_msi_legacy_setup_msi_irqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_alloc_irqs_descs_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_msi_teardown_msi_irqs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %msi.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 16
  %0 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msi_domain_free_irqs_descs_locked(ptr noundef nonnull %1, ptr noundef %dev1) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %.b1.i = load i1, ptr @pci_msi_legacy_teardown_msi_irqs.__already_done, align 1
  br i1 %.b1.i, label %if.else.if.end_crit_edge, label %if.then.i, !prof !20

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @pci_msi_legacy_teardown_msi_irqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %if.then
  tail call void @msi_free_msi_descs_range(ptr noundef %dev1, i32 noundef 0, i32 noundef 0, i32 noundef 65535) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_domain_free_irqs_descs_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %do.end, !prof !20

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #5
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %and23 = and i32 %3, -65
  store i32 %and23, ptr %info, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end, %entry.if.end24_crit_edge
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %and26 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  %ops1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pci_msi_domain_ops_default, ptr %ops1.i, align 4
  br label %if.end29

if.else.i:                                        ; preds = %if.then28
  %set_desc.i = getelementptr inbounds %struct.msi_domain_ops, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_desc.i, align 4
  %cmp3.i = icmp eq ptr %10, null
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pci_msi_domain_set_desc, ptr %set_desc.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.else.i.if.end.i_crit_edge
  %msi_check.i = getelementptr inbounds %struct.msi_domain_ops, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %msi_check.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msi_check.i, align 4
  %cmp6.i = icmp eq ptr %13, null
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.if.end29_crit_edge

if.end.i.if.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %msi_check.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pci_msi_domain_check_cap, ptr %msi_check.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then7.i, %if.end.i.if.end29_crit_edge, %if.then.i, %if.end24.if.end29_crit_edge
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info, align 4
  %and31 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end34_crit_edge, label %if.then33

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  %chip1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip1.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !21

do.body5.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/msi/irqdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

do.end10.i:                                       ; preds = %if.then33
  %irq_write_msi_msg.i = getelementptr inbounds %struct.irq_chip, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_write_msi_msg.i, align 4
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %if.then12.i, label %do.end10.i.if.end14.i_crit_edge

do.end10.i.if.end14.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pci_msi_domain_write_msg, ptr %irq_write_msi_msg.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %do.end10.i.if.end14.i_crit_edge
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %18, i32 0, i32 7
  %22 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_mask.i, align 4
  %tobool15.not.i = icmp eq ptr %23, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end14.i.if.end18.i_crit_edge

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pci_msi_mask_irq, ptr %irq_mask.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end18.i_crit_edge
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %18, i32 0, i32 9
  %25 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_unmask.i, align 4
  %tobool19.not.i = icmp eq ptr %26, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end18.i.if.end34_crit_edge

if.end18.i.if.end34_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pci_msi_unmask_irq, ptr %irq_unmask.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then20.i, %if.end18.i.if.end34_crit_edge, %if.end29.if.end34_crit_edge
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info, align 4
  %or = or i32 %29, 144
  store i32 %or, ptr %info, align 4
  %chip = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %flags36 = getelementptr inbounds %struct.irq_chip, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags36, align 4
  %or37 = or i32 %33, 32
  store i32 %or37, ptr %flags36, align 4
  %call = tail call ptr @msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) #5
  %tobool38.not = icmp eq ptr %call, null
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %if.end40

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call, i32 noundef 3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end34.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_msi_domain_get_msi_rid(ptr nocapture noundef readonly %domain, ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %rid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rid) #5
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number.i, align 4
  %conv1.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %4 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn.i, align 4
  %.masked = and i32 %5, 65535
  %conv = or i32 %shl.i, %.masked
  %6 = ptrtoint ptr %rid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %rid, align 4
  %call1 = call i32 @pci_for_each_dma_alias(ptr noundef %pdev, ptr noundef nonnull @get_msi_id_cb, ptr noundef nonnull %rid) #5
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 6
  %7 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  %cmp.i.i.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.cond.false_crit_edge, label %is_of_node.exit.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

is_of_node.exit.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp ne ptr %10, @of_fwnode_ops
  %add.ptr.i = getelementptr i8, ptr %8, i32 -12
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %is_of_node.exit.i.cond.false_crit_edge, label %cond.true

is_of_node.exit.i.cond.false_crit_edge:           ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %11 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rid, align 4
  %call3 = call i32 @of_msi_map_id(ptr noundef %dev, ptr noundef nonnull %add.ptr.i, i32 noundef %12) #5
  br label %cond.end

cond.false:                                       ; preds = %is_of_node.exit.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %13 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %14, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rid) #5
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_msi_id_cb(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %alias, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %shr = lshr i32 %1, 8
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  %6 = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.not = icmp eq i8 %5, %6
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %conv3 = and i32 %shr, 255
  %7 = lshr i16 %alias, 8
  %8 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %8)
  %cmp9.not = icmp eq i32 %conv3, %8
  br i1 %cmp9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv11 = zext i16 %alias to i32
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv11, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_msi_map_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_msi_get_device_domain(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %rid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rid) #5
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number.i, align 4
  %conv1.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %4 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn.i, align 4
  %.masked = and i32 %5, 65535
  %conv = or i32 %shl.i, %.masked
  %6 = ptrtoint ptr %rid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %rid, align 4
  %call1 = call i32 @pci_for_each_dma_alias(ptr noundef %pdev, ptr noundef nonnull @get_msi_id_cb, ptr noundef nonnull %rid) #5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %7 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rid, align 4
  %call2 = call ptr @of_msi_map_get_device_domain(ptr noundef %dev, i32 noundef %8, i32 noundef 3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rid) #5
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_msi_map_get_device_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_dev_has_special_msi_domain(ptr nocapture noundef readonly %pdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msi.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 16
  %0 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %msi.i9 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 21, i32 16
  %4 = ptrtoint ptr %msi.i9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msi.i9, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dom.012 = phi ptr [ %5, %if.end.if.end5_crit_edge ], [ %1, %entry.if.end5_crit_edge ]
  %bus_token = getelementptr inbounds %struct.irq_domain, ptr %dom.012, i32 0, i32 7
  %6 = ptrtoint ptr %bus_token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ne i32 %7, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end5 ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_free_msi_descs_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_msi_domain_set_desc(ptr nocapture noundef writeonly %arg, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %desc, ptr %arg, align 4
  %call.i = tail call ptr @msi_desc_to_pci_dev(ptr noundef %desc) #5
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 8
  %1 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %msi_index.i, align 4
  %conv.i = zext i16 %2 to i32
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i, align 8
  %number.i.i = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %number.i.i, align 4
  %conv1.i.i = zext i8 %6 to i32
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn.i.i, align 4
  %9 = shl nuw nsw i32 %conv1.i.i, 19
  %.masked.i = shl i32 %8, 11
  %10 = and i32 %.masked.i, 134215680
  %shl.i = or i32 %9, %conv.i
  %or.i = or i32 %shl.i, %10
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 16
  %11 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %domain_nr.i.i, align 8
  %shl4.i = shl i32 %12, 27
  %or5.i = or i32 %or.i, %shl4.i
  %hwirq = getelementptr inbounds %struct.msi_alloc_info, ptr %arg, i32 0, i32 1
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or5.i, ptr %hwirq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_msi_domain_check_cap(ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %info, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @msi_first_desc(ptr noundef %dev, i32 noundef 0) #5
  %msi_attrib.i = getelementptr inbounds %struct.msi_desc, ptr %call, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %msi_attrib.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %msi_attrib.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %pci_msi_desc_is_multi_msi.exit, label %if.then3

pci_msi_desc_is_multi_msi.exit:                   ; preds = %entry
  %nvec_used.i = getelementptr inbounds %struct.msi_desc, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %nvec_used.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nvec_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp ugt i32 %2, 1
  br i1 %cmp.i, label %land.lhs.true, label %pci_msi_desc_is_multi_msi.exit.if.end.thread_crit_edge

pci_msi_desc_is_multi_msi.exit.if.end.thread_crit_edge: ; preds = %pci_msi_desc_is_multi_msi.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

land.lhs.true:                                    ; preds = %pci_msi_desc_is_multi_msi.exit
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %info, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup21_crit_edge, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

land.lhs.true.cleanup21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end.thread:                                    ; preds = %land.lhs.true.if.end.thread_crit_edge, %pci_msi_desc_is_multi_msi.exit.if.end.thread_crit_edge
  br label %cleanup21

if.then3:                                         ; preds = %entry
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info, align 4
  %and5 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then3.cleanup21_crit_edge, label %if.end8

if.then3.cleanup21_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end8:                                          ; preds = %if.then3
  %and10 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.cleanup21_crit_edge, label %if.then12

if.end8.cleanup21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.then12:                                        ; preds = %if.end8
  %call13 = tail call ptr @msi_first_desc(ptr noundef %dev, i32 noundef 0) #5
  %tobool14.not29 = icmp eq ptr %call13, null
  br i1 %tobool14.not29, label %if.then12.cleanup21_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.cleanup21_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then12.for.body_crit_edge
  %idx.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then12.for.body_crit_edge ]
  %desc.030 = phi ptr [ %call18, %for.inc.for.body_crit_edge ], [ %call13, %if.then12.for.body_crit_edge ]
  %msi_index = getelementptr inbounds %struct.msi_desc, ptr %desc.030, i32 0, i32 8
  %7 = ptrtoint ptr %msi_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %msi_index, align 4
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.031, i32 %conv)
  %cmp.not = icmp eq i32 %idx.031, %conv
  br i1 %cmp.not, label %for.inc, label %for.body.cleanup21_crit_edge

for.body.cleanup21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

for.inc:                                          ; preds = %for.body
  %inc = add i32 %idx.031, 1
  %call18 = tail call ptr @msi_next_desc(ptr noundef %dev, i32 noundef 0) #5
  %tobool14.not = icmp eq ptr %call18, null
  br i1 %tobool14.not, label %for.inc.cleanup21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

cleanup21:                                        ; preds = %for.inc.cleanup21_crit_edge, %for.body.cleanup21_crit_edge, %if.then12.cleanup21_crit_edge, %if.end8.cleanup21_crit_edge, %if.then3.cleanup21_crit_edge, %if.end.thread, %land.lhs.true.cleanup21_crit_edge
  %retval.1 = phi i32 [ 1, %land.lhs.true.cleanup21_crit_edge ], [ -524, %if.then3.cleanup21_crit_edge ], [ 0, %if.end8.cleanup21_crit_edge ], [ 0, %if.end.thread ], [ 0, %if.then12.cleanup21_crit_edge ], [ -524, %for.body.cleanup21_crit_edge ], [ 0, %for.inc.cleanup21_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_desc_to_pci_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_first_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_next_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_msi_domain_write_msg(ptr nocapture noundef readonly %irq_data, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %irq1 = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pci_write_msi_msg(ptr noundef %3, ptr noundef %msg) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pci_write_msi_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/msi/irqdomain.c", i32 167, i32 6}
!2 = !{ptr @__ksymtab_pci_msi_create_irq_domain, !3, !"__ksymtab_pci_msi_create_irq_domain", i1 false, i1 false}
!3 = !{!"../drivers/pci/msi/irqdomain.c", i32 189, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/pci/msi/msi.h", i32 17, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/pci/msi/msi.h", i32 23, i32 2}
!9 = !{ptr @pci_msi_domain_ops_default, !10, !"pci_msi_domain_ops_default", i1 false, i1 false}
!10 = !{!"../drivers/pci/msi/irqdomain.c", i32 118, i32 30}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2155025033, i64 2155025525, i64 2155025070, i64 2155025126, i64 2155025160, i64 2155025184, i64 2155025225, i64 2155025246, i64 2155025274, i64 2155025308}
