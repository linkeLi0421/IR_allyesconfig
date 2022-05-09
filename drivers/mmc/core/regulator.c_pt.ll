; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/regulator.c_pt.bc'
source_filename = "../drivers/mmc/core/regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mmc_regulator_set_ocr\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_regulator_set_ocr\09\09\09\09"
module asm "\09.long\09__crc_mmc_regulator_set_ocr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_regulator_set_ocr:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_regulator_set_ocr\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_regulator_set_ocr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmc_regulator_set_vqmmc\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_regulator_set_vqmmc\09\09\09\09"
module asm "\09.long\09__crc_mmc_regulator_set_vqmmc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_regulator_set_vqmmc:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_regulator_set_vqmmc\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_regulator_set_vqmmc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmc_regulator_get_supply\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_regulator_get_supply\09\09\09\09"
module asm "\09.long\09__crc_mmc_regulator_get_supply\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_regulator_get_supply:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_regulator_get_supply\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_regulator_get_supply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@mmc_regulator_set_ocr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not set regulator OCR (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmc_regulator_set_ocr\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/core/regulator.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmc_regulator_set_ocr._entry_ptr = internal global ptr @mmc_regulator_set_ocr._entry, section ".printk_index", align 4
@__kstrtab_mmc_regulator_set_ocr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_regulator_set_ocr = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_regulator_set_ocr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_regulator_set_ocr to i32), ptr @__kstrtab_mmc_regulator_set_ocr, ptr @__kstrtabns_mmc_regulator_set_ocr }, section "___ksymtab_gpl+mmc_regulator_set_ocr", align 4
@mmc_regulator_set_vqmmc.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmc_regulator_set_vqmmc\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: found vmmc voltage range of %d-%duV\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_regulator_set_vqmmc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_regulator_set_vqmmc = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_regulator_set_vqmmc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_regulator_set_vqmmc to i32), ptr @__kstrtab_mmc_regulator_set_vqmmc, ptr @__kstrtabns_mmc_regulator_set_vqmmc }, section "___ksymtab_gpl+mmc_regulator_set_vqmmc", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vmmc\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vqmmc\00", [26 x i8] zeroinitializer }, align 32
@mmc_regulator_get_supply.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mmc_regulator_get_supply\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No vmmc regulator found\0A\00", [39 x i8] zeroinitializer }, align 32
@mmc_regulator_get_supply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 262, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed getting OCR mask: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mmc_regulator_get_supply._entry_ptr = internal global ptr @mmc_regulator_get_supply._entry, section ".printk_index", align 4
@mmc_regulator_get_supply.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.14, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No vqmmc regulator found\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_regulator_get_supply = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_regulator_get_supply = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_regulator_get_supply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_regulator_get_supply to i32), ptr @__kstrtab_mmc_regulator_get_supply, ptr @__kstrtabns_mmc_regulator_get_supply }, section "___ksymtab_gpl+mmc_regulator_get_supply", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 129, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 200, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 250, i32 54 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 251, i32 55 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 256, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 262, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [32 x i8] c"../drivers/mmc/core/regulator.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 268, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_mmc_regulator_get_supply, ptr @__ksymtab_mmc_regulator_set_ocr, ptr @__ksymtab_mmc_regulator_set_vqmmc, ptr @mmc_regulator_get_supply._entry, ptr @mmc_regulator_get_supply._entry_ptr, ptr @mmc_regulator_set_ocr._entry, ptr @mmc_regulator_set_ocr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_regulator_set_ocr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_regulator_get_supply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_regulator_set_ocr(ptr nocapture noundef %mmc, ptr noundef %supply, i16 noundef zeroext %vdd_bit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vdd_bit)
  %tobool.not = icmp eq i16 %vdd_bit, 0
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  %conv = zext i16 %vdd_bit to i32
  %sub.i = add nsw i32 %conv, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 0
  %mul2.i = mul i32 %sub.i, 100000
  %add.i = add i32 %mul2.i, 1900000
  %add3.i = add i32 %mul2.i, 2000000
  %min_uV.0 = select i1 %cmp.i, i32 1650000, i32 %add.i
  %storemerge.i = select i1 %cmp.i, i32 1950000, i32 %add3.i
  %call1 = tail call i32 @regulator_set_voltage(ptr noundef %supply, i32 noundef %min_uV.0, i32 noundef %storemerge.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %if.end.i
  %regulator_enabled = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 53
  %0 = ptrtoint ptr %regulator_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regulator_enabled, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @regulator_enable(ptr noundef %supply) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then4.do.end_crit_edge

if.then4.do.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %regulator_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %regulator_enabled, align 4
  br label %if.end23

if.else:                                          ; preds = %entry
  %regulator_enabled10 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 53
  %3 = ptrtoint ptr %regulator_enabled10 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regulator_enabled10, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool11.not = icmp eq i8 %4, 0
  br i1 %tobool11.not, label %if.else.if.end23_crit_edge, label %if.then12

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then12:                                        ; preds = %if.else
  %call13 = tail call i32 @regulator_disable(ptr noundef %supply) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.then12.do.end_crit_edge

if.then12.do.end_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %regulator_enabled10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %regulator_enabled10, align 4
  br label %if.end23

do.end:                                           ; preds = %if.then12.do.end_crit_edge, %if.then4.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %result.0 = phi i32 [ %call5, %if.then4.do.end_crit_edge ], [ %call1, %if.end.i.do.end_crit_edge ], [ %call13, %if.then12.do.end_crit_edge ]
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %result.0) #7
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then16, %if.else.if.end23_crit_edge, %if.then7, %land.lhs.true.if.end23_crit_edge
  %result.038 = phi i32 [ %result.0, %do.end ], [ 0, %land.lhs.true.if.end23_crit_edge ], [ 0, %if.then7 ], [ 0, %if.then16 ], [ 0, %if.else.if.end23_crit_edge ]
  ret i32 %result.038
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_regulator_set_vqmmc(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %2 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %4 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %signal_voltage, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb4
    i8 0, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %3, i32 noundef 1100000, i32 noundef 1300000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @regulator_get_voltage(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %call1.i)
  %cmp.i57 = icmp eq i32 %call1.i, 1200000
  br i1 %cmp.i57, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef 1200000, i32 noundef 1300000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.i.cleanup_crit_edge, label %if.end.i.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef 1100000, i32 noundef 1300000) #4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %call.i59 = tail call i32 @regulator_is_supported_voltage(ptr noundef %3, i32 noundef 1700000, i32 noundef 1950000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i60, label %sw.bb4.cleanup_crit_edge, label %if.end.i63

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i63:                                       ; preds = %sw.bb4
  %call1.i61 = tail call i32 @regulator_get_voltage(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %call1.i61)
  %cmp.i62 = icmp eq i32 %call1.i61, 1800000
  br i1 %cmp.i62, label %if.end.i63.cleanup_crit_edge, label %if.end3.i66

if.end.i63.cleanup_crit_edge:                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i66:                                      ; preds = %if.end.i63
  %call.i.i64 = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef 1800000, i32 noundef 1950000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %cmp.i.i65 = icmp eq i32 %call.i.i64, 0
  br i1 %cmp.i.i65, label %if.end3.i66.cleanup_crit_edge, label %if.end.i.i68

if.end3.i66.cleanup_crit_edge:                    ; preds = %if.end3.i66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i68:                                     ; preds = %if.end3.i66
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i67 = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef 1700000, i32 noundef 1950000) #4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %vdd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vdd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i71 = icmp eq i16 %8, 0
  br i1 %tobool.not.i71, label %sw.bb8.cleanup_crit_edge, label %if.end.i73

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i73:                                       ; preds = %sw.bb8
  %conv10 = zext i16 %8 to i32
  %sub.i = add nsw i32 %conv10, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i72 = icmp eq i32 %sub.i, 0
  %mul2.i = mul i32 %sub.i, 100000
  %add.i = add i32 %mul2.i, 1900000
  %add3.i = add i32 %mul2.i, 2000000
  %volt.1.ph = select i1 %cmp.i72, i32 1650000, i32 %add.i
  %max_uV.0.ph = select i1 %cmp.i72, i32 1950000, i32 %add3.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_regulator_set_vqmmc.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_regulator_set_vqmmc, %if.then18)) #4
          to label %do.end [label %if.then18], !srcloc !45

if.then18:                                        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_regulator_set_vqmmc.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %volt.1.ph, i32 noundef %max_uV.0.ph) #4
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end.i73
  %sub = add i32 %volt.1.ph, -300000
  %9 = tail call i32 @llvm.smax.i32(i32 %sub, i32 2700000)
  %add = add i32 %max_uV.0.ph, 200000
  %10 = tail call i32 @llvm.smin.i32(i32 %add, i32 3600000)
  %11 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vqmmc, align 4
  %call.i75 = tail call i32 @regulator_is_supported_voltage(ptr noundef %12, i32 noundef %9, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %do.end.if.end36_crit_edge, label %if.end.i79

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end.i79:                                       ; preds = %do.end
  %call1.i77 = tail call i32 @regulator_get_voltage(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i77, i32 %volt.1.ph)
  %cmp.i78 = icmp eq i32 %call1.i77, %volt.1.ph
  br i1 %cmp.i78, label %if.end.i79.cleanup_crit_edge, label %if.end3.i82

if.end.i79.cleanup_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i82:                                      ; preds = %if.end.i79
  %call.i.i80 = tail call i32 @regulator_set_voltage(ptr noundef %12, i32 noundef %volt.1.ph, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %cmp.i.i81 = icmp eq i32 %call.i.i80, 0
  br i1 %cmp.i.i81, label %if.end3.i82.cleanup_crit_edge, label %mmc_regulator_set_voltage_if_supported.exit86

if.end3.i82.cleanup_crit_edge:                    ; preds = %if.end3.i82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mmc_regulator_set_voltage_if_supported.exit86:    ; preds = %if.end3.i82
  %call1.i.i83 = tail call i32 @regulator_set_voltage(ptr noundef %12, i32 noundef %9, i32 noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i83)
  %cmp33 = icmp sgt i32 %call1.i.i83, -1
  br i1 %cmp33, label %mmc_regulator_set_voltage_if_supported.exit86.cleanup_crit_edge, label %mmc_regulator_set_voltage_if_supported.exit86.if.end36_crit_edge

mmc_regulator_set_voltage_if_supported.exit86.if.end36_crit_edge: ; preds = %mmc_regulator_set_voltage_if_supported.exit86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

mmc_regulator_set_voltage_if_supported.exit86.cleanup_crit_edge: ; preds = %mmc_regulator_set_voltage_if_supported.exit86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %mmc_regulator_set_voltage_if_supported.exit86.if.end36_crit_edge, %do.end.if.end36_crit_edge
  %13 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vqmmc, align 4
  %call.i87 = tail call i32 @regulator_is_supported_voltage(ptr noundef %14, i32 noundef 2700000, i32 noundef 3600000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.end36.cleanup_crit_edge, label %if.end.i91

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i91:                                       ; preds = %if.end36
  %call1.i89 = tail call i32 @regulator_get_voltage(ptr noundef %14) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i89, i32 %volt.1.ph)
  %cmp.i90 = icmp eq i32 %call1.i89, %volt.1.ph
  br i1 %cmp.i90, label %if.end.i91.cleanup_crit_edge, label %if.end3.i94

if.end.i91.cleanup_crit_edge:                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i94:                                      ; preds = %if.end.i91
  %call.i.i92 = tail call i32 @regulator_set_voltage(ptr noundef %14, i32 noundef %volt.1.ph, i32 noundef 3600000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92)
  %cmp.i.i93 = icmp eq i32 %call.i.i92, 0
  br i1 %cmp.i.i93, label %if.end3.i94.cleanup_crit_edge, label %if.end.i.i96

if.end3.i94.cleanup_crit_edge:                    ; preds = %if.end3.i94
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i96:                                     ; preds = %if.end3.i94
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i95 = tail call i32 @regulator_set_voltage(ptr noundef %14, i32 noundef 2700000, i32 noundef 3600000) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i96, %if.end3.i94.cleanup_crit_edge, %if.end.i91.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %mmc_regulator_set_voltage_if_supported.exit86.cleanup_crit_edge, %if.end3.i82.cleanup_crit_edge, %if.end.i79.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end.i.i68, %if.end3.i66.cleanup_crit_edge, %if.end.i63.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.end.i.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.i.i83, %mmc_regulator_set_voltage_if_supported.exit86.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ %call1.i.i, %if.end.i.i ], [ 0, %if.end3.i.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ 1, %if.end.i63.cleanup_crit_edge ], [ %call1.i.i67, %if.end.i.i68 ], [ 0, %if.end3.i66.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %if.end36.cleanup_crit_edge ], [ 1, %if.end.i91.cleanup_crit_edge ], [ %call1.i.i95, %if.end.i.i96 ], [ 0, %if.end3.i94.cleanup_crit_edge ], [ 0, %if.end3.i82.cleanup_crit_edge ], [ 1, %if.end.i79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_regulator_get_supply(ptr nocapture noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %call = tail call ptr @devm_regulator_get_optional(ptr noundef %1, ptr noundef nonnull @.str.8) #4
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %supply, align 16
  %call1 = tail call ptr @devm_regulator_get_optional(ptr noundef %1, ptr noundef nonnull @.str.9) #4
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %3 = ptrtoint ptr %vqmmc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %vqmmc, align 4
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %5, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_regulator_get_supply.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_regulator_get_supply, %if.then13)) #4
          to label %if.end25 [label %if.then13], !srcloc !45

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_regulator_get_supply.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.11) #4
  br label %if.end25

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @regulator_count_voltages(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i71 = icmp slt i32 %call.i, 0
  br i1 %cmp.i71, label %if.else.do.end23_crit_edge, label %for.cond.preheader.i

if.else.do.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

for.cond.preheader.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp136.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp136.not.i, label %for.cond.preheader.i.if.then7.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then7.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %result.037.i = phi i32 [ %result.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call2.i = tail call i32 @regulator_list_voltage(ptr noundef %5, i32 noundef %i.038.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 1
  br i1 %cmp3.i, label %for.body.i.for.inc.i_crit_edge, label %if.end5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %div34.i = udiv i32 %call2.i, 1000
  %call6.i = tail call i32 @mmc_vddrange_to_ocrmask(i32 noundef %div34.i, i32 noundef %div34.i) #4
  %or.i = or i32 %call6.i, %result.037.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.i.for.inc.i_crit_edge
  %result.1.i = phi i32 [ %result.037.i, %for.body.i.for.inc.i_crit_edge ], [ %or.i, %if.end5.i ]
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i)
  %tobool.not.i = icmp eq i32 %result.1.i, 0
  br i1 %tobool.not.i, label %for.end.i.if.then7.i_crit_edge, label %for.end.i.mmc_regulator_get_ocrmask.exit_crit_edge

for.end.i.mmc_regulator_get_ocrmask.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_regulator_get_ocrmask.exit

for.end.i.if.then7.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i

if.then7.i:                                       ; preds = %for.end.i.if.then7.i_crit_edge, %for.cond.preheader.i.if.then7.i_crit_edge
  %call8.i = tail call i32 @regulator_get_voltage(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 1
  br i1 %cmp9.i, label %if.then7.i.do.end23_crit_edge, label %if.end11.i

if.then7.i.do.end23_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  %div1235.i = udiv i32 %call8.i, 1000
  %call13.i = tail call i32 @mmc_vddrange_to_ocrmask(i32 noundef %div1235.i, i32 noundef %div1235.i) #4
  br label %mmc_regulator_get_ocrmask.exit

mmc_regulator_get_ocrmask.exit:                   ; preds = %if.end11.i, %for.end.i.mmc_regulator_get_ocrmask.exit_crit_edge
  %retval.0.i72 = phi i32 [ %result.1.i, %for.end.i.mmc_regulator_get_ocrmask.exit_crit_edge ], [ %call13.i, %if.end11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i72)
  %cmp18 = icmp sgt i32 %retval.0.i72, 0
  br i1 %cmp18, label %if.then19, label %mmc_regulator_get_ocrmask.exit.do.end23_crit_edge

mmc_regulator_get_ocrmask.exit.do.end23_crit_edge: ; preds = %mmc_regulator_get_ocrmask.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

if.then19:                                        ; preds = %mmc_regulator_get_ocrmask.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 8
  %6 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i72, ptr %ocr_avail, align 64
  br label %if.end25

do.end23:                                         ; preds = %mmc_regulator_get_ocrmask.exit.do.end23_crit_edge, %if.then7.i.do.end23_crit_edge, %if.else.do.end23_crit_edge
  %retval.0.i7277 = phi i32 [ %retval.0.i72, %mmc_regulator_get_ocrmask.exit.do.end23_crit_edge ], [ %call8.i, %if.then7.i.do.end23_crit_edge ], [ %call.i, %if.else.do.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i7277) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.then19, %if.then13, %do.body
  %7 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vqmmc, align 4
  %cmp.i73 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  %cmp33 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %cmp33, label %if.then29.cleanup_crit_edge, label %do.body36

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_regulator_get_supply.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_regulator_get_supply, %if.then48)) #4
          to label %cleanup [label %if.then48], !srcloc !45

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_regulator_get_supply.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.14) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.body36, %if.then29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %if.then.cleanup_crit_edge ], [ -517, %if.then29.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_count_voltages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_vddrange_to_ocrmask(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/regulator.c", i32 129, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mmc_regulator_set_ocr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mmc_regulator_set_ocr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mmc_regulator_set_ocr, !9, !"__ksymtab_mmc_regulator_set_ocr", i1 false, i1 false}
!9 = !{!"../drivers/mmc/core/regulator.c", i32 133, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/core/regulator.c", i32 200, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mmc_regulator_set_vqmmc.__UNIQUE_ID_ddebug301, !11, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!15 = !{ptr @__ksymtab_mmc_regulator_set_vqmmc, !16, !"__ksymtab_mmc_regulator_set_vqmmc", i1 false, i1 false}
!16 = !{!"../drivers/mmc/core/regulator.c", i32 224, i32 1}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mmc/core/regulator.c", i32 250, i32 54}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/core/regulator.c", i32 251, i32 55}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mmc/core/regulator.c", i32 256, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mmc_regulator_get_supply.__UNIQUE_ID_ddebug306, !22, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/core/regulator.c", i32 262, i32 4}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mmc_regulator_get_supply._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mmc_regulator_get_supply._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/core/regulator.c", i32 268, i32 3}
!32 = !{ptr @mmc_regulator_get_supply.__UNIQUE_ID_ddebug307, !31, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!33 = !{ptr @__ksymtab_mmc_regulator_get_supply, !34, !"__ksymtab_mmc_regulator_get_supply", i1 false, i1 false}
!34 = !{!"../drivers/mmc/core/regulator.c", i32 273, i32 1}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
!45 = !{i64 2148283040, i64 2148283045, i64 2148283058, i64 2148283102, i64 2148283136, i64 2148283157}
