; ModuleID = '/llk/IR_all_yes/drivers/pci/endpoint/pci-epc-mem.c_pt.bc'
source_filename = "../drivers/pci/endpoint/pci-epc-mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_epc_multi_mem_init\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_epc_multi_mem_init\09\09\09\09"
module asm "\09.long\09__crc_pci_epc_multi_mem_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_multi_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_multi_mem_init\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_multi_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_epc_mem_init\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_epc_mem_init\09\09\09\09"
module asm "\09.long\09__crc_pci_epc_mem_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_init\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_epc_mem_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_epc_mem_exit\09\09\09\09"
module asm "\09.long\09__crc_pci_epc_mem_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_exit\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_epc_mem_alloc_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_epc_mem_alloc_addr\09\09\09\09"
module asm "\09.long\09__crc_pci_epc_mem_alloc_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_alloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_alloc_addr\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_alloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_epc_mem_free_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_epc_mem_free_addr\09\09\09\09"
module asm "\09.long\09__crc_pci_epc_mem_free_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_free_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_free_addr\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_free_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.pci_epc_mem_window = type { i32, i32, i32 }
%struct.pci_epc_mem = type { %struct.pci_epc_mem_window, ptr, i32, %struct.mutex }

@pci_epc_multi_mem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mem->lock\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_pci_epc_multi_mem_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_multi_mem_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_multi_mem_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_multi_mem_init to i32), ptr @__kstrtab_pci_epc_multi_mem_init, ptr @__kstrtabns_pci_epc_multi_mem_init }, section "___ksymtab_gpl+pci_epc_multi_mem_init", align 4
@__kstrtab_pci_epc_mem_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_init to i32), ptr @__kstrtab_pci_epc_mem_init, ptr @__kstrtabns_pci_epc_mem_init }, section "___ksymtab_gpl+pci_epc_mem_init", align 4
@__kstrtab_pci_epc_mem_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_exit to i32), ptr @__kstrtab_pci_epc_mem_exit, ptr @__kstrtabns_pci_epc_mem_exit }, section "___ksymtab_gpl+pci_epc_mem_exit", align 4
@__kstrtab_pci_epc_mem_alloc_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_alloc_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_alloc_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_alloc_addr to i32), ptr @__kstrtab_pci_epc_mem_alloc_addr, ptr @__kstrtabns_pci_epc_mem_alloc_addr }, section "___ksymtab_gpl+pci_epc_mem_alloc_addr", align 4
@pci_epc_mem_free_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to get matching window\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_epc_mem_free_addr\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pci/endpoint/pci-epc-mem.c\00", [61 x i8] zeroinitializer }, align 32
@pci_epc_mem_free_addr._entry_ptr = internal global ptr @pci_epc_mem_free_addr._entry, section ".printk_index", align 4
@__kstrtab_pci_epc_mem_free_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_free_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_free_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_free_addr to i32), ptr @__kstrtab_pci_epc_mem_free_addr, ptr @__kstrtabns_pci_epc_mem_free_addr }, section "___ksymtab_gpl+pci_epc_mem_free_addr", align 4
@__UNIQUE_ID_description236 = internal constant [57 x i8] c"pci_epc_mem.description=PCI EPC Address Space Management\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [58 x i8] c"pci_epc_mem.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [50 x i8] c"pci_epc_mem.file=drivers/pci/endpoint/pci-epc-mem\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [27 x i8] c"pci_epc_mem.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 97, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [38 x i8] c"../drivers/pci/endpoint/pci-epc-mem.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 245, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__ksymtab_pci_epc_mem_alloc_addr, ptr @__ksymtab_pci_epc_mem_exit, ptr @__ksymtab_pci_epc_mem_free_addr, ptr @__ksymtab_pci_epc_mem_init, ptr @__ksymtab_pci_epc_multi_mem_init, ptr @pci_epc_mem_free_addr._entry, ptr @pci_epc_mem_free_addr._entry_ptr, ptr @pci_epc_multi_mem_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epc_multi_mem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epc_mem_free_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_epc_multi_mem_init(ptr nocapture noundef %epc, ptr noundef readonly %windows, i32 noundef %num_windows) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_windows1 = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 5
  %0 = ptrtoint ptr %num_windows1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_windows1, align 4
  %tobool.not = icmp eq ptr %windows, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_windows)
  %tobool2.not = icmp eq i32 %num_windows, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_windows, i32 4) #7
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !35

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %windows3114 = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 3
  %3 = ptrtoint ptr %windows3114 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %windows3114, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #10
  %windows3 = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 3
  %5 = ptrtoint ptr %windows3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %windows3, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i.for.body_crit_edge

if.end7.i.i.for.body_crit_edge:                   ; preds = %if.end7.i.i
  br label %for.body

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.end7.i.i.for.body_crit_edge
  %i.0125 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 0, %if.end7.i.i.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pci_epc_mem_window, ptr %windows, i32 %i.0125
  %page_size8 = getelementptr %struct.pci_epc_mem_window, ptr %windows, i32 %i.0125, i32 2
  %6 = ptrtoint ptr %page_size8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_size8, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 4096)
  %9 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 true) #7, !range !36
  %sub.i.op.i = xor i32 %9, 31
  %size = getelementptr %struct.pci_epc_mem_window, ptr %windows, i32 %i.0125, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %shr = lshr i32 %11, %sub.i.op.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 112) #11
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %for.body.err_mem_crit_edge, label %if.end8.i.i

for.body.err_mem_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mem

if.end8.i.i:                                      ; preds = %for.body
  %sub19 = add i32 %shr, 31
  %13 = lshr i32 %sub19, 3
  %mul = and i32 %13, 536870908
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #10
  %tobool25.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_mem

if.end28:                                         ; preds = %if.end8.i.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %size34 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %size34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size34, align 4
  %page_size36 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %page_size36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %8, ptr %page_size36, align 8
  %bitmap37 = getelementptr inbounds %struct.pci_epc_mem, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %bitmap37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i, ptr %bitmap37, align 4
  %pages38 = getelementptr inbounds %struct.pci_epc_mem, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %pages38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %pages38, align 8
  %lock = getelementptr inbounds %struct.pci_epc_mem, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @pci_epc_multi_mem_init.__key) #7
  %23 = ptrtoint ptr %windows3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %windows3, align 4
  %arrayidx40 = getelementptr ptr, ptr %24, i32 %i.0125
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %arrayidx40, align 4
  %inc = add nuw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, %num_windows
  br i1 %exitcond.not, label %for.end, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %windows3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %windows3, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %mem43 = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 4
  %30 = ptrtoint ptr %mem43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %mem43, align 8
  %31 = ptrtoint ptr %num_windows1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %num_windows, ptr %num_windows1, align 4
  br label %cleanup

err_mem:                                          ; preds = %if.then26, %for.body.err_mem_crit_edge
  %i.2127 = add i32 %i.0125, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2127)
  %cmp46128 = icmp sgt i32 %i.2127, -1
  br i1 %cmp46128, label %err_mem.for.body48_crit_edge, label %err_mem.for.end54_crit_edge

err_mem.for.end54_crit_edge:                      ; preds = %err_mem
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

err_mem.for.body48_crit_edge:                     ; preds = %err_mem
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %err_mem.for.body48_crit_edge
  %i.2129 = phi i32 [ %i.2, %for.body48.for.body48_crit_edge ], [ %i.2127, %err_mem.for.body48_crit_edge ]
  %32 = ptrtoint ptr %windows3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %windows3, align 4
  %arrayidx50 = getelementptr ptr, ptr %33, i32 %i.2129
  %34 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx50, align 4
  %bitmap51 = getelementptr inbounds %struct.pci_epc_mem, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bitmap51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bitmap51, align 4
  tail call void @kfree(ptr noundef %37) #7
  tail call void @kfree(ptr noundef %35) #7
  %i.2 = add nsw i32 %i.2129, -1
  %cmp46 = icmp sgt i32 %i.2129, 0
  br i1 %cmp46, label %for.body48.for.body48_crit_edge, label %for.body48.for.end54_crit_edge

for.body48.for.end54_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

for.end54:                                        ; preds = %for.body48.for.end54_crit_edge, %err_mem.for.end54_crit_edge
  %38 = ptrtoint ptr %windows3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %windows3, align 4
  tail call void @kfree(ptr noundef %39) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %for.end, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end54 ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_epc_mem_init(ptr nocapture noundef %epc, i32 noundef %base, i32 noundef %size, i32 noundef %page_size) #0 align 64 {
entry:
  %mem_window = alloca %struct.pci_epc_mem_window, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem_window) #7
  %0 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %mem_window, i32 0, i32 1
  %1 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %mem_window, i32 0, i32 2
  %2 = ptrtoint ptr %mem_window to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %base, ptr %mem_window, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %page_size, ptr %1, align 4
  %call = call i32 @pci_epc_multi_mem_init(ptr noundef %epc, ptr noundef nonnull %mem_window, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem_window) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_epc_mem_exit(ptr nocapture noundef %epc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_windows = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 5
  %0 = ptrtoint ptr %num_windows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_windows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %num_windows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_windows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %windows = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %windows, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.017
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %bitmap = getelementptr inbounds %struct.pci_epc_mem, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap, align 4
  tail call void @kfree(ptr noundef %9) #7
  tail call void @kfree(ptr noundef %7) #7
  %inc = add nuw i32 %i.017, 1
  %10 = ptrtoint ptr %num_windows to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_windows, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %windows2 = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 3
  %12 = ptrtoint ptr %windows2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %windows2, align 4
  tail call void @kfree(ptr noundef %13) #7
  %14 = ptrtoint ptr %windows2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %windows2, align 4
  %mem4 = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 4
  %15 = ptrtoint ptr %mem4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mem4, align 8
  %16 = ptrtoint ptr %num_windows to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %num_windows, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_epc_mem_alloc_addr(ptr nocapture noundef readonly %epc, ptr nocapture noundef writeonly %phys_addr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_windows = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 5
  %0 = ptrtoint ptr %num_windows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_windows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp62.not = icmp eq i32 %1, 0
  br i1 %cmp62.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %windows = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 3
  %sub = add i32 %size, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %windows, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.063
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.pci_epc_mem, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %page_size = getelementptr inbounds %struct.pci_epc_mem_window, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_size, align 4
  %add = add i32 %sub, %7
  %neg = sub i32 0, %7
  %and = and i32 %add, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #7, !range !36
  %sub.i.op.i.i = xor i32 %8, 31
  %sub.i17.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %dec.i = add i32 %and, -1
  %shr.i = lshr i32 %dec.i, %sub.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i.i = icmp eq i32 %shr.i, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #7, !range !36
  %sub.i.i = sub nuw nsw i32 32, %9
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %bitmap = getelementptr inbounds %struct.pci_epc_mem, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 4
  %pages = getelementptr inbounds %struct.pci_epc_mem, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pages, align 4
  %call4 = tail call i32 @bitmap_find_free_region(ptr noundef %11, i32 noundef %13, i32 noundef %cond.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %cond.end19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cond.end19:                                       ; preds = %for.body
  %14 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i60 = icmp eq i32 %15, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #7, !range !36
  %sub.i.op.i = xor i32 %16, 31
  %sub.i61 = select i1 %tobool.not.i.i60, i32 -1, i32 %sub.i.op.i
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %shl = shl i32 %call4, %sub.i61
  %add22 = add i32 %18, %shl
  %19 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add22, ptr %phys_addr, align 4
  %call23 = tail call ptr @ioremap(i32 noundef %add22, i32 noundef %and) #7
  %tobool.not = icmp eq ptr %call23, null
  br i1 %tobool.not, label %if.then24, label %if.end

if.then24:                                        ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bitmap, align 4
  tail call void @bitmap_release_region(ptr noundef %21, i32 noundef %call4, i32 noundef %cond.i.i) #7
  br label %for.inc

if.end:                                           ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

for.inc:                                          ; preds = %if.then24, %for.body.for.inc_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %inc = add nuw i32 %i.063, 1
  %22 = ptrtoint ptr %num_windows to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_windows, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call23, %if.end ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_epc_mem_free_addr(ptr nocapture noundef readonly %epc, i32 noundef %phys_addr, ptr noundef %virt_addr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_windows.i = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 5
  %0 = ptrtoint ptr %num_windows.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_windows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not.i = icmp eq i32 %1, 0
  br i1 %cmp14.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %windows.i = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 3
  %2 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %windows.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.015.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %phys_addr)
  %cmp1.not.i = icmp ugt i32 %7, %phys_addr
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %size.i = getelementptr inbounds %struct.pci_epc_mem_window, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %add.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %phys_addr)
  %cmp5.i = icmp ugt i32 %add.i, %phys_addr
  br i1 %cmp5.i, label %pci_epc_get_matching_window.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

pci_epc_get_matching_window.exit:                 ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %pci_epc_get_matching_window.exit.do.end_crit_edge, label %if.end

pci_epc_get_matching_window.exit.do.end_crit_edge: ; preds = %pci_epc_get_matching_window.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %pci_epc_get_matching_window.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %pci_epc_get_matching_window.exit
  call void @__sanitizer_cov_trace_pc() #9
  %page_size2 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %page_size2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #7, !range !36
  %sub.i.op.i = xor i32 %12, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  tail call void @iounmap(ptr noundef %virt_addr) #7
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %sub9 = sub i32 %phys_addr, %14
  %shr = lshr i32 %sub9, %sub.i
  %sub10 = add i32 %size, -1
  %add = add i32 %sub10, %11
  %neg = sub i32 0, %11
  %and = and i32 %add, %neg
  %15 = ptrtoint ptr %page_size2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 true) #7, !range !36
  %sub.i.op.i.i = xor i32 %17, 31
  %sub.i17.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %dec.i = add i32 %and, -1
  %shr.i = lshr i32 %dec.i, %sub.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i.i32 = icmp eq i32 %shr.i, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #7, !range !36
  %sub.i.i = sub nuw nsw i32 32, %18
  %cond.i.i = select i1 %tobool.not.i.i32, i32 0, i32 %sub.i.i
  %lock = getelementptr inbounds %struct.pci_epc_mem, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %bitmap = getelementptr inbounds %struct.pci_epc_mem, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bitmap, align 4
  tail call void @bitmap_release_region(ptr noundef %20, i32 noundef %shr, i32 noundef %cond.i.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @pci_epc_multi_mem_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 97, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_pci_epc_multi_mem_init, !4, !"__ksymtab_pci_epc_multi_mem_init", i1 false, i1 false}
!4 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 116, i32 1}
!5 = !{ptr @__ksymtab_pci_epc_mem_init, !6, !"__ksymtab_pci_epc_mem_init", i1 false, i1 false}
!6 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 129, i32 1}
!7 = !{ptr @__ksymtab_pci_epc_mem_exit, !8, !"__ksymtab_pci_epc_mem_exit", i1 false, i1 false}
!8 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 157, i32 1}
!9 = !{ptr @__ksymtab_pci_epc_mem_alloc_addr, !10, !"__ksymtab_pci_epc_mem_alloc_addr", i1 false, i1 false}
!10 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 206, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 245, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pci_epc_mem_free_addr._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @pci_epc_mem_free_addr._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_pci_epc_mem_free_addr, !18, !"__ksymtab_pci_epc_mem_free_addr", i1 false, i1 false}
!18 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 259, i32 1}
!19 = !{ptr @__UNIQUE_ID_description236, !20, !"__UNIQUE_ID_description236", i1 false, i1 false}
!20 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 261, i32 1}
!21 = !{ptr @__UNIQUE_ID_author237, !22, !"__UNIQUE_ID_author237", i1 false, i1 false}
!22 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 262, i32 1}
!23 = !{ptr @__UNIQUE_ID_file238, !24, !"__UNIQUE_ID_file238", i1 false, i1 false}
!24 = !{!"../drivers/pci/endpoint/pci-epc-mem.c", i32 263, i32 1}
!25 = !{ptr @__UNIQUE_ID_license239, !24, !"__UNIQUE_ID_license239", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i32 0, i32 33}
