; ModuleID = '/llk/IR_all_yes/drivers/pps/kapi.c_pt.bc'
source_filename = "../drivers/pps/kapi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pps_register_source\22, \22a\22\09"
module asm "\09.weak\09__crc_pps_register_source\09\09\09\09"
module asm "\09.long\09__crc_pps_register_source\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_register_source:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_register_source\22\09\09\09\09\09"
module asm "__kstrtabns_pps_register_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pps_unregister_source\22, \22a\22\09"
module asm "\09.weak\09__crc_pps_unregister_source\09\09\09\09"
module asm "\09.long\09__crc_pps_unregister_source\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_unregister_source:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_unregister_source\22\09\09\09\09\09"
module asm "__kstrtabns_pps_unregister_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pps_event\22, \22a\22\09"
module asm "\09.weak\09__crc_pps_event\09\09\09\09"
module asm "\09.long\09__crc_pps_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_event:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_event\22\09\09\09\09\09"
module asm "__kstrtabns_pps_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timespec64 = type { i64, i32 }

@pps_register_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013pps_core: %s: unsupported default parameters\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pps_register_source\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/pps/kapi.c\00", [45 x i8] zeroinitializer }, align 32
@pps_register_source._entry_ptr = internal global ptr @pps_register_source._entry, section ".printk_index", align 4
@pps_register_source._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013pps_core: %s: unspecified time format\0A\00", [55 x i8] zeroinitializer }, align 32
@pps_register_source._entry_ptr.5 = internal global ptr @pps_register_source._entry.3, section ".printk_index", align 4
@pps_register_source.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pps->queue\00", [20 x i8] zeroinitializer }, align 32
@pps_register_source.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pps->lock\00", [21 x i8] zeroinitializer }, align 32
@pps_register_source._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pps_core: %s: unable to create char device\0A\00", [50 x i8] zeroinitializer }, align 32
@pps_register_source._entry_ptr.11 = internal global ptr @pps_register_source._entry.9, section ".printk_index", align 4
@pps_register_source._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new PPS source %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pps_register_source._entry_ptr.16 = internal global ptr @pps_register_source._entry.12, section ".printk_index", align 4
@pps_register_source._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pps_core: %s: unable to register source\0A\00", [53 x i8] zeroinitializer }, align 32
@pps_register_source._entry_ptr.19 = internal global ptr @pps_register_source._entry.17, section ".printk_index", align 4
@__kstrtab_pps_register_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_register_source = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_register_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_register_source to i32), ptr @__kstrtab_pps_register_source, ptr @__kstrtabns_pps_register_source }, section "___ksymtab+pps_register_source", align 4
@__kstrtab_pps_unregister_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_unregister_source = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_unregister_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_unregister_source to i32), ptr @__kstrtab_pps_unregister_source, ptr @__kstrtabns_pps_unregister_source }, section "___ksymtab+pps_unregister_source", align 4
@pps_event.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pps_core\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pps_event\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PPS event at %lld.%09ld\0A\00", [39 x i8] zeroinitializer }, align 32
@pps_event.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"capture assert seq #%u\0A\00", [40 x i8] zeroinitializer }, align 32
@pps_event.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"capture clear seq #%u\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_pps_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_event = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_event to i32), ptr @__kstrtab_pps_event, ptr @__kstrtabns_pps_event }, section "___ksymtab+pps_event", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pps_echo_client_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 46, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"echo %s %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pps_echo_client_default\00", [40 x i8] zeroinitializer }, align 32
@pps_echo_client_default._entry_ptr = internal global ptr @pps_echo_client_default._entry, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"assert\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 73, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 79, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 104, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 105, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 110, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 115, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 123, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 169, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 191, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 205, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [22 x i8] c"../drivers/pps/kapi.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 44, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__ksymtab_pps_event, ptr @__ksymtab_pps_register_source, ptr @__ksymtab_pps_unregister_source, ptr @pps_echo_client_default._entry, ptr @pps_echo_client_default._entry_ptr, ptr @pps_register_source._entry, ptr @pps_register_source._entry.12, ptr @pps_register_source._entry.17, ptr @pps_register_source._entry.3, ptr @pps_register_source._entry.9, ptr @pps_register_source._entry_ptr, ptr @pps_register_source._entry_ptr.11, ptr @pps_register_source._entry_ptr.16, ptr @pps_register_source._entry_ptr.19, ptr @pps_register_source._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pps_register_source.__key, ptr @.str.6, ptr @pps_register_source.__key.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_source._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_source.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_source.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_source._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_source._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_source._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_echo_client_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pps_register_source(ptr noundef %info, i32 noundef %default_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pps_source_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %and = and i32 %1, %default_params
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %default_params)
  %cmp.not = icmp eq i32 %and, %default_params
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %info) #8
  br label %do.end54

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %do.end7, label %if.end12

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %info) #8
  br label %do.end54

if.end12:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 440) #9
  %cmp14 = icmp eq ptr %call7.i.i, null
  br i1 %cmp14, label %if.end12.do.end54_crit_edge, label %if.end16

if.end12.do.end54_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

if.end16:                                         ; preds = %if.end12
  %params = getelementptr inbounds %struct.pps_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %params, align 8
  %mode18 = getelementptr inbounds %struct.pps_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %mode18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %default_params, ptr %mode18, align 4
  %5 = call ptr @memcpy(ptr %call7.i.i, ptr %info, i32 80)
  %mode21 = getelementptr inbounds %struct.pps_source_info, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %mode21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode21, align 8
  %and22 = and i32 %7, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %if.end16.do.body29_crit_edge, label %land.lhs.true

if.end16.do.body29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body29

land.lhs.true:                                    ; preds = %if.end16
  %echo = getelementptr inbounds %struct.pps_source_info, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %echo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %echo, align 4
  %cmp24 = icmp eq ptr %9, null
  br i1 %cmp24, label %if.then25, label %land.lhs.true.do.body29_crit_edge

land.lhs.true.do.body29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body29

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %echo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pps_echo_client_default, ptr %echo, align 4
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %land.lhs.true.do.body29_crit_edge, %if.end16.do.body29_crit_edge
  %queue = getelementptr inbounds %struct.pps_device, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.6, ptr noundef nonnull @pps_register_source.__key) #5
  %lock = getelementptr inbounds %struct.pps_device, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @pps_register_source.__key.7, i16 noundef signext 3) #5
  %call36 = tail call i32 @pps_register_cdev(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %do.end49

do.end41:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %info) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %phi.cast = inttoptr i32 %call36 to ptr
  br label %do.end54

do.end49:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pps_device, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef %info) #8
  br label %cleanup

do.end54:                                         ; preds = %do.end41, %if.end12.do.end54_crit_edge, %do.end7, %do.end
  %err.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end7 ], [ %phi.cast, %do.end41 ], [ inttoptr (i32 -12 to ptr), %if.end12.do.end54_crit_edge ]
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %info) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end49
  %retval.0 = phi ptr [ %err.0, %do.end54 ], [ %call7.i.i, %do.end49 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pps_echo_client_default(ptr nocapture noundef readonly %pps, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %and = and i32 %event, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.28, ptr @.str.27
  %and1 = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.28, ptr @.str.29
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond, ptr noundef nonnull %cond3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pps_register_cdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pps_unregister_source(ptr noundef %pps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pps_unregister_cdev(ptr noundef %pps) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_unregister_cdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pps_event(ptr noundef %pps, ptr nocapture noundef readonly %ts, i32 noundef %event, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body2, label %do.body8, !prof !64

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pps/kapi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #5, !srcloc !65
  unreachable

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_event.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_event, %do.end23)) #5
          to label %if.then18 [label %do.end23], !srcloc !66

if.then18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_event.__UNIQUE_ID_ddebug223, ptr noundef %1, ptr noundef nonnull @.str.22, i64 noundef %3, i32 noundef %5) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body8
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack = load i64, ptr %ts, align 8
  %.elt147 = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %.elt147 to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack148 = load i64, ptr %.elt147, align 8
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack148, 32
  %ts.sroa.2.8.extract.trunc.i = trunc i64 %ts.sroa.2.8.extract.shift.i to i32
  %lock = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 14
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %mode = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %and35 = and i32 %9, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end23.if.end38_crit_edge, label %if.then37

do.end23.if.end38_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then37:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %echo = getelementptr inbounds %struct.pps_source_info, ptr %pps, i32 0, i32 3
  %10 = ptrtoint ptr %echo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %echo, align 4
  tail call void %11(ptr noundef %pps, i32 noundef %event, ptr noundef %data) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end23.if.end38_crit_edge
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %current_mode = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 6
  %14 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %current_mode, align 8
  %and43 = and i32 %event, 1
  %and44 = and i32 %and43, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end74.thread, label %if.then46

if.then46:                                        ; preds = %if.end38
  %and49 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then46.if.end53_crit_edge, label %if.then51

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then51:                                        ; preds = %if.then46
  %assert_off_tu = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 1, i32 2
  %nsec.i155 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 1, i32 2, i32 1
  %15 = ptrtoint ptr %nsec.i155 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nsec.i155, align 8
  %add.i = add i32 %16, %ts.sroa.2.8.extract.trunc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add.i)
  %cmp24.i = icmp sgt i32 %add.i, 999999999
  br i1 %cmp24.i, label %while.body.lr.ph.i, label %if.then51.while.cond4thread-pre-split.i_crit_edge

if.then51.while.cond4thread-pre-split.i_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond4thread-pre-split.i

while.body.lr.ph.i:                               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %17 = add nuw i32 %add.i, 999999999
  %smin.i = tail call i32 @llvm.smin.i32(i32 %add.i, i32 1999999999) #5
  %18 = sub nuw i32 %17, %smin.i
  %.frozen = freeze i32 %18
  %19 = udiv i32 %.frozen, 1000000000
  %20 = mul i32 %19, 1000000000
  %.decomposed = sub i32 %.frozen, %20
  %21 = zext i32 %19 to i64
  %.neg.i = add nsw i32 %add.i, -1000000000
  %22 = sub nsw i32 %.neg.i, %18
  %23 = add nsw i32 %22, %.decomposed
  %24 = add i64 %.unpack, 1
  %25 = add i64 %24, %21
  br label %while.cond4thread-pre-split.i

while.cond4thread-pre-split.i:                    ; preds = %while.body.lr.ph.i, %if.then51.while.cond4thread-pre-split.i_crit_edge
  %ts_real.sroa.18.0 = phi i32 [ %23, %while.body.lr.ph.i ], [ %add.i, %if.then51.while.cond4thread-pre-split.i_crit_edge ]
  %ts_real.sroa.0.0 = phi i64 [ %25, %while.body.lr.ph.i ], [ %.unpack, %if.then51.while.cond4thread-pre-split.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ts_real.sroa.18.0)
  %cmp625.i = icmp slt i32 %ts_real.sroa.18.0, 0
  br i1 %cmp625.i, label %while.body7.lr.ph.i, label %while.cond4thread-pre-split.i.pps_add_offset.exit_crit_edge

while.cond4thread-pre-split.i.pps_add_offset.exit_crit_edge: ; preds = %while.cond4thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pps_add_offset.exit

while.body7.lr.ph.i:                              ; preds = %while.cond4thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #7
  %smax.i = tail call i32 @llvm.smax.i32(i32 %ts_real.sroa.18.0, i32 -1000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000000000, i32 %ts_real.sroa.18.0)
  %26 = icmp ult i32 %ts_real.sroa.18.0, -1000000000
  %umin.i.neg197 = sext i1 %26 to i32
  %umin.i = zext i1 %26 to i32
  %.neg193 = sub nsw i32 %smax.i, %ts_real.sroa.18.0
  %27 = add nsw i32 %.neg193, %umin.i.neg197
  %28 = udiv i32 %27, 1000000000
  %29 = add nuw nsw i32 %28, %umin.i
  %30 = mul i32 %29, 1000000000
  %31 = add nsw i32 %ts_real.sroa.18.0, 1000000000
  %32 = add i32 %31, %30
  %33 = zext i32 %29 to i64
  %34 = xor i64 %33, -1
  %35 = add i64 %ts_real.sroa.0.0, %34
  br label %pps_add_offset.exit

pps_add_offset.exit:                              ; preds = %while.body7.lr.ph.i, %while.cond4thread-pre-split.i.pps_add_offset.exit_crit_edge
  %ts_real.sroa.18.1 = phi i32 [ %32, %while.body7.lr.ph.i ], [ %ts_real.sroa.18.0, %while.cond4thread-pre-split.i.pps_add_offset.exit_crit_edge ]
  %ts_real.sroa.0.1 = phi i64 [ %35, %while.body7.lr.ph.i ], [ %ts_real.sroa.0.0, %while.cond4thread-pre-split.i.pps_add_offset.exit_crit_edge ]
  %36 = ptrtoint ptr %assert_off_tu to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %assert_off_tu, align 8
  %add14.i = add i64 %37, %ts_real.sroa.0.1
  br label %if.end53

if.end53:                                         ; preds = %pps_add_offset.exit, %if.then46.if.end53_crit_edge
  %ts_real.sroa.18.2 = phi i32 [ %ts.sroa.2.8.extract.trunc.i, %if.then46.if.end53_crit_edge ], [ %ts_real.sroa.18.1, %pps_add_offset.exit ]
  %ts_real.sroa.0.2 = phi i64 [ %.unpack, %if.then46.if.end53_crit_edge ], [ %add14.i, %pps_add_offset.exit ]
  %assert_tu = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 4
  %38 = ptrtoint ptr %assert_tu to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %ts_real.sroa.0.2, ptr %assert_tu, align 8
  %ts_real.sroa.18.0.assert_tu.sroa_idx = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %ts_real.sroa.18.0.assert_tu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %ts_real.sroa.18.2, ptr %ts_real.sroa.18.0.assert_tu.sroa_idx, align 8
  %ts_real.sroa.27.0.assert_tu.sroa_idx = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %ts_real.sroa.27.0.assert_tu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ts_real.sroa.27.0.assert_tu.sroa_idx, align 4
  %assert_sequence = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 2
  %41 = ptrtoint ptr %assert_sequence to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assert_sequence, align 8
  %inc = add i32 %42, 1
  store i32 %inc, ptr %assert_sequence, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_event.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_event, %if.end74)) #5
          to label %if.then68 [label %if.end74], !srcloc !66

if.then68:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %dev69 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %43 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev69, align 4
  %45 = ptrtoint ptr %assert_sequence to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %assert_sequence, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_event.__UNIQUE_ID_ddebug224, ptr noundef %44, ptr noundef nonnull @.str.23, i32 noundef %46) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %if.end53
  %47 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode, align 4
  %and77 = and i32 %event, 2
  %and78 = and i32 %and77, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end109, label %if.end74.if.then80_crit_edge

if.end74.if.then80_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80

if.end74.thread:                                  ; preds = %if.end38
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode, align 4
  %and77200 = and i32 %event, 2
  %and78201 = and i32 %and77200, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78201)
  %tobool79.not202 = icmp eq i32 %and78201, 0
  br i1 %tobool79.not202, label %if.end74.thread.if.end113_crit_edge, label %if.end74.thread.if.then80_crit_edge

if.end74.thread.if.then80_crit_edge:              ; preds = %if.end74.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80

if.end74.thread.if.end113_crit_edge:              ; preds = %if.end74.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then80:                                        ; preds = %if.end74.thread.if.then80_crit_edge, %if.end74.if.then80_crit_edge
  %51 = phi i32 [ %50, %if.end74.thread.if.then80_crit_edge ], [ %48, %if.end74.if.then80_crit_edge ]
  %ts_real.sroa.0.3204 = phi i64 [ %.unpack, %if.end74.thread.if.then80_crit_edge ], [ %ts_real.sroa.0.2, %if.end74.if.then80_crit_edge ]
  %ts_real.sroa.18.3203 = phi i32 [ %ts.sroa.2.8.extract.trunc.i, %if.end74.thread.if.then80_crit_edge ], [ %ts_real.sroa.18.2, %if.end74.if.then80_crit_edge ]
  %and83 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then80.if.end87_crit_edge, label %if.then85

if.then80.if.end87_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then85:                                        ; preds = %if.then80
  %clear_off_tu = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 1, i32 3
  %nsec.i156 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 1, i32 3, i32 1
  %52 = ptrtoint ptr %nsec.i156 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nsec.i156, align 8
  %add.i158 = add i32 %53, %ts_real.sroa.18.3203
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add.i158)
  %cmp24.i159 = icmp sgt i32 %add.i158, 999999999
  br i1 %cmp24.i159, label %while.body.lr.ph.i163, label %if.then85.while.cond4thread-pre-split.i166_crit_edge

if.then85.while.cond4thread-pre-split.i166_crit_edge: ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond4thread-pre-split.i166

while.body.lr.ph.i163:                            ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %54 = add nuw i32 %add.i158, 999999999
  %smin.i161 = tail call i32 @llvm.smin.i32(i32 %add.i158, i32 1999999999) #5
  %55 = sub nuw i32 %54, %smin.i161
  %.frozen205 = freeze i32 %55
  %56 = udiv i32 %.frozen205, 1000000000
  %57 = mul i32 %56, 1000000000
  %.decomposed206 = sub i32 %.frozen205, %57
  %58 = zext i32 %56 to i64
  %.neg.i162 = add nsw i32 %add.i158, -1000000000
  %59 = sub nsw i32 %.neg.i162, %55
  %60 = add nsw i32 %59, %.decomposed206
  %61 = add i64 %ts_real.sroa.0.3204, 1
  %62 = add i64 %61, %58
  br label %while.cond4thread-pre-split.i166

while.cond4thread-pre-split.i166:                 ; preds = %while.body.lr.ph.i163, %if.then85.while.cond4thread-pre-split.i166_crit_edge
  %ts_real.sroa.18.4 = phi i32 [ %60, %while.body.lr.ph.i163 ], [ %add.i158, %if.then85.while.cond4thread-pre-split.i166_crit_edge ]
  %ts_real.sroa.0.4 = phi i64 [ %62, %while.body.lr.ph.i163 ], [ %ts_real.sroa.0.3204, %if.then85.while.cond4thread-pre-split.i166_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ts_real.sroa.18.4)
  %cmp625.i165 = icmp slt i32 %ts_real.sroa.18.4, 0
  br i1 %cmp625.i165, label %while.body7.lr.ph.i170, label %while.cond4thread-pre-split.i166.pps_add_offset.exit172_crit_edge

while.cond4thread-pre-split.i166.pps_add_offset.exit172_crit_edge: ; preds = %while.cond4thread-pre-split.i166
  call void @__sanitizer_cov_trace_pc() #7
  br label %pps_add_offset.exit172

while.body7.lr.ph.i170:                           ; preds = %while.cond4thread-pre-split.i166
  call void @__sanitizer_cov_trace_pc() #7
  %smax.i168 = tail call i32 @llvm.smax.i32(i32 %ts_real.sroa.18.4, i32 -1000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000000000, i32 %ts_real.sroa.18.4)
  %63 = icmp ult i32 %ts_real.sroa.18.4, -1000000000
  %umin.i169.neg196 = sext i1 %63 to i32
  %umin.i169 = zext i1 %63 to i32
  %.neg195 = sub nsw i32 %smax.i168, %ts_real.sroa.18.4
  %64 = add nsw i32 %.neg195, %umin.i169.neg196
  %65 = udiv i32 %64, 1000000000
  %66 = add nuw nsw i32 %65, %umin.i169
  %67 = mul i32 %66, 1000000000
  %68 = add nsw i32 %ts_real.sroa.18.4, 1000000000
  %69 = add i32 %68, %67
  %70 = zext i32 %66 to i64
  %71 = xor i64 %70, -1
  %72 = add i64 %ts_real.sroa.0.4, %71
  br label %pps_add_offset.exit172

pps_add_offset.exit172:                           ; preds = %while.body7.lr.ph.i170, %while.cond4thread-pre-split.i166.pps_add_offset.exit172_crit_edge
  %ts_real.sroa.18.5 = phi i32 [ %69, %while.body7.lr.ph.i170 ], [ %ts_real.sroa.18.4, %while.cond4thread-pre-split.i166.pps_add_offset.exit172_crit_edge ]
  %ts_real.sroa.0.5 = phi i64 [ %72, %while.body7.lr.ph.i170 ], [ %ts_real.sroa.0.4, %while.cond4thread-pre-split.i166.pps_add_offset.exit172_crit_edge ]
  %73 = ptrtoint ptr %clear_off_tu to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %clear_off_tu, align 8
  %add14.i171 = add i64 %74, %ts_real.sroa.0.5
  br label %if.end87

if.end87:                                         ; preds = %pps_add_offset.exit172, %if.then80.if.end87_crit_edge
  %ts_real.sroa.18.6 = phi i32 [ %ts_real.sroa.18.3203, %if.then80.if.end87_crit_edge ], [ %ts_real.sroa.18.5, %pps_add_offset.exit172 ]
  %ts_real.sroa.0.6 = phi i64 [ %ts_real.sroa.0.3204, %if.then80.if.end87_crit_edge ], [ %add14.i171, %pps_add_offset.exit172 ]
  %clear_tu = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 5
  %75 = ptrtoint ptr %clear_tu to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %ts_real.sroa.0.6, ptr %clear_tu, align 8
  %ts_real.sroa.18.0.clear_tu.sroa_idx = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 5, i32 1
  %76 = ptrtoint ptr %ts_real.sroa.18.0.clear_tu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %ts_real.sroa.18.6, ptr %ts_real.sroa.18.0.clear_tu.sroa_idx, align 8
  %ts_real.sroa.27.0.clear_tu.sroa_idx = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 5, i32 2
  %77 = ptrtoint ptr %ts_real.sroa.27.0.clear_tu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %ts_real.sroa.27.0.clear_tu.sroa_idx, align 4
  %clear_sequence = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 3
  %78 = ptrtoint ptr %clear_sequence to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %clear_sequence, align 4
  %inc88 = add i32 %79, 1
  store i32 %inc88, ptr %clear_sequence, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_event.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_event, %if.then111)) #5
          to label %if.then103 [label %if.then111], !srcloc !66

if.then103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  %dev104 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %80 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev104, align 4
  %82 = ptrtoint ptr %clear_sequence to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %clear_sequence, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_event.__UNIQUE_ID_ddebug225, ptr noundef %81, ptr noundef nonnull @.str.24, i32 noundef %83) #5
  br label %if.then111

if.end109:                                        ; preds = %if.end74
  br i1 %tobool45.not, label %if.end109.if.end113_crit_edge, label %if.end109.if.then111_crit_edge

if.end109.if.then111_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then111:                                       ; preds = %if.end109.if.then111_crit_edge, %if.then103, %if.end87
  %last_ev = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 7
  %84 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %last_ev, align 4
  %inc112 = add i32 %85, 1
  store i32 %inc112, ptr %last_ev, align 4
  %queue = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 1, i32 noundef 0, ptr noundef null) #5
  %async_queue = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 13
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #5
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end109.if.end113_crit_edge, %if.end74.thread.if.end113_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !45, !47, !49, !50, !51, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pps/kapi.c", i32 73, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pps_register_source._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pps_register_source._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pps/kapi.c", i32 79, i32 3}
!8 = !{ptr @pps_register_source._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @pps_register_source._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @pps_register_source.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/pps/kapi.c", i32 104, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pps_register_source.__key.7, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/pps/kapi.c", i32 105, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pps/kapi.c", i32 110, i32 3}
!18 = !{ptr @pps_register_source._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pps_register_source._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pps/kapi.c", i32 115, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pps_register_source._entry.12, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @pps_register_source._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pps/kapi.c", i32 123, i32 2}
!28 = !{ptr @pps_register_source._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pps_register_source._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_pps_register_source, !31, !"__ksymtab_pps_register_source", i1 false, i1 false}
!31 = !{!"../drivers/pps/kapi.c", i32 127, i32 1}
!32 = !{ptr @__ksymtab_pps_unregister_source, !33, !"__ksymtab_pps_unregister_source", i1 false, i1 false}
!33 = !{!"../drivers/pps/kapi.c", i32 144, i32 1}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pps/kapi.c", i32 169, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pps_event.__UNIQUE_ID_ddebug223, !35, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pps/kapi.c", i32 191, i32 3}
!41 = !{ptr @pps_event.__UNIQUE_ID_ddebug224, !40, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pps/kapi.c", i32 205, i32 3}
!44 = !{ptr @pps_event.__UNIQUE_ID_ddebug225, !43, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!45 = !{ptr @__ksymtab_pps_event, !46, !"__ksymtab_pps_event", i1 false, i1 false}
!46 = !{!"../drivers/pps/kapi.c", i32 223, i32 1}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pps/kapi.c", i32 44, i32 2}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pps_echo_client_default._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pps_echo_client_default._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2153405174, i64 2153405657, i64 2153405211, i64 2153405267, i64 2153405301, i64 2153405325, i64 2153405366, i64 2153405387, i64 2153405415, i64 2153405449}
!66 = !{i64 2148695121, i64 2148695126, i64 2148695139, i64 2148695183, i64 2148695217, i64 2148695238}
