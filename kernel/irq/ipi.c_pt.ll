; ModuleID = '/llk/IR_all_yes/kernel/irq/ipi.c_pt.bc'
source_filename = "../kernel/irq/ipi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ipi_get_hwirq\22, \22a\22\09"
module asm "\09.weak\09__crc_ipi_get_hwirq\09\09\09\09"
module asm "\09.long\09__crc_ipi_get_hwirq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipi_get_hwirq:\09\09\09\09\09"
module asm "\09.asciz \09\22ipi_get_hwirq\22\09\09\09\09\09"
module asm "__kstrtabns_ipi_get_hwirq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipi_send_single\22, \22a\22\09"
module asm "\09.weak\09__crc_ipi_send_single\09\09\09\09"
module asm "\09.long\09__crc_ipi_send_single\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipi_send_single:\09\09\09\09\09"
module asm "\09.asciz \09\22ipi_send_single\22\09\09\09\09\09"
module asm "__kstrtabns_ipi_send_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipi_send_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_ipi_send_mask\09\09\09\09"
module asm "\09.long\09__crc_ipi_send_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipi_send_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22ipi_send_mask\22\09\09\09\09\09"
module asm "__kstrtabns_ipi_send_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@irq_reserve_ipi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014genirq/ipi: Reservation on a non IPI domain\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_reserve_ipi\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/irq/ipi.c\00", [47 x i8] zeroinitializer }, align 32
@irq_reserve_ipi._entry_ptr = internal global ptr @irq_reserve_ipi._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@irq_reserve_ipi._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014genirq/ipi: Reservation is not in possible_cpu_mask\0A\00", [41 x i8] zeroinitializer }, align 32
@irq_reserve_ipi._entry_ptr.5 = internal global ptr @irq_reserve_ipi._entry.3, section ".printk_index", align 4
@irq_reserve_ipi._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014genirq/ipi: Reservation for empty destination mask\0A\00", [42 x i8] zeroinitializer }, align 32
@irq_reserve_ipi._entry_ptr.8 = internal global ptr @irq_reserve_ipi._entry.6, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@irq_reserve_ipi._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014genirq/ipi: Destination mask has holes\0A\00", [54 x i8] zeroinitializer }, align 32
@irq_reserve_ipi._entry_ptr.11 = internal global ptr @irq_reserve_ipi._entry.9, section ".printk_index", align 4
@irq_reserve_ipi._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014genirq/ipi: Can't reserve IPI, failed to alloc descs\0A\00", [40 x i8] zeroinitializer }, align 32
@irq_reserve_ipi._entry_ptr.14 = internal global ptr @irq_reserve_ipi._entry.12, section ".printk_index", align 4
@irq_reserve_ipi._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014genirq/ipi: Can't reserve IPI, failed to alloc hw irqs\0A\00", [38 x i8] zeroinitializer }, align 32
@irq_reserve_ipi._entry_ptr.17 = internal global ptr @irq_reserve_ipi._entry.15, section ".printk_index", align 4
@irq_destroy_ipi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014genirq/ipi: Trying to destroy a non IPI domain!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_destroy_ipi\00", [16 x i8] zeroinitializer }, align 32
@irq_destroy_ipi._entry_ptr = internal global ptr @irq_destroy_ipi._entry, section ".printk_index", align 4
@__kstrtab_ipi_get_hwirq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipi_get_hwirq = external dso_local constant [0 x i8], align 1
@__ksymtab_ipi_get_hwirq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipi_get_hwirq to i32), ptr @__kstrtab_ipi_get_hwirq, ptr @__kstrtabns_ipi_get_hwirq }, section "___ksymtab_gpl+ipi_get_hwirq", align 4
@ipi_send_single.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipi_send_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipi_send_single = external dso_local constant [0 x i8], align 1
@__ksymtab_ipi_send_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipi_send_single to i32), ptr @__kstrtab_ipi_send_single, ptr @__kstrtabns_ipi_send_single }, section "___ksymtab_gpl+ipi_send_single", align 4
@ipi_send_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipi_send_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipi_send_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_ipi_send_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipi_send_mask to i32), ptr @__kstrtab_ipi_send_mask, ptr @__kstrtabns_ipi_send_mask }, section "___ksymtab_gpl+ipi_send_mask", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 31, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 36, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 42, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 73, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 80, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 88, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private constant [20 x i8] c"../kernel/irq/ipi.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 130, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 108, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_ipi_get_hwirq, ptr @__ksymtab_ipi_send_mask, ptr @__ksymtab_ipi_send_single, ptr @irq_destroy_ipi._entry, ptr @irq_destroy_ipi._entry_ptr, ptr @irq_reserve_ipi._entry, ptr @irq_reserve_ipi._entry.12, ptr @irq_reserve_ipi._entry.15, ptr @irq_reserve_ipi._entry.3, ptr @irq_reserve_ipi._entry.6, ptr @irq_reserve_ipi._entry.9, ptr @irq_reserve_ipi._entry_ptr, ptr @irq_reserve_ipi._entry_ptr.11, ptr @irq_reserve_ipi._entry_ptr.14, ptr @irq_reserve_ipi._entry_ptr.17, ptr @irq_reserve_ipi._entry_ptr.5, ptr @irq_reserve_ipi._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_reserve_ipi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_reserve_ipi._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_reserve_ipi._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_reserve_ipi._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_reserve_ipi._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_reserve_ipi._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_destroy_ipi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_reserve_ipi(ptr noundef %domain, ptr noundef %dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.do.end_crit_edge, label %if.else.i.i

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup58

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %dest, ptr noundef nonnull @__cpu_possible_mask, i32 noundef %2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %do.end7, label %if.end.i.i

do.end7:                                          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %cleanup58

if.end.i.i:                                       ; preds = %if.else.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %dest, i32 noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool12.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %cleanup58

if.end19:                                         ; preds = %if.end.i.i
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i96 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.i97.not = icmp eq i32 %and.i96, 0
  br i1 %tobool.i97.not, label %if.else, label %if.end19.if.end35_crit_edge

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.else:                                          ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %dest, i32 noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.not.i, label %if.else.cpumask_next_zero.exit_crit_edge, label %if.then.i

if.else.cpumask_next_zero.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_next_zero.exit

if.then.i:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call.i)
  %cmp.not.i.i.i = icmp ugt i32 %7, %call.i
  br i1 %cmp.not.i.i.i, label %if.then.i.cpumask_next_zero.exit_crit_edge, label %land.rhs.i.i.i

if.then.i.cpumask_next_zero.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_next_zero.exit

land.rhs.i.i.i:                                   ; preds = %if.then.i
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_next_zero.exit_crit_edge, label %if.then.i.i.i, !prof !53

land.rhs.i.i.i.cpumask_next_zero.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_next_zero.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpumask_next_zero.exit

cpumask_next_zero.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_next_zero.exit_crit_edge, %if.then.i.cpumask_next_zero.exit_crit_edge, %if.else.cpumask_next_zero.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %dest, i32 noundef %8, i32 noundef %add.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %9)
  %cmp = icmp ult i32 %call1.i, %9
  br i1 %cmp, label %if.then24, label %cpumask_next_zero.exit.if.end26_crit_edge

cpumask_next_zero.exit.if.end26_crit_edge:        ; preds = %cpumask_next_zero.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then24:                                        ; preds = %cpumask_next_zero.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 @cpumask_next(i32 noundef %call1.i, ptr noundef %dest) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %cpumask_next_zero.exit.if.end26_crit_edge
  %next.0 = phi i32 [ %call25, %if.then24 ], [ %call1.i, %cpumask_next_zero.exit.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %next.0, i32 %9)
  %cmp27 = icmp ult i32 %next.0, %9
  br i1 %cmp27, label %do.end31, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %cleanup58

if.end35:                                         ; preds = %if.end26.if.end35_crit_edge, %if.end19.if.end35_crit_edge
  %offset.0 = phi i32 [ 0, %if.end19.if.end35_crit_edge ], [ %call.i, %if.end26.if.end35_crit_edge ]
  %nr_irqs.0 = phi i32 [ 1, %if.end19.if.end35_crit_edge ], [ %call4.i.i, %if.end26.if.end35_crit_edge ]
  %call36 = tail call i32 @irq_domain_alloc_descs(i32 noundef -1, i32 noundef %nr_irqs.0, i32 noundef 0, i32 noundef -1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #7
  br label %cleanup58

if.end44:                                         ; preds = %if.end35
  %call45 = tail call i32 @__irq_domain_alloc_irqs(ptr noundef nonnull %domain, i32 noundef %call36, i32 noundef %nr_irqs.0, i32 noundef -1, ptr noundef %dest, i1 noundef zeroext true, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %do.end50, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  br label %for.body

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  tail call void @irq_free_descs(i32 noundef %call45, i32 noundef %nr_irqs.0) #4
  br label %cleanup58

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end44.for.body_crit_edge
  %i.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end44.for.body_crit_edge ]
  %add = add i32 %i.099, %call45
  %call55 = tail call ptr @irq_get_irq_data(i32 noundef %add) #4
  %common = getelementptr inbounds %struct.irq_data, ptr %call55, i32 0, i32 3
  %10 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common, align 4
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i98 = add i32 %14, 31
  %15 = lshr i32 %sub.i.i98, 3
  %mul.i.i = and i32 %15, 536870908
  %16 = call ptr @memcpy(ptr %13, ptr %dest, i32 %mul.i.i)
  %17 = load ptr, ptr %common, align 4
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ipi_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %offset.0, ptr %ipi_offset, align 4
  tail call void @irq_modify_status(i32 noundef %add, i32 noundef 0, i32 noundef 8192) #4
  %inc = add nuw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs.0
  br i1 %exitcond.not, label %for.body.cleanup58_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.cleanup58_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

cleanup58:                                        ; preds = %for.body.cleanup58_crit_edge, %do.end50, %do.end41, %do.end31, %do.end16, %do.end7, %do.end
  %retval.1 = phi i32 [ -12, %do.end41 ], [ -16, %do.end50 ], [ -22, %do.end16 ], [ -22, %do.end7 ], [ -22, %do.end ], [ -22, %do.end31 ], [ %call45, %for.body.cleanup58_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_destroy_ipi(i32 noundef %irq, ptr noundef %dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %irq) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.end:                                         ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %affinity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool2.not = icmp eq i32 %irq, 0
  %tobool5.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %domain6 = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %domain6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain6, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end30, !prof !54

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 126, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.irq_domain, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end35, label %if.else.i.i

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_subset(ptr noundef %dest, ptr noundef nonnull %3, i32 noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool41.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool41.not, label %do.end59, label %if.end75, !prof !54

do.end59:                                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 134, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end75:                                         ; preds = %if.else.i.i
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i99 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.i100.not = icmp eq i32 %and.i99, 0
  br i1 %tobool.i100.not, label %if.end75.if.end80_crit_edge, label %if.then77

if.end75.if.end80_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %dest, i32 noundef %11) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %add = add i32 %call.i, %irq
  %13 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i, align 4
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %ipi_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ipi_offset, align 4
  %sub = sub i32 %add, %16
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %dest, i32 noundef %12) #4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end75.if.end80_crit_edge
  %nr_irqs.0 = phi i32 [ 1, %if.end75.if.end80_crit_edge ], [ %call4.i.i, %if.then77 ]
  %irq.addr.0 = phi i32 [ %irq, %if.end75.if.end80_crit_edge ], [ %sub, %if.then77 ]
  tail call void @irq_domain_free_irqs(i32 noundef %irq.addr.0, i32 noundef %nr_irqs.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %do.end59, %do.end35, %do.end, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end59 ], [ 0, %if.end80 ], [ -22, %do.end35 ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipi_get_hwirq(i32 noundef %irq, i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %irq) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.end:                                         ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %affinity.i, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %lor.lhs.false4

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4:                                   ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cpu)
  %cmp.not = icmp ugt i32 %4, %cpu
  br i1 %cmp.not, label %cpumask_test_cpu.exit, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cpumask_test_cpu.exit:                            ; preds = %lor.lhs.false4
  %div3.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %cpumask_test_cpu.exit.cleanup_crit_edge, label %if.end8

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %cpumask_test_cpu.exit
  %domain = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain, align 4
  %flags.i = getelementptr inbounds %struct.irq_domain, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end8.cond.true14_crit_edge, label %if.end12

if.end8.cond.true14_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true14

if.end12:                                         ; preds = %if.end8
  %add = add i32 %cpu, %irq
  %13 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i, align 4
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %ipi_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ipi_offset, align 4
  %sub = sub i32 %add, %16
  %call11 = tail call ptr @irq_get_irq_data(i32 noundef %sub) #4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end12.cond.true14_crit_edge

if.end12.cond.true14_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.true14:                                      ; preds = %if.end12.cond.true14_crit_edge, %if.end8.cond.true14_crit_edge
  %data.035 = phi ptr [ %call11, %if.end12.cond.true14_crit_edge ], [ %call, %if.end8.cond.true14_crit_edge ]
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data.035, i32 0, i32 2
  %17 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.true14, %if.end12.cleanup_crit_edge, %cpumask_test_cpu.exit.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false4.cleanup_crit_edge ], [ -1, %cond.end.cleanup_crit_edge ], [ -1, %cpumask_test_cpu.exit.cleanup_crit_edge ], [ %18, %cond.true14 ], [ -1, %if.end12.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ipi_send_single(ptr noundef %desc, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %ipi_send_single = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %ipi_send_single to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipi_send_single, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ipi_send_mask = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %ipi_send_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipi_send_mask, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void %5(ptr noundef %irq_data.i, ptr noundef %add.ptr.i) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %flags.i = getelementptr inbounds %struct.irq_domain, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %common = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common, align 4
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ipi_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ipi_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cpu)
  %cmp.not = icmp eq i32 %13, %cpu
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %if.then4

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %irq5 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq5, align 4
  %add = sub i32 %cpu, %13
  %sub = add i32 %add, %15
  %call8 = tail call ptr @irq_get_irq_data(i32 noundef %sub) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %data.0 = phi ptr [ %call8, %if.then4 ], [ %irq_data.i, %land.lhs.true.if.end9_crit_edge ], [ %irq_data.i, %if.end.if.end9_crit_edge ]
  %16 = ptrtoint ptr %ipi_send_single to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipi_send_single, align 4
  tail call void %17(ptr noundef %data.0, i32 noundef %cpu) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ipi_send_mask(ptr noundef %desc, ptr noundef %dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %ipi_send_mask = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %ipi_send_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipi_send_mask, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %irq_data.i, ptr noundef %dest) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 4
  %flags.i = getelementptr inbounds %struct.irq_domain, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.cond8.preheader, label %if.then4

for.cond8.preheader:                              ; preds = %if.end
  %call939 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %dest) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call939, i32 %8)
  %cmp1040 = icmp ult i32 %call939, %8
  br i1 %cmp1040, label %for.body11.lr.ph, label %for.cond8.preheader.cleanup_crit_edge

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %ipi_send_single12 = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 29
  br label %for.body11

if.then4:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call535 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %dest) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call535, i32 %11)
  %cmp36 = icmp ult i32 %call535, %11
  br i1 %cmp36, label %for.body.lr.ph, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then4
  %ipi_send_single = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call538 = phi i32 [ %call535, %for.body.lr.ph ], [ %call5, %for.body.for.body_crit_edge ]
  %data.037 = phi ptr [ %irq_data.i, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %add = add i32 %call538, %10
  %common = getelementptr inbounds %struct.irq_data, ptr %data.037, i32 0, i32 3
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %ipi_offset = getelementptr inbounds %struct.irq_common_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ipi_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ipi_offset, align 4
  %sub = sub i32 %add, %15
  %call7 = tail call ptr @irq_get_irq_data(i32 noundef %sub) #4
  %16 = ptrtoint ptr %ipi_send_single to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipi_send_single, align 4
  tail call void %17(ptr noundef %call7, i32 noundef %call538) #4
  %call5 = tail call i32 @cpumask_next(i32 noundef %call538, ptr noundef %dest) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call5, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %call941 = phi i32 [ %call939, %for.body11.lr.ph ], [ %call9, %for.body11.for.body11_crit_edge ]
  %19 = ptrtoint ptr %ipi_send_single12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipi_send_single12, align 4
  tail call void %20(ptr noundef %irq_data.i, i32 noundef %call941) #4
  %call9 = tail call i32 @cpumask_next(i32 noundef %call941, ptr noundef %dest) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %21
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.cleanup_crit_edge

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body11

cleanup:                                          ; preds = %for.body11.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipi_send_single(i32 noundef %virq, i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %virq) #4
  %tobool.not = icmp eq ptr %call, null
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %tobool2.not = icmp eq ptr %irq_data.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.land.rhs_crit_edge, label %cond.end6

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

cond.end6:                                        ; preds = %entry
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i.i, align 4
  %affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %affinity.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %cond.end6.land.rhs_crit_edge, label %if.end.i

cond.end6.land.rhs_crit_edge:                     ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end.i:                                         ; preds = %cond.end6
  %ipi_send_single.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %ipi_send_single.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipi_send_single.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ipi_send_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %ipi_send_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipi_send_mask.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.land.rhs_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

land.lhs.true.i.land.rhs_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cpu)
  %cmp.not.i = icmp ugt i32 %10, %cpu
  br i1 %cmp.not.i, label %if.end7.i, label %if.end5.i.land.rhs_crit_edge

if.end5.i.land.rhs_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end7.i:                                        ; preds = %if.end5.i
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %5, i32 %div3.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i25.i = and i32 %cpu, 31
  %13 = shl nuw i32 1, %and.i.i25.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not.i = icmp eq i32 %14, 0
  br i1 %tobool15.not.i, label %if.end7.i.land.rhs_crit_edge, label %if.end47

if.end7.i.land.rhs_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

land.rhs:                                         ; preds = %if.end7.i.land.rhs_crit_edge, %if.end5.i.land.rhs_crit_edge, %land.lhs.true.i.land.rhs_crit_edge, %cond.end6.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b58 = load i1, ptr @ipi_send_single.__already_done, align 1
  br i1 %.b58, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !53

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ipi_send_single.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 313, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end47:                                         ; preds = %if.end7.i
  %15 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i, align 4
  %ipi_send_single.i60 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 29
  %17 = ptrtoint ptr %ipi_send_single.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipi_send_single.i60, align 4
  %tobool.not.i61 = icmp eq ptr %18, null
  br i1 %tobool.not.i61, label %if.then.i, label %if.end.i63

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %ipi_send_mask.i62 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 30
  %19 = ptrtoint ptr %ipi_send_mask.i62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipi_send_mask.i62, align 4
  %add.i.i = add nuw nsw i32 %and.i.i25.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  tail call void %20(ptr noundef nonnull %irq_data.i, ptr noundef %add.ptr.i.i) #4
  br label %cleanup

if.end.i63:                                       ; preds = %if.end47
  %domain.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain.i, align 4
  %flags.i.i = getelementptr inbounds %struct.irq_domain, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i63.if.end9.i_crit_edge, label %land.lhs.true.i65

if.end.i63.if.end9.i_crit_edge:                   ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

land.lhs.true.i65:                                ; preds = %if.end.i63
  %25 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common.i.i, align 4
  %ipi_offset.i = getelementptr inbounds %struct.irq_common_data, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %ipi_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ipi_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %cpu)
  %cmp.not.i64 = icmp eq i32 %28, %cpu
  br i1 %cmp.not.i64, label %land.lhs.true.i65.if.end9.i_crit_edge, label %if.then4.i

land.lhs.true.i65.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #6
  %irq5.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq5.i, align 4
  %add.i = sub i32 %cpu, %28
  %sub.i = add i32 %add.i, %30
  %call8.i = tail call ptr @irq_get_irq_data(i32 noundef %sub.i) #4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i65.if.end9.i_crit_edge, %if.end.i63.if.end9.i_crit_edge
  %data.0.i = phi ptr [ %call8.i, %if.then4.i ], [ %irq_data.i, %land.lhs.true.i65.if.end9.i_crit_edge ], [ %irq_data.i, %if.end.i63.if.end9.i_crit_edge ]
  %31 = ptrtoint ptr %ipi_send_single.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipi_send_single.i60, align 4
  tail call void %32(ptr noundef %data.0.i, i32 noundef %cpu) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then.i, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipi_send_mask(i32 noundef %virq, ptr noundef %dest) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef %virq) #4
  %tobool.not = icmp eq ptr %call, null
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1
  %tobool2.not = icmp eq ptr %irq_data.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.land.rhs_crit_edge, label %cond.end6

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

cond.end6:                                        ; preds = %entry
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i.i, align 4
  %affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %affinity.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %cond.end6.land.rhs_crit_edge, label %if.end.i

cond.end6.land.rhs_crit_edge:                     ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end.i:                                         ; preds = %cond.end6
  %ipi_send_single.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %ipi_send_single.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipi_send_single.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ipi_send_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %ipi_send_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipi_send_mask.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.land.rhs_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

land.lhs.true.i.land.rhs_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.not = icmp eq i32 %10, 0
  br i1 %cmp.not.i.not, label %if.end5.i.land.rhs_crit_edge, label %if.end7.i

if.end5.i.land.rhs_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end7.i:                                        ; preds = %if.end5.i
  %tobool8.not.i = icmp eq ptr %dest, null
  br i1 %tobool8.not.i, label %cpumask_test_cpu.exit.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.end7.i
  %call.i.i.i = tail call i32 @__bitmap_subset(ptr noundef nonnull %dest, ptr noundef nonnull %5, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool11.not.i, label %if.else.i.i.i.land.rhs_crit_edge, label %if.else.i.i.i.if.end47_crit_edge

if.else.i.i.i.if.end47_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.else.i.i.i.land.rhs_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

cpumask_test_cpu.exit.i:                          ; preds = %if.end7.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not.i = icmp eq i32 %13, 0
  br i1 %tobool15.not.i, label %cpumask_test_cpu.exit.i.land.rhs_crit_edge, label %cpumask_test_cpu.exit.i.if.end47_crit_edge

cpumask_test_cpu.exit.i.if.end47_crit_edge:       ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

cpumask_test_cpu.exit.i.land.rhs_crit_edge:       ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

land.rhs:                                         ; preds = %cpumask_test_cpu.exit.i.land.rhs_crit_edge, %if.else.i.i.i.land.rhs_crit_edge, %if.end5.i.land.rhs_crit_edge, %land.lhs.true.i.land.rhs_crit_edge, %cond.end6.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b58 = load i1, ptr @ipi_send_mask.__already_done, align 1
  br i1 %.b58, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !53

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ipi_send_mask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 334, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end47:                                         ; preds = %cpumask_test_cpu.exit.i.if.end47_crit_edge, %if.else.i.i.i.if.end47_crit_edge
  %call48 = tail call i32 @__ipi_send_mask(ptr noundef nonnull %call, ptr noundef %dest)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/irq/ipi.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @irq_reserve_ipi._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @irq_reserve_ipi._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/irq/ipi.c", i32 36, i32 3}
!8 = !{ptr @irq_reserve_ipi._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @irq_reserve_ipi._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/irq/ipi.c", i32 42, i32 3}
!12 = !{ptr @irq_reserve_ipi._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @irq_reserve_ipi._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/irq/ipi.c", i32 73, i32 4}
!16 = !{ptr @irq_reserve_ipi._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @irq_reserve_ipi._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/irq/ipi.c", i32 80, i32 3}
!20 = !{ptr @irq_reserve_ipi._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @irq_reserve_ipi._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/irq/ipi.c", i32 88, i32 3}
!24 = !{ptr @irq_reserve_ipi._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @irq_reserve_ipi._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/irq/ipi.c", i32 130, i32 3}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @irq_destroy_ipi._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @irq_destroy_ipi._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_ipi_get_hwirq, !32, !"__ksymtab_ipi_get_hwirq", i1 false, i1 false}
!32 = !{!"../kernel/irq/ipi.c", i32 184, i32 1}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/irq/ipi.c", i32 313, i32 6}
!35 = !{ptr @__ksymtab_ipi_send_single, !36, !"__ksymtab_ipi_send_single", i1 false, i1 false}
!36 = !{!"../kernel/irq/ipi.c", i32 318, i32 1}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/irq/ipi.c", i32 334, i32 6}
!39 = !{ptr @__ksymtab_ipi_send_mask, !40, !"__ksymtab_ipi_send_mask", i1 false, i1 false}
!40 = !{!"../kernel/irq/ipi.c", i32 339, i32 1}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{!"branch_weights", i32 1, i32 2000}
