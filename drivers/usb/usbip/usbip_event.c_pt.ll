; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/usbip_event.c_pt.bc'
source_filename = "../drivers/usb/usbip/usbip_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usbip_start_eh\22, \22a\22\09"
module asm "\09.weak\09__crc_usbip_start_eh\09\09\09\09"
module asm "\09.long\09__crc_usbip_start_eh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbip_start_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22usbip_start_eh\22\09\09\09\09\09"
module asm "__kstrtabns_usbip_start_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbip_stop_eh\22, \22a\22\09"
module asm "\09.weak\09__crc_usbip_stop_eh\09\09\09\09"
module asm "\09.long\09__crc_usbip_stop_eh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbip_stop_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22usbip_stop_eh\22\09\09\09\09\09"
module asm "__kstrtabns_usbip_stop_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbip_event_add\22, \22a\22\09"
module asm "\09.weak\09__crc_usbip_event_add\09\09\09\09"
module asm "\09.long\09__crc_usbip_event_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbip_event_add:\09\09\09\09\09"
module asm "\09.asciz \09\22usbip_event_add\22\09\09\09\09\09"
module asm "__kstrtabns_usbip_event_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbip_event_happened\22, \22a\22\09"
module asm "\09.weak\09__crc_usbip_event_happened\09\09\09\09"
module asm "\09.long\09__crc_usbip_event_happened\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbip_event_happened:\09\09\09\09\09"
module asm "\09.asciz \09\22usbip_event_happened\22\09\09\09\09\09"
module asm "__kstrtabns_usbip_event_happened:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usbip_in_eh\22, \22a\22\09"
module asm "\09.weak\09__crc_usbip_in_eh\09\09\09\09"
module asm "\09.long\09__crc_usbip_in_eh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbip_in_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22usbip_in_eh\22\09\09\09\09\09"
module asm "__kstrtabns_usbip_in_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usbip_event = type { %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@usbip_start_eh.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ud->eh_waitq\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_usbip_start_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbip_start_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_usbip_start_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbip_start_eh to i32), ptr @__kstrtab_usbip_start_eh, ptr @__kstrtabns_usbip_start_eh }, section "___ksymtab_gpl+usbip_start_eh", align 4
@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@usbip_stop_eh.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_core\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbip_stop_eh\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/usbip/usbip_event.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usbip_eh stopping but not removed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"usbip_core: %s:%d: usbip_eh stopping but not removed\0A\00", [42 x i8] zeroinitializer }, align 32
@usbip_stop_eh.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usbip_eh waiting completion %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"usbip_core: %s:%d: usbip_eh waiting completion %lx\0A\00", [44 x i8] zeroinitializer }, align 32
@usbip_stop_eh.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbip_eh has stopped\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"usbip_core: %s:%d: usbip_eh has stopped\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_usbip_stop_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbip_stop_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_usbip_stop_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbip_stop_eh to i32), ptr @__kstrtab_usbip_stop_eh, ptr @__kstrtabns_usbip_stop_eh }, section "___ksymtab_gpl+usbip_stop_eh", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbip_event\00", [20 x i8] zeroinitializer }, align 32
@usbip_queue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@usbip_init_eh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013usbip_core: %s:%d: failed to create usbip_event\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbip_init_eh\00", [18 x i8] zeroinitializer }, align 32
@usbip_init_eh._entry_ptr = internal global ptr @usbip_init_eh._entry, section ".printk_index", align 4
@event_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@event_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @event_list, ptr @event_list }, [24 x i8] zeroinitializer }, align 32
@usbip_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @usbip_work, i64 4), ptr getelementptr (i8, ptr @usbip_work, i64 4) }, ptr @event_handler, %struct.lockdep_map { ptr @usbip_work, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_usbip_event_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbip_event_add = external dso_local constant [0 x i8], align 1
@__ksymtab_usbip_event_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbip_event_add to i32), ptr @__kstrtab_usbip_event_add, ptr @__kstrtabns_usbip_event_add }, section "___ksymtab_gpl+usbip_event_add", align 4
@__kstrtab_usbip_event_happened = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbip_event_happened = external dso_local constant [0 x i8], align 1
@__ksymtab_usbip_event_happened = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbip_event_happened to i32), ptr @__kstrtab_usbip_event_happened, ptr @__kstrtabns_usbip_event_happened }, section "___ksymtab_gpl+usbip_event_happened", align 4
@worker_context = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_usbip_in_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbip_in_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_usbip_in_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbip_in_eh to i32), ptr @__kstrtab_usbip_in_eh, ptr @__kstrtabns_usbip_in_eh }, section "___ksymtab_gpl+usbip_in_eh", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event_lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_work\00", [21 x i8] zeroinitializer }, align 32
@event_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event_handler\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pending event %lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usbip_core: %s:%d: pending event %lx\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 102, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 113, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 116, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 119, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 130, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"usbip_queue\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 125, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 132, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"event_lock\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"event_list\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 20, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"usbip_work\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"worker_context\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 60, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 19, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 126, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [35 x i8] c"../drivers/usb/usbip/usbip_event.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 71, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_usbip_event_add, ptr @__ksymtab_usbip_event_happened, ptr @__ksymtab_usbip_in_eh, ptr @__ksymtab_usbip_start_eh, ptr @__ksymtab_usbip_stop_eh, ptr @usbip_init_eh._entry, ptr @usbip_init_eh._entry_ptr, ptr @usbip_start_eh.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @usbip_queue, ptr @.str.12, ptr @.str.13, ptr @event_lock, ptr @event_list, ptr @usbip_work, ptr @worker_context, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_start_eh.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_init_eh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbip_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @worker_context to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbip_start_eh(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eh_waitq = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %eh_waitq, ptr noundef nonnull @.str, ptr noundef nonnull @usbip_start_eh.__key) #7
  %event = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 8
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %event, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbip_stop_eh(ptr noundef %ud) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 8
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  %and = and i32 %1, -3
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %2 = load i32, ptr @usbip_debug_flag, align 4
  %and3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.if.end15_crit_edge, label %do.body6

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbip_stop_eh.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usbip_stop_eh, %if.end15)) #7
          to label %if.then11 [label %if.end15], !srcloc !63

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbip_stop_eh.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 113) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %do.body6, %do.body.if.end15_crit_edge, %entry.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.if.end43_crit_edge, label %do.body18

if.end15.if.end43_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body18:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %3 = load i32, ptr @usbip_debug_flag, align 4
  %and19 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.if.end43_crit_edge, label %do.body22

do.body18.if.end43_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbip_stop_eh.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usbip_stop_eh, %if.end43)) #7
          to label %if.then36 [label %if.end43], !srcloc !63

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbip_stop_eh.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef %and) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %do.body22, %do.body18.if.end43_crit_edge, %if.end15.if.end43_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 118) #7
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %and51 = and i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end43.if.end66_crit_edge, label %if.then53

if.end43.if.end66_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then53:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %eh_waitq = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 9
  %call55115 = call i32 @prepare_to_wait_event(ptr noundef %eh_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event, align 8
  %and57116 = and i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57116)
  %tobool58.not117 = icmp eq i32 %and57116, 0
  br i1 %tobool58.not117, label %if.then53.for.end_crit_edge, label %if.then53.if.end60_crit_edge

if.then53.if.end60_crit_edge:                     ; preds = %if.then53
  br label %if.end60

if.then53.for.end_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end60:                                         ; preds = %cleanup.if.end60_crit_edge, %if.then53.if.end60_crit_edge
  %call55118 = phi i32 [ %call55, %cleanup.if.end60_crit_edge ], [ %call55115, %if.then53.if.end60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55118)
  %tobool61.not = icmp eq i32 %call55118, 0
  br i1 %tobool61.not, label %cleanup, label %if.end60.__out_crit_edge

if.end60.__out_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end60
  call void @schedule() #7
  %call55 = call i32 @prepare_to_wait_event(ptr noundef %eh_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event, align 8
  %and57 = and i32 %10, -3
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end60_crit_edge

cleanup.if.end60_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then53.for.end_crit_edge
  call void @finish_wait(ptr noundef %eh_waitq, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end60.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end66

if.end66:                                         ; preds = %__out, %if.end43.if.end66_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %11 = load i32, ptr @usbip_debug_flag, align 4
  %and69 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end66.do.end92_crit_edge, label %do.body72

if.end66.do.end92_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

do.body72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbip_stop_eh.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usbip_stop_eh, %do.end92)) #7
          to label %if.then86 [label %do.end92], !srcloc !63

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbip_stop_eh.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 119) #7
  br label %do.end92

do.end92:                                         ; preds = %if.then86, %do.body72, %if.end66.do.end92_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbip_init_eh() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.11) #7
  store ptr %call, ptr @usbip_queue, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 132) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbip_finish_eh() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @usbip_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #7
  store ptr null, ptr @usbip_queue, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbip_event_add(ptr noundef %ud, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event1 = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 8
  %0 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event1, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %2 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event1, align 8
  %or.i = or i32 %3, %event
  store i32 %or.i, ptr %event1, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @event_lock) #7
  %ue.035 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @event_list, i32 0, i32 1), align 4
  %cmp7.not36 = icmp eq ptr %ue.035, @event_list
  br i1 %cmp7.not36, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %prev = getelementptr inbounds %struct.list_head, ptr %ue.037, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %ue.0 = load ptr, ptr %prev, align 4
  %cmp7.not = icmp eq ptr %ue.0, @event_list
  br i1 %cmp7.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %ue.037 = phi ptr [ %ue.0, %for.cond.for.body_crit_edge ], [ %ue.035, %if.end.for.body_crit_edge ]
  %ud9 = getelementptr inbounds %struct.usbip_event, ptr %ue.037, i32 0, i32 1
  %5 = ptrtoint ptr %ud9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ud9, align 4
  %cmp10 = icmp eq ptr %6, %ud
  br i1 %cmp10, label %for.body.out_crit_edge, label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2592, i32 noundef 12) #11
  %cmp19 = icmp eq ptr %call7.i, null
  br i1 %cmp19, label %for.end.out_crit_edge, label %if.end22

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end22:                                         ; preds = %for.end
  %ud23 = getelementptr inbounds %struct.usbip_event, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %ud23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ud, ptr %ud23, align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @event_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %9, ptr noundef nonnull @event_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_add_tail.exit_crit_edge

if.end22.list_add_tail.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call7.i, ptr getelementptr inbounds (%struct.list_head, ptr @event_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @event_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end22.list_add_tail.exit_crit_edge
  %13 = load ptr, ptr @usbip_queue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef nonnull @usbip_work) #7
  br label %out

out:                                              ; preds = %list_add_tail.exit, %for.end.out_crit_edge, %for.body.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @event_lock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbip_event_happened(ptr noundef %ud) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %event = getelementptr inbounds %struct.usbip_device, ptr %ud, i32 0, i32 8
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp ne i32 %1, 0
  %spec.select = zext i1 %cmp5.not to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbip_in_eh(ptr nocapture noundef readnone %task) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @worker_context, align 4
  %cmp = icmp eq ptr %0, %task
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_handler(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @worker_context, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  store ptr %4, ptr @worker_context, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2.i64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @event_lock) #7
  %5 = load volatile ptr, ptr @event_list, align 4
  %cmp.i.not.i65 = icmp eq ptr %5, @event_list
  br i1 %cmp.i.not.i65, label %if.end.if.end.thread.i_crit_edge, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  br label %if.then.i

if.end.if.end.thread.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end31.if.end.thread.i_crit_edge, %if.end.if.end.thread.i_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i64, %if.end.if.end.thread.i_crit_edge ], [ %call2.i, %if.end31.if.end.thread.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @event_lock, i32 noundef %call2.i.lcssa) #7
  br label %while.end

if.then.i:                                        ; preds = %if.end31.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %6 = phi ptr [ %38, %if.end31.if.then.i_crit_edge ], [ %5, %if.end.if.then.i_crit_edge ]
  %call2.i66 = phi i32 [ %call2.i, %if.end31.if.then.i_crit_edge ], [ %call2.i64, %if.end.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.then.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @event_lock, i32 noundef %call2.i66) #7
  %tobool7.not.i = icmp eq ptr %6, null
  br i1 %tobool7.not.i, label %if.end.i.while.end_crit_edge, label %get_event.exit

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

get_event.exit:                                   ; preds = %if.end.i
  %ud9.i = getelementptr inbounds %struct.usbip_event, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %ud9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ud9.i, align 4
  tail call void @kfree(ptr noundef nonnull %6) #7
  %cmp2.not = icmp eq ptr %16, null
  br i1 %cmp2.not, label %get_event.exit.while.end_crit_edge, label %do.body

get_event.exit.while.end_crit_edge:               ; preds = %get_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body:                                          ; preds = %get_event.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %17 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.body4

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @event_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@event_handler, %do.end14)) #7
          to label %if.then10 [label %do.end14], !srcloc !63

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %event = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 8
  %18 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %event, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @event_handler.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 71, i32 noundef %19) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body4, %do.body.do.end14_crit_edge
  %sysfs_lock = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #7
  %event15 = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 8
  %20 = ptrtoint ptr %event15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event15, align 8
  %and16 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end14.if.end19_crit_edge, label %if.then18

do.end14.if.end19_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %eh_ops = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 10
  %22 = ptrtoint ptr %eh_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eh_ops, align 8
  tail call void %23(ptr noundef nonnull %16) #7
  %lock.i = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 2
  %call2.i48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %24 = ptrtoint ptr %event15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %event15, align 8
  %and.i49 = and i32 %25, -2
  store i32 %and.i49, ptr %event15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i48) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end14.if.end19_crit_edge
  %26 = ptrtoint ptr %event15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %event15, align 8
  %and21 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end25_crit_edge, label %if.then23

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %reset = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset, align 4
  tail call void %29(ptr noundef nonnull %16) #7
  %lock.i50 = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 2
  %call2.i51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i50) #7
  %30 = ptrtoint ptr %event15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %event15, align 8
  %and.i53 = and i32 %31, -5
  store i32 %and.i53, ptr %event15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i50, i32 noundef %call2.i51) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.if.end25_crit_edge
  %32 = ptrtoint ptr %event15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %event15, align 8
  %and27 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.then29

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %unusable = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %unusable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unusable, align 8
  tail call void %35(ptr noundef nonnull %16) #7
  %lock.i54 = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 2
  %call2.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i54) #7
  %36 = ptrtoint ptr %event15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %event15, align 8
  %and.i57 = and i32 %37, -9
  store i32 %and.i57, ptr %event15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i54, i32 noundef %call2.i55) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #7
  %eh_waitq = getelementptr inbounds %struct.usbip_device, ptr %16, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %eh_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @event_lock) #7
  %38 = load volatile ptr, ptr @event_list, align 4
  %cmp.i.not.i = icmp eq ptr %38, @event_list
  br i1 %cmp.i.not.i, label %if.end31.if.end.thread.i_crit_edge, label %if.end31.if.then.i_crit_edge

if.end31.if.then.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end31.if.end.thread.i_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i

while.end:                                        ; preds = %get_event.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge, %if.end.thread.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !48, !50, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @usbip_start_eh.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/usbip_event.c", i32 102, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_usbip_start_eh, !4, !"__ksymtab_usbip_start_eh", i1 false, i1 false}
!4 = !{!"../drivers/usb/usbip/usbip_event.c", i32 106, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/usb/usbip/usbip_event.c", i32 113, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @usbip_stop_eh.__UNIQUE_ID_ddebug242, !6, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!11 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/usbip/usbip_event.c", i32 116, i32 3}
!14 = !{ptr @usbip_stop_eh.__UNIQUE_ID_ddebug243, !13, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/usbip/usbip_event.c", i32 119, i32 2}
!18 = !{ptr @usbip_stop_eh.__UNIQUE_ID_ddebug244, !17, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ksymtab_usbip_stop_eh, !21, !"__ksymtab_usbip_stop_eh", i1 false, i1 false}
!21 = !{!"../drivers/usb/usbip/usbip_event.c", i32 121, i32 1}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/usbip/usbip_event.c", i32 130, i32 16}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/usbip/usbip_event.c", i32 132, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @usbip_init_eh._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @usbip_init_eh._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_usbip_event_add, !31, !"__ksymtab_usbip_event_add", i1 false, i1 false}
!31 = !{!"../drivers/usb/usbip/usbip_event.c", i32 173, i32 1}
!32 = !{ptr @__ksymtab_usbip_event_happened, !33, !"__ksymtab_usbip_event_happened", i1 false, i1 false}
!33 = !{!"../drivers/usb/usbip/usbip_event.c", i32 187, i32 1}
!34 = !{ptr @__ksymtab_usbip_in_eh, !35, !"__ksymtab_usbip_in_eh", i1 false, i1 false}
!35 = !{!"../drivers/usb/usbip/usbip_event.c", i32 196, i32 1}
!36 = !{ptr @worker_context, !37, !"worker_context", i1 false, i1 false}
!37 = !{!"../drivers/usb/usbip/usbip_event.c", i32 60, i32 28}
!38 = !{ptr @usbip_queue, !39, !"usbip_queue", i1 false, i1 false}
!39 = !{!"../drivers/usb/usbip/usbip_event.c", i32 125, i32 33}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/usbip/usbip_event.c", i32 19, i32 8}
!42 = !{ptr @event_lock, !41, !"event_lock", i1 false, i1 false}
!43 = !{ptr @event_list, !44, !"event_list", i1 false, i1 false}
!44 = !{!"../drivers/usb/usbip/usbip_event.c", i32 20, i32 8}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/usbip/usbip_event.c", i32 126, i32 8}
!47 = !{ptr @usbip_work, !46, !"usbip_work", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/usbip/usbip_event.c", i32 71, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @event_handler.__UNIQUE_ID_ddebug241, !49, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!52 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148253244, i64 2148253249, i64 2148253262, i64 2148253306, i64 2148253340, i64 2148253361}
