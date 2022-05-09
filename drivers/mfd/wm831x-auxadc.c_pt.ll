; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm831x-auxadc.c_pt.bc'
source_filename = "../drivers/mfd/wm831x-auxadc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm831x_auxadc_read\22, \22a\22\09"
module asm "\09.weak\09__crc_wm831x_auxadc_read\09\09\09\09"
module asm "\09.long\09__crc_wm831x_auxadc_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm831x_auxadc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22wm831x_auxadc_read\22\09\09\09\09\09"
module asm "__kstrtabns_wm831x_auxadc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm831x_auxadc_read_uv\22, \22a\22\09"
module asm "\09.weak\09__crc_wm831x_auxadc_read_uv\09\09\09\09"
module asm "\09.long\09__crc_wm831x_auxadc_read_uv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm831x_auxadc_read_uv:\09\09\09\09\09"
module asm "\09.asciz \09\22wm831x_auxadc_read_uv\22\09\09\09\09\09"
module asm "__kstrtabns_wm831x_auxadc_read_uv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wm831x_auxadc_req = type { %struct.list_head, i32, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@__kstrtab_wm831x_auxadc_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm831x_auxadc_read = external dso_local constant [0 x i8], align 1
@__ksymtab_wm831x_auxadc_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm831x_auxadc_read to i32), ptr @__kstrtab_wm831x_auxadc_read, ptr @__kstrtabns_wm831x_auxadc_read }, section "___ksymtab_gpl+wm831x_auxadc_read", align 4
@__kstrtab_wm831x_auxadc_read_uv = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm831x_auxadc_read_uv = external dso_local constant [0 x i8], align 1
@__ksymtab_wm831x_auxadc_read_uv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm831x_auxadc_read_uv to i32), ptr @__kstrtab_wm831x_auxadc_read_uv, ptr @__kstrtabns_wm831x_auxadc_read_uv }, section "___ksymtab_gpl+wm831x_auxadc_read_uv", align 4
@wm831x_auxadc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&wm831x->auxadc_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"auxadc\00", [25 x i8] zeroinitializer }, align 32
@wm831x_auxadc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AUXADC IRQ request failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_auxadc_init\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mfd/wm831x-auxadc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_auxadc_init._entry_ptr = internal global ptr @wm831x_auxadc_init._entry, section ".printk_index", align 4
@wm831x_auxadc_read_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 58, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable AUXADC: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm831x_auxadc_read_irq\00", [41 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_irq._entry_ptr = internal global ptr @wm831x_auxadc_read_irq._entry, section ".printk_index", align 4
@wm831x_auxadc_read_irq._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 69, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set AUXADC source: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_irq._entry_ptr.11 = internal global ptr @wm831x_auxadc_read_irq._entry.9, section ".printk_index", align 4
@wm831x_auxadc_read_irq._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 85, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to start AUXADC: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_irq._entry_ptr.14 = internal global ptr @wm831x_auxadc_read_irq._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wm831x_auxadc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read AUXADC data: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm831x_auxadc_irq\00", [46 x i8] zeroinitializer }, align 32
@wm831x_auxadc_irq._entry_ptr = internal global ptr @wm831x_auxadc_irq._entry, section ".printk_index", align 4
@wm831x_auxadc_read_polled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.18, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wm831x_auxadc_read_polled\00", [38 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_polled._entry_ptr = internal global ptr @wm831x_auxadc_read_polled._entry, section ".printk_index", align 4
@wm831x_auxadc_read_polled._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.18, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_polled._entry_ptr.20 = internal global ptr @wm831x_auxadc_read_polled._entry.19, section ".printk_index", align 4
@wm831x_auxadc_read_polled._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.18, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_polled._entry_ptr.22 = internal global ptr @wm831x_auxadc_read_polled._entry.21, section ".printk_index", align 4
@wm831x_auxadc_read_polled._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ISR 1 read failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_polled._entry_ptr.25 = internal global ptr @wm831x_auxadc_read_polled._entry.23, section ".printk_index", align 4
@wm831x_auxadc_read_polled._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AUXADC conversion timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_polled._entry_ptr.28 = internal global ptr @wm831x_auxadc_read_polled._entry.26, section ".printk_index", align 4
@wm831x_auxadc_read_polled._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.4, i32 213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_polled._entry_ptr.30 = internal global ptr @wm831x_auxadc_read_polled._entry.29, section ".printk_index", align 4
@wm831x_auxadc_read_polled._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Data from source %d not %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_auxadc_read_polled._entry_ptr.33 = internal global ptr @wm831x_auxadc_read_polled._entry.31, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 274, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 284, i32 9 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 286, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 57, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 68, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 84, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 87, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 115, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 162, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 171, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 178, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 191, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 203, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 212, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [31 x i8] c"../drivers/mfd/wm831x-auxadc.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 224, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab_wm831x_auxadc_read, ptr @__ksymtab_wm831x_auxadc_read_uv, ptr @wm831x_auxadc_init._entry, ptr @wm831x_auxadc_init._entry_ptr, ptr @wm831x_auxadc_irq._entry, ptr @wm831x_auxadc_irq._entry_ptr, ptr @wm831x_auxadc_read_irq._entry, ptr @wm831x_auxadc_read_irq._entry.12, ptr @wm831x_auxadc_read_irq._entry.9, ptr @wm831x_auxadc_read_irq._entry_ptr, ptr @wm831x_auxadc_read_irq._entry_ptr.11, ptr @wm831x_auxadc_read_irq._entry_ptr.14, ptr @wm831x_auxadc_read_polled._entry, ptr @wm831x_auxadc_read_polled._entry.19, ptr @wm831x_auxadc_read_polled._entry.21, ptr @wm831x_auxadc_read_polled._entry.23, ptr @wm831x_auxadc_read_polled._entry.26, ptr @wm831x_auxadc_read_polled._entry.29, ptr @wm831x_auxadc_read_polled._entry.31, ptr @wm831x_auxadc_read_polled._entry_ptr, ptr @wm831x_auxadc_read_polled._entry_ptr.20, ptr @wm831x_auxadc_read_polled._entry_ptr.22, ptr @wm831x_auxadc_read_polled._entry_ptr.25, ptr @wm831x_auxadc_read_polled._entry_ptr.28, ptr @wm831x_auxadc_read_polled._entry_ptr.30, ptr @wm831x_auxadc_read_polled._entry_ptr.33, ptr @wm831x_auxadc_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.24, ptr @.str.27, ptr @.str.32], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_irq._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_irq._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_polled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_polled._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_polled._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_polled._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_polled._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_polled._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_auxadc_read_polled._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm831x_auxadc_read(ptr noundef %wm831x, i32 noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %auxadc_read = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 19
  %0 = ptrtoint ptr %auxadc_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auxadc_read, align 4
  %call = tail call i32 %1(ptr noundef %wm831x, i32 noundef %input) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm831x_auxadc_read_uv(ptr noundef %wm831x, i32 noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %auxadc_read.i = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 19
  %0 = ptrtoint ptr %auxadc_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auxadc_read.i, align 4
  %call.i = tail call i32 %1(ptr noundef %wm831x, i32 noundef %input) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %mul = mul i32 %call.i, 1465
  %retval.0 = select i1 %cmp, i32 %call.i, i32 %mul
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wm831x_auxadc_init(ptr noundef %wm831x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %auxadc_lock = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %auxadc_lock, ptr noundef nonnull @.str, ptr noundef nonnull @wm831x_auxadc_init.__key) #4
  %auxadc_pending = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 17
  %0 = ptrtoint ptr %auxadc_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %auxadc_pending, ptr %auxadc_pending, align 4
  %prev.i = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %auxadc_pending, ptr %prev.i, align 4
  %irq = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %auxadc_read = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 19
  %4 = ptrtoint ptr %auxadc_read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wm831x_auxadc_read_irq, ptr %auxadc_read, align 4
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 7
  %5 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %6, i32 noundef 35, ptr noundef null) #4
  %call1 = tail call i32 @request_threaded_irq(i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_auxadc_irq, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef %wm831x) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.end5:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef %call1) #7
  %9 = ptrtoint ptr %auxadc_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %auxadc_read, align 4
  br label %if.end7

if.end7:                                          ; preds = %do.end5, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %auxadc_read8 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 19
  %10 = ptrtoint ptr %auxadc_read8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auxadc_read8, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %auxadc_read8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wm831x_auxadc_read_polled, ptr %auxadc_read8, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_auxadc_read_irq(ptr noundef %wm831x, i32 noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %done = getelementptr inbounds %struct.wm831x_auxadc_req, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %done, align 8
  %wait.i = getelementptr inbounds %struct.wm831x_auxadc_req, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #4
  %input1 = getelementptr inbounds %struct.wm831x_auxadc_req, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %input, ptr %input1, align 8
  %val = getelementptr inbounds %struct.wm831x_auxadc_req, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -110, ptr %val, align 4
  %auxadc_lock = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %auxadc_lock, i32 noundef 0) #4
  %auxadc_pending = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 17
  %4 = ptrtoint ptr %auxadc_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %auxadc_pending, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %auxadc_pending, ptr noundef %5) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %auxadc_pending, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %auxadc_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %auxadc_pending, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %auxadc_active = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 18
  %10 = ptrtoint ptr %auxadc_active to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %auxadc_active, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.not = icmp eq i16 %11, 0
  br i1 %tobool2.not, label %if.then4, label %list_add.exit.if.end8_crit_edge

list_add.exit.if.end8_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %list_add.exit
  %call5 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16430, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.then4.if.end8_crit_edge, label %do.end

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %call5) #7
  br label %out

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %list_add.exit.if.end8_crit_edge
  %14 = ptrtoint ptr %auxadc_active to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %auxadc_active, align 4
  %conv = zext i16 %15 to i32
  %shl = shl nuw i32 1, %input
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end29_crit_edge

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then11:                                        ; preds = %if.end8
  %conv13 = trunc i32 %shl to i16
  %call16 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16431, i16 noundef zeroext %conv13, i16 noundef zeroext %conv13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %16 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %call16) #7
  br label %out

if.end24:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %auxadc_active to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %auxadc_active, align 4
  %conv28 = or i16 %19, %conv13
  store i16 %conv28, ptr %auxadc_active, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end24, %if.end8.if.end29_crit_edge
  br i1 %tobool2.not, label %if.then31, label %if.end29.if.end41_crit_edge

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then31:                                        ; preds = %if.end29
  %call32 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16430, i16 noundef zeroext 16447, i16 noundef zeroext 16447) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.then31.if.end41_crit_edge, label %do.end38

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %dev39 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %20 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %call32) #7
  br label %out

if.end41:                                         ; preds = %if.then31.if.end41_crit_edge, %if.end29.if.end41_crit_edge
  tail call void @mutex_unlock(ptr noundef %auxadc_lock) #4
  %call45 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 50) #4
  tail call void @mutex_lock_nested(ptr noundef %auxadc_lock, i32 noundef 0) #4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  br label %out

out:                                              ; preds = %if.end41, %do.end38, %do.end22, %do.end
  %ret.0 = phi i32 [ %call5, %do.end ], [ %call32, %do.end38 ], [ %23, %if.end41 ], [ %call16, %do.end22 ]
  %call.i.i84 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i) #4
  br i1 %call.i.i84, label %if.end.i.i85, label %out.list_del.exit_crit_edge

out.list_del.exit_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i85:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i85, %out.list_del.exit_crit_edge
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %auxadc_lock) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %list_del.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_auxadc_irq(i32 noundef %irq, ptr noundef %irq_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wm831x_reg_read(ptr noundef %irq_data, i16 noundef zeroext 16429) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %irq_data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %call, 12
  %2 = and i32 %and, 15
  %sub = add nsw i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub)
  %cmp1 = icmp eq i32 %sub, 14
  %spec.store.select = select i1 %cmp1, i32 15, i32 %sub
  %and4 = and i32 %call, 4095
  %auxadc_lock = getelementptr inbounds %struct.wm831x, ptr %irq_data, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %auxadc_lock, i32 noundef 0) #4
  %shl = shl nuw nsw i32 1, %spec.store.select
  %conv = trunc i32 %shl to i16
  %call5 = tail call i32 @wm831x_set_bits(ptr noundef %irq_data, i16 noundef zeroext 16431, i16 noundef zeroext %conv, i16 noundef zeroext 0) #4
  %auxadc_active = getelementptr inbounds %struct.wm831x, ptr %irq_data, i32 0, i32 18
  %3 = ptrtoint ptr %auxadc_active to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %auxadc_active, align 4
  %5 = xor i16 %conv, -1
  %conv9 = and i16 %4, %5
  store i16 %conv9, ptr %auxadc_active, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv9)
  %tobool.not = icmp eq i16 %conv9, 0
  br i1 %tobool.not, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @wm831x_reg_write(ptr noundef %irq_data, i16 noundef zeroext 16430, i16 noundef zeroext 0) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %auxadc_pending = getelementptr inbounds %struct.wm831x, ptr %irq_data, i32 0, i32 17
  %6 = ptrtoint ptr %auxadc_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %req.052 = load ptr, ptr %auxadc_pending, align 4
  %cmp15.not53 = icmp eq ptr %req.052, %auxadc_pending
  br i1 %cmp15.not53, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %req.054 = phi ptr [ %req.0, %for.inc.for.body_crit_edge ], [ %req.052, %if.end13.for.body_crit_edge ]
  %input17 = getelementptr inbounds %struct.wm831x_auxadc_req, ptr %req.054, i32 0, i32 1
  %7 = ptrtoint ptr %input17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %spec.store.select)
  %cmp18 = icmp eq i32 %8, %spec.store.select
  br i1 %cmp18, label %if.then20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %val21 = getelementptr inbounds %struct.wm831x_auxadc_req, ptr %req.054, i32 0, i32 2
  %9 = ptrtoint ptr %val21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and4, ptr %val21, align 4
  %done = getelementptr inbounds %struct.wm831x_auxadc_req, ptr %req.054, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %req.054 to i32
  call void @__asan_load4_noabort(i32 %10)
  %req.0 = load ptr, ptr %req.054, align 4
  %cmp15.not = icmp eq ptr %req.0, %auxadc_pending
  br i1 %cmp15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %auxadc_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_auxadc_read_polled(ptr noundef %wm831x, i32 noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %auxadc_lock = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %auxadc_lock, i32 noundef 0) #4
  %call = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16430, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %call) #7
  br label %out

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %input
  %conv = trunc i32 %shl to i16
  %call1 = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16431, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev8 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %call1) #7
  br label %out

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16430, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end16, label %while.body

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %dev17 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %4 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %call10) #7
  br label %disable

while.body:                                       ; preds = %if.end9
  tail call void @msleep(i32 noundef 1) #4
  %call19 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 16401) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.end27

do.end25:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev26 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %6 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %call19) #7
  br label %disable

if.end27:                                         ; preds = %while.body
  %and = and i32 %call19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.end33, label %if.then29

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16401, i16 noundef zeroext 256) #4
  %call35 = tail call i32 @wm831x_reg_read(ptr noundef %wm831x, i16 noundef zeroext 16429) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end41, label %if.end43

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %dev34 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %8 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27) #7
  br label %disable

do.end41:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %dev42 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %10 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %call35) #7
  br label %disable

if.end43:                                         ; preds = %if.then29
  %and44 = lshr i32 %call35, 12
  %12 = and i32 %and44, 15
  %sub = add nsw i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub)
  %cmp45 = icmp eq i32 %sub, 14
  %spec.store.select = select i1 %cmp45, i32 15, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %input)
  %cmp49.not = icmp eq i32 %spec.store.select, %input
  br i1 %cmp49.not, label %if.else56, label %do.end54

do.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %dev55 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %13 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.32, i32 noundef %spec.store.select, i32 noundef %input) #7
  br label %disable

if.else56:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %and57 = and i32 %call35, 4095
  br label %disable

disable:                                          ; preds = %if.else56, %do.end54, %do.end41, %do.end33, %do.end25, %do.end16
  %ret.0 = phi i32 [ %call10, %do.end16 ], [ %call19, %do.end25 ], [ %call35, %do.end41 ], [ -22, %do.end54 ], [ %and57, %if.else56 ], [ -16, %do.end33 ]
  %call59 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16430, i16 noundef zeroext -32768, i16 noundef zeroext 0) #4
  br label %out

out:                                              ; preds = %disable, %do.end7, %do.end
  %ret.1 = phi i32 [ %call, %do.end ], [ %call1, %do.end7 ], [ %ret.0, %disable ]
  tail call void @mutex_unlock(ptr noundef %auxadc_lock) #4
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__ksymtab_wm831x_auxadc_read, !1, !"__ksymtab_wm831x_auxadc_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 248, i32 1}
!2 = !{ptr @__ksymtab_wm831x_auxadc_read_uv, !3, !"__ksymtab_wm831x_auxadc_read_uv", i1 false, i1 false}
!3 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 268, i32 1}
!4 = !{ptr @wm831x_auxadc_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 274, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 284, i32 9}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 286, i32 4}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wm831x_auxadc_init._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @wm831x_auxadc_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 57, i32 4}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wm831x_auxadc_read_irq._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm831x_auxadc_read_irq._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 68, i32 4}
!24 = !{ptr @wm831x_auxadc_read_irq._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wm831x_auxadc_read_irq._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 84, i32 4}
!28 = !{ptr @wm831x_auxadc_read_irq._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wm831x_auxadc_read_irq._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @init_completion.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/completion.h", i32 87, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 115, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @wm831x_auxadc_irq._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @wm831x_auxadc_irq._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 162, i32 3}
!40 = !{ptr @wm831x_auxadc_read_polled._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wm831x_auxadc_read_polled._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @wm831x_auxadc_read_polled._entry.19, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 171, i32 3}
!44 = !{ptr @wm831x_auxadc_read_polled._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @wm831x_auxadc_read_polled._entry.21, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 178, i32 3}
!47 = !{ptr @wm831x_auxadc_read_polled._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 191, i32 4}
!50 = !{ptr @wm831x_auxadc_read_polled._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wm831x_auxadc_read_polled._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 203, i32 4}
!54 = !{ptr @wm831x_auxadc_read_polled._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wm831x_auxadc_read_polled._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @wm831x_auxadc_read_polled._entry.29, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 212, i32 3}
!58 = !{ptr @wm831x_auxadc_read_polled._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/wm831x-auxadc.c", i32 224, i32 3}
!61 = !{ptr @wm831x_auxadc_read_polled._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @wm831x_auxadc_read_polled._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
