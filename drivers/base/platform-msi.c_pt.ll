; ModuleID = '/llk/IR_all_yes/drivers/base/platform-msi.c_pt.bc'
source_filename = "../drivers/base/platform-msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+platform_msi_domain_alloc_irqs\22, \22a\22\09"
module asm "\09.weak\09__crc_platform_msi_domain_alloc_irqs\09\09\09\09"
module asm "\09.long\09__crc_platform_msi_domain_alloc_irqs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_msi_domain_alloc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_msi_domain_alloc_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_platform_msi_domain_alloc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+platform_msi_domain_free_irqs\22, \22a\22\09"
module asm "\09.weak\09__crc_platform_msi_domain_free_irqs\09\09\09\09"
module asm "\09.long\09__crc_platform_msi_domain_free_irqs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_msi_domain_free_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_msi_domain_free_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_platform_msi_domain_free_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.msi_device_data = type { i32, ptr, %struct.mutex, %struct.xarray, i32 }
%struct.platform_msi_priv_data = type { ptr, ptr, %struct.msi_alloc_info, ptr, i32 }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.49] }
%union.anon.49 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.43, %union.anon.44, %union.anon.45 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.46, %struct.anon.47, %union.anon.48 }
%union.anon.46 = type { i32 }
%struct.anon.47 = type { i16, i32 }
%union.anon.48 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }

@__kstrtab_platform_msi_domain_alloc_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_msi_domain_alloc_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_msi_domain_alloc_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_msi_domain_alloc_irqs to i32), ptr @__kstrtab_platform_msi_domain_alloc_irqs, ptr @__kstrtabns_platform_msi_domain_alloc_irqs }, section "___ksymtab_gpl+platform_msi_domain_alloc_irqs", align 4
@__kstrtab_platform_msi_domain_free_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_msi_domain_free_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_msi_domain_free_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_msi_domain_free_irqs to i32), ptr @__kstrtab_platform_msi_domain_free_irqs, ptr @__kstrtabns_platform_msi_domain_free_irqs }, section "___ksymtab_gpl+platform_msi_domain_free_irqs", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&platform_device_msi_lock_class\00", [32 x i8] zeroinitializer }, align 32
@platform_device_msi_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/base/platform-msi.c\00", [36 x i8] zeroinitializer }, align 32
@platform_msi_alloc_priv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Incompatible msi_domain, giving up\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"platform_msi_alloc_priv_data\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@platform_msi_alloc_priv_data._entry_ptr = internal global ptr @platform_msi_alloc_priv_data._entry, section ".printk_index", align 4
@platform_msi_devid_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"platform_msi_devid_ida.xa_lock\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 288, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"platform_device_msi_lock_class\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 249, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 105, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 158, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"platform_msi_devid_ida\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [31 x i8] c"../drivers/base/platform-msi.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 32, i32 8 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_platform_msi_domain_alloc_irqs, ptr @__ksymtab_platform_msi_domain_free_irqs, ptr @platform_msi_alloc_priv_data._entry, ptr @platform_msi_alloc_priv_data._entry_ptr, ptr @.str, ptr @platform_device_msi_lock_class, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @platform_msi_devid_ida, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_device_msi_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_msi_alloc_priv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_msi_devid_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @platform_msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ops1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !29

do.body5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/platform-msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

do.end10.i:                                       ; preds = %if.then
  %msi_init.i = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %msi_init.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msi_init.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %if.then11.i, label %do.end10.i.if.end13.i_crit_edge

do.end10.i.if.end13.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %msi_init.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @platform_msi_init, ptr %msi_init.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end10.i.if.end13.i_crit_edge
  %set_desc.i = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_desc.i, align 4
  %cmp14.i = icmp eq ptr %8, null
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.if.end_crit_edge

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @platform_msi_set_desc, ptr %set_desc.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15.i, %if.end13.i.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %and2 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %chip1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip1.i, align 4
  %tobool.not.i17 = icmp eq ptr %13, null
  br i1 %tobool.not.i17, label %do.body5.i18, label %do.end10.i19, !prof !29

do.body5.i18:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/platform-msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

do.end10.i19:                                     ; preds = %if.then4
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask.i, align 4
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %if.then12.i, label %do.end10.i19.if.end14.i_crit_edge

do.end10.i19.if.end14.i_crit_edge:                ; preds = %do.end10.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then12.i:                                      ; preds = %do.end10.i19
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @irq_chip_mask_parent, ptr %irq_mask.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %do.end10.i19.if.end14.i_crit_edge
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 9
  %17 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_unmask.i, align 4
  %tobool15.not.i = icmp eq ptr %18, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end14.i.if.end18.i_crit_edge

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @irq_chip_unmask_parent, ptr %irq_unmask.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end18.i_crit_edge
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 10
  %20 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_eoi.i, align 4
  %tobool19.not.i = icmp eq ptr %21, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end18.i.if.end22.i_crit_edge

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @irq_chip_eoi_parent, ptr %irq_eoi.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end22.i_crit_edge
  %irq_set_affinity.i = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 11
  %23 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_set_affinity.i, align 4
  %tobool23.not.i = icmp eq ptr %24, null
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end22.i.if.end26.i_crit_edge

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @msi_domain_set_affinity, ptr %irq_set_affinity.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end26.i_crit_edge
  %irq_write_msi_msg.i = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 25
  %26 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_write_msi_msg.i, align 4
  %tobool27.not.i = icmp eq ptr %27, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end26.i.if.end30.i_crit_edge

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @platform_msi_write_msg, ptr %irq_write_msi_msg.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end30.i_crit_edge
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %info, align 4
  %and.i = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %if.end30.i.if.end5_crit_edge, label %land.rhs.i

if.end30.i.if.end5_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.rhs.i:                                       ; preds = %if.end30.i
  %flags32.i = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 33
  %31 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags32.i, align 4
  %and33.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.end52.i, label %land.rhs.i.if.end5_crit_edge, !prof !29

land.rhs.i.if.end5_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end52.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 9, ptr noundef null) #6
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %info, align 4
  %and68.i = and i32 %34, -65
  store i32 %and68.i, ptr %info, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.end52.i, %land.rhs.i.if.end5_crit_edge, %if.end30.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %info, align 4
  %or = or i32 %36, 1664
  store i32 %or, ptr %info, align 4
  %call = tail call ptr @msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) #6
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call, i32 noundef 4) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @platform_msi_domain_alloc_irqs(ptr noundef %dev, i32 noundef %nvec, ptr noundef %write_msi_msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @platform_msi_alloc_priv_data(ptr noundef %dev, i32 noundef %nvec, ptr noundef %write_msi_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %msi = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi, align 4
  %call1 = tail call i32 @msi_domain_alloc_irqs(ptr noundef %1, ptr noundef %dev, i32 noundef %nvec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %platform_data.i = getelementptr inbounds %struct.msi_device_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 4
  store ptr null, ptr %platform_data.i, align 4
  %devid.i = getelementptr inbounds %struct.platform_msi_priv_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devid.i, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef %7) #6
  tail call void @kfree(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @platform_msi_alloc_priv_data(ptr noundef %dev, i32 noundef %nvec, ptr noundef %write_msi_msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msi = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %write_msi_msg, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %2 = add i32 %nvec, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %2)
  %3 = icmp ult i32 %2, -2048
  %4 = or i1 %3, %or.cond
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_token = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %bus_token to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp7.not = icmp eq i32 %6, 4
  br i1 %cmp7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call = tail call i32 @msi_setup_device_data(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %platform_data = getelementptr inbounds %struct.msi_device_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 36) #10
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @ida_alloc_range(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef 0, i32 noundef 2097151, i32 noundef 3264) #6
  %devid = getelementptr inbounds %struct.platform_msi_priv_data, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call21, ptr %devid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %write_msg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %write_msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %write_msi_msg, ptr %write_msg, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %platform_data30 = getelementptr inbounds %struct.msi_device_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %platform_data30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %platform_data30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call21, %if.then24 ], [ 0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ -16, %if.end12.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_alloc_irqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @platform_msi_domain_free_irqs(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msi = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi, align 4
  tail call void @msi_domain_free_irqs(ptr noundef %1, ptr noundef %dev) #6
  %data1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %platform_data.i = getelementptr inbounds %struct.msi_device_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 4
  store ptr null, ptr %platform_data.i, align 4
  %devid.i = getelementptr inbounds %struct.platform_msi_priv_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devid.i, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef %7) #6
  tail call void @kfree(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_domain_free_irqs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @platform_msi_get_host_data(ptr nocapture noundef readonly %domain) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %host_data1 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data1, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__platform_msi_create_device_domain(ptr noundef %dev, i32 noundef %nvec, i1 noundef zeroext %is_tree, ptr noundef %write_msi_msg, ptr noundef %ops, ptr noundef %host_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @platform_msi_alloc_priv_data(ptr noundef %dev, i32 noundef %nvec, ptr noundef %write_msi_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %msi = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16
  %data1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2, i32 5
  %wait_type_inner = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2, i32 5, i32 4
  %2 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str, ptr noundef nonnull @platform_device_msi_lock_class, i32 noundef 0, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %platform_data = getelementptr inbounds %struct.msi_device_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 4
  %host_data12 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %host_data12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %host_data, ptr %host_data12, align 4
  %9 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msi, align 4
  %spec.select = select i1 %is_tree, i32 0, i32 %nvec
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 28
  %11 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwnode, align 4
  %call16 = tail call ptr @irq_domain_create_hierarchy(ptr noundef %10, i32 noundef 0, i32 noundef %spec.select, ptr noundef %12, ptr noundef %ops, ptr noundef %7) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.free_priv_crit_edge, label %if.end19

if.end.free_priv_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_priv

if.end19:                                         ; preds = %if.end
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %7, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.platform_msi_priv_data, ptr %7, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %flags.i, align 4
  %parent = getelementptr inbounds %struct.irq_domain, ptr %call16, i32 0, i32 9
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 4
  %call21 = tail call i32 @msi_domain_prepare_irqs(ptr noundef %16, ptr noundef %dev, i32 noundef %nvec, ptr noundef %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %free_domain

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

free_domain:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_remove(ptr noundef nonnull %call16) #6
  br label %free_priv

free_priv:                                        ; preds = %free_domain, %if.end.free_priv_crit_edge
  %17 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data1, align 4
  %platform_data.i = getelementptr inbounds %struct.msi_device_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platform_data.i, align 4
  store ptr null, ptr %platform_data.i, align 4
  %devid.i = getelementptr inbounds %struct.platform_msi_priv_data, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devid.i, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef %22) #6
  tail call void @kfree(ptr noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %free_priv, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_priv ], [ null, %entry.cleanup_crit_edge ], [ %call16, %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_prepare_irqs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @platform_msi_device_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @msi_lock_descs(ptr noundef %3) #6
  tail call void @irq_domain_free_irqs_common(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add = add i32 %virq, -1
  %sub = add i32 %add, %nr_irqs
  tail call void @msi_free_msi_descs_range(ptr noundef %5, i32 noundef 0, i32 noundef %virq, i32 noundef %sub) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @msi_unlock_descs(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_lock_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_free_msi_descs_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_unlock_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @platform_msi_device_domain_alloc(ptr nocapture noundef readonly %domain, i32 noundef %virq, i32 noundef %nr_irqs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %arg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %1, i32 0, i32 2
  %call = tail call i32 @msi_domain_populate_irqs(ptr noundef %5, ptr noundef %3, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %arg) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_populate_irqs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_msi_init(ptr noundef %domain, ptr nocapture noundef readonly %info, i32 noundef %virq, i32 noundef %hwirq, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %chip_data = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %hwirq, ptr noundef %1, ptr noundef %3) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @platform_msi_set_desc(ptr nocapture noundef writeonly %arg, ptr noundef %desc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %desc, ptr %arg, align 4
  %dev.i = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 2
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %platform_data.i = getelementptr inbounds %struct.msi_device_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 4
  %devid1.i = getelementptr inbounds %struct.platform_msi_priv_data, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %devid1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devid1.i, align 4
  %shl.i = shl i32 %8, 11
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 8
  %9 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %msi_index.i, align 4
  %conv.i = zext i16 %10 to i32
  %or.i = or i32 %shl.i, %conv.i
  %hwirq = getelementptr inbounds %struct.msi_alloc_info, ptr %arg, i32 0, i32 1
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %hwirq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @platform_msi_write_msg(ptr nocapture noundef readonly %data, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  %dev = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %data1 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1, align 4
  %platform_data = getelementptr inbounds %struct.msi_device_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 4
  %write_msg = getelementptr inbounds %struct.platform_msi_priv_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_msg, align 4
  tail call void %11(ptr noundef %3, ptr noundef %msg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_setup_device_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_platform_msi_domain_alloc_irqs, !1, !"__ksymtab_platform_msi_domain_alloc_irqs", i1 false, i1 false}
!1 = !{!"../drivers/base/platform-msi.c", i32 221, i32 1}
!2 = !{ptr @__ksymtab_platform_msi_domain_free_irqs, !3, !"__ksymtab_platform_msi_domain_free_irqs", i1 false, i1 false}
!3 = !{!"../drivers/base/platform-msi.c", i32 232, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/platform-msi.c", i32 288, i32 2}
!6 = !{ptr @platform_device_msi_lock_class, !7, !"platform_device_msi_lock_class", i1 false, i1 false}
!7 = !{!"../drivers/base/platform-msi.c", i32 249, i32 30}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/platform-msi.c", i32 105, i32 6}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/base/platform-msi.c", i32 158, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @platform_msi_alloc_priv_data._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @platform_msi_alloc_priv_data._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/base/platform-msi.c", i32 32, i32 8}
!19 = !{ptr @platform_msi_devid_ida, !18, !"platform_msi_devid_ida", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2152979010, i64 2152979501, i64 2152979047, i64 2152979103, i64 2152979137, i64 2152979161, i64 2152979202, i64 2152979223, i64 2152979251, i64 2152979285}
!31 = !{i64 2152984682, i64 2152985173, i64 2152984719, i64 2152984775, i64 2152984809, i64 2152984833, i64 2152984874, i64 2152984895, i64 2152984923, i64 2152984957}
