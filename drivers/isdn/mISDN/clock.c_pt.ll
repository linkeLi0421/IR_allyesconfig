; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/clock.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mISDN_register_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_register_clock\09\09\09\09"
module asm "\09.long\09__crc_mISDN_register_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_register_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_register_clock\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_register_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDN_unregister_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_unregister_clock\09\09\09\09"
module asm "\09.long\09__crc_mISDN_unregister_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_unregister_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_unregister_clock\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_unregister_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDN_clock_update\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_clock_update\09\09\09\09"
module asm "\09.long\09__crc_mISDN_clock_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_clock_update:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_clock_update\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_clock_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDN_clock_get\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_clock_get\09\09\09\09"
module asm "\09.long\09__crc_mISDN_clock_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_clock_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_clock_get\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_clock_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mISDNclock = type { %struct.list_head, [64 x i8], i32, ptr, ptr }

@debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iclock_timestamp = internal global { i64, [24 x i8] } zeroinitializer, align 32
@mISDN_register_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: %s %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mISDN_register_clock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/isdn/mISDN/clock.c\00", [37 x i8] zeroinitializer }, align 32
@mISDN_register_clock._entry_ptr = internal global ptr @mISDN_register_clock._entry, section ".printk_index", align 4
@mISDN_register_clock._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: No memory for clock entry.\0A\00", [62 x i8] zeroinitializer }, align 32
@mISDN_register_clock._entry_ptr.5 = internal global ptr @mISDN_register_clock._entry.3, section ".printk_index", align 4
@iclock_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@iclock_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @iclock_list, ptr @iclock_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_mISDN_register_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_register_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_register_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_register_clock to i32), ptr @__kstrtab_mISDN_register_clock, ptr @__kstrtabns_mISDN_register_clock }, section "___ksymtab+mISDN_register_clock", align 4
@mISDN_unregister_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mISDN_unregister_clock\00", [41 x i8] zeroinitializer }, align 32
@mISDN_unregister_clock._entry_ptr = internal global ptr @mISDN_unregister_clock._entry, section ".printk_index", align 4
@iclock_current = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mISDN_unregister_clock._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017Current clock source '%s' unregisters.\0A\00", [54 x i8] zeroinitializer }, align 32
@mISDN_unregister_clock._entry_ptr.9 = internal global ptr @mISDN_unregister_clock._entry.7, section ".printk_index", align 4
@__kstrtab_mISDN_unregister_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_unregister_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_unregister_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_unregister_clock to i32), ptr @__kstrtab_mISDN_unregister_clock, ptr @__kstrtabns_mISDN_unregister_clock }, section "___ksymtab+mISDN_unregister_clock", align 4
@mISDN_clock_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013%s: '%s' sends us clock updates, but we do listen to '%s'. This is a bug!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mISDN_clock_update\00", [45 x i8] zeroinitializer }, align 32
@mISDN_clock_update._entry_ptr = internal global ptr @mISDN_clock_update._entry, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nothing\00", [24 x i8] zeroinitializer }, align 32
@iclock_timestamp_valid = internal global { i1, [31 x i8] } zeroinitializer, align 32
@iclock_count = internal global { i16, [30 x i8] } zeroinitializer, align 32
@mISDN_clock_update._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Received first clock from source '%s'.\0A\00", [56 x i8] zeroinitializer }, align 32
@mISDN_clock_update._entry_ptr.15 = internal global ptr @mISDN_clock_update._entry.13, section ".printk_index", align 4
@__kstrtab_mISDN_clock_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_clock_update = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_clock_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_clock_update to i32), ptr @__kstrtab_mISDN_clock_update, ptr @__kstrtabns_mISDN_clock_update }, section "___ksymtab+mISDN_clock_update", align 4
@__kstrtab_mISDN_clock_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_clock_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_clock_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_clock_get to i32), ptr @__kstrtab_mISDN_clock_get, ptr @__kstrtabns_mISDN_clock_get }, section "___ksymtab+mISDN_clock_get", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iclock_lock\00", [20 x i8] zeroinitializer }, align 32
@select_iclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017Old clock source '%s' disable.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"select_iclock\00", [18 x i8] zeroinitializer }, align 32
@select_iclock._entry_ptr = internal global ptr @select_iclock._entry, section ".printk_index", align 4
@select_iclock._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017New clock source '%s' enable.\0A\00", [63 x i8] zeroinitializer }, align 32
@select_iclock._entry_ptr.21 = internal global ptr @select_iclock._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 36, i32 15 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"iclock_timestamp\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 40, i32 16 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 93, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 96, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"iclock_lock\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"iclock_list\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 37, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 117, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"iclock_current\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 42, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 122, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 142, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"iclock_timestamp_valid\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"iclock_count\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 39, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 172, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 38, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 68, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [30 x i8] c"../drivers/isdn/mISDN/clock.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 75, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__ksymtab_mISDN_clock_get, ptr @__ksymtab_mISDN_clock_update, ptr @__ksymtab_mISDN_register_clock, ptr @__ksymtab_mISDN_unregister_clock, ptr @mISDN_clock_update._entry, ptr @mISDN_clock_update._entry.13, ptr @mISDN_clock_update._entry_ptr, ptr @mISDN_clock_update._entry_ptr.15, ptr @mISDN_register_clock._entry, ptr @mISDN_register_clock._entry.3, ptr @mISDN_register_clock._entry_ptr, ptr @mISDN_register_clock._entry_ptr.5, ptr @mISDN_unregister_clock._entry, ptr @mISDN_unregister_clock._entry.7, ptr @mISDN_unregister_clock._entry_ptr, ptr @mISDN_unregister_clock._entry_ptr.9, ptr @select_iclock._entry, ptr @select_iclock._entry.19, ptr @select_iclock._entry_ptr, ptr @select_iclock._entry_ptr.21, ptr @debug, ptr @iclock_timestamp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @iclock_lock, ptr @iclock_list, ptr @.str.6, ptr @iclock_current, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @iclock_timestamp_valid, ptr @iclock_count, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iclock_timestamp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_register_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_register_clock._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iclock_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iclock_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_unregister_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iclock_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_unregister_clock._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_clock_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iclock_timestamp_valid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iclock_count to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_clock_update._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_iclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @select_iclock._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mISDN_init_clock(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %dp, ptr @debug, align 4
  %call = tail call i64 @ktime_get() #6
  store i64 %call, ptr @iclock_timestamp, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mISDN_register_clock(ptr noundef %name, i32 noundef %pri, ptr noundef %ctl, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 33554687
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %pri) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 84) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %name10 = getelementptr inbounds %struct.mISDNclock, ptr %call7.i.i, i32 0, i32 1
  %call11 = tail call ptr @strncpy(ptr noundef %name10, ptr noundef %name, i32 noundef 63)
  %pri12 = getelementptr inbounds %struct.mISDNclock, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pri12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pri, ptr %pri12, align 8
  %priv13 = getelementptr inbounds %struct.mISDNclock, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %priv13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %priv13, align 8
  %ctl14 = getelementptr inbounds %struct.mISDNclock, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ctl14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctl, ptr %ctl14, align 4
  %call17 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @iclock_lock) #6
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @iclock_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %7, ptr noundef nonnull @iclock_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @iclock_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iclock_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  tail call fastcc void @select_iclock()
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @iclock_lock, i32 noundef %call17) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end6
  ret ptr %call7.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @select_iclock() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iclock.059 = load ptr, ptr @iclock_list, align 4
  %cmp.not60 = icmp eq ptr %iclock.059, @iclock_list
  br i1 %cmp.not60, label %entry.if.end37_crit_edge, label %for.body.lr.ph

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.body.lr.ph:                                   ; preds = %entry
  %0 = load ptr, ptr @iclock_current, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %iclock.064 = phi ptr [ %iclock.059, %for.body.lr.ph ], [ %iclock.0, %for.body.for.body_crit_edge ]
  %bestclock.063 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select58, %for.body.for.body_crit_edge ]
  %lastclock.062 = phi ptr [ null, %for.body.lr.ph ], [ %lastclock.1, %for.body.for.body_crit_edge ]
  %pri.061 = phi i32 [ -128, %for.body.lr.ph ], [ %3, %for.body.for.body_crit_edge ]
  %pri1 = getelementptr inbounds %struct.mISDNclock, ptr %iclock.064, i32 0, i32 2
  %1 = ptrtoint ptr %pri1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pri1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pri.061)
  %cmp2 = icmp sgt i32 %2, %pri.061
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 %pri.061)
  %spec.select58 = select i1 %cmp2, ptr %iclock.064, ptr %bestclock.063
  %cmp4 = icmp eq ptr %0, %iclock.064
  %lastclock.1 = select i1 %cmp4, ptr %iclock.064, ptr %lastclock.062
  %4 = ptrtoint ptr %iclock.064 to i32
  call void @__asan_load4_noabort(i32 %4)
  %iclock.0 = load ptr, ptr %iclock.064, align 4
  %cmp.not = icmp eq ptr %iclock.0, @iclock_list
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %lastclock.1, null
  %cmp11.not = icmp eq ptr %spec.select58, %lastclock.1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %for.end.if.end18_crit_edge, label %if.then12

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12:                                        ; preds = %for.end
  %5 = load ptr, ptr @debug, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then12.if.end16_crit_edge, label %do.end

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.mISDNclock, ptr %lastclock.1, i32 0, i32 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.then12.if.end16_crit_edge
  %ctl = getelementptr inbounds %struct.mISDNclock, ptr %lastclock.1, i32 0, i32 3
  %8 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl, align 4
  %priv = getelementptr inbounds %struct.mISDNclock, ptr %lastclock.1, i32 0, i32 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %call17 = tail call i32 %9(ptr noundef %11, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %for.end.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %spec.select58, null
  br i1 %tobool19.not, label %if.end18.if.end37_crit_edge, label %land.lhs.true20

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true20:                                  ; preds = %if.end18
  %12 = load ptr, ptr @iclock_current, align 4
  %cmp21.not = icmp eq ptr %spec.select58, %12
  br i1 %cmp21.not, label %land.lhs.true20.if.end37_crit_edge, label %if.then22

land.lhs.true20.if.end37_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then22:                                        ; preds = %land.lhs.true20
  %13 = load ptr, ptr @debug, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and23 = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then22.if.end33_crit_edge, label %do.end28

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %name30 = getelementptr inbounds %struct.mISDNclock, ptr %spec.select58, i32 0, i32 1
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name30) #9
  br label %if.end33

if.end33:                                         ; preds = %do.end28, %if.then22.if.end33_crit_edge
  %ctl34 = getelementptr inbounds %struct.mISDNclock, ptr %spec.select58, i32 0, i32 3
  %16 = ptrtoint ptr %ctl34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl34, align 4
  %priv35 = getelementptr inbounds %struct.mISDNclock, ptr %spec.select58, i32 0, i32 4
  %18 = ptrtoint ptr %priv35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv35, align 4
  %call36 = tail call i32 %17(ptr noundef %19, i32 noundef 1) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %land.lhs.true20.if.end37_crit_edge, %if.end18.if.end37_crit_edge, %entry.if.end37_crit_edge
  %bestclock.0.lcssa74 = phi ptr [ %spec.select58, %if.end33 ], [ %spec.select58, %land.lhs.true20.if.end37_crit_edge ], [ null, %if.end18.if.end37_crit_edge ], [ null, %entry.if.end37_crit_edge ]
  %20 = load ptr, ptr @iclock_current, align 4
  %cmp38.not = icmp eq ptr %bestclock.0.lcssa74, %20
  br i1 %cmp38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @iclock_timestamp_valid, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  store ptr %bestclock.0.lcssa74, ptr @iclock_current, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mISDN_unregister_clock(ptr noundef %iclock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 33554687
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %do.end

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 1
  %pri = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 2
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pri, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %4) #9
  br label %do.body1

do.body1:                                         ; preds = %do.end, %entry.do.body1_crit_edge
  %call3 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @iclock_lock) #6
  %5 = load ptr, ptr @iclock_current, align 4
  %cmp6 = icmp eq ptr %5, %iclock
  br i1 %cmp6, label %if.then8, label %do.body1.if.end21_crit_edge

do.body1.if.end21_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then8:                                         ; preds = %do.body1
  %6 = load ptr, ptr @debug, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then8.if.end19_crit_edge, label %do.end14

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %name16 = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 1
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name16) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end14, %if.then8.if.end19_crit_edge
  %ctl = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 3
  %9 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl, align 4
  %priv = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call20 = tail call i32 %10(ptr noundef %12, i32 noundef 0) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %do.body1.if.end21_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iclock) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_del.exit_crit_edge

if.end21.list_del.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iclock, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %iclock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iclock, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end21.list_del.exit_crit_edge
  %19 = ptrtoint ptr %iclock to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %iclock, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %iclock, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @select_iclock()
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @iclock_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mISDN_clock_update(ptr noundef %iclock, i32 noundef %samples, ptr noundef readonly %timestamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @iclock_lock) #6
  %0 = load ptr, ptr @iclock_current, align 4
  %cmp1.not = icmp eq ptr %0, %iclock
  br i1 %cmp1.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 1
  %tobool.not = icmp eq ptr %0, null
  %name7 = getelementptr inbounds %struct.mISDNclock, ptr %0, i32 0, i32 1
  %spec.select = select i1 %tobool.not, ptr @.str.12, ptr %name7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %spec.select) #9
  %ctl = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 3
  %1 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctl, align 4
  %priv = getelementptr inbounds %struct.mISDNclock, ptr %iclock, i32 0, i32 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call10 = tail call i32 %2(ptr noundef %4, i32 noundef 0) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %.b = load i1, ptr @iclock_timestamp_valid, align 4
  br i1 %.b, label %if.then20, label %if.else27

if.then20:                                        ; preds = %if.end
  %5 = load i16, ptr @iclock_count, align 2
  %6 = trunc i32 %samples to i16
  %conv22 = add i16 %5, %6
  store i16 %conv22, ptr @iclock_count, align 2
  %tobool23.not = icmp eq ptr %timestamp, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %timestamp, align 8
  store i64 %8, ptr @iclock_timestamp, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i64 @ktime_get() #6
  store i64 %call25, ptr @iclock_timestamp, align 8
  br label %cleanup

if.else27:                                        ; preds = %if.end
  %tobool28.not = icmp eq ptr %timestamp, null
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  br label %if.end32

if.else30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i64 @ktime_get() #6
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then29
  %timestamp_now.0 = phi i64 [ %10, %if.then29 ], [ %call31, %if.else30 ]
  %11 = load i64, ptr @iclock_timestamp, align 8
  %sub = sub i64 %timestamp_now.0, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i = icmp slt i64 %sub, 0
  %12 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #6
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %12) #11, !srcloc !69
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %12, i64 %13, i32 0) #11, !srcloc !70
  %asmresult10.i.i = extractvalue { i64, i32 } %14, 0
  %div1811.i = lshr i64 %asmresult10.i.i, 15
  %sub210.i = sub nsw i64 0, %div1811.i
  %cond213.i = select i1 %cmp8.i, i64 %sub210.i, i64 %div1811.i
  %conv34 = trunc i64 %cond213.i to i16
  %15 = load i16, ptr @iclock_count, align 2
  %add37 = add i16 %15, %conv34
  store i16 %add37, ptr @iclock_count, align 2
  store i64 %timestamp_now.0, ptr @iclock_timestamp, align 8
  store i1 true, ptr @iclock_timestamp_valid, align 4
  %16 = load ptr, ptr @debug, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end32.cleanup_crit_edge, label %do.end43

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %19 = load ptr, ptr @iclock_current, align 4
  %tobool45.not = icmp eq ptr %19, null
  %name47 = getelementptr inbounds %struct.mISDNclock, ptr %19, i32 0, i32 1
  %spec.select74 = select i1 %tobool45.not, ptr @.str.12, ptr %name47
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %spec.select74) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end32.cleanup_crit_edge, %if.else, %if.then24, %do.end5
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @iclock_lock, i32 noundef %call) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mISDN_clock_get() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @iclock_lock) #6
  %call1 = tail call i64 @ktime_get() #6
  %0 = load i64, ptr @iclock_timestamp, align 8
  %sub = sub i64 %call1, %0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i = icmp slt i64 %sub, 0
  %1 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #6
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %1) #11, !srcloc !69
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %1, i64 %2, i32 0) #11, !srcloc !70
  %asmresult10.i.i = extractvalue { i64, i32 } %3, 0
  %div1811.i = lshr i64 %asmresult10.i.i, 15
  %sub210.i = sub nsw i64 0, %div1811.i
  %cond213.i = select i1 %cmp8.i, i64 %sub210.i, i64 %div1811.i
  %conv3 = trunc i64 %cond213.i to i16
  %4 = load i16, ptr @iclock_count, align 2
  %add = add i16 %4, %conv3
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @iclock_lock, i32 noundef %call) #6
  ret i16 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/clock.c", i32 93, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mISDN_register_clock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mISDN_register_clock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/clock.c", i32 96, i32 3}
!8 = !{ptr @mISDN_register_clock._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mISDN_register_clock._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mISDN_register_clock, !11, !"__ksymtab_mISDN_register_clock", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/clock.c", i32 109, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/clock.c", i32 117, i32 3}
!14 = !{ptr @mISDN_unregister_clock._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mISDN_unregister_clock._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/isdn/mISDN/clock.c", i32 122, i32 4}
!18 = !{ptr @mISDN_unregister_clock._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mISDN_unregister_clock._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_mISDN_unregister_clock, !21, !"__ksymtab_mISDN_unregister_clock", i1 false, i1 false}
!21 = !{!"../drivers/isdn/mISDN/clock.c", i32 131, i32 1}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/isdn/mISDN/clock.c", i32 142, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mISDN_clock_update._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mISDN_clock_update._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/mISDN/clock.c", i32 172, i32 4}
!30 = !{ptr @mISDN_clock_update._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mISDN_clock_update._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_mISDN_clock_update, !33, !"__ksymtab_mISDN_clock_update", i1 false, i1 false}
!33 = !{!"../drivers/isdn/mISDN/clock.c", i32 177, i32 1}
!34 = !{ptr @__ksymtab_mISDN_clock_get, !35, !"__ksymtab_mISDN_clock_get", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/clock.c", i32 197, i32 1}
!36 = !{ptr @debug, !37, !"debug", i1 false, i1 false}
!37 = !{!"../drivers/isdn/mISDN/clock.c", i32 36, i32 15}
!38 = !{ptr @iclock_count, !39, !"iclock_count", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/clock.c", i32 39, i32 12}
!40 = !{ptr @iclock_timestamp, !41, !"iclock_timestamp", i1 false, i1 false}
!41 = !{!"../drivers/isdn/mISDN/clock.c", i32 40, i32 16}
!42 = distinct !{null, !43, !"iclock_timestamp_valid", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/clock.c", i32 41, i32 12}
!44 = !{ptr @iclock_current, !45, !"iclock_current", i1 false, i1 false}
!45 = !{!"../drivers/isdn/mISDN/clock.c", i32 42, i32 27}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/isdn/mISDN/clock.c", i32 38, i32 8}
!48 = !{ptr @iclock_lock, !47, !"iclock_lock", i1 false, i1 false}
!49 = !{ptr @iclock_list, !50, !"iclock_list", i1 false, i1 false}
!50 = !{!"../drivers/isdn/mISDN/clock.c", i32 37, i32 8}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/isdn/mISDN/clock.c", i32 68, i32 4}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @select_iclock._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @select_iclock._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/clock.c", i32 75, i32 4}
!58 = !{ptr @select_iclock._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @select_iclock._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 948279, i64 948306}
!70 = !{i64 948974, i64 949001, i64 949034, i64 949055, i64 949082, i64 949108}
