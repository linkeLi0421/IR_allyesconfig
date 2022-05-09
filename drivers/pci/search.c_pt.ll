; ModuleID = '/llk/IR_all_yes/drivers/pci/search.c_pt.bc'
source_filename = "../drivers/pci/search.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_find_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_find_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_find_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_find_next_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_find_next_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_find_next_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_next_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_next_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_next_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_get_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_get_slot\09\09\09\09"
module asm "\09.long\09__crc_pci_get_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_get_domain_bus_and_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_get_domain_bus_and_slot\09\09\09\09"
module asm "\09.long\09__crc_pci_get_domain_bus_and_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_domain_bus_and_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_domain_bus_and_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_domain_bus_and_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_get_subsys\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_get_subsys\09\09\09\09"
module asm "\09.long\09__crc_pci_get_subsys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_get_device\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_get_device\09\09\09\09"
module asm "\09.long\09__crc_pci_get_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_get_class\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_get_class\09\09\09\09"
module asm "\09.long\09__crc_pci_get_class\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_class:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_class\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_dev_present\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_dev_present\09\09\09\09"
module asm "\09.long\09__crc_pci_dev_present\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_present:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_present\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_bus_sem.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@pci_bus_sem = dso_local global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @pci_bus_sem, i64 56), ptr getelementptr (i8, ptr @pci_bus_sem, i64 56) }, ptr @pci_bus_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_bus_sem\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_pci_find_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_bus to i32), ptr @__kstrtab_pci_find_bus, ptr @__kstrtabns_pci_find_bus }, section "___ksymtab+pci_find_bus", align 4
@pci_root_buses = external dso_local global %struct.list_head, align 4
@__kstrtab_pci_find_next_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_next_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_next_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_next_bus to i32), ptr @__kstrtab_pci_find_next_bus, ptr @__kstrtabns_pci_find_next_bus }, section "___ksymtab+pci_find_next_bus", align 4
@__kstrtab_pci_get_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_slot to i32), ptr @__kstrtab_pci_get_slot, ptr @__kstrtabns_pci_get_slot }, section "___ksymtab+pci_get_slot", align 4
@__kstrtab_pci_get_domain_bus_and_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_domain_bus_and_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_domain_bus_and_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_domain_bus_and_slot to i32), ptr @__kstrtab_pci_get_domain_bus_and_slot, ptr @__kstrtabns_pci_get_domain_bus_and_slot }, section "___ksymtab+pci_get_domain_bus_and_slot", align 4
@__kstrtab_pci_get_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_subsys to i32), ptr @__kstrtab_pci_get_subsys, ptr @__kstrtabns_pci_get_subsys }, section "___ksymtab+pci_get_subsys", align 4
@__kstrtab_pci_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_device to i32), ptr @__kstrtab_pci_get_device, ptr @__kstrtabns_pci_get_device }, section "___ksymtab+pci_get_device", align 4
@__kstrtab_pci_get_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_class = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_class to i32), ptr @__kstrtab_pci_get_class, ptr @__kstrtabns_pci_get_class }, section "___ksymtab+pci_get_class", align 4
@__kstrtab_pci_dev_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_present = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_present to i32), ptr @__kstrtab_pci_dev_present, ptr @__kstrtabns_pci_dev_present }, section "___ksymtab+pci_dev_present", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"pci_bus_sem\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [24 x i8] c"../drivers/pci/search.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 17, i32 1 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_pci_dev_present, ptr @__ksymtab_pci_find_bus, ptr @__ksymtab_pci_find_next_bus, ptr @__ksymtab_pci_get_class, ptr @__ksymtab_pci_get_device, ptr @__ksymtab_pci_get_domain_bus_and_slot, ptr @__ksymtab_pci_get_slot, ptr @__ksymtab_pci_get_subsys, ptr @.str, ptr @pci_bus_sem, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_for_each_dma_alias(ptr noundef %pdev, ptr nocapture noundef readonly %fn, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_real_dma_dev(ptr noundef %pdev) #5
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number.i, align 4
  %conv1.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn.i, align 4
  %or.i = or i32 %shl.i, %5
  %conv2.i = trunc i32 %or.i to i16
  %call2 = tail call i32 %fn(ptr noundef %call, i16 noundef zeroext %conv2.i, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup79_crit_edge

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

if.end:                                           ; preds = %entry
  %dma_alias_mask = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 26
  %6 = ptrtoint ptr %dma_alias_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_alias_mask, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %if.then6, !prof !29

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then6:                                         ; preds = %if.end
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef nonnull %7, i32 noundef 256, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call8)
  %cmp152 = icmp ult i32 %call8, 256
  br i1 %cmp152, label %if.then6.for.body_crit_edge, label %if.then6.if.end18_crit_edge

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then6.for.body_crit_edge:                      ; preds = %if.then6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then6.for.body_crit_edge
  %devfn.0153 = phi i32 [ %call17, %for.inc.for.body_crit_edge ], [ %call8, %if.then6.for.body_crit_edge ]
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %conv10 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %or = or i32 %shl, %devfn.0153
  %conv11 = trunc i32 %or to i16
  %call12 = tail call i32 %fn(ptr noundef %call, i16 noundef zeroext %conv11, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %for.body.cleanup79_crit_edge

for.body.cleanup79_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

for.inc:                                          ; preds = %for.body
  %12 = ptrtoint ptr %dma_alias_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_alias_mask, align 8
  %add = add nuw nsw i32 %devfn.0153, 1
  %call17 = tail call i32 @_find_next_bit_be(ptr noundef %13, i32 noundef 256, i32 noundef %add) #5
  %cmp = icmp ult i32 %call17, 256
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end18_crit_edge

for.inc.if.end18_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end18:                                         ; preds = %for.inc.if.end18_crit_edge, %if.then6.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bus.0154 = load ptr, ptr %bus.i, align 8
  %parent.i155 = getelementptr inbounds %struct.pci_bus, ptr %bus.0154, i32 0, i32 1
  %15 = ptrtoint ptr %parent.i155 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i155, align 8
  %tobool.not.i156 = icmp eq ptr %16, null
  br i1 %tobool.not.i156, label %if.end18.cleanup79_crit_edge, label %if.end18.for.body24_crit_edge

if.end18.for.body24_crit_edge:                    ; preds = %if.end18
  br label %for.body24

if.end18.cleanup79_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

for.body24:                                       ; preds = %for.inc77.for.body24_crit_edge, %if.end18.for.body24_crit_edge
  %parent.i158 = phi ptr [ %parent.i, %for.inc77.for.body24_crit_edge ], [ %parent.i155, %if.end18.for.body24_crit_edge ]
  %bus.0157 = phi ptr [ %bus.0, %for.inc77.for.body24_crit_edge ], [ %bus.0154, %if.end18.for.body24_crit_edge ]
  %self = getelementptr inbounds %struct.pci_bus, ptr %bus.0157, i32 0, i32 4
  %17 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %self, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %for.body24.for.inc77_crit_edge, label %if.end27

for.body24.for.inc77_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc77

if.end27:                                         ; preds = %for.body24
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 50
  %19 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dev_flags, align 2
  %21 = and i16 %20, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool30.not = icmp eq i16 %21, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup79_crit_edge

if.end27.cleanup79_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

if.end32:                                         ; preds = %if.end27
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 19
  %22 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not = icmp eq i8 %23, 0
  br i1 %tobool.i.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end32
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 25
  %24 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %26 = lshr i16 %25, 4
  %27 = and i16 %26, 15
  %28 = zext i16 %27 to i32
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.then34.for.inc77_crit_edge [
    i32 8, label %sw.bb47
    i32 7, label %sw.bb36
  ]

if.then34.for.inc77_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc77

sw.bb36:                                          ; preds = %if.then34
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 2
  %30 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %subordinate, align 4
  %number37 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %number37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %number37, align 4
  %conv39 = zext i8 %33 to i16
  %shl40 = shl nuw i16 %conv39, 8
  %call43 = tail call i32 %fn(ptr noundef nonnull %18, i16 noundef zeroext %shl40, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %sw.bb36.for.inc77_crit_edge, label %sw.bb36.cleanup79_crit_edge

sw.bb36.cleanup79_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

sw.bb36.for.inc77_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc77

sw.bb47:                                          ; preds = %if.then34
  %bus.i129 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %34 = ptrtoint ptr %bus.i129 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i129, align 8
  %number.i130 = getelementptr inbounds %struct.pci_bus, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %number.i130 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %number.i130, align 4
  %conv1.i131 = zext i8 %37 to i32
  %shl.i132 = shl nuw nsw i32 %conv1.i131, 8
  %devfn.i133 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 6
  %38 = ptrtoint ptr %devfn.i133 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devfn.i133, align 4
  %or.i134 = or i32 %shl.i132, %39
  %conv2.i135 = trunc i32 %or.i134 to i16
  %call49 = tail call i32 %fn(ptr noundef nonnull %18, i16 noundef zeroext %conv2.i135, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %sw.bb47.for.inc77_crit_edge, label %sw.bb47.cleanup79_crit_edge

sw.bb47.cleanup79_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

sw.bb47.for.inc77_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc77

if.else:                                          ; preds = %if.end32
  %40 = and i16 %20, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool56.not = icmp eq i16 %40, 0
  br i1 %tobool56.not, label %if.else66, label %if.then57

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %subordinate58 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 2
  %41 = ptrtoint ptr %subordinate58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %subordinate58, align 4
  %number59 = getelementptr inbounds %struct.pci_bus, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %number59 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %number59, align 4
  %conv61 = zext i8 %44 to i16
  %shl62 = shl nuw i16 %conv61, 8
  br label %if.end69

if.else66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bus.i136 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1
  %45 = ptrtoint ptr %bus.i136 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i136, align 8
  %number.i137 = getelementptr inbounds %struct.pci_bus, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %number.i137 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %number.i137, align 4
  %conv1.i138 = zext i8 %48 to i32
  %shl.i139 = shl nuw nsw i32 %conv1.i138, 8
  %devfn.i140 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 6
  %49 = ptrtoint ptr %devfn.i140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %devfn.i140, align 4
  %or.i141 = or i32 %shl.i139, %50
  %conv2.i142 = trunc i32 %or.i141 to i16
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %if.then57
  %conv2.i142.sink = phi i16 [ %conv2.i142, %if.else66 ], [ %shl62, %if.then57 ]
  %call68 = tail call i32 %fn(ptr noundef nonnull %18, i16 noundef zeroext %conv2.i142.sink, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool70.not = icmp eq i32 %call68, 0
  br i1 %tobool70.not, label %if.end69.for.inc77_crit_edge, label %if.end69.cleanup79_crit_edge

if.end69.cleanup79_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

if.end69.for.inc77_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc77

for.inc77:                                        ; preds = %if.end69.for.inc77_crit_edge, %sw.bb47.for.inc77_crit_edge, %sw.bb36.for.inc77_crit_edge, %if.then34.for.inc77_crit_edge, %for.body24.for.inc77_crit_edge
  %51 = ptrtoint ptr %parent.i158 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bus.0 = load ptr, ptr %parent.i158, align 8
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %bus.0, i32 0, i32 1
  %52 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %for.inc77.cleanup79_crit_edge, label %for.inc77.for.body24_crit_edge

for.inc77.for.body24_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.inc77.cleanup79_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup79

cleanup79:                                        ; preds = %for.inc77.cleanup79_crit_edge, %if.end69.cleanup79_crit_edge, %sw.bb47.cleanup79_crit_edge, %sw.bb36.cleanup79_crit_edge, %if.end27.cleanup79_crit_edge, %if.end18.cleanup79_crit_edge, %for.body.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.4 = phi i32 [ %call2, %entry.cleanup79_crit_edge ], [ 0, %if.end18.cleanup79_crit_edge ], [ 0, %for.inc77.cleanup79_crit_edge ], [ %call49, %sw.bb47.cleanup79_crit_edge ], [ %call43, %sw.bb36.cleanup79_crit_edge ], [ %call68, %if.end69.cleanup79_crit_edge ], [ 0, %if.end27.cleanup79_crit_edge ], [ %call12, %for.body.cleanup79_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_real_dma_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_find_bus(i32 noundef %domain, i32 noundef %busnr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %busnr to i8
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_root_buses to i32))
  %cond.i11 = load ptr, ptr @pci_root_buses, align 4
  %cmp.not.i12 = icmp eq ptr %cond.i11, @pci_root_buses
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #5
  %cmp.not1013 = icmp eq ptr %cond.i11, null
  %cmp.not14 = or i1 %cmp.not.i12, %cmp.not1013
  br i1 %cmp.not14, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %cond.i15 = phi ptr [ %cond.i, %while.cond.backedge.while.body_crit_edge ], [ %cond.i11, %entry.while.body_crit_edge ]
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %cond.i15, i32 0, i32 16
  %0 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %domain_nr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %domain)
  %cmp2.not = icmp eq i32 %1, %domain
  br i1 %cmp2.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #5
  %tobool.not.i = icmp eq ptr %cond.i15, null
  %pci_root_buses.from.i = select i1 %tobool.not.i, ptr @pci_root_buses, ptr %cond.i15
  %2 = ptrtoint ptr %pci_root_buses.from.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load ptr, ptr %pci_root_buses.from.i, align 4
  %cmp.not.i = icmp eq ptr %cond.i, @pci_root_buses
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #5
  %cmp.not10 = icmp eq ptr %cond.i, null
  %cmp.not = or i1 %cmp.not.i, %cmp.not10
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call3 = tail call fastcc ptr @pci_do_find_bus(ptr noundef nonnull %cond.i15, i8 noundef zeroext %conv)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.while.cond.backedge_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %while.cond.backedge.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_find_next_bus(ptr noundef readonly %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #5
  %tobool.not = icmp eq ptr %from, null
  %pci_root_buses.from = select i1 %tobool.not, ptr @pci_root_buses, ptr %from
  %0 = ptrtoint ptr %pci_root_buses.from to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load ptr, ptr %pci_root_buses.from, align 4
  %cmp.not = icmp eq ptr %cond, @pci_root_buses
  %b.0 = select i1 %cmp.not, ptr null, ptr %cond
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #5
  ret ptr %b.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pci_do_find_bus(ptr noundef readonly %bus, i8 noundef zeroext %busnr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %busnr)
  %cmp = icmp eq i8 %1, %busnr
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %tmp.0.in = phi ptr [ %children, %if.end ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp5.not = icmp eq ptr %tmp.0, %children
  br i1 %cmp5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %call = tail call fastcc ptr @pci_do_find_bus(ptr noundef %tmp.0, i8 noundef zeroext %busnr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %bus, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_get_slot(ptr noundef readonly %bus, i32 noundef %devfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #5
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %dev.0.in = phi ptr [ %devices, %entry ], [ %dev.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body:                                         ; preds = %for.cond
  %devfn2 = getelementptr inbounds %struct.pci_dev, ptr %dev.0, i32 0, i32 6
  %1 = ptrtoint ptr %devfn2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %devfn2, align 4
  %cmp3 = icmp eq i32 %2, %devfn
  br i1 %cmp3, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.out_crit_edge
  %dev.1 = phi ptr [ %dev.0, %for.body.out_crit_edge ], [ null, %for.cond.out_crit_edge ]
  %call = tail call ptr @pci_dev_get(ptr noundef %dev.1) #5
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #5
  ret ptr %dev.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef %domain, i32 noundef %bus, i32 noundef %devfn) #0 align 64 {
entry:
  %id.i.i = alloca %struct.pci_device_id, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.pci_device_id, ptr %id.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %id.i.i) #5
  %1 = call ptr @memset(ptr %id.i.i, i32 255, i32 16)
  %2 = call ptr @memset(ptr %0, i32 0, i32 16)
  %call.i.i.i16 = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef null, ptr noundef nonnull %id.i.i, ptr noundef nonnull @match_pci_dev_by_id) #5
  %tobool2.not.i.i.i17 = icmp eq ptr %call.i.i.i16, null
  %add.ptr.i.i.i18 = getelementptr i8, ptr %call.i.i.i16, i32 -136
  call void @pci_dev_put(ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %id.i.i) #5
  %cmp.not1519 = icmp eq ptr %add.ptr.i.i.i18, null
  %cmp.not20 = or i1 %tobool2.not.i.i.i17, %cmp.not1519
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %add.ptr.i.i.i22 = phi ptr [ %add.ptr.i.i.i, %if.end.while.body_crit_edge ], [ %add.ptr.i.i.i18, %entry.while.body_crit_edge ]
  %call.i.i.i21 = phi ptr [ %call.i.i.i, %if.end.while.body_crit_edge ], [ %call.i.i.i16, %entry.while.body_crit_edge ]
  %bus1 = getelementptr i8, ptr %call.i.i.i21, i32 -128
  %3 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus1, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %domain_nr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %domain)
  %cmp3 = icmp eq i32 %6, %domain
  br i1 %cmp3, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %number = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %number, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bus)
  %cmp5 = icmp eq i32 %conv, %bus
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %devfn8 = getelementptr i8, ptr %call.i.i.i21, i32 -108
  %9 = ptrtoint ptr %devfn8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devfn8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %devfn)
  %cmp9 = icmp eq i32 %10, %devfn
  br i1 %cmp9, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %id.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i22, null
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %add.ptr.i.i.i22, i32 0, i32 44
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %dev1.i.i.i
  %11 = call ptr @memset(ptr %id.i.i, i32 255, i32 16)
  %12 = call ptr @memset(ptr %0, i32 0, i32 16)
  %call.i.i.i = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %spec.select.i.i.i, ptr noundef nonnull %id.i.i, ptr noundef nonnull @match_pci_dev_by_id) #5
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -136
  call void @pci_dev_put(ptr noundef %add.ptr.i.i.i22) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %id.i.i) #5
  %cmp.not15 = icmp eq ptr %add.ptr.i.i.i, null
  %cmp.not = or i1 %tobool2.not.i.i.i, %cmp.not15
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr.i.i.i22, %land.lhs.true7.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_get_device(i32 noundef %vendor, i32 noundef %device, ptr noundef %from) #0 align 64 {
entry:
  %id.i = alloca %struct.pci_device_id, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %id.i) #5
  %0 = getelementptr inbounds %struct.pci_device_id, ptr %id.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pci_device_id, ptr %id.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pci_device_id, ptr %id.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.pci_device_id, ptr %id.i, i32 0, i32 4
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vendor, ptr %id.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %device, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %from, null
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %from, i32 0, i32 44
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %dev1.i.i
  %8 = call ptr @memset(ptr %3, i32 0, i32 16)
  %call.i.i = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %spec.select.i.i, ptr noundef nonnull %id.i, ptr noundef nonnull @match_pci_dev_by_id) #5
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -136
  %pdev.0.i.i = select i1 %tobool2.not.i.i, ptr null, ptr %add.ptr.i.i
  call void @pci_dev_put(ptr noundef %from) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %id.i) #5
  ret ptr %pdev.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_get_subsys(i32 noundef %vendor, i32 noundef %device, i32 noundef %ss_vendor, i32 noundef %ss_device, ptr noundef %from) #0 align 64 {
entry:
  %id = alloca %struct.pci_device_id, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %id) #5
  %0 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 2
  %2 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3
  %3 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vendor, ptr %id, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %device, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ss_vendor, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ss_device, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %from, null
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %from, i32 0, i32 44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %dev1.i
  %8 = call ptr @memset(ptr %3, i32 0, i32 16)
  %call.i = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %spec.select.i, ptr noundef nonnull %id, ptr noundef nonnull @match_pci_dev_by_id) #5
  %tobool2.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -136
  %pdev.0.i = select i1 %tobool2.not.i, ptr null, ptr %add.ptr.i
  call void @pci_dev_put(ptr noundef %from) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %id) #5
  ret ptr %pdev.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_get_class(i32 noundef %class, ptr noundef %from) #0 align 64 {
entry:
  %id = alloca %struct.pci_device_id, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %id) #5
  %0 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 4
  %1 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 5
  %2 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 7
  %4 = call ptr @memset(ptr %id, i32 255, i32 16)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %class, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %from, null
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %from, i32 0, i32 44
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %dev1.i
  %call.i = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %spec.select.i, ptr noundef nonnull %id, ptr noundef nonnull @match_pci_dev_by_id) #5
  %tobool2.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -136
  %pdev.0.i = select i1 %tobool2.not.i, ptr null, ptr %add.ptr.i
  call void @pci_dev_put(ptr noundef %from) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %id) #5
  ret ptr %pdev.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_dev_present(ptr noundef %ids) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %ids.addr.0 = phi ptr [ %ids, %entry ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %ids.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ids.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 2
  %2 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subvendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.rhs, label %lor.lhs.false.while.body_crit_edge

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %class_mask = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 5
  %4 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge, %while.cond.while.body_crit_edge
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef null, ptr noundef %ids.addr.0, ptr noundef nonnull @match_pci_dev_by_id) #5
  %tobool2.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -136
  tail call void @pci_dev_put(ptr noundef null) #5
  %tobool3.not10 = icmp eq ptr %add.ptr.i, null
  %tobool3.not = or i1 %tobool2.not.i, %tobool3.not10
  %incdec.ptr = getelementptr %struct.pci_device_id, ptr %ids.addr.0, i32 1
  br i1 %tobool3.not, label %while.body.while.cond_crit_edge, label %if.then

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_dev_put(ptr noundef nonnull %add.ptr.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %lor.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match_pci_dev_by_id(ptr nocapture noundef readonly %dev, ptr noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp eq i32 %1, -1
  br i1 %cmp.i, label %entry.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %entry
  %vendor2.i = getelementptr i8, ptr %dev, i32 -104
  %2 = ptrtoint ptr %vendor2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor2.i, align 8
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i)
  %cmp3.i = icmp eq i32 %1, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %device.i = getelementptr inbounds %struct.pci_device_id, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp5.i = icmp eq i32 %5, -1
  br i1 %cmp5.i, label %land.lhs.true.i.land.lhs.true13.i_crit_edge, label %lor.lhs.false7.i

land.lhs.true.i.land.lhs.true13.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true13.i

lor.lhs.false7.i:                                 ; preds = %land.lhs.true.i
  %device9.i = getelementptr i8, ptr %dev, i32 -102
  %6 = ptrtoint ptr %device9.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device9.i, align 2
  %conv10.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %5, %conv10.i
  br i1 %cmp11.i, label %lor.lhs.false7.i.land.lhs.true13.i_crit_edge, label %lor.lhs.false7.i.if.end.i_crit_edge

lor.lhs.false7.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false7.i.land.lhs.true13.i_crit_edge:     ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false7.i.land.lhs.true13.i_crit_edge, %land.lhs.true.i.land.lhs.true13.i_crit_edge
  %subvendor.i = getelementptr inbounds %struct.pci_device_id, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %subvendor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subvendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp14.i = icmp eq i32 %9, -1
  br i1 %cmp14.i, label %land.lhs.true13.i.land.lhs.true21.i_crit_edge, label %lor.lhs.false16.i

land.lhs.true13.i.land.lhs.true21.i_crit_edge:    ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true21.i

lor.lhs.false16.i:                                ; preds = %land.lhs.true13.i
  %subsystem_vendor.i = getelementptr i8, ptr %dev, i32 -100
  %10 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_vendor.i, align 4
  %conv18.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv18.i)
  %cmp19.i = icmp eq i32 %9, %conv18.i
  br i1 %cmp19.i, label %lor.lhs.false16.i.land.lhs.true21.i_crit_edge, label %lor.lhs.false16.i.if.end.i_crit_edge

lor.lhs.false16.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false16.i.land.lhs.true21.i_crit_edge:    ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true21.i

land.lhs.true21.i:                                ; preds = %lor.lhs.false16.i.land.lhs.true21.i_crit_edge, %land.lhs.true13.i.land.lhs.true21.i_crit_edge
  %subdevice.i = getelementptr inbounds %struct.pci_device_id, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %subdevice.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp22.i = icmp eq i32 %13, -1
  br i1 %cmp22.i, label %land.lhs.true21.i.land.lhs.true29.i_crit_edge, label %lor.lhs.false24.i

land.lhs.true21.i.land.lhs.true29.i_crit_edge:    ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true29.i

lor.lhs.false24.i:                                ; preds = %land.lhs.true21.i
  %subsystem_device.i = getelementptr i8, ptr %dev, i32 -98
  %14 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_device.i, align 2
  %conv26.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv26.i)
  %cmp27.i = icmp eq i32 %13, %conv26.i
  br i1 %cmp27.i, label %lor.lhs.false24.i.land.lhs.true29.i_crit_edge, label %lor.lhs.false24.i.if.end.i_crit_edge

lor.lhs.false24.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false24.i.land.lhs.true29.i_crit_edge:    ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true29.i

land.lhs.true29.i:                                ; preds = %lor.lhs.false24.i.land.lhs.true29.i_crit_edge, %land.lhs.true21.i.land.lhs.true29.i_crit_edge
  %class.i = getelementptr inbounds %struct.pci_device_id, ptr %data, i32 0, i32 4
  %16 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %class.i, align 4
  %class30.i = getelementptr i8, ptr %dev, i32 -96
  %18 = ptrtoint ptr %class30.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %class30.i, align 8
  %xor.i = xor i32 %19, %17
  %class_mask.i = getelementptr inbounds %struct.pci_device_id, ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %class_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %class_mask.i, align 4
  %and.i = and i32 %xor.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true29.i.pci_match_one_device.exit_crit_edge, label %land.lhs.true29.i.if.end.i_crit_edge

land.lhs.true29.i.if.end.i_crit_edge:             ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true29.i.pci_match_one_device.exit_crit_edge: ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_match_one_device.exit

if.end.i:                                         ; preds = %land.lhs.true29.i.if.end.i_crit_edge, %lor.lhs.false24.i.if.end.i_crit_edge, %lor.lhs.false16.i.if.end.i_crit_edge, %lor.lhs.false7.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  br label %pci_match_one_device.exit

pci_match_one_device.exit:                        ; preds = %if.end.i, %land.lhs.true29.i.pci_match_one_device.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end.i ], [ %data, %land.lhs.true29.i.pci_match_one_device.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/search.c", i32 17, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @pci_bus_sem, !1, !"pci_bus_sem", i1 false, i1 false}
!4 = !{ptr @__ksymtab_pci_find_bus, !5, !"__ksymtab_pci_find_bus", i1 false, i1 false}
!5 = !{!"../drivers/pci/search.c", i32 155, i32 1}
!6 = !{ptr @__ksymtab_pci_find_next_bus, !7, !"__ksymtab_pci_find_next_bus", i1 false, i1 false}
!7 = !{!"../drivers/pci/search.c", i32 178, i32 1}
!8 = !{ptr @__ksymtab_pci_get_slot, !9, !"__ksymtab_pci_get_slot", i1 false, i1 false}
!9 = !{!"../drivers/pci/search.c", i32 211, i32 1}
!10 = !{ptr @__ksymtab_pci_get_domain_bus_and_slot, !11, !"__ksymtab_pci_get_domain_bus_and_slot", i1 false, i1 false}
!11 = !{!"../drivers/pci/search.c", i32 240, i32 1}
!12 = !{ptr @__ksymtab_pci_get_subsys, !13, !"__ksymtab_pci_get_subsys", i1 false, i1 false}
!13 = !{!"../drivers/pci/search.c", i32 314, i32 1}
!14 = !{ptr @__ksymtab_pci_get_device, !15, !"__ksymtab_pci_get_device", i1 false, i1 false}
!15 = !{!"../drivers/pci/search.c", i32 335, i32 1}
!16 = !{ptr @__ksymtab_pci_get_class, !17, !"__ksymtab_pci_get_class", i1 false, i1 false}
!17 = !{!"../drivers/pci/search.c", i32 364, i32 1}
!18 = !{ptr @__ksymtab_pci_dev_present, !19, !"__ksymtab_pci_dev_present", i1 false, i1 false}
!19 = !{!"../drivers/pci/search.c", i32 392, i32 1}
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
