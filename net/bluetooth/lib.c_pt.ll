; ModuleID = '/llk/IR_all_yes/net/bluetooth/lib.c_pt.bc'
source_filename = "../net/bluetooth/lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+baswap\22, \22a\22\09"
module asm "\09.weak\09__crc_baswap\09\09\09\09"
module asm "\09.long\09__crc_baswap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_baswap:\09\09\09\09\09"
module asm "\09.asciz \09\22baswap\22\09\09\09\09\09"
module asm "__kstrtabns_baswap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt_to_errno\22, \22a\22\09"
module asm "\09.weak\09__crc_bt_to_errno\09\09\09\09"
module asm "\09.long\09__crc_bt_to_errno\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_to_errno\22\09\09\09\09\09"
module asm "__kstrtabns_bt_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt_info\22, \22a\22\09"
module asm "\09.weak\09__crc_bt_info\09\09\09\09"
module asm "\09.long\09__crc_bt_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_info:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_info\22\09\09\09\09\09"
module asm "__kstrtabns_bt_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt_warn\22, \22a\22\09"
module asm "\09.weak\09__crc_bt_warn\09\09\09\09"
module asm "\09.long\09__crc_bt_warn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_warn\22\09\09\09\09\09"
module asm "__kstrtabns_bt_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt_err\22, \22a\22\09"
module asm "\09.weak\09__crc_bt_err\09\09\09\09"
module asm "\09.long\09__crc_bt_err\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_err:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_err\22\09\09\09\09\09"
module asm "__kstrtabns_bt_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt_warn_ratelimited\22, \22a\22\09"
module asm "\09.weak\09__crc_bt_warn_ratelimited\09\09\09\09"
module asm "\09.long\09__crc_bt_warn_ratelimited\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_warn_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_warn_ratelimited\22\09\09\09\09\09"
module asm "__kstrtabns_bt_warn_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt_err_ratelimited\22, \22a\22\09"
module asm "\09.weak\09__crc_bt_err_ratelimited\09\09\09\09"
module asm "\09.long\09__crc_bt_err_ratelimited\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_err_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_err_ratelimited\22\09\09\09\09\09"
module asm "__kstrtabns_bt_err_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@__kstrtab_baswap = external dso_local constant [0 x i8], align 1
@__kstrtabns_baswap = external dso_local constant [0 x i8], align 1
@__ksymtab_baswap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @baswap to i32), ptr @__kstrtab_baswap, ptr @__kstrtabns_baswap }, section "___ksymtab+baswap", align 4
@__kstrtab_bt_to_errno = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_to_errno = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_to_errno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_to_errno to i32), ptr @__kstrtab_bt_to_errno, ptr @__kstrtabns_bt_to_errno }, section "___ksymtab+bt_to_errno", align 4
@bt_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016Bluetooth: %pV\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt_info\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bluetooth/lib.c\00", [44 x i8] zeroinitializer }, align 32
@bt_info._entry_ptr = internal global ptr @bt_info._entry, section ".printk_index", align 4
@__kstrtab_bt_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_info = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_info to i32), ptr @__kstrtab_bt_info, ptr @__kstrtabns_bt_info }, section "___ksymtab+bt_info", align 4
@bt_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\014Bluetooth: %pV\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt_warn\00", [24 x i8] zeroinitializer }, align 32
@bt_warn._entry_ptr = internal global ptr @bt_warn._entry, section ".printk_index", align 4
@__kstrtab_bt_warn = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_warn = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_warn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_warn to i32), ptr @__kstrtab_bt_warn, ptr @__kstrtabns_bt_warn }, section "___ksymtab+bt_warn", align 4
@bt_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013Bluetooth: %pV\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt_err\00", [25 x i8] zeroinitializer }, align 32
@bt_err._entry_ptr = internal global ptr @bt_err._entry, section ".printk_index", align 4
@__kstrtab_bt_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_err = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_err to i32), ptr @__kstrtab_bt_err, ptr @__kstrtabns_bt_err }, section "___ksymtab+bt_err", align 4
@bt_warn_ratelimited._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.bt_warn_ratelimited = private unnamed_addr constant [20 x i8] c"bt_warn_ratelimited\00", align 1
@bt_warn_ratelimited._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.bt_warn_ratelimited, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt_warn_ratelimited._entry_ptr = internal global ptr @bt_warn_ratelimited._entry, section ".printk_index", align 4
@__kstrtab_bt_warn_ratelimited = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_warn_ratelimited = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_warn_ratelimited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_warn_ratelimited to i32), ptr @__kstrtab_bt_warn_ratelimited, ptr @__kstrtabns_bt_warn_ratelimited }, section "___ksymtab+bt_warn_ratelimited", align 4
@bt_err_ratelimited._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.bt_err_ratelimited = private unnamed_addr constant [19 x i8] c"bt_err_ratelimited\00", align 1
@bt_err_ratelimited._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.bt_err_ratelimited, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt_err_ratelimited._entry_ptr = internal global ptr @bt_err_ratelimited._entry, section ".printk_index", align 4
@__kstrtab_bt_err_ratelimited = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_err_ratelimited = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_err_ratelimited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_err_ratelimited to i32), ptr @__kstrtab_bt_err_ratelimited, ptr @__kstrtabns_bt_err_ratelimited }, section "___ksymtab+bt_err_ratelimited", align 4
@switch.table.bt_to_errno = internal constant { [61 x i32], [44 x i8] } { [61 x i32] [i32 0, i32 56, i32 107, i32 5, i32 112, i32 13, i32 52, i32 12, i32 110, i32 31, i32 31, i32 114, i32 16, i32 111, i32 111, i32 111, i32 110, i32 95, i32 22, i32 104, i32 104, i32 104, i32 103, i32 40, i32 13, i32 71, i32 93, i32 111, i32 38, i32 38, i32 71, i32 38, i32 95, i32 38, i32 38, i32 71, i32 71, i32 71, i32 38, i32 95, i32 38, i32 95, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 112], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 148, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 164, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 180, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 229, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private constant [23 x i8] c"../net/bluetooth/lib.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 245, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"switch.table.bt_to_errno\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_baswap, ptr @__ksymtab_bt_err, ptr @__ksymtab_bt_err_ratelimited, ptr @__ksymtab_bt_info, ptr @__ksymtab_bt_to_errno, ptr @__ksymtab_bt_warn, ptr @__ksymtab_bt_warn_ratelimited, ptr @bt_err._entry, ptr @bt_err._entry_ptr, ptr @bt_err_ratelimited._entry, ptr @bt_err_ratelimited._entry_ptr, ptr @bt_info._entry, ptr @bt_info._entry_ptr, ptr @bt_warn._entry, ptr @bt_warn._entry_ptr, ptr @bt_warn_ratelimited._entry, ptr @bt_warn_ratelimited._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bt_warn_ratelimited._rs, ptr @.str.7, ptr @bt_err_ratelimited._rs, ptr @switch.table.bt_to_errno], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_warn_ratelimited._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_warn_ratelimited._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_err_ratelimited._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_err_ratelimited._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bt_to_errno to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @baswap(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %src, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %dst, align 1
  %arrayidx.1 = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.1, align 1
  %arrayidx1.1 = getelementptr i8, ptr %dst, i32 1
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx1.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %src, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %arrayidx1.2 = getelementptr i8, ptr %dst, i32 2
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx1.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %src, i32 2
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.3, align 1
  %arrayidx1.3 = getelementptr i8, ptr %dst, i32 3
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx1.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %src, i32 1
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.4, align 1
  %arrayidx1.4 = getelementptr i8, ptr %dst, i32 4
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx1.4, align 1
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %src, align 1
  %arrayidx1.5 = getelementptr i8, ptr %dst, i32 5
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx1.5, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bt_to_errno(i16 noundef zeroext %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %code)
  %0 = icmp ult i16 %code, 61
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = sext i16 %code to i32
  %switch.gep = getelementptr inbounds [61 x i32], ptr @switch.table.bt_to_errno, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 38, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt_info(ptr noundef %format, ...) #3 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !50
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %format, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #10
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt_warn(ptr noundef %format, ...) #3 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !50
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %format, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %vaf) #10
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt_err(ptr noundef %format, ...) #3 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !50
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %format, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %vaf) #10
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt_warn_ratelimited(ptr noundef %format, ...) #3 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !50
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %format, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 @___ratelimit(ptr noundef nonnull @bt_warn_ratelimited._rs, ptr noundef nonnull @__func__.bt_warn_ratelimited) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %vaf) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt_err_ratelimited(ptr noundef %format, ...) #3 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !50
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %format, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 @___ratelimit(ptr noundef nonnull @bt_err_ratelimited._rs, ptr noundef nonnull @__func__.bt_err_ratelimited) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %vaf) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__ksymtab_baswap, !1, !"__ksymtab_baswap", i1 false, i1 false}
!1 = !{!"../net/bluetooth/lib.c", i32 42, i32 1}
!2 = !{ptr @__ksymtab_bt_to_errno, !3, !"__ksymtab_bt_to_errno", i1 false, i1 false}
!3 = !{!"../net/bluetooth/lib.c", i32 136, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bluetooth/lib.c", i32 148, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bt_info._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @bt_info._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_bt_info, !11, !"__ksymtab_bt_info", i1 false, i1 false}
!11 = !{!"../net/bluetooth/lib.c", i32 152, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/lib.c", i32 164, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bt_warn._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @bt_warn._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_bt_warn, !18, !"__ksymtab_bt_warn", i1 false, i1 false}
!18 = !{!"../net/bluetooth/lib.c", i32 168, i32 1}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bluetooth/lib.c", i32 180, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bt_err._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @bt_err._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_bt_err, !25, !"__ksymtab_bt_err", i1 false, i1 false}
!25 = !{!"../net/bluetooth/lib.c", i32 184, i32 1}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/bluetooth/lib.c", i32 229, i32 2}
!28 = !{ptr @bt_warn_ratelimited._rs, !27, !"_rs", i1 false, i1 false}
!29 = !{ptr @__func__.bt_warn_ratelimited, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bt_warn_ratelimited._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @bt_warn_ratelimited._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_bt_warn_ratelimited, !33, !"__ksymtab_bt_warn_ratelimited", i1 false, i1 false}
!33 = !{!"../net/bluetooth/lib.c", i32 233, i32 1}
!34 = !{ptr @bt_err_ratelimited._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../net/bluetooth/lib.c", i32 245, i32 2}
!36 = !{ptr @__func__.bt_err_ratelimited, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bt_err_ratelimited._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bt_err_ratelimited._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_bt_err_ratelimited, !40, !"__ksymtab_bt_err_ratelimited", i1 false, i1 false}
!40 = !{!"../net/bluetooth/lib.c", i32 249, i32 1}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
