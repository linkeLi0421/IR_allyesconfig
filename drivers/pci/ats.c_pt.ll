; ModuleID = '/llk/IR_all_yes/drivers/pci/ats.c_pt.bc'
source_filename = "../drivers/pci/ats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_ats_supported\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ats_supported\09\09\09\09"
module asm "\09.long\09__crc_pci_ats_supported\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ats_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ats_supported\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ats_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_enable_ats\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_enable_ats\09\09\09\09"
module asm "\09.long\09__crc_pci_enable_ats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_ats:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_ats\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_ats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_disable_ats\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_ats\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_ats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_ats:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_ats\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_ats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_disable_pri\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_pri\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_pri\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_pri:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_pri\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_pri:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_pri_supported\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_pri_supported\09\09\09\09"
module asm "\09.long\09__crc_pci_pri_supported\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_pri_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_pri_supported\22\09\09\09\09\09"
module asm "__kstrtabns_pci_pri_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_enable_pasid\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_enable_pasid\09\09\09\09"
module asm "\09.long\09__crc_pci_enable_pasid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_pasid\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_disable_pasid\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_pasid\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_pasid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_pasid\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_pasid_features\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_pasid_features\09\09\09\09"
module asm "\09.long\09__crc_pci_pasid_features\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_pasid_features:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_pasid_features\22\09\09\09\09\09"
module asm "__kstrtabns_pci_pasid_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_max_pasids\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_max_pasids\09\09\09\09"
module asm "\09.long\09__crc_pci_max_pasids\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_max_pasids:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_max_pasids\22\09\09\09\09\09"
module asm "__kstrtabns_pci_max_pasids:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.67 = type { ptr }

@__kstrtab_pci_ats_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ats_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ats_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ats_supported to i32), ptr @__kstrtab_pci_ats_supported, ptr @__kstrtabns_pci_ats_supported }, section "___ksymtab_gpl+pci_ats_supported", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/pci/ats.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_pci_enable_ats = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_ats = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_ats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_ats to i32), ptr @__kstrtab_pci_enable_ats, ptr @__kstrtabns_pci_enable_ats }, section "___ksymtab_gpl+pci_enable_ats", align 4
@__kstrtab_pci_disable_ats = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_ats = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_ats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_ats to i32), ptr @__kstrtab_pci_disable_ats, ptr @__kstrtabns_pci_disable_ats }, section "___ksymtab_gpl+pci_disable_ats", align 4
@__kstrtab_pci_disable_pri = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_pri = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_pri = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_pri to i32), ptr @__kstrtab_pci_disable_pri, ptr @__kstrtabns_pci_disable_pri }, section "___ksymtab_gpl+pci_disable_pri", align 4
@__kstrtab_pci_pri_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_pri_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_pri_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_pri_supported to i32), ptr @__kstrtab_pci_pri_supported, ptr @__kstrtabns_pci_pri_supported }, section "___ksymtab_gpl+pci_pri_supported", align 4
@__kstrtab_pci_enable_pasid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_pasid = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_pasid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_pasid to i32), ptr @__kstrtab_pci_enable_pasid, ptr @__kstrtabns_pci_enable_pasid }, section "___ksymtab_gpl+pci_enable_pasid", align 4
@__kstrtab_pci_disable_pasid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_pasid = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_pasid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_pasid to i32), ptr @__kstrtab_pci_disable_pasid, ptr @__kstrtabns_pci_disable_pasid }, section "___ksymtab_gpl+pci_disable_pasid", align 4
@__kstrtab_pci_pasid_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_pasid_features = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_pasid_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_pasid_features to i32), ptr @__kstrtab_pci_pasid_features, ptr @__kstrtabns_pci_pasid_features }, section "___ksymtab_gpl+pci_pasid_features", align 4
@__kstrtab_pci_max_pasids = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_max_pasids = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_max_pasids = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_max_pasids to i32), ptr @__kstrtab_pci_max_pasids, ptr @__kstrtabns_pci_max_pasids }, section "___ksymtab_gpl+pci_max_pasids", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../drivers/pci/ats.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 64, i32 6 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_pci_ats_supported, ptr @__ksymtab_pci_disable_ats, ptr @__ksymtab_pci_disable_pasid, ptr @__ksymtab_pci_disable_pri, ptr @__ksymtab_pci_enable_ats, ptr @__ksymtab_pci_enable_pasid, ptr @__ksymtab_pci_max_pasids, ptr @__ksymtab_pci_pasid_features, ptr @__ksymtab_pci_pri_supported, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_ats_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @pci_ats_disabled() #6
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 67
  %0 = ptrtoint ptr %ats_cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call1, ptr %ats_cap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_ats_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_ats_supported(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 67
  %0 = ptrtoint ptr %ats_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ats_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %untrusted = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %2 = ptrtoint ptr %untrusted to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %untrusted, align 1
  %3 = and i40 %bf.load, 4096
  %cmp = icmp eq i40 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_ats(ptr noundef %dev, i32 noundef %ps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ats_cap.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 67
  %0 = ptrtoint ptr %ats_cap.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ats_cap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %pci_ats_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pci_ats_supported.exit:                           ; preds = %entry
  %untrusted.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %2 = ptrtoint ptr %untrusted.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i = load i40, ptr %untrusted.i, align 1
  %3 = and i40 %bf.load.i, 4096
  %cmp.i = icmp eq i40 %3, 0
  br i1 %cmp.i, label %if.end, label %pci_ats_supported.exit.cleanup_crit_edge

pci_ats_supported.exit.cleanup_crit_edge:         ; preds = %pci_ats_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pci_ats_supported.exit
  %4 = ptrtoint ptr %untrusted.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %untrusted.i, align 1
  %5 = and i40 %bf.load, 16777216
  %tobool.not = icmp eq i40 %5, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !29

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %ps)
  %cmp = icmp slt i32 %ps, 12
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end24
  %6 = and i40 %bf.load, 65536
  %tobool31.not = icmp eq i40 %6, 0
  br i1 %tobool31.not, label %if.else, label %pci_physfn.exit

pci_physfn.exit:                                  ; preds = %if.end26
  %7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ats_stu = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %ats_stu to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ats_stu, align 2
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ps)
  %cmp34.not = icmp eq i32 %conv, %ps
  br i1 %cmp34.not, label %pci_physfn.exit.if.end44_crit_edge, label %pci_physfn.exit.cleanup_crit_edge

pci_physfn.exit.cleanup_crit_edge:                ; preds = %pci_physfn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pci_physfn.exit.if.end44_crit_edge:               ; preds = %pci_physfn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %conv38 = trunc i32 %ps to i8
  %ats_stu39 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 68
  %12 = ptrtoint ptr %ats_stu39 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv38, ptr %ats_stu39, align 2
  %13 = trunc i32 %ps to i16
  %14 = add i16 %13, 20
  %15 = and i16 %14, 31
  %conv43 = or i16 %15, -32768
  br label %if.end44

if.end44:                                         ; preds = %if.else, %pci_physfn.exit.if.end44_crit_edge
  %ctrl.0 = phi i16 [ -32768, %pci_physfn.exit.if.end44_crit_edge ], [ %conv43, %if.else ]
  %conv45 = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv45, 6
  %call46 = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add, i16 noundef zeroext %ctrl.0) #6
  %16 = ptrtoint ptr %untrusted.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 5)
  %bf.load48 = load i40, ptr %untrusted.i, align 1
  %bf.set = or i40 %bf.load48, 16777216
  store i40 %bf.set, ptr %untrusted.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %pci_physfn.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end, %pci_ats_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end44 ], [ -22, %pci_ats_supported.exit.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %pci_physfn.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_ats(ptr noundef %dev) #0 align 64 {
entry:
  %ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #6
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ctrl, align 2, !annotation !30
  %ats_enabled = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %ats_enabled to i32
  call void @__asan_loadN_noabort(i32 %1, i32 5)
  %bf.load = load i40, ptr %ats_enabled, align 1
  %2 = and i40 %bf.load, 16777216
  %tobool.not = icmp eq i40 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 67
  %3 = ptrtoint ptr %ats_cap to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ats_cap, align 4
  %conv = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv, 6
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %ctrl) #6
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ctrl, align 2
  %7 = and i16 %6, 32767
  store i16 %7, ptr %ctrl, align 2
  %8 = ptrtoint ptr %ats_cap to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ats_cap, align 4
  %conv27 = zext i16 %9 to i32
  %add28 = add nuw nsw i32 %conv27, 6
  %call29 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add28, i16 noundef zeroext %7) #6
  %10 = ptrtoint ptr %ats_enabled to i32
  call void @__asan_loadN_noabort(i32 %10, i32 5)
  %bf.load31 = load i40, ptr %ats_enabled, align 1
  %bf.clear32 = and i40 %bf.load31, -16777217
  store i40 %bf.clear32, ptr %ats_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_ats_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ats_enabled = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %ats_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %ats_enabled, align 1
  %1 = and i40 %bf.load, 16777216
  %tobool.not = icmp eq i40 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i40 %bf.load, 65536
  %tobool5.not = icmp eq i40 %2, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ats_stu = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 68
  %3 = ptrtoint ptr %ats_stu to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ats_stu, align 2
  %5 = add i8 %4, 20
  %6 = and i8 %5, 31
  %and = zext i8 %6 to i16
  %or = or i16 %and, -32768
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %ctrl.0 = phi i16 [ -32768, %if.end.if.end9_crit_edge ], [ %or, %if.then6 ]
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 67
  %7 = ptrtoint ptr %ats_cap to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ats_cap, align 4
  %conv10 = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv10, 6
  %call = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add, i16 noundef zeroext %ctrl.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_ats_queue_depth(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %cap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #6
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cap, align 2, !annotation !30
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 67
  %1 = ptrtoint ptr %ats_cap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ats_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %3 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %4 = and i40 %bf.load, 65536
  %tobool1.not = icmp eq i40 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %2 to i32
  %add = add nuw nsw i32 %conv, 4
  %call = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %cap) #6
  %5 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cap, align 2
  %7 = and i16 %6, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  %narrow = select i1 %tobool6.not, i16 32, i16 %7
  %spec.select = zext i16 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_ats_page_aligned(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %cap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #6
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cap, align 2, !annotation !30
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 67
  %1 = ptrtoint ptr %ats_cap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ats_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %2 to i32
  %add = add nuw nsw i32 %conv, 4
  %call = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %cap) #6
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cap, align 2
  %5 = lshr i16 %4, 5
  %.lobit = and i16 %5, 1
  %6 = zext i16 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_pri_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !30
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %pdev, i32 noundef 19) #6
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 70
  %1 = ptrtoint ptr %pri_cap to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call, ptr %pri_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %call to i32
  %add = add nuw nsw i32 %conv, 6
  %call3 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool5.not = icmp sgt i16 %3, -1
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pasid_required = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 73
  %4 = ptrtoint ptr %pasid_required to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %pasid_required, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pasid_required, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_pri(ptr noundef %pdev, i32 noundef %reqs) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i16, align 2
  %max_requests = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_requests) #6
  %1 = ptrtoint ptr %max_requests to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_requests, align 4, !annotation !30
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 70
  %2 = ptrtoint ptr %pri_cap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pri_cap, align 8
  %conv = zext i16 %3 to i32
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %4 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %5 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %5, 0
  br i1 %tobool.not, label %if.end7, label %pci_physfn.exit

pci_physfn.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %pri_enabled = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %pri_enabled to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load1 = load i40, ptr %pri_enabled, align 1
  %10 = and i40 %bf.load1, 4194304
  %tobool5.not = icmp eq i40 %10, 0
  %. = select i1 %tobool5.not, i32 -22, i32 0
  br label %cleanup

if.end7:                                          ; preds = %entry
  %11 = and i40 %bf.load, 4194304
  %tobool13.not = icmp eq i40 %11, 0
  br i1 %tobool13.not, label %if.end37, label %do.end, !prof !29

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end37:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool38.not = icmp eq i16 %3, 0
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.end40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %add = add nuw nsw i32 %conv, 6
  %call41 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %status) #6
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %status, align 2
  %14 = and i16 %13, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool43.not = icmp eq i16 %14, 0
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %add46 = add nuw nsw i32 %conv, 8
  %call47 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add46, ptr noundef nonnull %max_requests) #6
  %15 = ptrtoint ptr %max_requests to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_requests, align 4
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %reqs)
  %pri_reqs_alloc = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 72
  %18 = ptrtoint ptr %pri_reqs_alloc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pri_reqs_alloc, align 4
  %add50 = add nuw nsw i32 %conv, 12
  %call51 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %add50, i32 noundef %17) #6
  %add52 = add nuw nsw i32 %conv, 4
  %call53 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add52, i16 noundef zeroext 1) #6
  %19 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %19, i32 5)
  %bf.load55 = load i40, ptr %is_virtfn, align 1
  %bf.set = or i40 %bf.load55, 4194304
  store i40 %bf.set, ptr %is_virtfn, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end40.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end, %pci_physfn.exit
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end45 ], [ %., %pci_physfn.exit ], [ -22, %if.end37.cleanup_crit_edge ], [ -16, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_requests) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_pri(ptr noundef %pdev) #0 align 64 {
entry:
  %control = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %control) #6
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %control, align 2, !annotation !30
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 70
  %1 = ptrtoint ptr %pri_cap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pri_cap, align 8
  %conv = zext i16 %2 to i32
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %3 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %4 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = and i40 %bf.load, 4194304
  %tobool5.not = icmp eq i40 %5, 0
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !31

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool31.not = icmp eq i16 %2, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %conv, 4
  %call = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %control) #6
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %control, align 2
  %8 = and i16 %7, -2
  store i16 %8, ptr %control, align 2
  %call37 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add, i16 noundef zeroext %8) #6
  %9 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load39 = load i40, ptr %is_virtfn, align 1
  %bf.clear40 = and i40 %bf.load39, -4194305
  store i40 %bf.clear40, ptr %is_virtfn, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end30.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %control) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_pri_state(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 70
  %0 = ptrtoint ptr %pri_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pri_cap, align 8
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %2 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %3 = and i40 %bf.load, 4259840
  %4 = icmp ne i40 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool8.not = icmp eq i16 %1, 0
  %or.cond22 = select i1 %4, i1 true, i1 %tobool8.not
  br i1 %or.cond22, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %1 to i32
  %pri_reqs_alloc = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 72
  %5 = ptrtoint ptr %pri_reqs_alloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pri_reqs_alloc, align 4
  %add = add nuw nsw i32 %conv, 12
  %call = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %add, i32 noundef %6) #6
  %add11 = add nuw nsw i32 %conv, 4
  %call12 = tail call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add11, i16 noundef zeroext 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_reset_pri(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 70
  %0 = ptrtoint ptr %pri_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pri_cap, align 8
  %conv = zext i16 %1 to i32
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %2 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %3 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i40 %bf.load, 4194304
  %tobool5.not = icmp eq i40 %4, 0
  br i1 %tobool5.not, label %if.end29, label %do.end, !prof !29

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool30.not = icmp eq i16 %1, 0
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %conv, 4
  %call = tail call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add, i16 noundef zeroext 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end29.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end32 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pci_prg_resp_pasid_required(ptr nocapture noundef readonly %pdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %0 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %1 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %pci_physfn.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pci_physfn.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %pci_physfn.exit, %entry.if.end_crit_edge
  %pdev.addr.0 = phi ptr [ %4, %pci_physfn.exit ], [ %pdev, %entry.if.end_crit_edge ]
  %pasid_required = getelementptr inbounds %struct.pci_dev, ptr %pdev.addr.0, i32 0, i32 73
  %5 = ptrtoint ptr %pasid_required to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load1 = load i8, ptr %pasid_required, align 8
  %bf.lshr2 = lshr i8 %bf.load1, 7
  %bf.cast3 = zext i8 %bf.lshr2 to i32
  ret i32 %bf.cast3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_pri_supported(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_virtfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %0 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %1 = and i40 %bf.load.i, 65536
  %tobool.not.i = icmp eq i40 %1, 0
  br i1 %tobool.not.i, label %entry.pci_physfn.exit_crit_edge, label %if.then.i

entry.pci_physfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_physfn.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  br label %pci_physfn.exit

pci_physfn.exit:                                  ; preds = %if.then.i, %entry.pci_physfn.exit_crit_edge
  %dev.addr.0.i = phi ptr [ %4, %if.then.i ], [ %pdev, %entry.pci_physfn.exit_crit_edge ]
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i, i32 0, i32 70
  %5 = ptrtoint ptr %pri_cap to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pri_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp ne i16 %6, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_pasid_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %pdev, i32 noundef 27) #6
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 75
  %0 = ptrtoint ptr %pasid_cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call, ptr %pasid_cap, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_pasid(ptr noundef %pdev, i32 noundef %features) #0 align 64 {
entry:
  %supported = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %supported) #6
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %supported, align 2, !annotation !30
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 75
  %1 = ptrtoint ptr %pasid_cap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pasid_cap, align 2
  %conv = zext i16 %2 to i32
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %3 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %4 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %4, 0
  br i1 %tobool.not, label %if.end7, label %pci_physfn.exit

pci_physfn.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %pasid_enabled = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 49
  %8 = ptrtoint ptr %pasid_enabled to i32
  call void @__asan_loadN_noabort(i32 %8, i32 5)
  %bf.load1 = load i40, ptr %pasid_enabled, align 1
  %9 = and i40 %bf.load1, 8388608
  %tobool5.not = icmp eq i40 %9, 0
  %. = select i1 %tobool5.not, i32 -22, i32 0
  br label %cleanup

if.end7:                                          ; preds = %entry
  %10 = and i40 %bf.load, 8388608
  %tobool13.not = icmp eq i40 %10, 0
  br i1 %tobool13.not, label %if.end37, label %do.end, !prof !29

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end37:                                         ; preds = %if.end7
  %eetlp_prefix_path = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 41
  %11 = ptrtoint ptr %eetlp_prefix_path to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load38 = load i8, ptr %eetlp_prefix_path, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load38)
  %12 = icmp ult i8 %bf.load38, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool49.not = icmp eq i16 %2, 0
  %or.cond84 = select i1 %12, i1 true, i1 %tobool49.not
  br i1 %or.cond84, label %if.end37.cleanup_crit_edge, label %if.end51

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end37
  %add = add nuw nsw i32 %conv, 4
  %call52 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %supported) #6
  %13 = ptrtoint ptr %supported to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %supported, align 2
  %15 = and i16 %14, 6
  store i16 %15, ptr %supported, align 2
  %conv55 = zext i16 %15 to i32
  %and56 = and i32 %conv55, %features
  call void @__sanitizer_cov_trace_cmp4(i32 %and56, i32 %features)
  %cmp.not = icmp eq i32 %and56, %features
  br i1 %cmp.not, label %if.end59, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %16 = trunc i32 %features to i16
  %conv60 = or i16 %16, 1
  %pasid_features = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 76
  %17 = ptrtoint ptr %pasid_features to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %pasid_features, align 4
  %add62 = add nuw nsw i32 %conv, 6
  %call63 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add62, i16 noundef zeroext %conv60) #6
  %18 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %18, i32 5)
  %bf.load65 = load i40, ptr %is_virtfn, align 1
  %bf.set = or i40 %bf.load65, 8388608
  store i40 %bf.set, ptr %is_virtfn, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end51.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end, %pci_physfn.exit
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end59 ], [ %., %pci_physfn.exit ], [ -22, %if.end37.cleanup_crit_edge ], [ -22, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %supported) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_pasid(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 75
  %0 = ptrtoint ptr %pasid_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pasid_cap, align 2
  %conv = zext i16 %1 to i32
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %2 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %3 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i40 %bf.load, 8388608
  %tobool5.not = icmp eq i40 %4, 0
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !31

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 416, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool31.not = icmp eq i16 %1, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %conv, 6
  %call = tail call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add, i16 noundef zeroext 0) #6
  %5 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load35 = load i40, ptr %is_virtfn, align 1
  %bf.clear36 = and i40 %bf.load35, -8388609
  store i40 %bf.clear36, ptr %is_virtfn, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end30.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_pasid_state(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 75
  %0 = ptrtoint ptr %pasid_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pasid_cap, align 2
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %2 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %3 = and i40 %bf.load, 8454144
  %4 = icmp ne i40 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool8.not = icmp eq i16 %1, 0
  %or.cond19 = select i1 %4, i1 true, i1 %tobool8.not
  br i1 %or.cond19, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %1 to i32
  %pasid_features = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 76
  %5 = ptrtoint ptr %pasid_features to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pasid_features, align 4
  %7 = or i16 %6, 1
  %add = add nuw nsw i32 %conv, 6
  %call = tail call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add, i16 noundef zeroext %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_pasid_features(ptr noundef %pdev) #0 align 64 {
entry:
  %supported = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %supported) #6
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %supported, align 2, !annotation !30
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %1 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %1, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %2 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %pci_physfn.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pci_physfn.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %pci_physfn.exit, %entry.if.end_crit_edge
  %pdev.addr.0 = phi ptr [ %5, %pci_physfn.exit ], [ %pdev, %entry.if.end_crit_edge ]
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev.addr.0, i32 0, i32 75
  %6 = ptrtoint ptr %pasid_cap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pasid_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %call4 = call i32 @pci_read_config_word(ptr noundef %pdev.addr.0, i32 noundef %add, ptr noundef nonnull %supported) #6
  %8 = ptrtoint ptr %supported to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %supported, align 2
  %10 = and i16 %9, 6
  %conv7 = zext i16 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv7, %if.end3 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %supported) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_max_pasids(ptr noundef %pdev) #0 align 64 {
entry:
  %supported = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %supported) #6
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %supported, align 2, !annotation !30
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %1 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %1, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %2 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %pci_physfn.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pci_physfn.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %pci_physfn.exit, %entry.if.end_crit_edge
  %pdev.addr.0 = phi ptr [ %5, %pci_physfn.exit ], [ %pdev, %entry.if.end_crit_edge ]
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev.addr.0, i32 0, i32 75
  %6 = ptrtoint ptr %pasid_cap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pasid_cap, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %call4 = call i32 @pci_read_config_word(ptr noundef %pdev.addr.0, i32 noundef %add, ptr noundef nonnull %supported) #6
  %8 = ptrtoint ptr %supported to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %supported, align 2
  %10 = lshr i16 %9, 8
  %11 = and i16 %10, 31
  %conv7 = zext i16 %11 to i32
  %shl = shl nuw i32 1, %conv7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl, %if.end3 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %supported) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_pci_ats_supported, !1, !"__ksymtab_pci_ats_supported", i1 false, i1 false}
!1 = !{!"../drivers/pci/ats.c", i32 47, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/ats.c", i32 64, i32 6}
!4 = !{ptr @__ksymtab_pci_enable_ats, !5, !"__ksymtab_pci_enable_ats", i1 false, i1 false}
!5 = !{!"../drivers/pci/ats.c", i32 88, i32 1}
!6 = !{ptr @__ksymtab_pci_disable_ats, !7, !"__ksymtab_pci_disable_ats", i1 false, i1 false}
!7 = !{!"../drivers/pci/ats.c", i32 107, i32 1}
!8 = !{ptr @__ksymtab_pci_disable_pri, !9, !"__ksymtab_pci_disable_pri", i1 false, i1 false}
!9 = !{!"../drivers/pci/ats.c", i32 263, i32 1}
!10 = !{ptr @__ksymtab_pci_pri_supported, !11, !"__ksymtab_pci_pri_supported", i1 false, i1 false}
!11 = !{!"../drivers/pci/ats.c", i32 343, i32 1}
!12 = !{ptr @__ksymtab_pci_enable_pasid, !13, !"__ksymtab_pci_enable_pasid", i1 false, i1 false}
!13 = !{!"../drivers/pci/ats.c", i32 401, i32 1}
!14 = !{ptr @__ksymtab_pci_disable_pasid, !15, !"__ksymtab_pci_disable_pasid", i1 false, i1 false}
!15 = !{!"../drivers/pci/ats.c", i32 426, i32 1}
!16 = !{ptr @__ksymtab_pci_pasid_features, !17, !"__ksymtab_pci_pasid_features", i1 false, i1 false}
!17 = !{!"../drivers/pci/ats.c", i32 478, i32 1}
!18 = !{ptr @__ksymtab_pci_max_pasids, !19, !"__ksymtab_pci_max_pasids", i1 false, i1 false}
!19 = !{!"../drivers/pci/ats.c", i32 507, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"auto-init"}
!31 = !{!"branch_weights", i32 1, i32 2000}
