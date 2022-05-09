; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm1-cmd.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm1-cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tpm1_getcap\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm1_getcap\09\09\09\09"
module asm "\09.long\09__crc_tpm1_getcap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm1_getcap:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm1_getcap\22\09\09\09\09\09"
module asm "__kstrtabns_tpm1_getcap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tpm1_do_selftest\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm1_do_selftest\09\09\09\09"
module asm "\09.long\09__crc_tpm1_do_selftest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm1_do_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm1_do_selftest\22\09\09\09\09\09"
module asm "__kstrtabns_tpm1_do_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%union.cap_t = type { %struct.timeout_t, [8 x i8] }
%struct.timeout_t = type { i32, i32, i32, i32 }
%struct.tpm_header = type <{ i16, i32, %union.anon.71 }>
%union.anon.71 = type { i32 }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_bank_info = type { i16, i16, i16 }

@tpm1_ordinal_duration = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"\04\04\04\04\04\04\04\04\04\04\00\00\01\02\02\01\00\00\01\02\00\00\01\01\01\00\00\01\00\00\01\02\01\00\00\00\01\01\04\04\01\02\01\00\00\00\00\00\00\02\01\01\04\04\04\04\04\04\04\04\01\01\01\00\00\01\04\04\04\04\00\00\04\04\04\04\04\04\04\04\02\04\01\02\00\04\04\04\04\04\00\00\00\00\00\04\04\04\04\04\01\00\00\04\04\04\04\04\04\04\00\00\00\00\00\00\00\00\04\04\02\02\01\04\00\00\00\02\00\00\00\01\04\00\01\04\04\04\04\04\00\00\04\04\04\04\04\04\04\04\00\01\01\00\00\04\04\04\04\04\00\00\00\00\04\04\04\04\04\04\02\04\04\04\04\04\04\04\04\04\01\00\01\01\01\01\00\04\04\04\04\04\04\04\04\04\04\04\04\04\00\04\04\04\00\00\00\00\00\00\01\04\01\01\01\04\01\04\04\00\00\00\00\00\00\04\04\04\04\04\00\02\01\04\04\04\04\04\04\04\00\04\01", [45 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"attempting to determine the timeouts\00", [59 x i8] zeroinitializer }, align 32
@tpm1_get_timeouts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"A TPM error (%zd) occurred attempting to determine the timeouts\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm1_get_timeouts\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/char/tpm/tpm1-cmd.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm1_get_timeouts._entry_ptr = internal global ptr @tpm1_get_timeouts._entry, section ".printk_index", align 4
@tpm1_get_timeouts._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"[Hardware Error]: Adjusting reported timeouts: A %lu->%luus B %lu->%luus C %lu->%luus D %lu->%luus\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tpm1_get_timeouts._entry_ptr.9 = internal global ptr @tpm1_get_timeouts._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"attempting to determine the durations\00", [58 x i8] zeroinitializer }, align 32
@tpm1_get_timeouts._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[Hardware Error]: Adjusting reported durations.\00", [48 x i8] zeroinitializer }, align 32
@tpm1_get_timeouts._entry_ptr.13 = internal global ptr @tpm1_get_timeouts._entry.11, section ".printk_index", align 4
@tpm1_get_timeouts._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 455, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Adjusting TPM timeout parameters.\00", [62 x i8] zeroinitializer }, align 32
@tpm1_get_timeouts._entry_ptr.16 = internal global ptr @tpm1_get_timeouts._entry.14, section ".printk_index", align 4
@__kstrtab_tpm1_getcap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm1_getcap = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm1_getcap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm1_getcap to i32), ptr @__kstrtab_tpm1_getcap, ptr @__kstrtabns_tpm1_getcap }, section "___ksymtab_gpl+tpm1_getcap", align 4
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"attempting get random\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"attempting to read a pcr value\00", [33 x i8] zeroinitializer }, align 32
@tpm1_do_selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 657, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TPM not ready (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpm1_do_selftest\00", [47 x i8] zeroinitializer }, align 32
@tpm1_do_selftest._entry_ptr = internal global ptr @tpm1_do_selftest._entry, section ".printk_index", align 4
@tpm1_do_selftest._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 674, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[Hardware Error]: TPM command timed out during continue self test\00", [62 x i8] zeroinitializer }, align 32
@tpm1_do_selftest._entry_ptr.23 = internal global ptr @tpm1_do_selftest._entry.21, section ".printk_index", align 4
@tpm1_do_selftest._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 681, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TPM is disabled/deactivated (0x%X)\0A\00", [60 x i8] zeroinitializer }, align 32
@tpm1_do_selftest._entry_ptr.26 = internal global ptr @tpm1_do_selftest._entry.24, section ".printk_index", align 4
@__kstrtab_tpm1_do_selftest = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm1_do_selftest = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm1_do_selftest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm1_do_selftest to i32), ptr @__kstrtab_tpm1_do_selftest, ptr @__kstrtabns_tpm1_do_selftest }, section "___ksymtab_gpl+tpm1_do_selftest", align 4
@tpm1_auto_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TPM self test failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm1_auto_startup\00", [46 x i8] zeroinitializer }, align 32
@tpm1_auto_startup._entry_ptr = internal global ptr @tpm1_auto_startup._entry, section ".printk_index", align 4
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"extending dummy pcr before suspend\00", [61 x i8] zeroinitializer }, align 32
@tpm1_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error (%d) sending savestate before suspend\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tpm1_pm_suspend\00", [16 x i8] zeroinitializer }, align 32
@tpm1_pm_suspend._entry_ptr = internal global ptr @tpm1_pm_suspend._entry, section ".printk_index", align 4
@tpm1_pm_suspend._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 778, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TPM savestate took %dms\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tpm1_pm_suspend._entry_ptr.35 = internal global ptr @tpm1_pm_suspend._entry.32, section ".printk_index", align 4
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@tpm1_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 329, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"starting up the TPM manually\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpm1_startup\00", [19 x i8] zeroinitializer }, align 32
@tpm1_startup._entry_ptr = internal global ptr @tpm1_startup._entry, section ".printk_index", align 4
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"attempting to start the TPM\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"continue selftest\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 26, i64 264, i64 265]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 2050, i64 4294967234]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2048]
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"tpm1_ordinal_duration\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 35, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 356, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 361, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 405, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 418, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 439, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 455, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 548, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 596, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 657, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 674, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 680, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 713, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 748, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 774, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 777, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 329, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 337, i32 39 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 376, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [31 x i8] c"../drivers/char/tpm/tpm1-cmd.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 629, i32 39 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__ksymtab_tpm1_do_selftest, ptr @__ksymtab_tpm1_getcap, ptr @tpm1_auto_startup._entry, ptr @tpm1_auto_startup._entry_ptr, ptr @tpm1_do_selftest._entry, ptr @tpm1_do_selftest._entry.21, ptr @tpm1_do_selftest._entry.24, ptr @tpm1_do_selftest._entry_ptr, ptr @tpm1_do_selftest._entry_ptr.23, ptr @tpm1_do_selftest._entry_ptr.26, ptr @tpm1_get_timeouts._entry, ptr @tpm1_get_timeouts._entry.11, ptr @tpm1_get_timeouts._entry.14, ptr @tpm1_get_timeouts._entry.6, ptr @tpm1_get_timeouts._entry_ptr, ptr @tpm1_get_timeouts._entry_ptr.13, ptr @tpm1_get_timeouts._entry_ptr.16, ptr @tpm1_get_timeouts._entry_ptr.9, ptr @tpm1_pm_suspend._entry, ptr @tpm1_pm_suspend._entry.32, ptr @tpm1_pm_suspend._entry_ptr, ptr @tpm1_pm_suspend._entry_ptr.35, ptr @tpm1_startup._entry, ptr @tpm1_startup._entry_ptr, ptr @tpm1_ordinal_duration, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_ordinal_duration to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_get_timeouts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_get_timeouts._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_get_timeouts._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_get_timeouts._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_do_selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_do_selftest._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_do_selftest._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_auto_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_pm_suspend._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tpm1_calc_ordinal_duration(ptr nocapture noundef readonly %chip, i32 noundef %ordinal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 243, i32 %ordinal)
  %cmp = icmp ult i32 %ordinal, 243
  br i1 %cmp, label %if.end, label %entry.if.end6.thread_crit_edge

entry.if.end6.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [243 x i8], ptr @tpm1_ordinal_duration, i32 0, i32 %ordinal
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp1.not = icmp eq i8 %1, 4
  br i1 %cmp1.not, label %if.end.if.end6.thread_crit_edge, label %if.end6

if.end.if.end6.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread

if.end6:                                          ; preds = %if.end
  %conv = zext i8 %1 to i32
  %arrayidx5 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 %conv
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp slt i32 %3, 1
  br i1 %cmp7, label %if.end6.if.end6.thread_crit_edge, label %if.end6._crit_edge

if.end6._crit_edge:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %4

if.end6.if.end6.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end6.if.end6.thread_crit_edge, %if.end.if.end6.thread_crit_edge, %entry.if.end6.thread_crit_edge
  br label %4

4:                                                ; preds = %if.end6.thread, %if.end6._crit_edge
  %5 = phi i32 [ 12000, %if.end6.thread ], [ %3, %if.end6._crit_edge ]
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_get_timeouts(ptr noundef %chip) local_unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca %struct.tpm_buf, align 4
  %cap = alloca %union.cap_t, align 4
  %timeout_eff = alloca [4 x i32], align 4
  %durations = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #7
  %0 = getelementptr inbounds %struct.timeout_t, ptr %cap, i32 0, i32 1
  %1 = getelementptr inbounds %struct.timeout_t, ptr %cap, i32 0, i32 2
  %2 = getelementptr inbounds %struct.timeout_t, ptr %cap, i32 0, i32 3
  %3 = call ptr @memset(ptr %cap, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %timeout_eff) #7
  %4 = getelementptr inbounds [4 x i32], ptr %timeout_eff, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %timeout_eff, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %timeout_eff, i32 0, i32 3
  %7 = call ptr @memset(ptr %timeout_eff, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %durations) #7
  %8 = ptrtoint ptr %durations to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %durations, align 4, !annotation !86
  %9 = getelementptr inbounds [3 x i32], ptr %durations, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !86
  %11 = getelementptr inbounds [3 x i32], ptr %durations, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !86
  %call = call i32 @tpm1_getcap(ptr noundef %chip, i32 noundef 277, ptr noundef nonnull %cap, ptr noundef null, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %call)
  %cmp = icmp eq i32 %call, 38
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #7
  %13 = getelementptr inbounds %struct.tpm_buf, ptr %buf.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.36) #10
  %call.i.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %14 = inttoptr i32 %call.i.i to ptr
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tpm1_startup.exit.thread, label %if.end.i253

tpm1_startup.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  br label %cleanup

if.end.i253:                                      ; preds = %if.then
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buf.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 193, ptr %14, align 1
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %19 = getelementptr inbounds %struct.tpm_header, ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 153, ptr %19, align 1
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %13, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %length.i.i.i.i, align 1
  %25 = load i32, ptr %buf.i, align 4
  %and.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i253.tpm1_startup.exit_crit_edge

if.end.i253.tpm1_startup.exit_crit_edge:          ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm1_startup.exit

if.end.i.i.i:                                     ; preds = %if.end.i253
  %add.i.i.i = add i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 4096
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end20.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf.i, align 4
  %or.i.i.i = or i32 %27, 1
  store i32 %or.i.i.i, ptr %buf.i, align 4
  br label %tpm1_startup.exit

if.end20.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr i8, ptr %22, i32 %24
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 1, ptr %arrayidx.i.i.i, align 1
  %29 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %add.i.i.i, ptr %length.i.i.i.i, align 1
  br label %tpm1_startup.exit

tpm1_startup.exit:                                ; preds = %if.end20.i.i.i, %do.end.i.i.i, %if.end.i253.tpm1_startup.exit_crit_edge
  %call1.i = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.38) #7
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %13, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @free_pages(i32 noundef %32, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %tpm1_startup.exit.cleanup_crit_edge

tpm1_startup.exit.cleanup_crit_edge:              ; preds = %tpm1_startup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %tpm1_startup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 @tpm1_getcap(ptr noundef %chip, i32 noundef 277, ptr noundef nonnull %cap, ptr noundef nonnull @.str, i32 noundef 16)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %rc.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool5.not = icmp eq i32 %rc.0, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.1, i32 noundef %rc.0) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %33 = ptrtoint ptr %timeout_a to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeout_a, align 8
  %call8 = call i32 @jiffies_to_usecs(i32 noundef %34) #7
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %35 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %timeout_b, align 4
  %call9 = call i32 @jiffies_to_usecs(i32 noundef %36) #7
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %37 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout_c, align 8
  %call11 = call i32 @jiffies_to_usecs(i32 noundef %38) #7
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %39 = ptrtoint ptr %timeout_d to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %timeout_d, align 4
  %call13 = call i32 @jiffies_to_usecs(i32 noundef %40) #7
  %41 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cap, align 4
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 4
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %2, align 4
  %49 = ptrtoint ptr %timeout_eff to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %42, ptr %timeout_eff, align 4
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %44, ptr %4, align 4
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %46, ptr %5, align 4
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %48, ptr %6, align 4
  %ops = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 5
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 8
  %update_timeouts = getelementptr inbounds %struct.tpm_class_ops, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %update_timeouts to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %update_timeouts, align 4
  %tobool20.not = icmp eq ptr %56, null
  br i1 %tobool20.not, label %if.end7.if.end25_crit_edge, label %if.then21

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void %56(ptr noundef %chip, ptr noundef nonnull %timeout_eff) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end7.if.end25_crit_edge
  %timeout_adjusted = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 19
  %57 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %timeout_adjusted, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool26.not = icmp eq i8 %58, 0
  br i1 %tobool26.not, label %for.body.preheader, label %if.end25.do.end56_crit_edge

if.end25.do.end56_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

for.body.preheader:                               ; preds = %if.end25
  %59 = ptrtoint ptr %timeout_eff to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %timeout_eff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool30.not = icmp eq i32 %60, 0
  br i1 %tobool30.not, label %if.end32, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end32:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %timeout_eff to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call8, ptr %timeout_eff, align 4
  %62 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %timeout_adjusted, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %for.body.preheader.for.inc_crit_edge
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool30.not.1 = icmp eq i32 %64, 0
  br i1 %tobool30.not.1, label %if.end32.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end32.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call9, ptr %4, align 4
  %66 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %timeout_adjusted, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end32.1, %for.inc.for.inc.1_crit_edge
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool30.not.2 = icmp eq i32 %68, 0
  br i1 %tobool30.not.2, label %if.end32.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end32.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call11, ptr %5, align 4
  %70 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %timeout_adjusted, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end32.2, %for.inc.1.for.inc.2_crit_edge
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool30.not.3 = icmp eq i32 %72, 0
  br i1 %tobool30.not.3, label %if.end32.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end32.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call13, ptr %6, align 4
  %74 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %timeout_adjusted, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end32.3, %for.inc.2.for.inc.3_crit_edge
  %75 = ptrtoint ptr %timeout_eff to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %timeout_eff, align 4
  %77 = add i32 %76, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %77)
  %78 = icmp ult i32 %77, 999
  br i1 %78, label %for.body43.preheader, label %if.end50

for.body43.preheader:                             ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %timeout_eff to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %timeout_eff, align 4
  %mul = mul i32 %80, 1000
  store i32 %mul, ptr %timeout_eff, align 4
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %4, align 4
  %mul.1 = mul i32 %82, 1000
  store i32 %mul.1, ptr %4, align 4
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %5, align 4
  %mul.2 = mul i32 %84, 1000
  store i32 %mul.2, ptr %5, align 4
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %6, align 4
  %mul.3 = mul i32 %86, 1000
  store i32 %mul.3, ptr %6, align 4
  %87 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %timeout_adjusted, align 8
  br label %do.end56

if.end50:                                         ; preds = %for.inc.3
  %88 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_load1_noabort(i32 %88)
  %.pr = load i8, ptr %timeout_adjusted, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool52.not = icmp eq i8 %.pr, 0
  br i1 %tobool52.not, label %if.end50.if.else.i_crit_edge, label %if.end50.do.end56_crit_edge

if.end50.do.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end50.if.else.i_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.end56:                                         ; preds = %if.end50.do.end56_crit_edge, %for.body43.preheader, %if.end25.do.end56_crit_edge
  %89 = ptrtoint ptr %timeout_eff to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %timeout_eff, align 4
  %91 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %4, align 4
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %5, align 4
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.7, i32 noundef %42, i32 noundef %90, i32 noundef %44, i32 noundef %92, i32 noundef %46, i32 noundef %94, i32 noundef %48, i32 noundef %96) #10
  br label %if.else.i

if.else.i:                                        ; preds = %do.end56, %if.end50.if.else.i_crit_edge
  %97 = ptrtoint ptr %timeout_eff to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %timeout_eff, align 4
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %98) #7
  %99 = ptrtoint ptr %timeout_a to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call3.i, ptr %timeout_a, align 8
  %100 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %4, align 4
  %call3.i199 = call i32 @__usecs_to_jiffies(i32 noundef %101) #7
  %102 = ptrtoint ptr %timeout_b to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call3.i199, ptr %timeout_b, align 4
  %103 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %5, align 4
  %call3.i209 = call i32 @__usecs_to_jiffies(i32 noundef %104) #7
  %105 = ptrtoint ptr %timeout_c to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call3.i209, ptr %timeout_c, align 8
  %106 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %6, align 4
  %call3.i219 = call i32 @__usecs_to_jiffies(i32 noundef %107) #7
  %108 = ptrtoint ptr %timeout_d to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call3.i219, ptr %timeout_d, align 4
  %call79 = call i32 @tpm1_getcap(ptr noundef %chip, i32 noundef 288, ptr noundef nonnull %cap, ptr noundef nonnull @.str.10, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.else.i230, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i230:                                     ; preds = %if.else.i
  %109 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cap, align 4
  %call3.i229 = call i32 @__usecs_to_jiffies(i32 noundef %110) #7
  %duration = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 20
  %111 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call3.i229, ptr %duration, align 4
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %0, align 4
  %call3.i239 = call i32 @__usecs_to_jiffies(i32 noundef %113) #7
  %arrayidx87 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 1
  %114 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call3.i239, ptr %arrayidx87, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %1, align 4
  %call3.i249 = call i32 @__usecs_to_jiffies(i32 noundef %116) #7
  %arrayidx90 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 2
  %117 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call3.i249, ptr %arrayidx90, align 4
  %arrayidx92 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 3
  %118 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %arrayidx92, align 4
  %119 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops, align 8
  %update_durations = getelementptr inbounds %struct.tpm_class_ops, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %update_durations to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %update_durations, align 4
  %tobool94.not = icmp eq ptr %122, null
  br i1 %tobool94.not, label %if.else.i230.if.end99_crit_edge, label %if.then95

if.else.i230.if.end99_crit_edge:                  ; preds = %if.else.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then95:                                        ; preds = %if.else.i230
  call void @__sanitizer_cov_trace_pc() #9
  call void %122(ptr noundef %chip, ptr noundef nonnull %durations) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.else.i230.if.end99_crit_edge
  %duration_adjusted = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 21
  %123 = ptrtoint ptr %duration_adjusted to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %duration_adjusted, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool100.not = icmp eq i8 %124, 0
  br i1 %tobool100.not, label %if.end115thread-pre-split, label %do.end104

do.end104:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.12) #10
  %125 = ptrtoint ptr %durations to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %durations, align 4
  %127 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %duration, align 4
  %128 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %9, align 4
  %130 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx87, align 4
  %131 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %11, align 4
  %133 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx90, align 4
  br label %if.end115

if.end115thread-pre-split:                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr258 = load i32, ptr %duration, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.end115thread-pre-split, %do.end104
  %135 = phi i32 [ %.pr258, %if.end115thread-pre-split ], [ %126, %do.end104 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp118 = icmp eq i32 %135, 0
  br i1 %cmp118, label %if.then119, label %if.end115.if.end133_crit_edge

if.end115.if.end133_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 100, ptr %duration, align 4
  %137 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx87, align 4
  %mul124 = mul i32 %138, 1000
  store i32 %mul124, ptr %arrayidx87, align 4
  %139 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx90, align 4
  %mul127 = mul i32 %140, 1000
  store i32 %mul127, ptr %arrayidx90, align 4
  %141 = ptrtoint ptr %duration_adjusted to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %duration_adjusted, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.15) #10
  br label %if.end133

if.end133:                                        ; preds = %if.then119, %if.end115.if.end133_crit_edge
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %142 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags, align 4
  %or = or i32 %143, 16
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.else.i.cleanup_crit_edge, %do.end, %tpm1_startup.exit.cleanup_crit_edge, %tpm1_startup.exit.thread
  %retval.0 = phi i32 [ %rc.0, %do.end ], [ 0, %if.end133 ], [ 38, %tpm1_startup.exit.cleanup_crit_edge ], [ %call79, %if.else.i.cleanup_crit_edge ], [ 38, %tpm1_startup.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %durations) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %timeout_eff) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_getcap(ptr noundef %chip, i32 noundef %subcap_id, ptr nocapture noundef writeonly %cap, ptr noundef %desc, i32 noundef %min_cap_length) #2 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 193, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 101, ptr %6, align 1
  %8 = zext i32 %subcap_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %subcap_id, label %if.else7 [
    i32 6, label %if.end.if.then2_crit_edge
    i32 26, label %if.end.if.then2_crit_edge86
    i32 264, label %if.end.if.then6_crit_edge
    i32 265, label %if.end.if.then6_crit_edge87
  ]

if.end.if.then6_crit_edge87:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.if.then2_crit_edge86:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %if.end.if.then2_crit_edge86
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %length.i.i.i, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then2.tpm_buf_append_u32.exit_crit_edge

if.then2.tpm_buf_append_u32.exit_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.then2
  %add.i.i = add i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %16, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %10, i32 %12
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %subcap_id, ptr %arrayidx.i.i, align 1
  %18 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.then2.tpm_buf_append_u32.exit_crit_edge
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %length.i.i.i24 = getelementptr inbounds %struct.tpm_header, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %length.i.i.i24 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %length.i.i.i24, align 1
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf, align 4
  %and.i.i25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i29, label %tpm_buf_append_u32.exit.if.end9_crit_edge

tpm_buf_append_u32.exit.if.end9_crit_edge:        ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i.i29:                                     ; preds = %tpm_buf_append_u32.exit
  %add.i.i27 = add i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i27)
  %cmp.i.i28 = icmp ugt i32 %add.i.i27, 4096
  br i1 %cmp.i.i28, label %do.end.i.i31, label %if.end20.i.i33

do.end.i.i31:                                     ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf, align 4
  %or.i.i30 = or i32 %26, 1
  store i32 %or.i.i30, ptr %buf, align 4
  br label %if.end9

if.end20.i.i33:                                   ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i32 = getelementptr i8, ptr %20, i32 %22
  %27 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %arrayidx.i.i32, align 1
  %28 = ptrtoint ptr %length.i.i.i24 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %add.i.i27, ptr %length.i.i.i24, align 1
  br label %if.end9

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge87
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %length.i.i.i36 = getelementptr inbounds %struct.tpm_header, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %length.i.i.i36 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %length.i.i.i36, align 1
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf, align 4
  %and.i.i37 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i41, label %if.then6.if.end8_crit_edge

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i.i41:                                     ; preds = %if.then6
  %add.i.i39 = add i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i39)
  %cmp.i.i40 = icmp ugt i32 %add.i.i39, 4096
  br i1 %cmp.i.i40, label %do.end.i.i43, label %if.end20.i.i45

do.end.i.i43:                                     ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf, align 4
  %or.i.i42 = or i32 %36, 1
  store i32 %or.i.i42, ptr %buf, align 4
  br label %if.end8

if.end20.i.i45:                                   ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i44 = getelementptr i8, ptr %30, i32 %32
  %37 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 4, ptr %arrayidx.i.i44, align 1
  %38 = ptrtoint ptr %length.i.i.i36 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %add.i.i39, ptr %length.i.i.i36, align 1
  br label %if.end8

if.else7:                                         ; preds = %if.end
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %length.i.i.i48 = getelementptr inbounds %struct.tpm_header, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %length.i.i.i48 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %length.i.i.i48, align 1
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf, align 4
  %and.i.i49 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and.i.i49, 0
  br i1 %tobool.not.i.i50, label %if.end.i.i53, label %if.else7.if.end8_crit_edge

if.else7.if.end8_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i.i53:                                     ; preds = %if.else7
  %add.i.i51 = add i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i51)
  %cmp.i.i52 = icmp ugt i32 %add.i.i51, 4096
  br i1 %cmp.i.i52, label %do.end.i.i55, label %if.end20.i.i57

do.end.i.i55:                                     ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf, align 4
  %or.i.i54 = or i32 %46, 1
  store i32 %or.i.i54, ptr %buf, align 4
  br label %if.end8

if.end20.i.i57:                                   ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i56 = getelementptr i8, ptr %40, i32 %42
  %47 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 5, ptr %arrayidx.i.i56, align 1
  %48 = ptrtoint ptr %length.i.i.i48 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %add.i.i51, ptr %length.i.i.i48, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end20.i.i57, %do.end.i.i55, %if.else7.if.end8_crit_edge, %if.end20.i.i45, %do.end.i.i43, %if.then6.if.end8_crit_edge
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %0, align 4
  %length.i.i.i60 = getelementptr inbounds %struct.tpm_header, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %length.i.i.i60 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %length.i.i.i60, align 1
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf, align 4
  %and.i.i61 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.not.i.i62 = icmp eq i32 %and.i.i61, 0
  br i1 %tobool.not.i.i62, label %if.end.i.i65, label %if.end8.tpm_buf_append_u32.exit70_crit_edge

if.end8.tpm_buf_append_u32.exit70_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit70

if.end.i.i65:                                     ; preds = %if.end8
  %add.i.i63 = add i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i63)
  %cmp.i.i64 = icmp ugt i32 %add.i.i63, 4096
  br i1 %cmp.i.i64, label %do.end.i.i67, label %if.end20.i.i69

do.end.i.i67:                                     ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf, align 4
  %or.i.i66 = or i32 %56, 1
  store i32 %or.i.i66, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit70

if.end20.i.i69:                                   ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i68 = getelementptr i8, ptr %50, i32 %52
  %57 = ptrtoint ptr %arrayidx.i.i68 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 4, ptr %arrayidx.i.i68, align 1
  %58 = ptrtoint ptr %length.i.i.i60 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %add.i.i63, ptr %length.i.i.i60, align 1
  br label %tpm_buf_append_u32.exit70

tpm_buf_append_u32.exit70:                        ; preds = %if.end20.i.i69, %do.end.i.i67, %if.end8.tpm_buf_append_u32.exit70_crit_edge
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %length.i.i.i72 = getelementptr inbounds %struct.tpm_header, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %length.i.i.i72 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %length.i.i.i72, align 1
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf, align 4
  %and.i.i73 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %and.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.end.i.i77, label %tpm_buf_append_u32.exit70.if.end9_crit_edge

tpm_buf_append_u32.exit70.if.end9_crit_edge:      ; preds = %tpm_buf_append_u32.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i.i77:                                     ; preds = %tpm_buf_append_u32.exit70
  %add.i.i75 = add i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i75)
  %cmp.i.i76 = icmp ugt i32 %add.i.i75, 4096
  br i1 %cmp.i.i76, label %do.end.i.i79, label %if.end20.i.i81

do.end.i.i79:                                     ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %65 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buf, align 4
  %or.i.i78 = or i32 %66, 1
  store i32 %or.i.i78, ptr %buf, align 4
  br label %if.end9

if.end20.i.i81:                                   ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i80 = getelementptr i8, ptr %60, i32 %62
  %67 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %subcap_id, ptr %arrayidx.i.i80, align 1
  %68 = ptrtoint ptr %length.i.i.i72 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %add.i.i75, ptr %length.i.i.i72, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.end20.i.i81, %do.end.i.i79, %tpm_buf_append_u32.exit70.if.end9_crit_edge, %if.end20.i.i33, %do.end.i.i31, %tpm_buf_append_u32.exit.if.end9_crit_edge
  %call10 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef %min_cap_length, ptr noundef %desc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr i8, ptr %70, i32 14
  %71 = call ptr @memcpy(ptr %cap, ptr %arrayidx, i32 24)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %0, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @free_pages(i32 noundef %74, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_pcr_extend(ptr noundef %chip, i32 noundef %pcr_idx, ptr nocapture noundef readonly %hash, ptr noundef %log_msg) local_unnamed_addr #2 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 193, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 20, ptr %6, align 1
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
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
  %length.i.i6 = getelementptr inbounds %struct.tpm_header, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %length.i.i6 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %length.i.i6, align 1
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i7 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i7, label %if.end.i8, label %tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append.exit

if.end.i8:                                        ; preds = %tpm_buf_append_u32.exit
  %add.i = add i32 %20, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf, align 4
  %or.i = or i32 %24, 1
  store i32 %or.i, ptr %buf, align 4
  br label %tpm_buf_append.exit

if.end20.i:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %18, i32 %20
  %25 = call ptr @memcpy(ptr %arrayidx.i, ptr %hash, i32 20)
  %26 = ptrtoint ptr %length.i.i6 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %add.i, ptr %length.i.i6, align 1
  br label %tpm_buf_append.exit

tpm_buf_append.exit:                              ; preds = %if.end20.i, %do.end.i, %tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 20, ptr noundef %log_msg) #7
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @free_pages(i32 noundef %29, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %tpm_buf_append.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %tpm_buf_append.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_get_random(ptr noundef %chip, ptr nocapture noundef writeonly %dest, i32 noundef %max) local_unnamed_addr #2 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tpm_buf_init.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tpm_buf_init.exit:                                ; preds = %entry
  %3 = tail call i32 @llvm.umin.i32(i32 %max, i32 128)
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 193, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %7 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 70, ptr %7, align 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %tpm_buf_init.exit
  %dest.addr.0 = phi ptr [ %dest, %tpm_buf_init.exit ], [ %add.ptr, %land.rhs.do.body_crit_edge ]
  %num_bytes.0 = phi i32 [ %3, %tpm_buf_init.exit ], [ %sub, %land.rhs.do.body_crit_edge ]
  %total.0 = phi i32 [ 0, %tpm_buf_init.exit ], [ %add15, %land.rhs.do.body_crit_edge ]
  %retries.0 = phi i32 [ 5, %tpm_buf_init.exit ], [ %dec, %land.rhs.do.body_crit_edge ]
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %length.i.i.i, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.tpm_buf_append_u32.exit_crit_edge

do.body.tpm_buf_append_u32.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %do.body
  %add.i.i = add i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %16, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %10, i32 %12
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %num_bytes.0, ptr %arrayidx.i.i, align 1
  %18 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %do.body.tpm_buf_append_u32.exit_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 4, ptr noundef nonnull @.str.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp4 = icmp sgt i32 %call1, 0
  %spec.store.select = select i1 %cmp4, i32 -5, i32 %call1
  br label %out23

if.end7:                                          ; preds = %tpm_buf_append_u32.exit
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr i8, ptr %20, i32 10
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %num_bytes.0, i32 %22)
  %cmp8 = icmp ult i32 %num_bytes.0, %22
  br i1 %cmp8, label %if.end7.out23_crit_edge, label %if.end10

if.end7.out23_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out23

if.end10:                                         ; preds = %if.end7
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %length.i, align 1
  %add = add i32 %22, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp12 = icmp ult i32 %24, %add
  br i1 %cmp12, label %if.end10.out23_crit_edge, label %if.end14

if.end10.out23_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out23

if.end14:                                         ; preds = %if.end10
  %rng_data = getelementptr i8, ptr %20, i32 14
  %25 = call ptr @memcpy(ptr %dest.addr.0, ptr %rng_data, i32 %22)
  %add15 = add i32 %22, %total.0
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 193, ptr %20, align 1
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 10, ptr %length.i, align 1
  %28 = getelementptr inbounds %struct.tpm_header, ptr %20, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 70, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool16.not = icmp eq i32 %retries.0, 0
  br i1 %tobool16.not, label %if.end14.do.end_crit_edge, label %land.rhs

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.rhs:                                         ; preds = %if.end14
  %dec = add nsw i32 %retries.0, -1
  %sub = sub i32 %num_bytes.0, %22
  %add.ptr = getelementptr i8, ptr %dest.addr.0, i32 %22
  %cmp17 = icmp ult i32 %add15, %max
  br i1 %cmp17, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %if.end14.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15)
  %tobool18.not = icmp eq i32 %add15, 0
  %spec.select = select i1 %tobool18.not, i32 -5, i32 %add15
  br label %out23

out23:                                            ; preds = %do.end, %if.end10.out23_crit_edge, %if.end7.out23_crit_edge, %if.then3
  %rc.0 = phi i32 [ %spec.store.select, %if.then3 ], [ %spec.select, %do.end ], [ -14, %if.end7.out23_crit_edge ], [ -14, %if.end10.out23_crit_edge ]
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @free_pages(i32 noundef %32, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out23 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_pcr_read(ptr noundef %chip, i32 noundef %pcr_idx, ptr nocapture noundef writeonly %res_buf) local_unnamed_addr #2 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 193, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 21, ptr %6, align 1
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.40) #7
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %pcr_idx, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u32.exit_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %tpm_buf_append_u32.exit.out_crit_edge

tpm_buf_append_u32.exit.out_crit_edge:            ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %tpm_buf_append_u32.exit
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %20)
  %cmp = icmp ult i32 %20, 20
  br i1 %cmp, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %18, i32 10
  %21 = call ptr @memcpy(ptr %res_buf, ptr %arrayidx, i32 20)
  br label %out

out:                                              ; preds = %if.end7, %if.end4.out_crit_edge, %tpm_buf_append_u32.exit.out_crit_edge
  %rc.0 = phi i32 [ %call1, %tpm_buf_append_u32.exit.out_crit_edge ], [ 0, %if.end7 ], [ -14, %if.end4.out_crit_edge ]
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @free_pages(i32 noundef %24, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_do_selftest(ptr noundef %chip) #2 align 64 {
entry:
  %buf.i = alloca %struct.tpm_buf, align 4
  %dummy = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dummy) #7
  %arrayidx5.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 20, i32 2
  %0 = call ptr @memset(ptr %dummy, i32 255, i32 20)
  %1 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp7.i = icmp slt i32 %2, 1
  %spec.select = select i1 %cmp7.i, i32 12000, i32 %2
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %spec.select) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #7
  %3 = getelementptr inbounds %struct.tpm_buf, ptr %buf.i, i32 0, i32 1
  %call.i.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %4 = inttoptr i32 %call.i.i to ptr
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tpm1_continue_selftest.exit.thread, label %tpm1_continue_selftest.exit

tpm1_continue_selftest.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  br label %cleanup

tpm1_continue_selftest.exit:                      ; preds = %entry
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buf.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 193, ptr %4, align 1
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %9 = getelementptr inbounds %struct.tpm_header, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 83, ptr %9, align 1
  %call1.i = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull @.str.41) #7
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @free_pages(i32 noundef %13, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #7
  %14 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call1.i, label %tpm1_continue_selftest.exit.cleanup_crit_edge [
    i32 38, label %if.then
    i32 0, label %do.body5.preheader
  ]

tpm1_continue_selftest.exit.cleanup_crit_edge:    ; preds = %tpm1_continue_selftest.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5.preheader:                               ; preds = %tpm1_continue_selftest.exit
  %div = udiv i32 %call1, 100
  br label %do.body5

if.then:                                          ; preds = %tpm1_continue_selftest.exit
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 32
  store i32 %or, ptr %flags, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.19, i32 noundef 38) #10
  br label %cleanup

do.body5:                                         ; preds = %do.cond25.do.body5_crit_edge, %do.body5.preheader
  %loops.0 = phi i32 [ %dec, %do.cond25.do.body5_crit_edge ], [ %div, %do.body5.preheader ]
  %call6 = call i32 @tpm1_pcr_read(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %dummy)
  %17 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call6, label %do.body5.cleanup_crit_edge [
    i32 -62, label %do.end11
    i32 7, label %do.body5.do.end19_crit_edge
    i32 6, label %do.body5.do.end19_crit_edge57
    i32 2050, label %do.body5.do.cond25_crit_edge
  ]

do.body5.do.cond25_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond25

do.body5.do.end19_crit_edge57:                    ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.body5.do.end19_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.22) #10
  br label %do.cond25

do.end19:                                         ; preds = %do.body5.do.end19_crit_edge, %do.body5.do.end19_crit_edge57
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.25, i32 noundef %call6) #10
  br label %cleanup

do.cond25:                                        ; preds = %do.end11, %do.body5.do.cond25_crit_edge
  call void @usleep_range_state(i32 noundef 99700, i32 noundef 100000, i32 noundef 2) #7
  %dec = add i32 %loops.0, -1
  %cmp26.not = icmp eq i32 %dec, 0
  br i1 %cmp26.not, label %do.cond25.cleanup_crit_edge, label %do.cond25.do.body5_crit_edge

do.cond25.do.body5_crit_edge:                     ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.cond25.cleanup_crit_edge:                      ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.cond25.cleanup_crit_edge, %do.end19, %do.body5.cleanup_crit_edge, %if.then, %tpm1_continue_selftest.exit.cleanup_crit_edge, %tpm1_continue_selftest.exit.thread
  %retval.0 = phi i32 [ 0, %do.end19 ], [ %call1.i, %tpm1_continue_selftest.exit.cleanup_crit_edge ], [ 38, %if.then ], [ -12, %tpm1_continue_selftest.exit.thread ], [ %call6, %do.body5.cleanup_crit_edge ], [ %call6, %do.cond25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dummy) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_auto_startup(ptr noundef %chip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tpm1_get_timeouts(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tpm1_do_selftest(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.27) #10
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp sgt i32 %rc.0, 0
  %spec.store.select = select i1 %cmp, i32 -19, i32 %rc.0
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %out ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_pm_suspend(ptr noundef %chip, i32 noundef %tpm_suspend_pcr) local_unnamed_addr #2 align 64 {
entry:
  %dummy_hash = alloca [20 x i8], align 1
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dummy_hash) #7
  %0 = call ptr @memset(ptr %dummy_hash, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %1 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tpm_suspend_pcr)
  %tobool.not = icmp eq i32 %tpm_suspend_pcr, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @tpm1_pcr_extend(ptr noundef %chip, i32 noundef %tpm_suspend_pcr, ptr noundef nonnull %dummy_hash, ptr noundef nonnull @.str.29)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %2 = inttoptr i32 %call.i to ptr
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %tpm_buf_init.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tpm_buf_init.exit:                                ; preds = %if.end
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 193, ptr %2, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %7 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 152, ptr %7, align 1
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %tpm_buf_init.exit
  %try.038 = phi i32 [ 0, %tpm_buf_init.exit ], [ %inc, %if.end8.for.body_crit_edge ]
  %call5 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef null) #7
  %9 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call5, label %for.body.do.end_crit_edge [
    i32 2048, label %if.end8
    i32 0, label %if.else
  ]

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8:                                          ; preds = %for.body
  call void @usleep_range_state(i32 noundef 99700, i32 noundef 100000, i32 noundef 2) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 193, ptr %11, align 1
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 10, ptr %length.i, align 1
  %14 = getelementptr inbounds %struct.tpm_header, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 152, ptr %14, align 1
  %inc = add nuw nsw i32 %try.038, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %if.end8.do.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %for.body.do.end_crit_edge
  %rc.142 = phi i32 [ %call5, %for.body.do.end_crit_edge ], [ 2048, %if.end8.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.30, i32 noundef %rc.142) #10
  br label %if.end18

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try.038)
  %cmp11.not = icmp eq i32 %try.038, 0
  br i1 %cmp11.not, label %if.else.if.end18_crit_edge, label %do.end15

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %try.038, 100
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.33, i32 noundef %mul) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.else.if.end18_crit_edge, %do.end
  %rc.143 = phi i32 [ 0, %if.else.if.end18_crit_edge ], [ 0, %do.end15 ], [ %rc.142, %do.end ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @free_pages(i32 noundef %18, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.143, %if.end18 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dummy_hash) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm1_get_pcr_allocation(ptr nocapture noundef %chip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6) #11
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 26
  %1 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %allocated_banks, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([20 x i32], ptr @hash_digest_size, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @hash_digest_size, i32 0, i32 2), align 4
  %conv = trunc i32 %3 to i16
  %digest_size = getelementptr inbounds %struct.tpm_bank_info, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %digest_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %digest_size, align 2
  %crypto_id = getelementptr inbounds %struct.tpm_bank_info, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %crypto_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %crypto_id, align 4
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 25
  %6 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %nr_allocated_banks, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 356, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 361, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tpm1_get_timeouts._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tpm1_get_timeouts._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 405, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tpm1_get_timeouts._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tpm1_get_timeouts._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 418, i32 5}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 439, i32 3}
!19 = !{ptr @tpm1_get_timeouts._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @tpm1_get_timeouts._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 455, i32 3}
!23 = !{ptr @tpm1_get_timeouts._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @tpm1_get_timeouts._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_tpm1_getcap, !26, !"__ksymtab_tpm1_getcap", i1 false, i1 false}
!26 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 512, i32 1}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 548, i32 11}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 596, i32 10}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 657, i32 3}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tpm1_do_selftest._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tpm1_do_selftest._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 674, i32 4}
!38 = !{ptr @tpm1_do_selftest._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tpm1_do_selftest._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 680, i32 4}
!42 = !{ptr @tpm1_do_selftest._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tpm1_do_selftest._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_tpm1_do_selftest, !45, !"__ksymtab_tpm1_do_selftest", i1 false, i1 false}
!45 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 695, i32 1}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 713, i32 3}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tpm1_auto_startup._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tpm1_auto_startup._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 748, i32 10}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 774, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tpm1_pm_suspend._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tpm1_pm_suspend._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 777, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tpm1_pm_suspend._entry.32, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @tpm1_pm_suspend._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @tpm1_ordinal_duration, !64, !"tpm1_ordinal_duration", i1 false, i1 false}
!64 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 35, i32 17}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 329, i32 2}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tpm1_startup._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @tpm1_startup._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 337, i32 39}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/tpm/tpm1-cmd.c", i32 629, i32 39}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i8 0, i8 2}
