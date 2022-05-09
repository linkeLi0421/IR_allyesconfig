; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm2-cmd.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm2-cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tpm2_flush_context\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm2_flush_context\09\09\09\09"
module asm "\09.long\09__crc_tpm2_flush_context\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_flush_context:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_flush_context\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_flush_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tpm2_get_tpm_pt\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm2_get_tpm_pt\09\09\09\09"
module asm "\09.long\09__crc_tpm2_get_tpm_pt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_get_tpm_pt:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_get_tpm_pt\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_get_tpm_pt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tpm2_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm2_probe\09\09\09\09"
module asm "\09.long\09__crc_tpm2_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tpm2_get_cc_attrs_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm2_get_cc_attrs_tbl\09\09\09\09"
module asm "\09.long\09__crc_tpm2_get_cc_attrs_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm2_get_cc_attrs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm2_get_cc_attrs_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_tpm2_get_cc_attrs_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tpm2_hash = type { i32, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm_bank_info = type { i16, i16, i16 }
%struct.tpm_header = type <{ i16, i32, %union.anon.71 }>
%union.anon.71 = type { i32 }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tpm2_pcr_selection = type { i16, i8, [3 x i8] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"attempting to read a pcr value\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"attempting extend a PCR value\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"attempting get random\00", [42 x i8] zeroinitializer }, align 32
@tpm2_flush_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 356, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"0x%08x was not flushed, out of memory\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm2_flush_context\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/char/tpm/tpm2-cmd.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm2_flush_context._entry_ptr = internal global ptr @tpm2_flush_context._entry, section ".printk_index", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flushing context\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_tpm2_flush_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_flush_context = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_flush_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_flush_context to i32), ptr @__kstrtab_tpm2_flush_context, ptr @__kstrtabns_tpm2_flush_context }, section "___ksymtab_gpl+tpm2_flush_context", align 4
@__kstrtab_tpm2_get_tpm_pt = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_get_tpm_pt = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_get_tpm_pt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_get_tpm_pt to i32), ptr @__kstrtab_tpm2_get_tpm_pt, ptr @__kstrtabns_tpm2_get_tpm_pt }, section "___ksymtab_gpl+tpm2_get_tpm_pt", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stopping the TPM\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_tpm2_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_probe to i32), ptr @__kstrtab_tpm2_probe, ptr @__kstrtabns_tpm2_probe }, section "___ksymtab_gpl+tpm2_probe", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get tpm pcr allocation\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_tpm2_get_cc_attrs_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm2_get_cc_attrs_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm2_get_cc_attrs_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm2_get_cc_attrs_tbl to i32), ptr @__kstrtab_tpm2_get_cc_attrs_tbl, ptr @__kstrtabns_tpm2_get_cc_attrs_tbl }, section "___ksymtab_gpl+tpm2_get_cc_attrs_tbl", align 4
@tpm2_auto_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 749, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"TPM in field upgrade mode, requires firmware upgrade\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm2_auto_startup\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tpm2_auto_startup._entry_ptr = internal global ptr @tpm2_auto_startup._entry, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@tpm2_hash_map = internal constant { [5 x %struct.tpm2_hash], [56 x i8] } { [5 x %struct.tpm2_hash] [%struct.tpm2_hash { i32 2, i32 4 }, %struct.tpm2_hash { i32 4, i32 11 }, %struct.tpm2_hash { i32 5, i32 12 }, %struct.tpm2_hash { i32 6, i32 13 }, %struct.tpm2_hash { i32 17, i32 18 }], [56 x i8] zeroinitializer }, align 32
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"attempting the self test\00", [39 x i8] zeroinitializer }, align 32
@tpm2_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 703, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"starting up the TPM manually\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpm2_startup\00", [19 x i8] zeroinitializer }, align 32
@tpm2_startup._entry_ptr = internal global ptr @tpm2_startup._entry, section ".printk_index", align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"attempting to start the TPM\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 289, i64 297, i64 305, i64 318, i64 323, i64 324, i64 334, i64 339, i64 348, i64 375, i64 378, i64 379, i64 386, i64 389, i64 390, i64 401]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 16, i64 4, i64 11, i64 12, i64 13, i64 18]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 354, i64 357]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 198, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 265, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 312, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 355, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 362, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 429, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 562, i32 39 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 749, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 376, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"tpm2_hash_map\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 17, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 459, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 703, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [31 x i8] c"../drivers/char/tpm/tpm2-cmd.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 710, i32 39 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_tpm2_flush_context, ptr @__ksymtab_tpm2_get_cc_attrs_tbl, ptr @__ksymtab_tpm2_get_tpm_pt, ptr @__ksymtab_tpm2_probe, ptr @tpm2_auto_startup._entry, ptr @tpm2_auto_startup._entry_ptr, ptr @tpm2_flush_context._entry, ptr @tpm2_flush_context._entry_ptr, ptr @tpm2_startup._entry, ptr @tpm2_startup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @tpm2_hash_map, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_flush_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_auto_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_hash_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tpm2_get_timeouts(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %timeout_a to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 75, ptr %timeout_a, align 8
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %1 = ptrtoint ptr %timeout_b to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 200, ptr %timeout_b, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %2 = ptrtoint ptr %timeout_c to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %timeout_c, align 8
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %3 = ptrtoint ptr %timeout_d to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %timeout_d, align 4
  %duration = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 20
  %4 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %duration, align 4
  %arrayidx7 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 75, ptr %arrayidx7, align 4
  %arrayidx10 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 200, ptr %arrayidx10, align 4
  %arrayidx13 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 3
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 30000, ptr %arrayidx13, align 4
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 16
  store i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tpm2_calc_ordinal_duration(ptr nocapture noundef readonly %chip, i32 noundef %ordinal) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ordinal to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ordinal, label %entry.cleanup_crit_edge [
    i32 324, label %entry.if.then_crit_edge
    i32 323, label %sw.bb1.i
    i32 379, label %sw.bb2.i
    i32 348, label %entry.if.then_crit_edge7
    i32 318, label %entry.if.then_crit_edge8
    i32 389, label %entry.if.then_crit_edge9
    i32 390, label %entry.if.then_crit_edge10
    i32 375, label %sw.bb7.i
    i32 386, label %entry.if.then_crit_edge11
    i32 289, label %sw.bb9.i
    i32 297, label %sw.bb10.i
    i32 378, label %entry.if.then_crit_edge12
    i32 334, label %sw.bb12.i
    i32 305, label %sw.bb13.i
    i32 339, label %sw.bb14.i
    i32 401, label %sw.bb15.i
  ]

entry.if.then_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb10.i, %sw.bb9.i, %sw.bb7.i, %sw.bb2.i, %sw.bb1.i, %entry.if.then_crit_edge, %entry.if.then_crit_edge7, %entry.if.then_crit_edge8, %entry.if.then_crit_edge9, %entry.if.then_crit_edge10, %entry.if.then_crit_edge11, %entry.if.then_crit_edge12
  %retval.0.i.ph = phi i32 [ 1, %entry.if.then_crit_edge ], [ 1, %entry.if.then_crit_edge7 ], [ 1, %entry.if.then_crit_edge8 ], [ 1, %entry.if.then_crit_edge9 ], [ 1, %entry.if.then_crit_edge10 ], [ 1, %entry.if.then_crit_edge11 ], [ 1, %entry.if.then_crit_edge12 ], [ 2, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb7.i ], [ 2, %sw.bb9.i ], [ 2, %sw.bb10.i ], [ 2, %sw.bb12.i ], [ 3, %sw.bb13.i ], [ 3, %sw.bb14.i ], [ 3, %sw.bb15.i ]
  %arrayidx = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 %retval.0.i.ph
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then ], [ 12000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_pcr_read(ptr noundef %chip, i32 noundef %pcr_idx, ptr nocapture noundef %digest, ptr noundef writeonly %digest_size_ptr) local_unnamed_addr #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  %pcr_select = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %pcr_select) #9
  %1 = call ptr @memset(ptr %pcr_select, i32 0, i32 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %pcr_idx)
  %cmp = icmp ugt i32 %pcr_idx, 23
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %digest_size_ptr, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.cond.preheader:                               ; preds = %if.end
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 25
  %2 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_allocated_banks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2104.not = icmp eq i32 %3, 0
  br i1 %cmp2104.not, label %for.cond.preheader.for.end_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 26
  %4 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %allocated_banks, align 4
  %6 = ptrtoint ptr %digest to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %digest, align 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0105 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.tpm_bank_info, ptr %5, i32 %i.0105
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp5.not = icmp eq i16 %9, %7
  br i1 %cmp5.not, label %land.rhs.for.end_crit_edge, label %for.inc

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0105, %land.rhs.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp8 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp8, label %for.end.cleanup_crit_edge, label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %allocated_banks12 = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 26
  %10 = ptrtoint ptr %allocated_banks12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %allocated_banks12, align 4
  %digest_size14 = getelementptr %struct.tpm_bank_info, ptr %11, i32 %i.0.lcssa, i32 1
  %12 = ptrtoint ptr %digest_size14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %digest_size14, align 2
  %phi.cast = zext i16 %13 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %if.end.if.end15_crit_edge
  %expected_digest_size.0 = phi i32 [ 0, %if.end.if.end15_crit_edge ], [ %phi.cast, %if.end11 ]
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %14 = inttoptr i32 %call.i to ptr
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buf, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 -32767, ptr %14, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %19 = getelementptr inbounds %struct.tpm_header, ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 382, ptr %19, align 1
  %and = and i32 %pcr_idx, 7
  %shl = shl nuw nsw i32 1, %and
  %conv19 = trunc i32 %shl to i8
  %shr = lshr i32 %pcr_idx, 3
  %arrayidx20 = getelementptr [3 x i8], ptr %pcr_select, i32 0, i32 %shr
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv19, ptr %arrayidx20, align 1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %length.i.i.i, align 1
  %26 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.tpm_buf_append_u32.exit_crit_edge

if.end18.tpm_buf_append_u32.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end18
  %add.i.i = add i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %28, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %23, i32 %25
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 1, ptr %arrayidx.i.i, align 1
  %30 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end18.tpm_buf_append_u32.exit_crit_edge
  %31 = ptrtoint ptr %digest to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %digest, align 1
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 4
  %length.i.i.i76 = getelementptr inbounds %struct.tpm_header, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %length.i.i.i76 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %length.i.i.i76, align 1
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf, align 4
  %and.i.i77 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool.not.i.i78 = icmp eq i32 %and.i.i77, 0
  br i1 %tobool.not.i.i78, label %if.end.i.i81, label %tpm_buf_append_u32.exit.tpm_buf_append_u16.exit_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u16.exit_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u16.exit

if.end.i.i81:                                     ; preds = %tpm_buf_append_u32.exit
  %add.i.i79 = add i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i79)
  %cmp.i.i80 = icmp ugt i32 %add.i.i79, 4096
  br i1 %cmp.i.i80, label %do.end.i.i83, label %if.end20.i.i85

do.end.i.i83:                                     ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf, align 4
  %or.i.i82 = or i32 %40, 1
  store i32 %or.i.i82, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit

if.end20.i.i85:                                   ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i84 = getelementptr i8, ptr %34, i32 %36
  %41 = ptrtoint ptr %arrayidx.i.i84 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %32, ptr %arrayidx.i.i84, align 1
  %42 = ptrtoint ptr %length.i.i.i76 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %add.i.i79, ptr %length.i.i.i76, align 1
  br label %tpm_buf_append_u16.exit

tpm_buf_append_u16.exit:                          ; preds = %if.end20.i.i85, %do.end.i.i83, %tpm_buf_append_u32.exit.tpm_buf_append_u16.exit_crit_edge
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %0, align 4
  %length.i.i.i87 = getelementptr inbounds %struct.tpm_header, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %length.i.i.i87 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %length.i.i.i87, align 1
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf, align 4
  %and.i.i88 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88)
  %tobool.not.i.i89 = icmp eq i32 %and.i.i88, 0
  br i1 %tobool.not.i.i89, label %if.end.i.i92, label %tpm_buf_append_u16.exit.tpm_buf_append_u8.exit_crit_edge

tpm_buf_append_u16.exit.tpm_buf_append_u8.exit_crit_edge: ; preds = %tpm_buf_append_u16.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u8.exit

if.end.i.i92:                                     ; preds = %tpm_buf_append_u16.exit
  %add.i.i90 = add i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i90)
  %cmp.i.i91 = icmp ugt i32 %add.i.i90, 4096
  br i1 %cmp.i.i91, label %do.end.i.i94, label %if.end20.i.i96

do.end.i.i94:                                     ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf, align 4
  %or.i.i93 = or i32 %50, 1
  store i32 %or.i.i93, ptr %buf, align 4
  br label %tpm_buf_append_u8.exit

if.end20.i.i96:                                   ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i95 = getelementptr i8, ptr %44, i32 %46
  %51 = ptrtoint ptr %arrayidx.i.i95 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %arrayidx.i.i95, align 1
  %52 = ptrtoint ptr %length.i.i.i87 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %add.i.i90, ptr %length.i.i.i87, align 1
  br label %tpm_buf_append_u8.exit

tpm_buf_append_u8.exit:                           ; preds = %if.end20.i.i96, %do.end.i.i94, %tpm_buf_append_u16.exit.tpm_buf_append_u8.exit_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  %length.i.i98 = getelementptr inbounds %struct.tpm_header, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %length.i.i98 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %length.i.i98, align 1
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf, align 4
  %and.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i99 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i99, label %if.end.i100, label %tpm_buf_append_u8.exit.tpm_buf_append.exit_crit_edge

tpm_buf_append_u8.exit.tpm_buf_append.exit_crit_edge: ; preds = %tpm_buf_append_u8.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit

if.end.i100:                                      ; preds = %tpm_buf_append_u8.exit
  %add.i = add i32 %56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %59 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf, align 4
  %or.i = or i32 %60, 1
  store i32 %or.i, ptr %buf, align 4
  br label %tpm_buf_append.exit

if.end20.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %54, i32 %56
  %61 = call ptr @memcpy(ptr %arrayidx.i, ptr %pcr_select, i32 3)
  %62 = ptrtoint ptr %length.i.i98 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %add.i, ptr %length.i.i98, align 1
  br label %tpm_buf_append.exit

tpm_buf_append.exit:                              ; preds = %if.end20.i, %do.end.i, %tpm_buf_append_u8.exit.tpm_buf_append.exit_crit_edge
  %call22 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %tpm_buf_append.exit.out46_crit_edge

tpm_buf_append.exit.out46_crit_edge:              ; preds = %tpm_buf_append.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out46

if.end25:                                         ; preds = %tpm_buf_append.exit
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %0, align 4
  %digest_size27 = getelementptr i8, ptr %64, i32 28
  %65 = ptrtoint ptr %digest_size27 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %digest_size27, align 1
  %conv28 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %66)
  %cmp29 = icmp ugt i16 %66, 64
  br i1 %cmp29, label %if.end25.out46_crit_edge, label %lor.lhs.false

if.end25.out46_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out46

lor.lhs.false:                                    ; preds = %if.end25
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_digest_size.0, i32 %conv28)
  %cmp34.not = icmp eq i32 %expected_digest_size.0, %conv28
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %cmp34.not
  br i1 %or.cond, label %if.end37, label %lor.lhs.false.out46_crit_edge

lor.lhs.false.out46_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out46

if.end37:                                         ; preds = %lor.lhs.false
  br i1 %tobool.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %digest_size_ptr to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %digest_size_ptr, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %digest41 = getelementptr inbounds %struct.tpm_digest, ptr %digest, i32 0, i32 1
  %digest43 = getelementptr i8, ptr %64, i32 30
  %68 = call ptr @memcpy(ptr %digest41, ptr %digest43, i32 %conv28)
  br label %out46

out46:                                            ; preds = %if.end40, %lor.lhs.false.out46_crit_edge, %if.end25.out46_crit_edge, %tpm_buf_append.exit.out46_crit_edge
  %rc.0 = phi i32 [ %call22, %tpm_buf_append.exit.out46_crit_edge ], [ 0, %if.end40 ], [ -22, %lor.lhs.false.out46_crit_edge ], [ -22, %if.end25.out46_crit_edge ]
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %0, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @free_pages(i32 noundef %71, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out46, %if.end15.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out46 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %pcr_select) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_pcr_extend(ptr noundef %chip, i32 noundef %pcr_idx, ptr nocapture noundef readonly %digests) local_unnamed_addr #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32766, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 386, ptr %6, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length.i.i.i, align 1
  %12 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u32.exit_crit_edge

if.end.tpm_buf_append_u32.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %pcr_idx, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u32.exit_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %length.i.i.i19 = getelementptr inbounds %struct.tpm_header, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %length.i.i.i19 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %length.i.i.i19, align 1
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf, align 4
  %and.i.i20 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20)
  %tobool.not.i.i21 = icmp eq i32 %and.i.i20, 0
  br i1 %tobool.not.i.i21, label %if.end.i.i24, label %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit29_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u32.exit29_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit29

if.end.i.i24:                                     ; preds = %tpm_buf_append_u32.exit
  %add.i.i22 = add i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i22)
  %cmp.i.i23 = icmp ugt i32 %add.i.i22, 4096
  br i1 %cmp.i.i23, label %do.end.i.i26, label %if.end20.i.i28

do.end.i.i26:                                     ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf, align 4
  %or.i.i25 = or i32 %24, 1
  store i32 %or.i.i25, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit29

if.end20.i.i28:                                   ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i27 = getelementptr i8, ptr %18, i32 %20
  %25 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 9, ptr %arrayidx.i.i27, align 1
  %26 = ptrtoint ptr %length.i.i.i19 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %add.i.i22, ptr %length.i.i.i19, align 1
  br label %tpm_buf_append_u32.exit29

tpm_buf_append_u32.exit29:                        ; preds = %if.end20.i.i28, %do.end.i.i26, %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit29_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %length.i.i31 = getelementptr inbounds %struct.tpm_header, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %length.i.i31 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %length.i.i31, align 1
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf, align 4
  %and.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i32 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i32, label %if.end.i33, label %tpm_buf_append_u32.exit29.tpm_buf_append.exit_crit_edge

tpm_buf_append_u32.exit29.tpm_buf_append.exit_crit_edge: ; preds = %tpm_buf_append_u32.exit29
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit

if.end.i33:                                       ; preds = %tpm_buf_append_u32.exit29
  %add.i = add i32 %30, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf, align 4
  %or.i = or i32 %34, 1
  store i32 %or.i, ptr %buf, align 4
  br label %tpm_buf_append.exit

if.end20.i:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %28, i32 %30
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 1073741833, ptr %arrayidx.i, align 1
  %auth_area.sroa.5.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %36 = call ptr @memset(ptr %auth_area.sroa.5.0.arrayidx.i.sroa_idx, i32 0, i32 5)
  %37 = ptrtoint ptr %length.i.i31 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %add.i, ptr %length.i.i31, align 1
  br label %tpm_buf_append.exit

tpm_buf_append.exit:                              ; preds = %if.end20.i, %do.end.i, %tpm_buf_append_u32.exit29.tpm_buf_append.exit_crit_edge
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 25
  %38 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_allocated_banks, align 8
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 4
  %length.i.i.i35 = getelementptr inbounds %struct.tpm_header, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %length.i.i.i35 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %length.i.i.i35, align 1
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf, align 4
  %and.i.i36 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i40, label %tpm_buf_append.exit.tpm_buf_append_u32.exit45_crit_edge

tpm_buf_append.exit.tpm_buf_append_u32.exit45_crit_edge: ; preds = %tpm_buf_append.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit45

if.end.i.i40:                                     ; preds = %tpm_buf_append.exit
  %add.i.i38 = add i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i38)
  %cmp.i.i39 = icmp ugt i32 %add.i.i38, 4096
  br i1 %cmp.i.i39, label %do.end.i.i42, label %if.end20.i.i44

do.end.i.i42:                                     ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf, align 4
  %or.i.i41 = or i32 %47, 1
  store i32 %or.i.i41, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit45

if.end20.i.i44:                                   ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i43 = getelementptr i8, ptr %41, i32 %43
  %48 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %39, ptr %arrayidx.i.i43, align 1
  %49 = ptrtoint ptr %length.i.i.i35 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %add.i.i38, ptr %length.i.i.i35, align 1
  br label %tpm_buf_append_u32.exit45

tpm_buf_append_u32.exit45:                        ; preds = %if.end20.i.i44, %do.end.i.i42, %tpm_buf_append.exit.tpm_buf_append_u32.exit45_crit_edge
  %50 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_allocated_banks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp72.not = icmp eq i32 %51, 0
  br i1 %cmp72.not, label %tpm_buf_append_u32.exit45.for.end_crit_edge, label %for.body.lr.ph

tpm_buf_append_u32.exit45.for.end_crit_edge:      ; preds = %tpm_buf_append_u32.exit45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %tpm_buf_append_u32.exit45
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %tpm_buf_append.exit68.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tpm_buf_append.exit68.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tpm_digest, ptr %digests, i32 %i.073
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %arrayidx, align 1
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %0, align 4
  %length.i.i.i47 = getelementptr inbounds %struct.tpm_header, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %length.i.i.i47 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %length.i.i.i47, align 1
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf, align 4
  %and.i.i48 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %and.i.i48, 0
  br i1 %tobool.not.i.i49, label %if.end.i.i52, label %for.body.tpm_buf_append_u16.exit_crit_edge

for.body.tpm_buf_append_u16.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u16.exit

if.end.i.i52:                                     ; preds = %for.body
  %add.i.i50 = add i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i50)
  %cmp.i.i51 = icmp ugt i32 %add.i.i50, 4096
  br i1 %cmp.i.i51, label %do.end.i.i54, label %if.end20.i.i56

do.end.i.i54:                                     ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf, align 4
  %or.i.i53 = or i32 %61, 1
  store i32 %or.i.i53, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit

if.end20.i.i56:                                   ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i55 = getelementptr i8, ptr %55, i32 %57
  %62 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %53, ptr %arrayidx.i.i55, align 1
  %63 = ptrtoint ptr %length.i.i.i47 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %add.i.i50, ptr %length.i.i.i47, align 1
  br label %tpm_buf_append_u16.exit

tpm_buf_append_u16.exit:                          ; preds = %if.end20.i.i56, %do.end.i.i54, %for.body.tpm_buf_append_u16.exit_crit_edge
  %digest = getelementptr %struct.tpm_digest, ptr %digests, i32 %i.073, i32 1
  %64 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %allocated_banks, align 4
  %digest_size = getelementptr %struct.tpm_bank_info, ptr %65, i32 %i.073, i32 1
  %66 = ptrtoint ptr %digest_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %digest_size, align 2
  %conv = zext i16 %67 to i32
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %0, align 4
  %length.i.i58 = getelementptr inbounds %struct.tpm_header, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %length.i.i58 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %length.i.i58, align 1
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf, align 4
  %and.i59 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %if.end.i63, label %tpm_buf_append_u16.exit.tpm_buf_append.exit68_crit_edge

tpm_buf_append_u16.exit.tpm_buf_append.exit68_crit_edge: ; preds = %tpm_buf_append_u16.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit68

if.end.i63:                                       ; preds = %tpm_buf_append_u16.exit
  %add.i61 = add i32 %71, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i61)
  %cmp.i62 = icmp ugt i32 %add.i61, 4096
  br i1 %cmp.i62, label %do.end.i65, label %if.end20.i67

do.end.i65:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf, align 4
  %or.i64 = or i32 %75, 1
  store i32 %or.i64, ptr %buf, align 4
  br label %tpm_buf_append.exit68

if.end20.i67:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i66 = getelementptr i8, ptr %69, i32 %71
  %76 = call ptr @memcpy(ptr %arrayidx.i66, ptr %digest, i32 %conv)
  %77 = ptrtoint ptr %length.i.i58 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %add.i61, ptr %length.i.i58, align 1
  br label %tpm_buf_append.exit68

tpm_buf_append.exit68:                            ; preds = %if.end20.i67, %do.end.i65, %tpm_buf_append_u16.exit.tpm_buf_append.exit68_crit_edge
  %inc = add nuw i32 %i.073, 1
  %78 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_allocated_banks, align 8
  %cmp = icmp ult i32 %inc, %79
  br i1 %cmp, label %tpm_buf_append.exit68.for.body_crit_edge, label %tpm_buf_append.exit68.for.end_crit_edge

tpm_buf_append.exit68.for.end_crit_edge:          ; preds = %tpm_buf_append.exit68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

tpm_buf_append.exit68.for.body_crit_edge:         ; preds = %tpm_buf_append.exit68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %tpm_buf_append.exit68.for.end_crit_edge, %tpm_buf_append_u32.exit45.for.end_crit_edge
  %call4 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.1) #9
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %0, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @free_pages(i32 noundef %82, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_random(ptr noundef %chip, ptr nocapture noundef writeonly %dest, i32 noundef %max) local_unnamed_addr #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %1 = add i32 %max, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %1)
  %2 = icmp ult i32 %1, -128
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %3 = inttoptr i32 %call.i to ptr
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %tpm_buf_init.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tpm_buf_init.exit:                                ; preds = %if.end
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %buf, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 0, ptr %3, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %8 = getelementptr inbounds %struct.tpm_header, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %8, align 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %tpm_buf_init.exit
  %num_bytes.0 = phi i32 [ %max, %tpm_buf_init.exit ], [ %sub, %land.rhs.do.body_crit_edge ]
  %total.0 = phi i32 [ 0, %tpm_buf_init.exit ], [ %add20, %land.rhs.do.body_crit_edge ]
  %retries.0 = phi i32 [ 5, %tpm_buf_init.exit ], [ %dec, %land.rhs.do.body_crit_edge ]
  %dest_ptr.0 = phi ptr [ %dest, %tpm_buf_init.exit ], [ %add.ptr, %land.rhs.do.body_crit_edge ]
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 -32767, ptr %11, align 1
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 10, ptr %length.i, align 1
  %14 = getelementptr inbounds %struct.tpm_header, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 379, ptr %14, align 1
  %conv = trunc i32 %num_bytes.0 to i16
  %16 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %length.i.i.i, align 1
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.tpm_buf_append_u16.exit_crit_edge

do.body.tpm_buf_append_u16.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u16.exit

if.end.i.i:                                       ; preds = %do.body
  %add.i.i = add i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %22, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %16, i32 %18
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %conv, ptr %arrayidx.i.i, align 1
  %24 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u16.exit

tpm_buf_append_u16.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %do.body.tpm_buf_append_u16.exit_crit_edge
  %call4 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %tpm_buf_append_u16.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp7 = icmp sgt i32 %call4, 0
  %spec.store.select = select i1 %cmp7, i32 -5, i32 %call4
  br label %out29

if.end11:                                         ; preds = %tpm_buf_append_u16.exit
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr i8, ptr %26, i32 10
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx, align 1
  %conv12 = zext i16 %28 to i32
  %29 = call i32 @llvm.umin.i32(i32 %num_bytes.0, i32 %conv12)
  %length.i59 = getelementptr inbounds %struct.tpm_header, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %length.i59 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %length.i59, align 1
  %add = add nuw nsw i32 %29, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add)
  %cmp16 = icmp ult i32 %31, %add
  br i1 %cmp16, label %if.end11.out29_crit_edge, label %if.end19

if.end11.out29_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out29

if.end19:                                         ; preds = %if.end11
  %buffer = getelementptr i8, ptr %26, i32 12
  %32 = call ptr @memcpy(ptr %dest_ptr.0, ptr %buffer, i32 %29)
  %add20 = add i32 %29, %total.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool21.not = icmp eq i32 %retries.0, 0
  br i1 %tobool21.not, label %if.end19.do.end_crit_edge, label %land.rhs

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %if.end19
  %dec = add nsw i32 %retries.0, -1
  %sub = sub i32 %num_bytes.0, %29
  %add.ptr = getelementptr i8, ptr %dest_ptr.0, i32 %29
  %cmp22 = icmp ult i32 %add20, %max
  br i1 %cmp22, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %if.end19.do.end_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @free_pages(i32 noundef %33, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add20)
  %tobool24.not = icmp eq i32 %add20, 0
  %spec.select = select i1 %tobool24.not, i32 -5, i32 %add20
  br label %cleanup

out29:                                            ; preds = %if.end11.out29_crit_edge, %if.then6
  %err.0 = phi i32 [ %spec.store.select, %if.then6 ], [ -14, %if.end11.out29_crit_edge ]
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @free_pages(i32 noundef %36, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out29, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out29 ], [ %spec.select, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm2_flush_context(ptr noundef %chip, i32 noundef %handle) #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.3, i32 noundef %handle) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32767, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 357, ptr %6, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length.i.i.i, align 1
  %12 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u32.exit_crit_edge

if.end.tpm_buf_append_u32.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %handle, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u32.exit_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.8) #9
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @free_pages(i32 noundef %19, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %tpm_buf_append_u32.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_tpm_pt(ptr noundef %chip, i32 noundef %property_id, ptr nocapture noundef writeonly %value, ptr nocapture readnone %desc) #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32767, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 378, ptr %6, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length.i.i.i, align 1
  %12 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u32.exit_crit_edge

if.end.tpm_buf_append_u32.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 6, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u32.exit_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %length.i.i.i12 = getelementptr inbounds %struct.tpm_header, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %length.i.i.i12 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %length.i.i.i12, align 1
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf, align 4
  %and.i.i13 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.end.i.i17, label %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit22_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u32.exit22_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit22

if.end.i.i17:                                     ; preds = %tpm_buf_append_u32.exit
  %add.i.i15 = add i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i15)
  %cmp.i.i16 = icmp ugt i32 %add.i.i15, 4096
  br i1 %cmp.i.i16, label %do.end.i.i19, label %if.end20.i.i21

do.end.i.i19:                                     ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf, align 4
  %or.i.i18 = or i32 %24, 1
  store i32 %or.i.i18, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit22

if.end20.i.i21:                                   ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i20 = getelementptr i8, ptr %18, i32 %20
  %25 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %property_id, ptr %arrayidx.i.i20, align 1
  %26 = ptrtoint ptr %length.i.i.i12 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %add.i.i15, ptr %length.i.i.i12, align 1
  br label %tpm_buf_append_u32.exit22

tpm_buf_append_u32.exit22:                        ; preds = %if.end20.i.i21, %do.end.i.i19, %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit22_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %length.i.i.i24 = getelementptr inbounds %struct.tpm_header, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %length.i.i.i24 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %length.i.i.i24, align 1
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf, align 4
  %and.i.i25 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i29, label %tpm_buf_append_u32.exit22.tpm_buf_append_u32.exit34_crit_edge

tpm_buf_append_u32.exit22.tpm_buf_append_u32.exit34_crit_edge: ; preds = %tpm_buf_append_u32.exit22
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit34

if.end.i.i29:                                     ; preds = %tpm_buf_append_u32.exit22
  %add.i.i27 = add i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i27)
  %cmp.i.i28 = icmp ugt i32 %add.i.i27, 4096
  br i1 %cmp.i.i28, label %do.end.i.i31, label %if.end20.i.i33

do.end.i.i31:                                     ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf, align 4
  %or.i.i30 = or i32 %34, 1
  store i32 %or.i.i30, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit34

if.end20.i.i33:                                   ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i32 = getelementptr i8, ptr %28, i32 %30
  %35 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 1, ptr %arrayidx.i.i32, align 1
  %36 = ptrtoint ptr %length.i.i.i24 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %add.i.i27, ptr %length.i.i.i24, align 1
  br label %tpm_buf_append_u32.exit34

tpm_buf_append_u32.exit34:                        ; preds = %if.end20.i.i33, %do.end.i.i31, %tpm_buf_append_u32.exit22.tpm_buf_append_u32.exit34_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %tpm_buf_append_u32.exit34.if.end5_crit_edge

tpm_buf_append_u32.exit34.if.end5_crit_edge:      ; preds = %tpm_buf_append_u32.exit34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %tpm_buf_append_u32.exit34
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %0, align 4
  %value4 = getelementptr i8, ptr %38, i32 23
  %39 = ptrtoint ptr %value4 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %value4, align 1
  %41 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %value, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %tpm_buf_append_u32.exit34.if.end5_crit_edge
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @free_pages(i32 noundef %44, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm2_shutdown(ptr noundef %chip, i16 noundef zeroext %shutdown_type) local_unnamed_addr #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32767, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 325, ptr %6, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length.i.i.i, align 1
  %12 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u16.exit_crit_edge

if.end.tpm_buf_append_u16.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u16.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u16.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %shutdown_type, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u16.exit

tpm_buf_append_u16.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u16.exit_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.9) #9
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @free_pages(i32 noundef %19, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %tpm_buf_append_u16.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_probe(ptr noundef %chip) #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32767, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 378, ptr %6, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length.i.i.i, align 1
  %12 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u32.exit_crit_edge

if.end.tpm_buf_append_u32.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 6, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u32.exit_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %length.i.i.i14 = getelementptr inbounds %struct.tpm_header, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %length.i.i.i14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %length.i.i.i14, align 1
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf, align 4
  %and.i.i15 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit24_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u32.exit24_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit24

if.end.i.i19:                                     ; preds = %tpm_buf_append_u32.exit
  %add.i.i17 = add i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i17)
  %cmp.i.i18 = icmp ugt i32 %add.i.i17, 4096
  br i1 %cmp.i.i18, label %do.end.i.i21, label %if.end20.i.i23

do.end.i.i21:                                     ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf, align 4
  %or.i.i20 = or i32 %24, 1
  store i32 %or.i.i20, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit24

if.end20.i.i23:                                   ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i22 = getelementptr i8, ptr %18, i32 %20
  %25 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 297, ptr %arrayidx.i.i22, align 1
  %26 = ptrtoint ptr %length.i.i.i14 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %add.i.i17, ptr %length.i.i.i14, align 1
  br label %tpm_buf_append_u32.exit24

tpm_buf_append_u32.exit24:                        ; preds = %if.end20.i.i23, %do.end.i.i21, %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit24_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %length.i.i.i26 = getelementptr inbounds %struct.tpm_header, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %length.i.i.i26 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %length.i.i.i26, align 1
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf, align 4
  %and.i.i27 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i28, label %if.end.i.i31, label %tpm_buf_append_u32.exit24.tpm_buf_append_u32.exit36_crit_edge

tpm_buf_append_u32.exit24.tpm_buf_append_u32.exit36_crit_edge: ; preds = %tpm_buf_append_u32.exit24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit36

if.end.i.i31:                                     ; preds = %tpm_buf_append_u32.exit24
  %add.i.i29 = add i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i29)
  %cmp.i.i30 = icmp ugt i32 %add.i.i29, 4096
  br i1 %cmp.i.i30, label %do.end.i.i33, label %if.end20.i.i35

do.end.i.i33:                                     ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf, align 4
  %or.i.i32 = or i32 %34, 1
  store i32 %or.i.i32, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit36

if.end20.i.i35:                                   ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i34 = getelementptr i8, ptr %28, i32 %30
  %35 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 1, ptr %arrayidx.i.i34, align 1
  %36 = ptrtoint ptr %length.i.i.i26 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %add.i.i29, ptr %length.i.i.i26, align 1
  br label %tpm_buf_append_u32.exit36

tpm_buf_append_u32.exit36:                        ; preds = %if.end20.i.i35, %do.end.i.i33, %tpm_buf_append_u32.exit24.tpm_buf_append_u32.exit36_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then2, label %tpm_buf_append_u32.exit36.if.end7_crit_edge

tpm_buf_append_u32.exit36.if.end7_crit_edge:      ; preds = %tpm_buf_append_u32.exit36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %tpm_buf_append_u32.exit36
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %0, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %40)
  %cmp3 = icmp eq i16 %40, -32767
  br i1 %cmp3, label %if.then5, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %or = or i32 %42, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2.if.end7_crit_edge, %tpm_buf_append_u32.exit36.if.end7_crit_edge
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %0, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @free_pages(i32 noundef %45, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_pcr_allocation(ptr noundef %chip) local_unnamed_addr #3 align 64 {
entry:
  %digest.i = alloca %struct.tpm_digest, align 2
  %pcr_selection = alloca %struct.tpm2_pcr_selection, align 2
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pcr_selection) #9
  %0 = getelementptr inbounds %struct.tpm2_pcr_selection, ptr %pcr_selection, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tpm2_pcr_selection, ptr %pcr_selection, i32 0, i32 2
  %2 = call ptr @memset(ptr %pcr_selection, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %3 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %4 = inttoptr i32 %call.i to ptr
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buf, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 -32767, ptr %4, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %9 = getelementptr inbounds %struct.tpm_header, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 378, ptr %9, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %length.i.i.i, align 1
  %15 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u32.exit_crit_edge

if.end.tpm_buf_append_u32.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %17, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %12, i32 %14
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 5, ptr %arrayidx.i.i, align 1
  %19 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u32.exit_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %length.i.i.i66 = getelementptr inbounds %struct.tpm_header, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %length.i.i.i66 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %length.i.i.i66, align 1
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf, align 4
  %and.i.i67 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %and.i.i67, 0
  br i1 %tobool.not.i.i68, label %if.end.i.i71, label %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit76_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u32.exit76_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit76

if.end.i.i71:                                     ; preds = %tpm_buf_append_u32.exit
  %add.i.i69 = add i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i69)
  %cmp.i.i70 = icmp ugt i32 %add.i.i69, 4096
  br i1 %cmp.i.i70, label %do.end.i.i73, label %if.end20.i.i75

do.end.i.i73:                                     ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf, align 4
  %or.i.i72 = or i32 %27, 1
  store i32 %or.i.i72, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit76

if.end20.i.i75:                                   ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i74 = getelementptr i8, ptr %21, i32 %23
  %28 = ptrtoint ptr %arrayidx.i.i74 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %arrayidx.i.i74, align 1
  %29 = ptrtoint ptr %length.i.i.i66 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %add.i.i69, ptr %length.i.i.i66, align 1
  br label %tpm_buf_append_u32.exit76

tpm_buf_append_u32.exit76:                        ; preds = %if.end20.i.i75, %do.end.i.i73, %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit76_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %length.i.i.i78 = getelementptr inbounds %struct.tpm_header, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %length.i.i.i78 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %length.i.i.i78, align 1
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf, align 4
  %and.i.i79 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.not.i.i80, label %if.end.i.i83, label %tpm_buf_append_u32.exit76.tpm_buf_append_u32.exit88_crit_edge

tpm_buf_append_u32.exit76.tpm_buf_append_u32.exit88_crit_edge: ; preds = %tpm_buf_append_u32.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit88

if.end.i.i83:                                     ; preds = %tpm_buf_append_u32.exit76
  %add.i.i81 = add i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i81)
  %cmp.i.i82 = icmp ugt i32 %add.i.i81, 4096
  br i1 %cmp.i.i82, label %do.end.i.i85, label %if.end20.i.i87

do.end.i.i85:                                     ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf, align 4
  %or.i.i84 = or i32 %37, 1
  store i32 %or.i.i84, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit88

if.end20.i.i87:                                   ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i86 = getelementptr i8, ptr %31, i32 %33
  %38 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 1, ptr %arrayidx.i.i86, align 1
  %39 = ptrtoint ptr %length.i.i.i78 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %add.i.i81, ptr %length.i.i.i78, align 1
  br label %tpm_buf_append_u32.exit88

tpm_buf_append_u32.exit88:                        ; preds = %if.end20.i.i87, %do.end.i.i85, %tpm_buf_append_u32.exit76.tpm_buf_append_u32.exit88_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 9, ptr noundef nonnull @.str.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %tpm_buf_append_u32.exit88.out_crit_edge

tpm_buf_append_u32.exit88.out_crit_edge:          ; preds = %tpm_buf_append_u32.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %tpm_buf_append_u32.exit88
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr i8, ptr %41, i32 15
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 6) #9
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !57

kcalloc.exit.thread:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %allocated_banks96 = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 26
  %46 = ptrtoint ptr %allocated_banks96 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %allocated_banks96, align 4
  br label %out

if.end7.i.i:                                      ; preds = %if.end4
  %47 = extractvalue { i32, i1 } %44, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #13
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 26
  %48 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i, ptr %allocated_banks, align 4
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.out_crit_edge, label %if.end10

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end7.i.i
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %arrayidx14 = getelementptr i8, ptr %50, i32 2
  %51 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx14, align 4
  %arrayidx17 = getelementptr i8, ptr %50, i32 %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp106.not = icmp eq i32 %43, 0
  br i1 %cmp106.not, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %arrayidx12 = getelementptr i8, ptr %50, i32 19
  %53 = getelementptr inbounds i8, ptr %digest.i, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %if.end32.for.body_crit_edge ]
  %rc.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %rc.1, %if.end32.for.body_crit_edge ]
  %nr_alloc_banks.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_alloc_banks.1, %if.end32.for.body_crit_edge ]
  %marker.0107 = phi ptr [ %arrayidx12, %for.body.lr.ph ], [ %add.ptr35, %if.end32.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %marker.0107, i32 2
  %cmp18.not = icmp ult ptr %add.ptr, %arrayidx17
  br i1 %cmp18.not, label %if.end20, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end20:                                         ; preds = %for.body
  %54 = call ptr @memcpy(ptr %pcr_selection, ptr %marker.0107, i32 6)
  %55 = ptrtoint ptr %pcr_selection to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pcr_selection, align 2
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %0, align 2
  %conv = zext i8 %58 to i32
  %call22 = call ptr @memchr_inv(ptr noundef %1, i32 noundef 0, i32 noundef %conv) #9
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.if.end32_crit_edge, label %if.then24

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then24:                                        ; preds = %if.end20
  %59 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %allocated_banks, align 4
  %arrayidx26 = getelementptr %struct.tpm_bank_info, ptr %60, i32 %nr_alloc_banks.0108
  %61 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %56, ptr %arrayidx26, align 2
  %62 = load ptr, ptr %allocated_banks, align 4
  %add.ptr.i = getelementptr %struct.tpm_bank_info, ptr %62, i32 %nr_alloc_banks.0108
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %digest.i) #9
  %63 = call ptr @memset(ptr %53, i32 0, i32 64)
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i, align 2
  %66 = ptrtoint ptr %digest.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %digest.i, align 2
  %67 = zext i16 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %65, label %tpm2_init_bank_info.exit [
    i16 4, label %if.then24.tpm2_init_bank_info.exit.thread_crit_edge
    i16 11, label %if.end.fold.split.i
    i16 12, label %if.end.fold.split29.i
    i16 13, label %if.end.fold.split30.i
    i16 18, label %if.end.fold.split31.i
  ]

if.then24.tpm2_init_bank_info.exit.thread_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm2_init_bank_info.exit.thread

if.end.fold.split.i:                              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm2_init_bank_info.exit.thread

if.end.fold.split29.i:                            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm2_init_bank_info.exit.thread

if.end.fold.split30.i:                            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm2_init_bank_info.exit.thread

if.end.fold.split31.i:                            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm2_init_bank_info.exit.thread

tpm2_init_bank_info.exit.thread:                  ; preds = %if.end.fold.split31.i, %if.end.fold.split30.i, %if.end.fold.split29.i, %if.end.fold.split.i, %if.then24.tpm2_init_bank_info.exit.thread_crit_edge
  %i.027.lcssa.i = phi i32 [ 0, %if.then24.tpm2_init_bank_info.exit.thread_crit_edge ], [ 1, %if.end.fold.split.i ], [ 2, %if.end.fold.split29.i ], [ 3, %if.end.fold.split30.i ], [ 4, %if.end.fold.split31.i ]
  %arrayidx.i = getelementptr [5 x %struct.tpm2_hash], ptr @tpm2_hash_map, i32 0, i32 %i.027.lcssa.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr [20 x i32], ptr @hash_digest_size, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx7.i, align 4
  %conv8.i = trunc i32 %71 to i16
  %digest_size.i = getelementptr %struct.tpm_bank_info, ptr %62, i32 %nr_alloc_banks.0108, i32 1
  %72 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv8.i, ptr %digest_size.i, align 2
  %conv9.i = trunc i32 %69 to i16
  %crypto_id10.i = getelementptr %struct.tpm_bank_info, ptr %62, i32 %nr_alloc_banks.0108, i32 2
  %73 = ptrtoint ptr %crypto_id10.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv9.i, ptr %crypto_id10.i, align 2
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %digest.i) #9
  br label %if.end31

tpm2_init_bank_info.exit:                         ; preds = %if.then24
  %crypto_id11.i = getelementptr %struct.tpm_bank_info, ptr %62, i32 %nr_alloc_banks.0108, i32 2
  %74 = ptrtoint ptr %crypto_id11.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 20, ptr %crypto_id11.i, align 2
  %digest_size12.i = getelementptr %struct.tpm_bank_info, ptr %62, i32 %nr_alloc_banks.0108, i32 1
  %call.i91 = call i32 @tpm2_pcr_read(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %digest.i, ptr noundef %digest_size12.i) #9
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %digest.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp28 = icmp slt i32 %call.i91, 0
  br i1 %cmp28, label %tpm2_init_bank_info.exit.for.end_crit_edge, label %tpm2_init_bank_info.exit.if.end31_crit_edge

tpm2_init_bank_info.exit.if.end31_crit_edge:      ; preds = %tpm2_init_bank_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

tpm2_init_bank_info.exit.for.end_crit_edge:       ; preds = %tpm2_init_bank_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end31:                                         ; preds = %tpm2_init_bank_info.exit.if.end31_crit_edge, %tpm2_init_bank_info.exit.thread
  %retval.2.i105 = phi i32 [ 0, %tpm2_init_bank_info.exit.thread ], [ %call.i91, %tpm2_init_bank_info.exit.if.end31_crit_edge ]
  %inc = add i32 %nr_alloc_banks.0108, 1
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end20.if.end32_crit_edge
  %nr_alloc_banks.1 = phi i32 [ %inc, %if.end31 ], [ %nr_alloc_banks.0108, %if.end20.if.end32_crit_edge ]
  %rc.1 = phi i32 [ %retval.2.i105, %if.end31 ], [ %rc.0110, %if.end20.if.end32_crit_edge ]
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %0, align 2
  %conv34 = zext i8 %76 to i32
  %add = add nuw nsw i32 %conv34, 3
  %add.ptr35 = getelementptr i8, ptr %marker.0107, i32 %add
  %inc36 = add nuw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc36, %43
  br i1 %exitcond.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %tpm2_init_bank_info.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %nr_alloc_banks.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %nr_alloc_banks.0108, %for.body.for.end_crit_edge ], [ %nr_alloc_banks.0108, %tpm2_init_bank_info.exit.for.end_crit_edge ], [ %nr_alloc_banks.1, %if.end32.for.end_crit_edge ]
  %rc.2 = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ -14, %for.body.for.end_crit_edge ], [ %call.i91, %tpm2_init_bank_info.exit.for.end_crit_edge ], [ %rc.1, %if.end32.for.end_crit_edge ]
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 25
  %77 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %nr_alloc_banks.0.lcssa, ptr %nr_allocated_banks, align 8
  br label %out

out:                                              ; preds = %for.end, %if.end7.i.i.out_crit_edge, %kcalloc.exit.thread, %tpm_buf_append_u32.exit88.out_crit_edge
  %rc.3 = phi i32 [ %call1, %tpm_buf_append_u32.exit88.out_crit_edge ], [ %rc.2, %for.end ], [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @free_pages(i32 noundef %80, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.3, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pcr_selection) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_get_cc_attrs_tbl(ptr noundef %chip) #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  %nr_commands = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_commands) #9
  %1 = ptrtoint ptr %nr_commands to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr_commands, align 4, !annotation !58
  %call = call i32 @tpm2_get_tpm_pt(ptr noundef %chip, i32 noundef 297, ptr noundef nonnull %nr_commands, ptr undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %nr_commands to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_commands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %3)
  %cmp = icmp ugt i32 %3, 1048575
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %devm_kcalloc.exit

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

devm_kcalloc.exit:                                ; preds = %if.end
  %4 = shl nuw nsw i32 %3, 2
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %chip, i32 noundef %4, i32 noundef 3520) #9
  %cc_attrs_tbl = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 30
  %5 = ptrtoint ptr %cc_attrs_tbl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %cc_attrs_tbl, align 4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %devm_kcalloc.exit.out.thread_crit_edge, label %if.end7

devm_kcalloc.exit.out.thread_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end7:                                          ; preds = %devm_kcalloc.exit
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %6 = inttoptr i32 %call.i to ptr
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.out.thread_crit_edge, label %if.end11

if.end7.out.thread_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end11:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %buf, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 -32767, ptr %6, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 378, ptr %11, align 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %length.i.i.i, align 1
  %17 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i61, label %if.end11.tpm_buf_append_u32.exit_crit_edge

if.end11.tpm_buf_append_u32.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i61:                                     ; preds = %if.end11
  %add.i.i = add i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %19, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %14, i32 %16
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 2, ptr %arrayidx.i.i, align 1
  %21 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end11.tpm_buf_append_u32.exit_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %length.i.i.i63 = getelementptr inbounds %struct.tpm_header, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %length.i.i.i63 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %length.i.i.i63, align 1
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf, align 4
  %and.i.i64 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i68, label %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit73_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append_u32.exit73_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit73

if.end.i.i68:                                     ; preds = %tpm_buf_append_u32.exit
  %add.i.i66 = add i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i66)
  %cmp.i.i67 = icmp ugt i32 %add.i.i66, 4096
  br i1 %cmp.i.i67, label %do.end.i.i70, label %if.end20.i.i72

do.end.i.i70:                                     ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf, align 4
  %or.i.i69 = or i32 %29, 1
  store i32 %or.i.i69, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit73

if.end20.i.i72:                                   ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i71 = getelementptr i8, ptr %23, i32 %25
  %30 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 287, ptr %arrayidx.i.i71, align 1
  %31 = ptrtoint ptr %length.i.i.i63 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %add.i.i66, ptr %length.i.i.i63, align 1
  br label %tpm_buf_append_u32.exit73

tpm_buf_append_u32.exit73:                        ; preds = %if.end20.i.i72, %do.end.i.i70, %tpm_buf_append_u32.exit.tpm_buf_append_u32.exit73_crit_edge
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %length.i.i.i75 = getelementptr inbounds %struct.tpm_header, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %length.i.i.i75 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %length.i.i.i75, align 1
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf, align 4
  %and.i.i76 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %and.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.end.i.i80, label %tpm_buf_append_u32.exit73.tpm_buf_append_u32.exit85_crit_edge

tpm_buf_append_u32.exit73.tpm_buf_append_u32.exit85_crit_edge: ; preds = %tpm_buf_append_u32.exit73
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit85

if.end.i.i80:                                     ; preds = %tpm_buf_append_u32.exit73
  %add.i.i78 = add i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i78)
  %cmp.i.i79 = icmp ugt i32 %add.i.i78, 4096
  br i1 %cmp.i.i79, label %do.end.i.i82, label %if.end20.i.i84

do.end.i.i82:                                     ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf, align 4
  %or.i.i81 = or i32 %39, 1
  store i32 %or.i.i81, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit85

if.end20.i.i84:                                   ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i83 = getelementptr i8, ptr %33, i32 %35
  %40 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %3, ptr %arrayidx.i.i83, align 1
  %41 = ptrtoint ptr %length.i.i.i75 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %add.i.i78, ptr %length.i.i.i75, align 1
  br label %tpm_buf_append_u32.exit85

tpm_buf_append_u32.exit85:                        ; preds = %if.end20.i.i84, %do.end.i.i82, %tpm_buf_append_u32.exit73.tpm_buf_append_u32.exit85_crit_edge
  %add = add nuw nsw i32 %4, 9
  %call12 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef %add, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %tpm_buf_append_u32.exit85
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %43 to i32
  call void @free_pages(i32 noundef %44, i32 noundef 0) #9
  br label %out

if.end15:                                         ; preds = %tpm_buf_append_u32.exit85
  %arrayidx = getelementptr i8, ptr %43, i32 15
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %46)
  %cmp17.not = icmp eq i32 %3, %46
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %43 to i32
  call void @free_pages(i32 noundef %47, i32 noundef 0) #9
  br label %out.thread

if.end19:                                         ; preds = %if.end15
  %nr_commands20 = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 29
  %48 = ptrtoint ptr %nr_commands20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %3, ptr %nr_commands20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2396.not = icmp eq i32 %3, 0
  br i1 %cmp2396.not, label %if.end19.for.end_crit_edge, label %for.body.preheader

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end19
  %arrayidx22 = getelementptr i8, ptr %43, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.098 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %attrs.097 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %arrayidx22, %for.body.preheader ]
  %49 = ptrtoint ptr %attrs.097 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %attrs.097, align 4
  %51 = ptrtoint ptr %cc_attrs_tbl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cc_attrs_tbl, align 4
  %arrayidx26 = getelementptr i32, ptr %52, i32 %i.098
  %53 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %arrayidx26, align 4
  %54 = load ptr, ptr %cc_attrs_tbl, align 4
  %arrayidx28 = getelementptr i32, ptr %54, i32 %i.098
  %55 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx28, align 4
  %trunc = trunc i32 %56 to i16
  %57 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %trunc, label %for.body.for.inc_crit_edge [
    i16 354, label %for.body.if.then31_crit_edge
    i16 357, label %for.body.if.then31_crit_edge100
  ]

for.body.if.then31_crit_edge100:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

for.body.if.then31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then31:                                        ; preds = %for.body.if.then31_crit_edge, %for.body.if.then31_crit_edge100
  %and34 = and i32 %56, -234881025
  %58 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and34, ptr %arrayidx28, align 4
  %59 = ptrtoint ptr %cc_attrs_tbl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cc_attrs_tbl, align 4
  %arrayidx36 = getelementptr i32, ptr %60, i32 %i.098
  %61 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx36, align 4
  %or = or i32 %62, 33554432
  store i32 %or, ptr %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.098, 1
  %incdec.ptr = getelementptr i32, ptr %attrs.097, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %0, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @free_pages(i32 noundef %65, i32 noundef 0) #9
  br label %out.thread

out:                                              ; preds = %if.then14, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call12, %if.then14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp38 = icmp sgt i32 %rc.0, 0
  %spec.select = select i1 %cmp38, i32 -19, i32 %rc.0
  br label %out.thread

out.thread:                                       ; preds = %out, %for.end, %if.then18, %if.end7.out.thread_crit_edge, %devm_kcalloc.exit.out.thread_crit_edge, %if.end.out.thread_crit_edge
  %66 = phi i32 [ -12, %if.end7.out.thread_crit_edge ], [ -12, %devm_kcalloc.exit.out.thread_crit_edge ], [ -14, %if.end.out.thread_crit_edge ], [ 0, %for.end ], [ -14, %if.then18 ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_commands) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_auto_startup(ptr noundef %chip) local_unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_a.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %timeout_a.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 75, ptr %timeout_a.i, align 8
  %timeout_b.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %1 = ptrtoint ptr %timeout_b.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 200, ptr %timeout_b.i, align 4
  %timeout_c.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %2 = ptrtoint ptr %timeout_c.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %timeout_c.i, align 8
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %3 = ptrtoint ptr %timeout_d.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %timeout_d.i, align 4
  %duration.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 20
  %4 = ptrtoint ptr %duration.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %duration.i, align 4
  %arrayidx7.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 75, ptr %arrayidx7.i, align 4
  %arrayidx10.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 200, ptr %arrayidx10.i, align 4
  %arrayidx13.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 3
  %7 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 30000, ptr %arrayidx13.i, align 4
  %flags.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %9, 16
  store i32 %or.i, ptr %flags.i, align 4
  %call1 = tail call fastcc i32 @tpm2_do_selftest(ptr noundef %chip)
  %10 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call1, label %entry.out_crit_edge [
    i32 256, label %if.then6
    i32 0, label %entry.if.end15_crit_edge
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then6:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #9
  %11 = getelementptr inbounds %struct.tpm_buf, ptr %buf.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.17) #12
  %call.i.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %12 = inttoptr i32 %call.i.i to ptr
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %out.thread, label %if.end.i

out.thread:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #9
  br label %if.end19.thread

if.end.i:                                         ; preds = %if.then6
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buf.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 -32767, ptr %12, align 1
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %17 = getelementptr inbounds %struct.tpm_header, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 324, ptr %17, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %11, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %length.i.i.i.i, align 1
  %23 = load i32, ptr %buf.i, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.tpm2_startup.exit_crit_edge

if.end.i.tpm2_startup.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm2_startup.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %add.i.i.i = add i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 4096
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end20.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf.i, align 4
  %or.i.i.i = or i32 %25, 1
  store i32 %or.i.i.i, ptr %buf.i, align 4
  br label %tpm2_startup.exit

if.end20.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr i8, ptr %20, i32 %22
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 0, ptr %arrayidx.i.i.i, align 1
  %27 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %add.i.i.i, ptr %length.i.i.i.i, align 1
  br label %tpm2_startup.exit

tpm2_startup.exit:                                ; preds = %if.end20.i.i.i, %do.end.i.i.i, %if.end.i.tpm2_startup.exit_crit_edge
  %call1.i = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.19) #9
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @free_pages(i32 noundef %30, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %if.end10, label %tpm2_startup.exit.out_crit_edge

tpm2_startup.exit.out_crit_edge:                  ; preds = %tpm2_startup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %tpm2_startup.exit
  %call11 = call fastcc i32 @tpm2_do_selftest(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %entry.if.end15_crit_edge
  %call16 = call i32 @tpm2_get_cc_attrs_tbl(ptr noundef %chip)
  br label %out

out:                                              ; preds = %if.end15, %if.end10.out_crit_edge, %tpm2_startup.exit.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call1.i, %tpm2_startup.exit.out_crit_edge ], [ %call11, %if.end10.out_crit_edge ], [ %call16, %if.end15 ], [ %call1, %entry.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 301, i32 %rc.0)
  %cmp17 = icmp eq i32 %rc.0, 301
  br i1 %cmp17, label %do.end, label %if.end19

do.end:                                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.11) #12
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 4
  %or = or i32 %32, 128
  store i32 %or, ptr %flags.i, align 4
  br label %if.end19.thread

if.end19:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp20 = icmp sgt i32 %rc.0, 0
  %spec.select = select i1 %cmp20, i32 -19, i32 %rc.0
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %if.end19, %do.end, %out.thread
  %33 = phi i32 [ -12, %out.thread ], [ 0, %do.end ], [ %spec.select, %if.end19 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_do_selftest(ptr noundef %chip) unnamed_addr #3 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32767, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 323, ptr %6, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length.i.i.i, align 1
  %12 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u8.exit_crit_edge

if.end.tpm_buf_append_u8.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u8.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u8.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u8.exit

tpm_buf_append_u8.exit:                           ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u8.exit_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @free_pages(i32 noundef %19, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2314, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 2314
  %spec.store.select = select i1 %cmp2, i32 0, i32 %call1
  %20 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %spec.store.select, label %for.inc [
    i32 256, label %tpm_buf_append_u8.exit.cleanup_crit_edge
    i32 0, label %tpm_buf_append_u8.exit.cleanup_crit_edge26
  ]

tpm_buf_append_u8.exit.cleanup_crit_edge26:       ; preds = %tpm_buf_append_u8.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tpm_buf_append_u8.exit.cleanup_crit_edge:         ; preds = %tpm_buf_append_u8.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %tpm_buf_append_u8.exit
  %call.i.1 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %21 = inttoptr i32 %call.i.1 to ptr
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.cleanup_crit_edge, label %if.end.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %for.inc
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %buf, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 -32767, ptr %21, align 1
  %length.i.i.1 = getelementptr inbounds %struct.tpm_header, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %length.i.i.1 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 10, ptr %length.i.i.1, align 1
  %26 = getelementptr inbounds %struct.tpm_header, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 323, ptr %26, align 1
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  %length.i.i.i.1 = getelementptr inbounds %struct.tpm_header, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %length.i.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %length.i.i.i.1, align 1
  %32 = load i32, ptr %buf, align 4
  %and.i.i.1 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %and.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %if.end.1.tpm_buf_append_u8.exit.1_crit_edge

if.end.1.tpm_buf_append_u8.exit.1_crit_edge:      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u8.exit.1

if.end.i.i.1:                                     ; preds = %if.end.1
  %add.i.i.1 = add i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.1)
  %cmp.i.i.1 = icmp ugt i32 %add.i.i.1, 4096
  br i1 %cmp.i.i.1, label %do.end.i.i.1, label %if.end20.i.i.1

if.end20.i.i.1:                                   ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.1 = getelementptr i8, ptr %29, i32 %31
  %33 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx.i.i.1, align 1
  %34 = ptrtoint ptr %length.i.i.i.1 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %add.i.i.1, ptr %length.i.i.i.1, align 1
  br label %tpm_buf_append_u8.exit.1

do.end.i.i.1:                                     ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.15) #9
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf, align 4
  %or.i.i.1 = or i32 %36, 1
  store i32 %or.i.i.1, ptr %buf, align 4
  br label %tpm_buf_append_u8.exit.1

tpm_buf_append_u8.exit.1:                         ; preds = %do.end.i.i.1, %if.end20.i.i.1, %if.end.1.tpm_buf_append_u8.exit.1_crit_edge
  %call1.1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %0, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @free_pages(i32 noundef %39, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2314, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 2314
  %spec.store.select.1 = select i1 %cmp2.1, i32 0, i32 %call1.1
  br label %cleanup

cleanup:                                          ; preds = %tpm_buf_append_u8.exit.1, %for.inc.cleanup_crit_edge, %tpm_buf_append_u8.exit.cleanup_crit_edge, %tpm_buf_append_u8.exit.cleanup_crit_edge26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %tpm_buf_append_u8.exit.cleanup_crit_edge ], [ %spec.store.select, %tpm_buf_append_u8.exit.cleanup_crit_edge26 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %for.inc.cleanup_crit_edge ], [ %spec.store.select.1, %tpm_buf_append_u8.exit.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_find_cc(ptr nocapture noundef readonly %chip, i32 noundef %cc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_commands = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 29
  %0 = ptrtoint ptr %nr_commands to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_commands, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cc_attrs_tbl = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 30
  %2 = ptrtoint ptr %cc_attrs_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_attrs_tbl, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cc)
  %cmp1 = icmp eq i32 %and, %cc
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ], [ %i.07, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !39, !41, !43, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 198, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 265, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 312, i32 12}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 355, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tpm2_flush_context._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @tpm2_flush_context._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 362, i32 34}
!16 = !{ptr @__ksymtab_tpm2_flush_context, !17, !"__ksymtab_tpm2_flush_context", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 365, i32 1}
!18 = !{ptr @__ksymtab_tpm2_get_tpm_pt, !19, !"__ksymtab_tpm2_get_tpm_pt", i1 false, i1 false}
!19 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 408, i32 1}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 429, i32 34}
!22 = !{ptr @__ksymtab_tpm2_probe, !23, !"__ksymtab_tpm2_probe", i1 false, i1 false}
!23 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 505, i32 1}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 562, i32 39}
!26 = !{ptr @__ksymtab_tpm2_get_cc_attrs_tbl, !27, !"__ksymtab_tpm2_get_cc_attrs_tbl", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 685, i32 1}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 749, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tpm2_auto_startup._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @tpm2_auto_startup._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tpm2_hash_map, !38, !"tpm2_hash_map", i1 false, i1 false}
!38 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 17, i32 25}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 459, i32 11}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 703, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tpm2_startup._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @tpm2_startup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/tpm2-cmd.c", i32 710, i32 39}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"auto-init"}
