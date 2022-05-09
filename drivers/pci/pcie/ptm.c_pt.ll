; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/ptm.c_pt.bc'
source_filename = "../drivers/pci/pcie/ptm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_enable_ptm\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_enable_ptm\09\09\09\09"
module asm "\09.long\09__crc_pci_enable_ptm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_ptm:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_ptm\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_ptm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcie_ptm_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_ptm_enabled\09\09\09\09"
module asm "\09.long\09__crc_pcie_ptm_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_ptm_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_ptm_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_ptm_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__kstrtab_pci_enable_ptm = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_ptm = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_ptm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_ptm to i32), ptr @__kstrtab_pci_enable_ptm, ptr @__kstrtabns_pci_enable_ptm }, section "___ksymtab+pci_enable_ptm", align 4
@__kstrtab_pcie_ptm_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_ptm_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_ptm_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_ptm_enabled to i32), ptr @__kstrtab_pcie_ptm_enabled, ptr @__kstrtabns_pcie_ptm_enabled }, section "___ksymtab+pcie_ptm_enabled", align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c">254ns\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%uns\00", [27 x i8] zeroinitializer }, align 32
@pci_ptm_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 29, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PTM enabled%s, %s granularity\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_ptm_info\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pci/pcie/ptm.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_ptm_info._entry_ptr = internal global ptr @pci_ptm_info._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (root)\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 21, i32 44 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 24, i32 44 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [26 x i8] c"../drivers/pci/pcie/ptm.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 28, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_pci_enable_ptm, ptr @__ksymtab_pcie_ptm_enabled, ptr @pci_ptm_info._entry, ptr @pci_ptm_info._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ptm_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_ptm(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #6
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ctrl, align 2, !annotation !29
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 31) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %call1 to i32
  %add = add nuw nsw i32 %conv, 8
  %call4 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %ctrl) #6
  %3 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ctrl, align 2
  %5 = and i16 %4, -4
  store i16 %5, ptr %ctrl, align 2
  %call8 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add, i16 noundef zeroext %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_save_ptm_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 31) #6
  %conv = zext i16 %call1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 31) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.pci_cap_saved_state, ptr %call4, i32 1
  %add = add nuw nsw i32 %conv, 8
  %call9 = tail call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef %data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_saved_ext_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_ptm_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 31) #6
  %call2 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 31) #6
  %tobool.not = icmp eq ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2)
  %tobool3.not = icmp eq i16 %call2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %call2 to i32
  %data = getelementptr inbounds %struct.pci_cap_saved_state, ptr %call1, i32 1
  %add = add nuw nsw i32 %conv, 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %call7 = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add, i16 noundef zeroext %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_ptm_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %clock_desc.i = alloca [8 x i8], align 8
  %cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #6
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cap, align 4, !annotation !29
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %3 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %5 = lshr i16 %4, 4
  %6 = and i16 %5, 15
  %7 = zext i16 %6 to i32
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end5 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 9, label %if.end.cleanup_crit_edge108
  ]

if.end.cleanup_crit_edge108:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %is_virtfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %9 = ptrtoint ptr %is_virtfn.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i, align 1
  %10 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %10, 0
  br i1 %tobool.not.i.i, label %if.end5.pci_physfn.exit.i_crit_edge, label %if.then.i.i

if.end5.pci_physfn.exit.i_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_physfn.exit.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  br label %pci_physfn.exit.i

pci_physfn.exit.i:                                ; preds = %if.then.i.i, %if.end5.pci_physfn.exit.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %13, %if.then.i.i ], [ %dev, %if.end5.pci_physfn.exit.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i5.i = icmp eq ptr %17, null
  br i1 %tobool.not.i5.i, label %pci_physfn.exit.i.if.end16_crit_edge, label %pci_upstream_bridge.exit

pci_physfn.exit.i.if.end16_crit_edge:             ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

pci_upstream_bridge.exit:                         ; preds = %pci_physfn.exit.i
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %self.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %6)
  %cmp8 = icmp ne i16 %6, 6
  %tobool.not = icmp eq ptr %19, null
  %or.cond = select i1 %cmp8, i1 true, i1 %tobool.not
  br i1 %or.cond, label %pci_upstream_bridge.exit.if.end16_crit_edge, label %land.lhs.true9

pci_upstream_bridge.exit.if.end16_crit_edge:      ; preds = %pci_upstream_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true9:                                   ; preds = %pci_upstream_bridge.exit
  %ptm_enabled = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 57
  %20 = ptrtoint ptr %ptm_enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %ptm_enabled, align 4
  %21 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not = icmp eq i8 %21, 0
  br i1 %tobool10.not, label %land.lhs.true9.if.end16_crit_edge, label %if.then11

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %ptm_granularity = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 58
  %22 = ptrtoint ptr %ptm_granularity to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ptm_granularity, align 1
  %ptm_granularity12 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 58
  %24 = ptrtoint ptr %ptm_granularity12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ptm_granularity12, align 1
  %ptm_enabled13 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 57
  %25 = ptrtoint ptr %ptm_enabled13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load14 = load i8, ptr %ptm_enabled13, align 4
  %bf.set = or i8 %bf.load14, 32
  store i8 %bf.set, ptr %ptm_enabled13, align 4
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true9.if.end16_crit_edge, %pci_upstream_bridge.exit.if.end16_crit_edge, %pci_physfn.exit.i.if.end16_crit_edge
  %tobool.not107 = phi i1 [ false, %land.lhs.true9.if.end16_crit_edge ], [ %tobool.not, %pci_upstream_bridge.exit.if.end16_crit_edge ], [ true, %pci_physfn.exit.i.if.end16_crit_edge ]
  %retval.0.i106 = phi ptr [ %19, %land.lhs.true9.if.end16_crit_edge ], [ %19, %pci_upstream_bridge.exit.if.end16_crit_edge ], [ null, %pci_physfn.exit.i.if.end16_crit_edge ]
  %call17 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 31) #6
  %conv = zext i16 %call17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call17)
  %tobool18.not = icmp eq i16 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %dev, i16 noundef zeroext 31, i32 noundef 2) #6
  %add = add nuw nsw i32 %conv, 4
  %call22 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %cap) #6
  %26 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cap, align 4
  %and = lshr i32 %27, 8
  %conv23 = trunc i32 %and to i8
  br i1 %tobool.not107, label %if.end20.if.else49_crit_edge, label %land.lhs.true25

if.end20.if.else49_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else49

land.lhs.true25:                                  ; preds = %if.end20
  %ptm_enabled26 = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i106, i32 0, i32 57
  %28 = ptrtoint ptr %ptm_enabled26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load27 = load i8, ptr %ptm_enabled26, align 4
  %29 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool31.not = icmp eq i8 %29, 0
  br i1 %tobool31.not, label %land.lhs.true25.if.else49_crit_edge, label %if.then32

land.lhs.true25.if.else49_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else49

if.then32:                                        ; preds = %land.lhs.true25
  %ptm_granularity33 = getelementptr inbounds %struct.pci_dev, ptr %retval.0.i106, i32 0, i32 58
  %30 = ptrtoint ptr %ptm_granularity33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ptm_granularity33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp35 = icmp eq i8 %31, 0
  br i1 %cmp35, label %if.then32.if.end59.sink.split_crit_edge, label %if.else

if.then32.if.end59.sink.split_crit_edge:          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.sink.split

if.else:                                          ; preds = %if.then32
  %conv34 = zext i8 %31 to i32
  %conv41 = and i32 %and, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41, i32 %conv34)
  %cmp42 = icmp ult i32 %conv41, %conv34
  br i1 %cmp42, label %if.else.if.end59.sink.split_crit_edge, label %if.else.if.end59_crit_edge

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.else.if.end59.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.sink.split

if.else49:                                        ; preds = %land.lhs.true25.if.else49_crit_edge, %if.end20.if.else49_crit_edge
  %and50 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else49.cleanup_crit_edge, label %if.then52

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  %ptm_root = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 57
  %32 = ptrtoint ptr %ptm_root to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load53 = load i8, ptr %ptm_root, align 4
  %bf.set55 = or i8 %bf.load53, 64
  store i8 %bf.set55, ptr %ptm_root, align 4
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then52, %if.else.if.end59.sink.split_crit_edge, %if.then32.if.end59.sink.split_crit_edge
  %.sink = phi i8 [ %conv23, %if.then52 ], [ 0, %if.then32.if.end59.sink.split_crit_edge ], [ %31, %if.else.if.end59.sink.split_crit_edge ]
  %ctrl.0.ph = phi i32 [ 3, %if.then52 ], [ 1, %if.then32.if.end59.sink.split_crit_edge ], [ 1, %if.else.if.end59.sink.split_crit_edge ]
  %ptm_granularity38 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 58
  %33 = ptrtoint ptr %ptm_granularity38 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %ptm_granularity38, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.else.if.end59_crit_edge
  %ctrl.0 = phi i32 [ 1, %if.else.if.end59_crit_edge ], [ %ctrl.0.ph, %if.end59.sink.split ]
  %ptm_granularity60 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 58
  %34 = ptrtoint ptr %ptm_granularity60 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ptm_granularity60, align 1
  %conv61 = zext i8 %35 to i32
  %shl = shl nuw nsw i32 %conv61, 8
  %or = or i32 %shl, %ctrl.0
  %add62 = add nuw nsw i32 %conv, 8
  %call63 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add62, i32 noundef %or) #6
  %ptm_enabled64 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 57
  %36 = ptrtoint ptr %ptm_enabled64 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load65 = load i8, ptr %ptm_enabled64, align 4
  %bf.set67 = or i8 %bf.load65, 32
  store i8 %bf.set67, ptr %ptm_enabled64, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_desc.i) #6
  %37 = ptrtoint ptr %clock_desc.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %clock_desc.i, align 8
  %38 = ptrtoint ptr %ptm_granularity60 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ptm_granularity60, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %39, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 -1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %clock_desc.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 8461818871936413184, ptr %clock_desc.i, align 8
  br label %pci_ptm_info.exit

sw.bb1.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %42 = call ptr @memcpy(ptr %clock_desc.i, ptr @.str.1, i32 7)
  br label %pci_ptm_info.exit

sw.default.i:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %39 to i32
  %call7.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clock_desc.i, i32 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %conv.i) #6
  br label %pci_ptm_info.exit

pci_ptm_info.exit:                                ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %43 = ptrtoint ptr %ptm_enabled64 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %ptm_enabled64, align 4
  %44 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.9, ptr @.str.8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond.i, ptr noundef nonnull %clock_desc.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_desc.i) #6
  br label %cleanup

cleanup:                                          ; preds = %pci_ptm_info.exit, %if.else49.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge108, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_add_ext_cap_save_buffer(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_ptm(ptr noundef %dev, ptr noundef writeonly %granularity) #0 align 64 {
entry:
  %clock_desc.i = alloca [8 x i8], align 8
  %cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #6
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cap, align 4, !annotation !29
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not = icmp eq i8 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 31) #6
  %conv = zext i16 %call1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add = add nuw nsw i32 %conv, 4
  %call4 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %cap) #6
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %5 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %7 = lshr i16 %6, 4
  %8 = and i16 %7, 15
  %9 = zext i16 %8 to i32
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %9, label %if.end7.cleanup_crit_edge [
    i32 0, label %if.then10
    i32 9, label %if.end7.if.end24_crit_edge
  ]

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %is_virtfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %11 = ptrtoint ptr %is_virtfn.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i, align 1
  %12 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %12, 0
  br i1 %tobool.not.i.i, label %if.then10.pci_physfn.exit.i_crit_edge, label %if.then.i.i

if.then10.pci_physfn.exit.i_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_physfn.exit.i

if.then.i.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 66
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  br label %pci_physfn.exit.i

pci_physfn.exit.i:                                ; preds = %if.then.i.i, %if.then10.pci_physfn.exit.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %15, %if.then.i.i ], [ %dev, %if.then10.pci_physfn.exit.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i5.i = icmp eq ptr %19, null
  br i1 %tobool.not.i5.i, label %pci_physfn.exit.i.cleanup_crit_edge, label %pci_upstream_bridge.exit

pci_physfn.exit.i.cleanup_crit_edge:              ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pci_upstream_bridge.exit:                         ; preds = %pci_physfn.exit.i
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %self.i, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %pci_upstream_bridge.exit.cleanup_crit_edge, label %lor.lhs.false

pci_upstream_bridge.exit.cleanup_crit_edge:       ; preds = %pci_upstream_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %pci_upstream_bridge.exit
  %ptm_enabled = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 57
  %22 = ptrtoint ptr %ptm_enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %ptm_enabled, align 4
  %23 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not = icmp eq i8 %23, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %ptm_granularity = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 58
  %24 = ptrtoint ptr %ptm_granularity to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ptm_granularity, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.end15, %if.end7.if.end24_crit_edge
  %.sink = phi i8 [ %25, %if.end15 ], [ 0, %if.end7.if.end24_crit_edge ]
  %ptm_granularity21 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 58
  %26 = ptrtoint ptr %ptm_granularity21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink, ptr %ptm_granularity21, align 1
  %ptm_granularity25 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 58
  %conv26 = zext i8 %.sink to i32
  %shl = shl nuw nsw i32 %conv26, 8
  %or = or i32 %shl, 1
  %add27 = add nuw nsw i32 %conv, 8
  %call28 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef %add27, i32 noundef %or) #6
  %ptm_enabled29 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 57
  %27 = ptrtoint ptr %ptm_enabled29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load30 = load i8, ptr %ptm_enabled29, align 4
  %bf.set = or i8 %bf.load30, 32
  store i8 %bf.set, ptr %ptm_enabled29, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_desc.i) #6
  %28 = ptrtoint ptr %clock_desc.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %clock_desc.i, align 8
  %29 = ptrtoint ptr %ptm_granularity25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ptm_granularity25, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %30, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 -1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %clock_desc.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 8461818871936413184, ptr %clock_desc.i, align 8
  br label %pci_ptm_info.exit

sw.bb1.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call ptr @memcpy(ptr %clock_desc.i, ptr @.str.1, i32 7)
  br label %pci_ptm_info.exit

sw.default.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %30 to i32
  %call7.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clock_desc.i, i32 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %conv.i) #6
  br label %pci_ptm_info.exit

pci_ptm_info.exit:                                ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %34 = ptrtoint ptr %ptm_enabled29 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %ptm_enabled29, align 4
  %35 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.9, ptr @.str.8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond.i, ptr noundef nonnull %clock_desc.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_desc.i) #6
  %tobool32.not = icmp eq ptr %granularity, null
  br i1 %tobool32.not, label %pci_ptm_info.exit.cleanup_crit_edge, label %if.then33

pci_ptm_info.exit.cleanup_crit_edge:              ; preds = %pci_ptm_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %pci_ptm_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %ptm_granularity25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ptm_granularity25, align 1
  %38 = ptrtoint ptr %granularity to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %granularity, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %pci_ptm_info.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %pci_upstream_bridge.exit.cleanup_crit_edge, %pci_physfn.exit.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %pci_upstream_bridge.exit.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %pci_ptm_info.exit.cleanup_crit_edge ], [ -22, %pci_physfn.exit.i.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pcie_ptm_enabled(ptr noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ptm_enabled = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 57
  %0 = ptrtoint ptr %ptm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ptm_enabled, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1 = icmp ne i8 %1, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_pci_enable_ptm, !1, !"__ksymtab_pci_enable_ptm", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/ptm.c", i32 204, i32 1}
!2 = !{ptr @__ksymtab_pcie_ptm_enabled, !3, !"__ksymtab_pcie_ptm_enabled", i1 false, i1 false}
!3 = !{!"../drivers/pci/pcie/ptm.c", i32 213, i32 1}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pci/pcie/ptm.c", i32 18, i32 44}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/pcie/ptm.c", i32 21, i32 44}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/pcie/ptm.c", i32 24, i32 44}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/pcie/ptm.c", i32 28, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pci_ptm_info._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @pci_ptm_info._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
