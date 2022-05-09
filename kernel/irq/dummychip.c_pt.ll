; ModuleID = '/llk/IR_all_yes/kernel/irq/dummychip.c_pt.bc'
source_filename = "../kernel/irq/dummychip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dummy_irq_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_dummy_irq_chip\09\09\09\09"
module asm "\09.long\09__crc_dummy_irq_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dummy_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22dummy_irq_chip\22\09\09\09\09\09"
module asm "__kstrtabns_dummy_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@no_irq_chip = dso_local global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr @noop_ret, ptr @noop, ptr @noop, ptr @noop, ptr @ack_bad, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@dummy_irq_chip = dso_local global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.1, ptr @noop_ret, ptr @noop, ptr @noop, ptr @noop, ptr @noop, ptr @noop, ptr null, ptr @noop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_dummy_irq_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_dummy_irq_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_dummy_irq_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dummy_irq_chip to i32), ptr @__kstrtab_dummy_irq_chip, ptr @__kstrtabns_dummy_irq_chip }, section "___ksymtab_gpl+dummy_irq_chip", align 4
@print_irq_desc.ratelimit = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 5, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ratelimit.lock\00", [17 x i8] zeroinitializer }, align 32
@__func__.print_irq_desc = private unnamed_addr constant [15 x i8] c"print_irq_desc\00", align 1
@print_irq_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.print_irq_desc, ptr @.str.4, i32 19, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"irq %d, desc: %p, depth: %d, count: %d, unhandled: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/irq/debug.h\00", [45 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr = internal global ptr @print_irq_desc._entry, section ".printk_index", align 4
@print_irq_desc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.print_irq_desc, ptr @.str.4, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"->handle_irq():  %p, %pS\0A\00", [38 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.7 = internal global ptr @print_irq_desc._entry.5, section ".printk_index", align 4
@print_irq_desc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.print_irq_desc, ptr @.str.4, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"->irq_data.chip(): %p, %pS\0A\00", [36 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.10 = internal global ptr @print_irq_desc._entry.8, section ".printk_index", align 4
@print_irq_desc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.print_irq_desc, ptr @.str.4, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"->action(): %p\0A\00", [16 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.13 = internal global ptr @print_irq_desc._entry.11, section ".printk_index", align 4
@print_irq_desc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.print_irq_desc, ptr @.str.4, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"->action->handler(): %p, %pS\0A\00", [34 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.16 = internal global ptr @print_irq_desc._entry.14, section ".printk_index", align 4
@print_irq_desc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%14s set\0A\00", [22 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.19 = internal global ptr @print_irq_desc._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ_LEVEL\00", [22 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.22 = internal global ptr @print_irq_desc._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ_PER_CPU\00", [20 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.25 = internal global ptr @print_irq_desc._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ_NOPROBE\00", [20 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.28 = internal global ptr @print_irq_desc._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IRQ_NOREQUEST\00", [18 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.31 = internal global ptr @print_irq_desc._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ_NOTHREAD\00", [19 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.34 = internal global ptr @print_irq_desc._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ_NOAUTOEN\00", [19 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.37 = internal global ptr @print_irq_desc._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQS_AUTODETECT\00", [16 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.40 = internal global ptr @print_irq_desc._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQS_REPLAY\00", [20 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.43 = internal global ptr @print_irq_desc._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQS_WAITING\00", [19 x i8] zeroinitializer }, align 32
@print_irq_desc._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.print_irq_desc, ptr @.str.4, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_irq_desc._entry_ptr.46 = internal global ptr @print_irq_desc._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQS_PENDING\00", [19 x i8] zeroinitializer }, align 32
@irq_err_count = external dso_local local_unnamed_addr global i32, align 4
@ack_bad_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.50, i32 12, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012unexpected IRQ trap at vector %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ack_bad_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/include/asm/hw_irq.h\00", [34 x i8] zeroinitializer }, align 32
@ack_bad_irq._entry_ptr = internal global ptr @ack_bad_irq._entry, section ".printk_index", align 4
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 40, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"no_irq_chip\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 39, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 54, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"dummy_irq_chip\00", align 1
@___asan_gen_.61 = private constant [26 x i8] c"../kernel/irq/dummychip.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 53, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"ratelimit\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 13, i32 9 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 18, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 20, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 22, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 24, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 26, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 30, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 31, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 32, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 33, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 34, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 35, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 37, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 38, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 39, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [22 x i8] c"../kernel/irq/debug.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 40, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [33 x i8] c"../arch/arm/include/asm/hw_irq.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 12, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__ksymtab_dummy_irq_chip, ptr @ack_bad_irq._entry, ptr @ack_bad_irq._entry_ptr, ptr @print_irq_desc._entry, ptr @print_irq_desc._entry.11, ptr @print_irq_desc._entry.14, ptr @print_irq_desc._entry.17, ptr @print_irq_desc._entry.21, ptr @print_irq_desc._entry.24, ptr @print_irq_desc._entry.27, ptr @print_irq_desc._entry.30, ptr @print_irq_desc._entry.33, ptr @print_irq_desc._entry.36, ptr @print_irq_desc._entry.39, ptr @print_irq_desc._entry.42, ptr @print_irq_desc._entry.45, ptr @print_irq_desc._entry.5, ptr @print_irq_desc._entry.8, ptr @print_irq_desc._entry_ptr, ptr @print_irq_desc._entry_ptr.10, ptr @print_irq_desc._entry_ptr.13, ptr @print_irq_desc._entry_ptr.16, ptr @print_irq_desc._entry_ptr.19, ptr @print_irq_desc._entry_ptr.22, ptr @print_irq_desc._entry_ptr.25, ptr @print_irq_desc._entry_ptr.28, ptr @print_irq_desc._entry_ptr.31, ptr @print_irq_desc._entry_ptr.34, ptr @print_irq_desc._entry_ptr.37, ptr @print_irq_desc._entry_ptr.40, ptr @print_irq_desc._entry_ptr.43, ptr @print_irq_desc._entry_ptr.46, ptr @print_irq_desc._entry_ptr.7, ptr @.str, ptr @no_irq_chip, ptr @.str.1, ptr @dummy_irq_chip, ptr @print_irq_desc.ratelimit, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc.ratelimit to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_irq_desc._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ack_bad_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @noop_ret(ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @noop(ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ack_bad(ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @print_irq_desc.ratelimit, ptr noundef nonnull @__func__.print_irq_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.print_irq_desc.exit_crit_edge, label %do.end.i

entry.print_irq_desc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %print_irq_desc.exit

do.end.i:                                         ; preds = %entry
  %depth.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth.i, align 4
  %irq_count.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_count.i, align 8
  %irqs_unhandled.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %irqs_unhandled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqs_unhandled.i, align 32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %3, ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle_irq.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %11, ptr noundef %11) #7
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %13, ptr noundef %13) #7
  %action.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %action.i, align 64
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %15) #7
  %16 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %action.i, align 64
  %tobool18.not.i = icmp eq ptr %17, null
  br i1 %tobool18.not.i, label %do.end.i.if.end27.i_crit_edge, label %do.end21.i

do.end.i.if.end27.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

do.end21.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %19, ptr noundef %19) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end21.i, %do.end.i.if.end27.i_crit_edge
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end34.i_crit_edge, label %do.end31.i

if.end27.i.if.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

do.end31.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end31.i, %if.end27.i.if.end34.i_crit_edge
  %22 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status_use_accessors.i, align 4
  %and36.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end43.i_crit_edge, label %do.end40.i

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23) #7
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end40.i, %if.end34.i.if.end43.i_crit_edge
  %24 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status_use_accessors.i, align 4
  %and45.i = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end52.i_crit_edge, label %do.end49.i

if.end43.i.if.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

do.end49.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26) #7
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end49.i, %if.end43.i.if.end52.i_crit_edge
  %26 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status_use_accessors.i, align 4
  %and54.i = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end52.i.if.end61.i_crit_edge, label %do.end58.i

if.end52.i.if.end61.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61.i

do.end58.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.29) #7
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end58.i, %if.end52.i.if.end61.i_crit_edge
  %28 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status_use_accessors.i, align 4
  %and63.i = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end61.i.if.end70.i_crit_edge, label %do.end67.i

if.end61.i.if.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70.i

do.end67.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #6
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.32) #7
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end67.i, %if.end61.i.if.end70.i_crit_edge
  %30 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status_use_accessors.i, align 4
  %and72.i = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end79.i_crit_edge, label %do.end76.i

if.end70.i.if.end79.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79.i

do.end76.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #6
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.35) #7
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.end76.i, %if.end70.i.if.end79.i_crit_edge
  %core_internal_state__do_not_mess_with_it.i = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and80.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.if.end87.i_crit_edge, label %do.end84.i

if.end79.i.if.end87.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87.i

do.end84.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #6
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.38) #7
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.end84.i, %if.end79.i.if.end87.i_crit_edge
  %34 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and89.i = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end87.i.if.end96.i_crit_edge, label %do.end93.i

if.end87.i.if.end96.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96.i

do.end93.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #6
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.41) #7
  br label %if.end96.i

if.end96.i:                                       ; preds = %do.end93.i, %if.end87.i.if.end96.i_crit_edge
  %36 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and98.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.end96.i.if.end105.i_crit_edge, label %do.end102.i

if.end96.i.if.end105.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105.i

do.end102.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #6
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.44) #7
  br label %if.end105.i

if.end105.i:                                      ; preds = %do.end102.i, %if.end96.i.if.end105.i_crit_edge
  %38 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and107.i = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %if.end105.i.print_irq_desc.exit_crit_edge, label %do.end111.i

if.end105.i.print_irq_desc.exit_crit_edge:        ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %print_irq_desc.exit

do.end111.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #6
  %call113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.47) #7
  br label %print_irq_desc.exit

print_irq_desc.exit:                              ; preds = %do.end111.i, %if.end105.i.print_irq_desc.exit_crit_edge, %entry.print_irq_desc.exit_crit_edge
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_err_count to i32))
  %42 = load i32, ptr @irq_err_count, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr @irq_err_count, align 4
  %call.i4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %41) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/irq/dummychip.c", i32 40, i32 11}
!2 = !{ptr @no_irq_chip, !3, !"no_irq_chip", i1 false, i1 false}
!3 = !{!"../kernel/irq/dummychip.c", i32 39, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/irq/dummychip.c", i32 54, i32 11}
!6 = !{ptr @dummy_irq_chip, !7, !"dummy_irq_chip", i1 false, i1 false}
!7 = !{!"../kernel/irq/dummychip.c", i32 53, i32 17}
!8 = !{ptr @__ksymtab_dummy_irq_chip, !9, !"__ksymtab_dummy_irq_chip", i1 false, i1 false}
!9 = !{!"../kernel/irq/dummychip.c", i32 64, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/irq/debug.h", i32 13, i32 9}
!12 = !{ptr @print_irq_desc.ratelimit, !11, !"ratelimit", i1 false, i1 false}
!13 = !{ptr @__func__.print_irq_desc, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/irq/debug.h", i32 15, i32 7}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/irq/debug.h", i32 18, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @print_irq_desc._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @print_irq_desc._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/irq/debug.h", i32 20, i32 2}
!22 = !{ptr @print_irq_desc._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @print_irq_desc._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/irq/debug.h", i32 22, i32 2}
!26 = !{ptr @print_irq_desc._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @print_irq_desc._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/irq/debug.h", i32 24, i32 2}
!30 = !{ptr @print_irq_desc._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @print_irq_desc._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/irq/debug.h", i32 26, i32 3}
!34 = !{ptr @print_irq_desc._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @print_irq_desc._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/irq/debug.h", i32 30, i32 2}
!38 = !{ptr @print_irq_desc._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @print_irq_desc._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @print_irq_desc._entry.21, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../kernel/irq/debug.h", i32 31, i32 2}
!43 = !{ptr @print_irq_desc._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @print_irq_desc._entry.24, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../kernel/irq/debug.h", i32 32, i32 2}
!47 = !{ptr @print_irq_desc._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @print_irq_desc._entry.27, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../kernel/irq/debug.h", i32 33, i32 2}
!51 = !{ptr @print_irq_desc._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @print_irq_desc._entry.30, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../kernel/irq/debug.h", i32 34, i32 2}
!55 = !{ptr @print_irq_desc._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @print_irq_desc._entry.33, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../kernel/irq/debug.h", i32 35, i32 2}
!59 = !{ptr @print_irq_desc._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @print_irq_desc._entry.36, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../kernel/irq/debug.h", i32 37, i32 2}
!63 = !{ptr @print_irq_desc._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @print_irq_desc._entry.39, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../kernel/irq/debug.h", i32 38, i32 2}
!67 = !{ptr @print_irq_desc._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @print_irq_desc._entry.42, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../kernel/irq/debug.h", i32 39, i32 2}
!71 = !{ptr @print_irq_desc._entry_ptr.43, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @print_irq_desc._entry.45, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../kernel/irq/debug.h", i32 40, i32 2}
!75 = !{ptr @print_irq_desc._entry_ptr.46, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/include/asm/hw_irq.h", i32 12, i32 2}
!79 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ack_bad_irq._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @ack_bad_irq._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
