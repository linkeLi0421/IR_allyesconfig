; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/pci.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76_pci_disable_aspm\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_pci_disable_aspm\09\09\09\09"
module asm "\09.long\09__crc_mt76_pci_disable_aspm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_pci_disable_aspm:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_pci_disable_aspm\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_pci_disable_aspm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.99 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@mt76_pci_disable_aspm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disabling ASPM %s %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt76_pci_disable_aspm\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/mediatek/mt76/pci.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt76_pci_disable_aspm._entry_ptr = internal global ptr @mt76_pci_disable_aspm._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L0s\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"L1\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_pci_disable_aspm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_pci_disable_aspm = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_pci_disable_aspm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_pci_disable_aspm to i32), ptr @__kstrtab_mt76_pci_disable_aspm, ptr @__kstrtabns_mt76_pci_disable_aspm }, section "___ksymtab_gpl+mt76_pci_disable_aspm", align 4
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [44 x i8] c"../drivers/net/wireless/mediatek/mt76/pci.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 27, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_mt76_pci_disable_aspm, ptr @mt76_pci_disable_aspm._entry, ptr @mt76_pci_disable_aspm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_pci_disable_aspm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_pci_disable_aspm(ptr noundef %pdev) #0 align 64 {
entry:
  %aspm_conf = alloca i16, align 2
  %parent_aspm_conf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %aspm_conf) #4
  %4 = ptrtoint ptr %aspm_conf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %aspm_conf, align 2, !annotation !22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %parent_aspm_conf) #4
  %5 = ptrtoint ptr %parent_aspm_conf to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %parent_aspm_conf, align 2
  %call = call i32 @pcie_capability_read_word(ptr noundef %pdev, i32 noundef 16, ptr noundef nonnull %aspm_conf) #4
  %6 = ptrtoint ptr %aspm_conf to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aspm_conf, align 2
  %8 = and i16 %7, 3
  store i16 %8, ptr %aspm_conf, align 2
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %if.end.cleanup28_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup28

if.end.thread:                                    ; preds = %entry
  %call2 = call i32 @pcie_capability_read_word(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull %parent_aspm_conf) #4
  %9 = ptrtoint ptr %parent_aspm_conf to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %parent_aspm_conf, align 2
  %11 = and i16 %10, 3
  store i16 %11, ptr %parent_aspm_conf, align 2
  %12 = ptrtoint ptr %aspm_conf to i32
  call void @__asan_load2_noabort(i32 %12)
  %.pr = load i16, ptr %aspm_conf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool6.not43 = icmp eq i16 %.pr, 0
  br i1 %tobool6.not43, label %lor.lhs.false, label %if.end.thread.do.end_crit_edge

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end.thread
  %13 = ptrtoint ptr %parent_aspm_conf to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %parent_aspm_conf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool8.not = icmp eq i16 %14, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup28_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false.cleanup28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup28

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %15 = phi i16 [ %.pr, %if.end.thread.do.end_crit_edge ], [ %8, %if.end.do.end_crit_edge ], [ 0, %lor.lhs.false.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %conv11 = zext i16 %15 to i32
  %and12 = and i32 %conv11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond = select i1 %tobool13.not, ptr @.str.6, ptr @.str.5
  %and15 = and i32 %conv11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %cond, ptr noundef nonnull %cond17) #7
  %16 = ptrtoint ptr %aspm_conf to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %aspm_conf, align 2
  %conv18 = zext i16 %17 to i32
  %call19 = call i32 @pci_disable_link_state(ptr noundef %pdev, i32 noundef %conv18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end.cleanup28_crit_edge, label %cleanup.cont

do.end.cleanup28_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup28

cleanup.cont:                                     ; preds = %do.end
  %18 = ptrtoint ptr %aspm_conf to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %aspm_conf, align 2
  %call.i = call i32 @pcie_capability_clear_and_set_word(ptr noundef %pdev, i32 noundef 16, i16 noundef zeroext %19, i16 noundef zeroext 0) #4
  br i1 %tobool.not, label %cleanup.cont.cleanup28_crit_edge, label %if.then25

cleanup.cont.cleanup28_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup28

if.then25:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %aspm_conf to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %aspm_conf, align 2
  %call.i42 = call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %3, i32 noundef 16, i16 noundef zeroext %21, i16 noundef zeroext 0) #4
  br label %cleanup28

cleanup28:                                        ; preds = %if.then25, %cleanup.cont.cleanup28_crit_edge, %do.end.cleanup28_crit_edge, %lor.lhs.false.cleanup28_crit_edge, %if.end.cleanup28_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %parent_aspm_conf) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %aspm_conf) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/pci.c", i32 27, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt76_pci_disable_aspm._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt76_pci_disable_aspm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mt76_pci_disable_aspm, !12, !"__ksymtab_mt76_pci_disable_aspm", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/pci.c", i32 47, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
