; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdconcat.c_pt.bc'
source_filename = "../drivers/mtd/mtdconcat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mtd_concat_create\22, \22a\22\09"
module asm "\09.weak\09__crc_mtd_concat_create\09\09\09\09"
module asm "\09.long\09__crc_mtd_concat_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_concat_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_concat_create\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_concat_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mtd_concat_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_mtd_concat_destroy\09\09\09\09"
module asm "\09.long\09__crc_mtd_concat_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_concat_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_concat_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_concat_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.76 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_concat = type { %struct.mtd_info, i32, ptr }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }

@mtd_concat_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015Concatenating MTD devices:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtd_concat_create\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mtd/mtdconcat.c\00", [40 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr = internal global ptr @mtd_concat_create._entry, section ".printk_index", align 4
@mtd_concat_create._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\015(%d): \22%s\22\0A\00", [18 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr.5 = internal global ptr @mtd_concat_create._entry.3, section ".printk_index", align 4
@mtd_concat_create._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015into device \22%s\22\0A\00", [44 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr.8 = internal global ptr @mtd_concat_create._entry.6, section ".printk_index", align 4
@mtd_concat_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"memory allocation error while creating concatenated device \22%s\22\0A\00", [63 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr.11 = internal global ptr @mtd_concat_create._entry.9, section ".printk_index", align 4
@mtd_concat_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Incompatible device type on \22%s\22\0A\00", [62 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr.14 = internal global ptr @mtd_concat_create._entry.12, section ".printk_index", align 4
@mtd_concat_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Incompatible device flags on \22%s\22\0A\00", [61 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr.17 = internal global ptr @mtd_concat_create._entry.15, section ".printk_index", align 4
@mtd_concat_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Incompatible OOB or ECC data on \22%s\22\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr.20 = internal global ptr @mtd_concat_create._entry.18, section ".printk_index", align 4
@mtd_concat_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"memory allocation error while creating erase region list for device \22%s\22\0A\00", [54 x i8] zeroinitializer }, align 32
@mtd_concat_create._entry_ptr.23 = internal global ptr @mtd_concat_create._entry.21, section ".printk_index", align 4
@__kstrtab_mtd_concat_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_concat_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_concat_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_concat_create to i32), ptr @__kstrtab_mtd_concat_create, ptr @__kstrtabns_mtd_concat_create }, section "___ksymtab+mtd_concat_create", align 4
@__kstrtab_mtd_concat_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_concat_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_concat_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_concat_destroy to i32), ptr @__kstrtab_mtd_concat_destroy, ptr @__kstrtabns_mtd_concat_destroy }, section "___ksymtab+mtd_concat_destroy", align 4
@__UNIQUE_ID_file272 = internal constant [25 x i8] c"mtd.file=drivers/mtd/mtd\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [16 x i8] c"mtd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [44 x i8] c"mtd.author=Robert Kaiser <rkaiser@sysgo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description275 = internal constant [65 x i8] c"mtd.description=Generic support for concatenating of MTD devices\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@concat_panic_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013mtdconcat: Cannot write from panic without panic_write\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"concat_panic_write\00", [45 x i8] zeroinitializer }, align 32
@concat_panic_write._entry_ptr = internal global ptr @concat_panic_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 649, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 651, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 652, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 658, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 709, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 721, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 748, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 831, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [27 x i8] c"../drivers/mtd/mtdconcat.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 127, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__ksymtab_mtd_concat_create, ptr @__ksymtab_mtd_concat_destroy, ptr @concat_panic_write._entry, ptr @concat_panic_write._entry_ptr, ptr @mtd_concat_create._entry, ptr @mtd_concat_create._entry.12, ptr @mtd_concat_create._entry.15, ptr @mtd_concat_create._entry.18, ptr @mtd_concat_create._entry.21, ptr @mtd_concat_create._entry.3, ptr @mtd_concat_create._entry.6, ptr @mtd_concat_create._entry.9, ptr @mtd_concat_create._entry_ptr, ptr @mtd_concat_create._entry_ptr.11, ptr @mtd_concat_create._entry_ptr.14, ptr @mtd_concat_create._entry_ptr.17, ptr @mtd_concat_create._entry_ptr.20, ptr @mtd_concat_create._entry_ptr.23, ptr @mtd_concat_create._entry_ptr.5, ptr @mtd_concat_create._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_concat_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @concat_panic_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtd_concat_create(ptr nocapture noundef readonly %subdev, i32 noundef %num_devs, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_devs)
  %cmp1679 = icmp sgt i32 %num_devs, 0
  br i1 %cmp1679, label %entry.do.end3_crit_edge, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

entry.do.end3_crit_edge:                          ; preds = %entry
  br label %do.end3

do.end3:                                          ; preds = %do.end3.do.end3_crit_edge, %entry.do.end3_crit_edge
  %i.01680 = phi i32 [ %inc, %do.end3.do.end3_crit_edge ], [ 0, %entry.do.end3_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %subdev, i32 %i.01680
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %name5 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name5, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.01680, ptr noundef %3) #10
  %inc = add nuw nsw i32 %i.01680, 1
  %exitcond.not = icmp eq i32 %inc, %num_devs
  br i1 %exitcond.not, label %do.end3.do.end9_crit_edge, label %do.end3.do.end3_crit_edge

do.end3.do.end3_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end3.do.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end9:                                          ; preds = %do.end3.do.end9_crit_edge, %entry.do.end9_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #10
  %mul = shl i32 %num_devs, 2
  %add = add i32 %mul, 1416
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end15, label %if.end

do.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name) #10
  br label %cleanup1022

if.end:                                           ; preds = %do.end9
  %add.ptr = getelementptr %struct.mtd_concat, ptr %call9.i.i, i32 1
  %subdev18 = getelementptr inbounds %struct.mtd_concat, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %subdev18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %subdev18, align 4
  %5 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 8
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %call9.i.i, align 128
  %flags = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %flags23 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags23, align 4
  %13 = load ptr, ptr %subdev, align 4
  %size25 = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %size25 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size25, align 8
  %size27 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %size27 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %size27, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erasesize, align 8
  %erasesize30 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %erasesize30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %erasesize30, align 16
  %20 = load ptr, ptr %subdev, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  %writesize33 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %writesize33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %writesize33, align 4
  br i1 %cmp1679, label %if.end.for.body36_crit_edge, label %if.end.for.end45_crit_edge

if.end.for.end45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

if.end.for.body36_crit_edge:                      ; preds = %if.end
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %if.end.for.body36_crit_edge
  %i.11683 = phi i32 [ %inc44, %for.body36.for.body36_crit_edge ], [ 0, %if.end.for.body36_crit_edge ]
  %max_writebufsize.01682 = phi i32 [ %28, %for.body36.for.body36_crit_edge ], [ 0, %if.end.for.body36_crit_edge ]
  %arrayidx37 = getelementptr ptr, ptr %subdev, i32 %i.11683
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx37, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %writebufsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writebufsize, align 8
  %28 = tail call i32 @llvm.umax.i32(i32 %max_writebufsize.01682, i32 %27)
  %inc44 = add nuw nsw i32 %i.11683, 1
  %exitcond1728.not = icmp eq i32 %inc44, %num_devs
  br i1 %exitcond1728.not, label %for.body36.for.end45_crit_edge, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36

for.body36.for.end45_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

for.end45:                                        ; preds = %for.body36.for.end45_crit_edge, %if.end.for.end45_crit_edge
  %max_writebufsize.0.lcssa = phi i32 [ 0, %if.end.for.end45_crit_edge ], [ %28, %for.body36.for.end45_crit_edge ]
  %writebufsize47 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %writebufsize47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %max_writebufsize.0.lcssa, ptr %writebufsize47, align 8
  %30 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %subdev, align 4
  %subpage_sft = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 53
  %32 = ptrtoint ptr %subpage_sft to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %subpage_sft, align 4
  %subpage_sft50 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 53
  %34 = ptrtoint ptr %subpage_sft50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %subpage_sft50, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 6
  %35 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oobsize, align 4
  %oobsize53 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %oobsize53 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %oobsize53, align 4
  %38 = load ptr, ptr %subdev, align 4
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oobavail, align 8
  %oobavail56 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %oobavail56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %oobavail56, align 32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.end45
  %mtd.addr.0.i = phi ptr [ %38, %for.end45 ], [ %43, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %_writev = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 36
  %44 = ptrtoint ptr %_writev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_writev, align 4
  %tobool59.not = icmp eq ptr %45, null
  br i1 %tobool59.not, label %mtd_get_master.exit.if.end63_crit_edge, label %if.then60

mtd_get_master.exit.if.end63_crit_edge:           ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then60:                                        ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  %_writev62 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 36
  %46 = ptrtoint ptr %_writev62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @concat_writev, ptr %_writev62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %mtd_get_master.exit.if.end63_crit_edge
  %_read_oob = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 27
  %47 = ptrtoint ptr %_read_oob to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_read_oob, align 8
  %tobool64.not = icmp eq ptr %48, null
  br i1 %tobool64.not, label %if.end63.if.end68_crit_edge, label %if.then65

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %_read_oob67 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 27
  %49 = ptrtoint ptr %_read_oob67 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @concat_read_oob, ptr %_read_oob67, align 16
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end63.if.end68_crit_edge
  %_write_oob = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 28
  %50 = ptrtoint ptr %_write_oob to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_write_oob, align 4
  %tobool69.not = icmp eq ptr %51, null
  br i1 %tobool69.not, label %if.end68.if.end73_crit_edge, label %if.then70

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %_write_oob72 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 28
  %52 = ptrtoint ptr %_write_oob72 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @concat_write_oob, ptr %_write_oob72, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end68.if.end73_crit_edge
  %_block_isbad = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 42
  %53 = ptrtoint ptr %_block_isbad to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_block_isbad, align 4
  %tobool74.not = icmp eq ptr %54, null
  br i1 %tobool74.not, label %if.end73.if.end78_crit_edge, label %if.then75

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %_block_isbad77 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 42
  %55 = ptrtoint ptr %_block_isbad77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @concat_block_isbad, ptr %_block_isbad77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end73.if.end78_crit_edge
  %_block_markbad = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 43
  %56 = ptrtoint ptr %_block_markbad to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_block_markbad, align 8
  %tobool79.not = icmp eq ptr %57, null
  br i1 %tobool79.not, label %if.end78.if.end83_crit_edge, label %if.then80

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %_block_markbad82 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 43
  %58 = ptrtoint ptr %_block_markbad82 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @concat_block_markbad, ptr %_block_markbad82, align 16
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end78.if.end83_crit_edge
  %_panic_write = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 26
  %59 = ptrtoint ptr %_panic_write to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %_panic_write, align 4
  %tobool84.not = icmp eq ptr %60, null
  br i1 %tobool84.not, label %if.end83.if.end88_crit_edge, label %if.then85

if.end83.if.end88_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %_panic_write87 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 26
  %61 = ptrtoint ptr %_panic_write87 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @concat_panic_write, ptr %_panic_write87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end83.if.end88_crit_edge
  %_read = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 24
  %62 = ptrtoint ptr %_read to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_read, align 4
  %tobool89.not = icmp eq ptr %63, null
  br i1 %tobool89.not, label %if.end88.if.end93_crit_edge, label %if.then90

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %_read92 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 24
  %64 = ptrtoint ptr %_read92 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @concat_read, ptr %_read92, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end88.if.end93_crit_edge
  %_write = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 25
  %65 = ptrtoint ptr %_write to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_write, align 8
  %tobool94.not = icmp eq ptr %66, null
  br i1 %tobool94.not, label %if.end93.if.end98_crit_edge, label %if.then95

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %_write97 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 25
  %67 = ptrtoint ptr %_write97 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @concat_write, ptr %_write97, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end93.if.end98_crit_edge
  %68 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %subdev, align 4
  %badblocks = getelementptr inbounds %struct.mtd_info, ptr %69, i32 0, i32 52, i32 2
  %70 = ptrtoint ptr %badblocks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %badblocks, align 4
  %badblocks102 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 52, i32 2
  %72 = ptrtoint ptr %badblocks102 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %badblocks102, align 4
  %73 = ptrtoint ptr %subdev18 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %subdev18, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %69, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_devs)
  %cmp1071684 = icmp sgt i32 %num_devs, 1
  br i1 %cmp1071684, label %for.body108.lr.ph, label %if.end98.for.end221_crit_edge

if.end98.for.end221_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end221

for.body108.lr.ph:                                ; preds = %if.end98
  %_read_oob187 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 27
  %_write_oob197 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 28
  br label %for.body108

for.body108:                                      ; preds = %if.end215.for.body108_crit_edge, %for.body108.lr.ph
  %i.21685 = phi i32 [ 1, %for.body108.lr.ph ], [ %inc220, %if.end215.for.body108_crit_edge ]
  %76 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %call9.i.i, align 128
  %arrayidx111 = getelementptr ptr, ptr %subdev, i32 %i.21685
  %78 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx111, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %81)
  %cmp114.not = icmp eq i8 %77, %81
  br i1 %cmp114.not, label %if.end124, label %if.then116

if.then116:                                       ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %82 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx111, align 4
  %name122 = getelementptr inbounds %struct.mtd_info, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %name122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name122, align 8
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %85) #10
  br label %cleanup1022

if.end124:                                        ; preds = %for.body108
  %86 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags23, align 4
  %flags128 = getelementptr inbounds %struct.mtd_info, ptr %79, i32 0, i32 1
  %88 = ptrtoint ptr %flags128 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp129.not = icmp eq i32 %87, %89
  br i1 %cmp129.not, label %if.end124.if.end151_crit_edge, label %if.then131

if.end124.if.end151_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then131:                                       ; preds = %if.end124
  %xor = xor i32 %89, %87
  %and = and i32 %xor, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool136.not = icmp eq i32 %and, 0
  br i1 %tobool136.not, label %if.else, label %if.then137

if.then137:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %90 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx111, align 4
  %name143 = getelementptr inbounds %struct.mtd_info, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %name143 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name143, align 8
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %93) #10
  br label %cleanup1022

if.else:                                          ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #9
  %and147 = and i32 %89, 1024
  %or = or i32 %and147, %87
  %94 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or, ptr %flags23, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else, %if.end124.if.end151_crit_edge
  %95 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx111, align 4
  br label %while.cond.i1488

while.cond.i1488:                                 ; preds = %while.cond.i1488.while.cond.i1488_crit_edge, %if.end151
  %mtd.addr.0.i1485 = phi ptr [ %96, %if.end151 ], [ %98, %while.cond.i1488.while.cond.i1488_crit_edge ]
  %parent.i1486 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i1485, i32 0, i32 62
  %97 = ptrtoint ptr %parent.i1486 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parent.i1486, align 4
  %tobool.not.i1487 = icmp eq ptr %98, null
  br i1 %tobool.not.i1487, label %mtd_get_master.exit1489, label %while.cond.i1488.while.cond.i1488_crit_edge

while.cond.i1488.while.cond.i1488_crit_edge:      ; preds = %while.cond.i1488
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i1488

mtd_get_master.exit1489:                          ; preds = %while.cond.i1488
  %size155 = getelementptr inbounds %struct.mtd_info, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %size155 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %size155, align 8
  %101 = ptrtoint ptr %size27 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %size27, align 8
  %add158 = add i64 %102, %100
  store i64 %add158, ptr %size27, align 8
  %badblocks161 = getelementptr inbounds %struct.mtd_info, ptr %96, i32 0, i32 52, i32 2
  %103 = ptrtoint ptr %badblocks161 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %badblocks161, align 4
  %105 = ptrtoint ptr %badblocks102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %badblocks102, align 4
  %add165 = add i32 %106, %104
  store i32 %add165, ptr %badblocks102, align 4
  %107 = ptrtoint ptr %writesize33 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %writesize33, align 4
  %109 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx111, align 4
  %writesize169 = getelementptr inbounds %struct.mtd_info, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %writesize169 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %writesize169, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %112)
  %cmp170.not = icmp eq i32 %108, %112
  br i1 %cmp170.not, label %lor.lhs.false, label %mtd_get_master.exit1489.if.then207_crit_edge

mtd_get_master.exit1489.if.then207_crit_edge:     ; preds = %mtd_get_master.exit1489
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then207

lor.lhs.false:                                    ; preds = %mtd_get_master.exit1489
  %113 = ptrtoint ptr %subpage_sft50 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %subpage_sft50, align 4
  %subpage_sft175 = getelementptr inbounds %struct.mtd_info, ptr %110, i32 0, i32 53
  %115 = ptrtoint ptr %subpage_sft175 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %subpage_sft175, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp176.not = icmp eq i32 %114, %116
  br i1 %cmp176.not, label %lor.lhs.false178, label %lor.lhs.false.if.then207_crit_edge

lor.lhs.false.if.then207_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then207

lor.lhs.false178:                                 ; preds = %lor.lhs.false
  %117 = ptrtoint ptr %oobsize53 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %oobsize53, align 4
  %oobsize182 = getelementptr inbounds %struct.mtd_info, ptr %110, i32 0, i32 6
  %119 = ptrtoint ptr %oobsize182 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %oobsize182, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp183.not = icmp eq i32 %118, %120
  br i1 %cmp183.not, label %lor.lhs.false185, label %lor.lhs.false178.if.then207_crit_edge

lor.lhs.false178.if.then207_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then207

lor.lhs.false185:                                 ; preds = %lor.lhs.false178
  %121 = ptrtoint ptr %_read_oob187 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %_read_oob187, align 16
  %tobool188.not = icmp ne ptr %122, null
  %_read_oob189 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i1485, i32 0, i32 27
  %123 = ptrtoint ptr %_read_oob189 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %_read_oob189, align 8
  %tobool190.not = icmp eq ptr %124, null
  %cmp193.not = xor i1 %tobool188.not, %tobool190.not
  br i1 %cmp193.not, label %lor.lhs.false195, label %lor.lhs.false185.if.then207_crit_edge

lor.lhs.false185.if.then207_crit_edge:            ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then207

lor.lhs.false195:                                 ; preds = %lor.lhs.false185
  %125 = ptrtoint ptr %_write_oob197 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %_write_oob197, align 4
  %tobool198.not = icmp ne ptr %126, null
  %_write_oob201 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i1485, i32 0, i32 28
  %127 = ptrtoint ptr %_write_oob201 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %_write_oob201, align 4
  %tobool202.not = icmp eq ptr %128, null
  %cmp205.not = xor i1 %tobool198.not, %tobool202.not
  br i1 %cmp205.not, label %if.end215, label %lor.lhs.false195.if.then207_crit_edge

lor.lhs.false195.if.then207_crit_edge:            ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then207

if.then207:                                       ; preds = %lor.lhs.false195.if.then207_crit_edge, %lor.lhs.false185.if.then207_crit_edge, %lor.lhs.false178.if.then207_crit_edge, %lor.lhs.false.if.then207_crit_edge, %mtd_get_master.exit1489.if.then207_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %129 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx111, align 4
  %name213 = getelementptr inbounds %struct.mtd_info, ptr %130, i32 0, i32 13
  %131 = ptrtoint ptr %name213 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name213, align 8
  %call214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %132) #10
  br label %cleanup1022

if.end215:                                        ; preds = %lor.lhs.false195
  %133 = ptrtoint ptr %subdev18 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %subdev18, align 4
  %arrayidx218 = getelementptr ptr, ptr %134, i32 %i.21685
  %135 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %110, ptr %arrayidx218, align 4
  %inc220 = add nuw nsw i32 %i.21685, 1
  %exitcond1729.not = icmp eq i32 %inc220, %num_devs
  br i1 %exitcond1729.not, label %if.end215.for.end221_crit_edge, label %if.end215.for.body108_crit_edge

if.end215.for.body108_crit_edge:                  ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body108

if.end215.for.end221_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end221

for.end221:                                       ; preds = %if.end215.for.end221_crit_edge, %if.end98.for.end221_crit_edge
  %136 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %subdev, align 4
  %ooblayout = getelementptr inbounds %struct.mtd_info, ptr %137, i32 0, i32 15
  %138 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ooblayout, align 8
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 15
  %140 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %ooblayout1.i, align 64
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %call9.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %num_subdev to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %num_devs, ptr %num_subdev, align 128
  %name225 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 13
  %142 = ptrtoint ptr %name225 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %name, ptr %name225, align 8
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 21
  %143 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @concat_erase, ptr %_erase, align 8
  %_sync = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 37
  %144 = ptrtoint ptr %_sync to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @concat_sync, ptr %_sync, align 8
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 38
  %145 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @concat_lock, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 39
  %146 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @concat_unlock, ptr %_unlock, align 32
  %_is_locked = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 40
  %147 = ptrtoint ptr %_is_locked to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @concat_is_locked, ptr %_is_locked, align 4
  %_suspend = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 45
  %148 = ptrtoint ptr %_suspend to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @concat_suspend, ptr %_suspend, align 8
  %_resume = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 46
  %149 = ptrtoint ptr %_resume to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @concat_resume, ptr %_resume, align 4
  %150 = load ptr, ptr %subdev, align 4
  %erasesize234 = getelementptr inbounds %struct.mtd_info, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %erasesize234 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %erasesize234, align 8
  br i1 %cmp1679, label %for.end221.for.body238_crit_edge, label %for.end221.if.then288_crit_edge

for.end221.if.then288_crit_edge:                  ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then288

for.end221.for.body238_crit_edge:                 ; preds = %for.end221
  br label %for.body238

for.body238:                                      ; preds = %for.inc283.for.body238_crit_edge, %for.end221.for.body238_crit_edge
  %i.31698 = phi i32 [ %inc284, %for.inc283.for.body238_crit_edge ], [ 0, %for.end221.for.body238_crit_edge ]
  %max_erasesize.01697 = phi i32 [ %max_erasesize.3, %for.inc283.for.body238_crit_edge ], [ %152, %for.end221.for.body238_crit_edge ]
  %curr_erasesize.01696 = phi i32 [ %curr_erasesize.3, %for.inc283.for.body238_crit_edge ], [ %152, %for.end221.for.body238_crit_edge ]
  %num_erase_region.01695 = phi i32 [ %num_erase_region.3, %for.inc283.for.body238_crit_edge ], [ 1, %for.end221.for.body238_crit_edge ]
  %arrayidx239 = getelementptr ptr, ptr %subdev, i32 %i.31698
  %153 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx239, align 4
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %154, i32 0, i32 19
  %155 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp240 = icmp eq i32 %156, 0
  br i1 %cmp240, label %if.then242, label %for.cond257.preheader

for.cond257.preheader:                            ; preds = %for.body238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp2601686 = icmp sgt i32 %156, 0
  br i1 %cmp2601686, label %for.body262.lr.ph, label %for.cond257.preheader.for.inc283_crit_edge

for.cond257.preheader.for.inc283_crit_edge:       ; preds = %for.cond257.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc283

for.body262.lr.ph:                                ; preds = %for.cond257.preheader
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %154, i32 0, i32 20
  %157 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %eraseregions, align 4
  br label %for.body262

if.then242:                                       ; preds = %for.body238
  %erasesize244 = getelementptr inbounds %struct.mtd_info, ptr %154, i32 0, i32 3
  %159 = ptrtoint ptr %erasesize244 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %erasesize244, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %curr_erasesize.01696)
  %cmp245.not = icmp eq i32 %160, %curr_erasesize.01696
  br i1 %cmp245.not, label %if.then242.for.inc283_crit_edge, label %if.then247

if.then242.for.inc283_crit_edge:                  ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc283

if.then247:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #9
  %inc248 = add i32 %num_erase_region.01695, 1
  %161 = tail call i32 @llvm.umax.i32(i32 %160, i32 %max_erasesize.01697)
  br label %for.inc283

for.body262:                                      ; preds = %for.body262.for.body262_crit_edge, %for.body262.lr.ph
  %max_erasesize.11690 = phi i32 [ %max_erasesize.01697, %for.body262.lr.ph ], [ %max_erasesize.2, %for.body262.for.body262_crit_edge ]
  %curr_erasesize.11689 = phi i32 [ %curr_erasesize.01696, %for.body262.lr.ph ], [ %163, %for.body262.for.body262_crit_edge ]
  %j.01688 = phi i32 [ 0, %for.body262.lr.ph ], [ %inc280, %for.body262.for.body262_crit_edge ]
  %num_erase_region.11687 = phi i32 [ %num_erase_region.01695, %for.body262.lr.ph ], [ %num_erase_region.2, %for.body262.for.body262_crit_edge ]
  %erasesize265 = getelementptr %struct.mtd_erase_region_info, ptr %158, i32 %j.01688, i32 1
  %162 = ptrtoint ptr %erasesize265 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %erasesize265, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %curr_erasesize.11689)
  %cmp266.not = icmp eq i32 %163, %curr_erasesize.11689
  %164 = tail call i32 @llvm.umax.i32(i32 %163, i32 %max_erasesize.11690)
  %not.cmp266.not = xor i1 %cmp266.not, true
  %inc269 = zext i1 %not.cmp266.not to i32
  %num_erase_region.2 = add i32 %num_erase_region.11687, %inc269
  %max_erasesize.2 = select i1 %cmp266.not, i32 %max_erasesize.11690, i32 %164
  %inc280 = add nuw nsw i32 %j.01688, 1
  %exitcond1730.not = icmp eq i32 %inc280, %156
  br i1 %exitcond1730.not, label %for.body262.for.inc283_crit_edge, label %for.body262.for.body262_crit_edge

for.body262.for.body262_crit_edge:                ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body262

for.body262.for.inc283_crit_edge:                 ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc283

for.inc283:                                       ; preds = %for.body262.for.inc283_crit_edge, %if.then247, %if.then242.for.inc283_crit_edge, %for.cond257.preheader.for.inc283_crit_edge
  %num_erase_region.3 = phi i32 [ %num_erase_region.01695, %if.then242.for.inc283_crit_edge ], [ %inc248, %if.then247 ], [ %num_erase_region.01695, %for.cond257.preheader.for.inc283_crit_edge ], [ %num_erase_region.2, %for.body262.for.inc283_crit_edge ]
  %curr_erasesize.3 = phi i32 [ %curr_erasesize.01696, %if.then242.for.inc283_crit_edge ], [ %160, %if.then247 ], [ %curr_erasesize.01696, %for.cond257.preheader.for.inc283_crit_edge ], [ %163, %for.body262.for.inc283_crit_edge ]
  %max_erasesize.3 = phi i32 [ %max_erasesize.01697, %if.then242.for.inc283_crit_edge ], [ %161, %if.then247 ], [ %max_erasesize.01697, %for.cond257.preheader.for.inc283_crit_edge ], [ %max_erasesize.2, %for.body262.for.inc283_crit_edge ]
  %inc284 = add nuw nsw i32 %i.31698, 1
  %exitcond1731.not = icmp eq i32 %inc284, %num_devs
  br i1 %exitcond1731.not, label %for.end285, label %for.inc283.for.body238_crit_edge

for.inc283.for.body238_crit_edge:                 ; preds = %for.inc283
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body238

for.end285:                                       ; preds = %for.inc283
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_erase_region.3)
  %cmp286 = icmp eq i32 %num_erase_region.3, 1
  br i1 %cmp286, label %for.end285.if.then288_crit_edge, label %if.else293

for.end285.if.then288_crit_edge:                  ; preds = %for.end285
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then288

if.then288:                                       ; preds = %for.end285.if.then288_crit_edge, %for.end221.if.then288_crit_edge
  %curr_erasesize.0.lcssa1737 = phi i32 [ %curr_erasesize.3, %for.end285.if.then288_crit_edge ], [ %152, %for.end221.if.then288_crit_edge ]
  %165 = ptrtoint ptr %erasesize30 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %curr_erasesize.0.lcssa1737, ptr %erasesize30, align 16
  %numeraseregions292 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 19
  %166 = ptrtoint ptr %numeraseregions292 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %numeraseregions292, align 16
  br label %cleanup1022

if.else293:                                       ; preds = %for.end285
  %167 = ptrtoint ptr %erasesize30 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %max_erasesize.3, ptr %erasesize30, align 16
  %numeraseregions297 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 19
  %168 = ptrtoint ptr %numeraseregions297 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %num_erase_region.3, ptr %numeraseregions297, align 16
  %169 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_erase_region.3, i32 24) #7
  %170 = extractvalue { i32, i1 } %169, 1
  br i1 %170, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !59

kmalloc_array.exit.thread:                        ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #9
  %eraseregions3001596 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 20
  %171 = ptrtoint ptr %eraseregions3001596 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %eraseregions3001596, align 4
  br label %cleanup.thread

if.end7.i:                                        ; preds = %if.else293
  %172 = extractvalue { i32, i1 } %169, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %172, i32 noundef 3264) #11
  %eraseregions300 = getelementptr inbounds %struct.mtd_info, ptr %call9.i.i, i32 0, i32 20
  %173 = ptrtoint ptr %eraseregions300 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call8.i, ptr %eraseregions300, align 4
  %tobool301.not = icmp eq ptr %call8.i, null
  br i1 %tobool301.not, label %if.end7.i.cleanup.thread_crit_edge, label %if.end308

if.end7.i.cleanup.thread_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end7.i.cleanup.thread_crit_edge, %kmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %call307 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name) #10
  br label %cleanup1022

if.end308:                                        ; preds = %if.end7.i
  %174 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %subdev, align 4
  %erasesize310 = getelementptr inbounds %struct.mtd_info, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %erasesize310 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %erasesize310, align 8
  br i1 %cmp1679, label %if.end308.for.body314_crit_edge, label %if.end308.for.end790_crit_edge

if.end308.for.end790_crit_edge:                   ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end790

if.end308.for.body314_crit_edge:                  ; preds = %if.end308
  br label %for.body314

for.body314:                                      ; preds = %for.inc788.for.body314_crit_edge, %if.end308.for.body314_crit_edge
  %i.41719 = phi i32 [ %inc789, %for.inc788.for.body314_crit_edge ], [ 0, %if.end308.for.body314_crit_edge ]
  %curr_erasesize.41718 = phi i32 [ %curr_erasesize.8, %for.inc788.for.body314_crit_edge ], [ %177, %if.end308.for.body314_crit_edge ]
  %position.01717 = phi i64 [ %position.2, %for.inc788.for.body314_crit_edge ], [ 0, %if.end308.for.body314_crit_edge ]
  %begin.01716 = phi i64 [ %begin.4, %for.inc788.for.body314_crit_edge ], [ 0, %if.end308.for.body314_crit_edge ]
  %erase_region_p.01715 = phi ptr [ %erase_region_p.4, %for.inc788.for.body314_crit_edge ], [ %call8.i, %if.end308.for.body314_crit_edge ]
  %arrayidx315 = getelementptr ptr, ptr %subdev, i32 %i.41719
  %178 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx315, align 4
  %numeraseregions316 = getelementptr inbounds %struct.mtd_info, ptr %179, i32 0, i32 19
  %180 = ptrtoint ptr %numeraseregions316 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %numeraseregions316, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp317 = icmp eq i32 %181, 0
  br i1 %cmp317, label %if.then319, label %for.cond531.preheader

for.cond531.preheader:                            ; preds = %for.body314
  %182 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx315, align 4
  %numeraseregions5331702 = getelementptr inbounds %struct.mtd_info, ptr %183, i32 0, i32 19
  %184 = ptrtoint ptr %numeraseregions5331702 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %numeraseregions5331702, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp5341703 = icmp sgt i32 %185, 0
  br i1 %cmp5341703, label %for.cond531.preheader.for.body536_crit_edge, label %for.cond531.preheader.for.inc788_crit_edge

for.cond531.preheader.for.inc788_crit_edge:       ; preds = %for.cond531.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc788

for.cond531.preheader.for.body536_crit_edge:      ; preds = %for.cond531.preheader
  br label %for.body536

if.then319:                                       ; preds = %for.body314
  %erasesize321 = getelementptr inbounds %struct.mtd_info, ptr %179, i32 0, i32 3
  %186 = ptrtoint ptr %erasesize321 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %erasesize321, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %curr_erasesize.41718)
  %cmp322.not = icmp eq i32 %187, %curr_erasesize.41718
  br i1 %cmp322.not, label %if.then319.if.end525_crit_edge, label %if.then324

if.then319.if.end525_crit_edge:                   ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end525

if.then324:                                       ; preds = %if.then319
  %188 = ptrtoint ptr %erase_region_p.01715 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %begin.01716, ptr %erase_region_p.01715, align 8
  %erasesize325 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %erase_region_p.01715, i32 0, i32 1
  %189 = ptrtoint ptr %erasesize325 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %curr_erasesize.41718, ptr %erasesize325, align 8
  %sub = sub i64 %position.01717, %begin.01716
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp503 = icmp ult i64 %sub, 4294967296
  br i1 %cmp503, label %if.then510, label %if.else516, !prof !60

if.then510:                                       ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #9
  %conv511 = trunc i64 %sub to i32
  %div514 = udiv i32 %conv511, %curr_erasesize.41718
  br label %if.end520

if.else516:                                       ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #9
  %190 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %curr_erasesize.41718, i64 %sub) #12, !srcloc !61
  %asmresult1.i = extractvalue { i64, i64 } %190, 1
  %extract.t1675 = trunc i64 %asmresult1.i to i32
  br label %if.end520

if.end520:                                        ; preds = %if.else516, %if.then510
  %tmp64.0.off0 = phi i32 [ %div514, %if.then510 ], [ %extract.t1675, %if.else516 ]
  %numblocks = getelementptr inbounds %struct.mtd_erase_region_info, ptr %erase_region_p.01715, i32 0, i32 2
  %191 = ptrtoint ptr %numblocks to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %tmp64.0.off0, ptr %numblocks, align 4
  %192 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx315, align 4
  %erasesize524 = getelementptr inbounds %struct.mtd_info, ptr %193, i32 0, i32 3
  %194 = ptrtoint ptr %erasesize524 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %erasesize524, align 8
  %incdec.ptr = getelementptr %struct.mtd_erase_region_info, ptr %erase_region_p.01715, i32 1
  br label %if.end525

if.end525:                                        ; preds = %if.end520, %if.then319.if.end525_crit_edge
  %erase_region_p.1 = phi ptr [ %incdec.ptr, %if.end520 ], [ %erase_region_p.01715, %if.then319.if.end525_crit_edge ]
  %begin.1 = phi i64 [ %position.01717, %if.end520 ], [ %begin.01716, %if.then319.if.end525_crit_edge ]
  %curr_erasesize.5 = phi i32 [ %195, %if.end520 ], [ %curr_erasesize.41718, %if.then319.if.end525_crit_edge ]
  %196 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx315, align 4
  %size527 = getelementptr inbounds %struct.mtd_info, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %size527 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %size527, align 8
  %add528 = add i64 %199, %position.01717
  br label %for.inc788

for.body536:                                      ; preds = %if.end775.for.body536_crit_edge, %for.cond531.preheader.for.body536_crit_edge
  %200 = phi ptr [ %216, %if.end775.for.body536_crit_edge ], [ %183, %for.cond531.preheader.for.body536_crit_edge ]
  %j530.01708 = phi i32 [ %inc785, %if.end775.for.body536_crit_edge ], [ 0, %for.cond531.preheader.for.body536_crit_edge ]
  %curr_erasesize.61707 = phi i32 [ %curr_erasesize.7, %if.end775.for.body536_crit_edge ], [ %curr_erasesize.41718, %for.cond531.preheader.for.body536_crit_edge ]
  %position.11706 = phi i64 [ %add783, %if.end775.for.body536_crit_edge ], [ %position.01717, %for.cond531.preheader.for.body536_crit_edge ]
  %begin.21705 = phi i64 [ %begin.3, %if.end775.for.body536_crit_edge ], [ %begin.01716, %for.cond531.preheader.for.body536_crit_edge ]
  %erase_region_p.21704 = phi ptr [ %erase_region_p.3, %if.end775.for.body536_crit_edge ], [ %erase_region_p.01715, %for.cond531.preheader.for.body536_crit_edge ]
  %eraseregions538 = getelementptr inbounds %struct.mtd_info, ptr %200, i32 0, i32 20
  %201 = ptrtoint ptr %eraseregions538 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %eraseregions538, align 4
  %erasesize540 = getelementptr %struct.mtd_erase_region_info, ptr %202, i32 %j530.01708, i32 1
  %203 = ptrtoint ptr %erasesize540 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %erasesize540, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %204, i32 %curr_erasesize.61707)
  %cmp541.not = icmp eq i32 %204, %curr_erasesize.61707
  br i1 %cmp541.not, label %for.body536.if.end775_crit_edge, label %if.then543

for.body536.if.end775_crit_edge:                  ; preds = %for.body536
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end775

if.then543:                                       ; preds = %for.body536
  %205 = ptrtoint ptr %erase_region_p.21704 to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %begin.21705, ptr %erase_region_p.21704, align 8
  %erasesize545 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %erase_region_p.21704, i32 0, i32 1
  %206 = ptrtoint ptr %erasesize545 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %curr_erasesize.61707, ptr %erasesize545, align 8
  %sub546 = sub i64 %position.11706, %begin.21705
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub546)
  %cmp748 = icmp ult i64 %sub546, 4294967296
  br i1 %cmp748, label %if.then756, label %if.else762, !prof !60

if.then756:                                       ; preds = %if.then543
  call void @__sanitizer_cov_trace_pc() #9
  %conv757 = trunc i64 %sub546 to i32
  %div760 = udiv i32 %conv757, %curr_erasesize.61707
  br label %if.end766

if.else762:                                       ; preds = %if.then543
  call void @__sanitizer_cov_trace_pc() #9
  %207 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %curr_erasesize.61707, i64 %sub546) #12, !srcloc !61
  %asmresult1.i1544 = extractvalue { i64, i64 } %207, 1
  %extract.t1671 = trunc i64 %asmresult1.i1544 to i32
  br label %if.end766

if.end766:                                        ; preds = %if.else762, %if.then756
  %tmp64.1.off0 = phi i32 [ %div760, %if.then756 ], [ %extract.t1671, %if.else762 ]
  %numblocks769 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %erase_region_p.21704, i32 0, i32 2
  %208 = ptrtoint ptr %numblocks769 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %tmp64.1.off0, ptr %numblocks769, align 4
  %209 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx315, align 4
  %eraseregions771 = getelementptr inbounds %struct.mtd_info, ptr %210, i32 0, i32 20
  %211 = ptrtoint ptr %eraseregions771 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %eraseregions771, align 4
  %erasesize773 = getelementptr %struct.mtd_erase_region_info, ptr %212, i32 %j530.01708, i32 1
  %213 = ptrtoint ptr %erasesize773 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %erasesize773, align 8
  %incdec.ptr774 = getelementptr %struct.mtd_erase_region_info, ptr %erase_region_p.21704, i32 1
  br label %if.end775

if.end775:                                        ; preds = %if.end766, %for.body536.if.end775_crit_edge
  %erase_region_p.3 = phi ptr [ %incdec.ptr774, %if.end766 ], [ %erase_region_p.21704, %for.body536.if.end775_crit_edge ]
  %begin.3 = phi i64 [ %position.11706, %if.end766 ], [ %begin.21705, %for.body536.if.end775_crit_edge ]
  %curr_erasesize.7 = phi i32 [ %214, %if.end766 ], [ %curr_erasesize.61707, %for.body536.if.end775_crit_edge ]
  %215 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx315, align 4
  %eraseregions777 = getelementptr inbounds %struct.mtd_info, ptr %216, i32 0, i32 20
  %217 = ptrtoint ptr %eraseregions777 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %eraseregions777, align 4
  %numblocks779 = getelementptr %struct.mtd_erase_region_info, ptr %218, i32 %j530.01708, i32 2
  %219 = ptrtoint ptr %numblocks779 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %numblocks779, align 4
  %conv780 = zext i32 %220 to i64
  %conv781 = zext i32 %curr_erasesize.7 to i64
  %mul782 = mul nuw i64 %conv780, %conv781
  %add783 = add i64 %mul782, %position.11706
  %inc785 = add nuw nsw i32 %j530.01708, 1
  %numeraseregions533 = getelementptr inbounds %struct.mtd_info, ptr %216, i32 0, i32 19
  %221 = ptrtoint ptr %numeraseregions533 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %numeraseregions533, align 8
  %cmp534 = icmp slt i32 %inc785, %222
  br i1 %cmp534, label %if.end775.for.body536_crit_edge, label %if.end775.for.inc788_crit_edge

if.end775.for.inc788_crit_edge:                   ; preds = %if.end775
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc788

if.end775.for.body536_crit_edge:                  ; preds = %if.end775
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body536

for.inc788:                                       ; preds = %if.end775.for.inc788_crit_edge, %if.end525, %for.cond531.preheader.for.inc788_crit_edge
  %erase_region_p.4 = phi ptr [ %erase_region_p.1, %if.end525 ], [ %erase_region_p.01715, %for.cond531.preheader.for.inc788_crit_edge ], [ %erase_region_p.3, %if.end775.for.inc788_crit_edge ]
  %begin.4 = phi i64 [ %begin.1, %if.end525 ], [ %begin.01716, %for.cond531.preheader.for.inc788_crit_edge ], [ %begin.3, %if.end775.for.inc788_crit_edge ]
  %position.2 = phi i64 [ %add528, %if.end525 ], [ %position.01717, %for.cond531.preheader.for.inc788_crit_edge ], [ %add783, %if.end775.for.inc788_crit_edge ]
  %curr_erasesize.8 = phi i32 [ %curr_erasesize.5, %if.end525 ], [ %curr_erasesize.41718, %for.cond531.preheader.for.inc788_crit_edge ], [ %curr_erasesize.7, %if.end775.for.inc788_crit_edge ]
  %inc789 = add nuw nsw i32 %i.41719, 1
  %exitcond1732.not = icmp eq i32 %inc789, %num_devs
  br i1 %exitcond1732.not, label %for.inc788.for.end790_crit_edge, label %for.inc788.for.body314_crit_edge

for.inc788.for.body314_crit_edge:                 ; preds = %for.inc788
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body314

for.inc788.for.end790_crit_edge:                  ; preds = %for.inc788
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end790

for.end790:                                       ; preds = %for.inc788.for.end790_crit_edge, %if.end308.for.end790_crit_edge
  %erase_region_p.0.lcssa = phi ptr [ %call8.i, %if.end308.for.end790_crit_edge ], [ %erase_region_p.4, %for.inc788.for.end790_crit_edge ]
  %begin.0.lcssa = phi i64 [ 0, %if.end308.for.end790_crit_edge ], [ %begin.4, %for.inc788.for.end790_crit_edge ]
  %position.0.lcssa = phi i64 [ 0, %if.end308.for.end790_crit_edge ], [ %position.2, %for.inc788.for.end790_crit_edge ]
  %curr_erasesize.4.lcssa = phi i32 [ %177, %if.end308.for.end790_crit_edge ], [ %curr_erasesize.8, %for.inc788.for.end790_crit_edge ]
  %223 = ptrtoint ptr %erase_region_p.0.lcssa to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %begin.0.lcssa, ptr %erase_region_p.0.lcssa, align 8
  %erasesize792 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %erase_region_p.0.lcssa, i32 0, i32 1
  %224 = ptrtoint ptr %erasesize792 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %curr_erasesize.4.lcssa, ptr %erasesize792, align 8
  %sub793 = sub i64 %position.0.lcssa, %begin.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub793)
  %cmp995 = icmp ult i64 %sub793, 4294967296
  br i1 %cmp995, label %if.then1003, label %if.else1009, !prof !60

if.then1003:                                      ; preds = %for.end790
  call void @__sanitizer_cov_trace_pc() #9
  %conv1004 = trunc i64 %sub793 to i32
  %div1007 = udiv i32 %conv1004, %curr_erasesize.4.lcssa
  br label %cleanup

if.else1009:                                      ; preds = %for.end790
  call void @__sanitizer_cov_trace_pc() #9
  %225 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %curr_erasesize.4.lcssa, i64 %sub793) #12, !srcloc !61
  %asmresult1.i1572 = extractvalue { i64, i64 } %225, 1
  %extract.t1667 = trunc i64 %asmresult1.i1572 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else1009, %if.then1003
  %tmp64.2.off0 = phi i32 [ %div1007, %if.then1003 ], [ %extract.t1667, %if.else1009 ]
  %numblocks1016 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %erase_region_p.0.lcssa, i32 0, i32 2
  %226 = ptrtoint ptr %numblocks1016 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %tmp64.2.off0, ptr %numblocks1016, align 4
  br label %cleanup1022

cleanup1022:                                      ; preds = %cleanup, %cleanup.thread, %if.then288, %if.then207, %if.then137, %if.then116, %do.end15
  %retval.1 = phi ptr [ null, %if.then116 ], [ null, %if.then137 ], [ null, %if.then207 ], [ null, %do.end15 ], [ null, %cleanup.thread ], [ %call9.i.i, %cleanup ], [ %call9.i.i, %if.then288 ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_writev(ptr nocapture noundef readonly %mtd, ptr noundef %vecs, i32 noundef %count, i64 noundef %to, ptr nocapture noundef %retlen) #0 align 64 {
entry:
  %retsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp449.not = icmp eq i32 %count, 0
  br i1 %cmp449.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0451 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %total_len.0450 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %iov_len = getelementptr %struct.kvec, ptr %vecs, i32 %i.0451, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  %add = add i32 %1, %total_len.0450
  %inc = add nuw i32 %i.0451, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %total_len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %if.else167, label %for.end.if.end191_crit_edge

for.end.if.end191_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.else167:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %to)
  %cmp169 = icmp ult i64 %to, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !60

if.then173:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #9
  %conv174 = trunc i64 %to to i32
  %rem175 = urem i32 %conv174, %3
  br label %if.end183

if.else179:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %to) #12, !srcloc !61
  %asmresult.i408 = extractvalue { i64, i64 } %4, 0
  %shr.i = lshr i64 %asmresult.i408, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %__rem.0 = phi i32 [ %rem175, %if.then173 ], [ %conv.i, %if.else179 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool185.not = icmp eq i32 %__rem.0, 0
  br i1 %tobool185.not, label %lor.lhs.false, label %if.end183.cleanup264_crit_edge

if.end183.cleanup264_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup264

lor.lhs.false:                                    ; preds = %if.end183
  %rem187 = urem i32 %total_len.0.lcssa, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem187)
  %tobool188.not = icmp eq i32 %rem187, 0
  br i1 %tobool188.not, label %lor.lhs.false.if.end191_crit_edge, label %lor.lhs.false.cleanup264_crit_edge

lor.lhs.false.cleanup264_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup264

lor.lhs.false.if.end191_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.end191:                                        ; preds = %lor.lhs.false.if.end191_crit_edge, %for.end.if.end191_crit_edge
  %mul192 = shl i32 %count, 3
  %call193 = tail call ptr @kmemdup(ptr noundef %vecs, i32 noundef %mul192, i32 noundef 3264) #7
  %tobool194.not = icmp eq ptr %call193, null
  br i1 %tobool194.not, label %if.end191.cleanup264_crit_edge, label %for.cond197.preheader

if.end191.cleanup264_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup264

for.cond197.preheader:                            ; preds = %if.end191
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %5 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp198459 = icmp sgt i32 %6, 0
  br i1 %cmp198459, label %for.body200.lr.ph, label %for.cond197.preheader.for.end263_crit_edge

for.cond197.preheader.for.end263_crit_edge:       ; preds = %for.cond197.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end263

for.body200.lr.ph:                                ; preds = %for.cond197.preheader
  %subdev201 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body200

for.body200:                                      ; preds = %for.inc261.for.body200_crit_edge, %for.body200.lr.ph
  %to.addr.0465 = phi i64 [ %to, %for.body200.lr.ph ], [ %to.addr.1448, %for.inc261.for.body200_crit_edge ]
  %i.1463 = phi i32 [ 0, %for.body200.lr.ph ], [ %inc262, %for.inc261.for.body200_crit_edge ]
  %total_len.1462 = phi i32 [ %total_len.0.lcssa, %for.body200.lr.ph ], [ %total_len.2446, %for.inc261.for.body200_crit_edge ]
  %entry_low.0460 = phi i32 [ 0, %for.body200.lr.ph ], [ %entry_low.1445, %for.inc261.for.body200_crit_edge ]
  %7 = ptrtoint ptr %subdev201 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subdev201, align 4
  %arrayidx202 = getelementptr ptr, ptr %8, i32 %i.1463
  %9 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx202, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retsize) #7
  %11 = ptrtoint ptr %retsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %retsize, align 4, !annotation !62
  %size203 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %size203 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size203, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %to.addr.0465, i64 %13)
  %cmp204.not = icmp ult i64 %to.addr.0465, %13
  br i1 %cmp204.not, label %if.end209, label %cleanup254.thread437

cleanup254.thread437:                             ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #9
  %sub208 = sub i64 %to.addr.0465, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  br label %for.inc261

if.end209:                                        ; preds = %for.body200
  %conv210 = zext i32 %total_len.1462 to i64
  %sub212 = sub i64 %13, %to.addr.0465
  call void @__sanitizer_cov_trace_cmp8(i64 %sub212, i64 %conv210)
  %cmp214 = icmp ugt i64 %sub212, %conv210
  %extract.t404 = trunc i64 %sub212 to i32
  %cond219.off0 = select i1 %cmp214, i32 %total_len.1462, i32 %extract.t404
  call void @__sanitizer_cov_trace_cmp4(i32 %entry_low.0460, i32 %count)
  %cmp221452 = icmp ult i32 %entry_low.0460, %count
  br i1 %cmp221452, label %if.end209.while.body_crit_edge, label %if.end209.while.end_crit_edge

if.end209.while.end_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end209.while.body_crit_edge:                   ; preds = %if.end209
  br label %while.body

while.body:                                       ; preds = %if.end228.while.body_crit_edge, %if.end209.while.body_crit_edge
  %size.0454 = phi i32 [ %sub232, %if.end228.while.body_crit_edge ], [ %cond219.off0, %if.end209.while.body_crit_edge ]
  %entry_high.0453 = phi i32 [ %inc229, %if.end228.while.body_crit_edge ], [ %entry_low.0460, %if.end209.while.body_crit_edge ]
  %iov_len224 = getelementptr %struct.kvec, ptr %call193, i32 %entry_high.0453, i32 1
  %14 = ptrtoint ptr %iov_len224 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iov_len224, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0454, i32 %15)
  %cmp225.not = icmp ugt i32 %size.0454, %15
  br i1 %cmp225.not, label %if.end228, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end228:                                        ; preds = %while.body
  %inc229 = add nuw i32 %entry_high.0453, 1
  %sub232 = sub i32 %size.0454, %15
  %exitcond468.not = icmp eq i32 %inc229, %count
  br i1 %exitcond468.not, label %if.end228.while.end_crit_edge, label %if.end228.while.body_crit_edge

if.end228.while.body_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end228.while.end_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end228.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end209.while.end_crit_edge
  %entry_high.0.lcssa = phi i32 [ %entry_low.0460, %if.end209.while.end_crit_edge ], [ %entry_high.0453, %while.body.while.end_crit_edge ], [ %count, %if.end228.while.end_crit_edge ]
  %size.0.lcssa = phi i32 [ %cond219.off0, %if.end209.while.end_crit_edge ], [ %size.0454, %while.body.while.end_crit_edge ], [ %sub232, %if.end228.while.end_crit_edge ]
  %arrayidx233 = getelementptr %struct.kvec, ptr %call193, i32 %entry_high.0.lcssa
  %iov_len234 = getelementptr %struct.kvec, ptr %call193, i32 %entry_high.0.lcssa, i32 1
  %16 = ptrtoint ptr %iov_len234 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len234, align 4
  store i32 %size.0.lcssa, ptr %iov_len234, align 4
  %arrayidx237 = getelementptr %struct.kvec, ptr %call193, i32 %entry_low.0460
  %sub238 = sub i32 1, %entry_low.0460
  %add239 = add i32 %sub238, %entry_high.0.lcssa
  %call240 = call i32 @mtd_writev(ptr noundef %10, ptr noundef %arrayidx237, i32 noundef %add239, i64 noundef %to.addr.0465, ptr noundef nonnull %retsize) #7
  %sub241 = sub i32 %17, %size.0.lcssa
  %18 = ptrtoint ptr %iov_len234 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub241, ptr %iov_len234, align 4
  %19 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx233, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %size.0.lcssa
  store ptr %add.ptr, ptr %arrayidx233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool245.not = icmp eq i32 %call240, 0
  br i1 %tobool245.not, label %cleanup254, label %cleanup254.thread

cleanup254.thread:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  br label %for.end263

cleanup254:                                       ; preds = %while.end
  %21 = ptrtoint ptr %retsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retsize, align 4
  %23 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retlen, align 4
  %add248 = add i32 %24, %22
  store i32 %add248, ptr %retlen, align 4
  %sub249 = sub i32 %total_len.1462, %cond219.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub249)
  %cmp250 = icmp eq i32 %sub249, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  br i1 %cmp250, label %cleanup254.for.end263_crit_edge, label %cleanup254.for.inc261_crit_edge

cleanup254.for.inc261_crit_edge:                  ; preds = %cleanup254
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc261

cleanup254.for.end263_crit_edge:                  ; preds = %cleanup254
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end263

for.inc261:                                       ; preds = %cleanup254.for.inc261_crit_edge, %cleanup254.thread437
  %to.addr.1448 = phi i64 [ %sub208, %cleanup254.thread437 ], [ 0, %cleanup254.for.inc261_crit_edge ]
  %total_len.2446 = phi i32 [ %total_len.1462, %cleanup254.thread437 ], [ %sub249, %cleanup254.for.inc261_crit_edge ]
  %entry_low.1445 = phi i32 [ %entry_low.0460, %cleanup254.thread437 ], [ %entry_high.0.lcssa, %cleanup254.for.inc261_crit_edge ]
  %inc262 = add nuw nsw i32 %i.1463, 1
  %25 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_subdev, align 8
  %cmp198 = icmp slt i32 %inc262, %26
  br i1 %cmp198, label %for.inc261.for.body200_crit_edge, label %for.inc261.for.end263_crit_edge

for.inc261.for.end263_crit_edge:                  ; preds = %for.inc261
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end263

for.inc261.for.body200_crit_edge:                 ; preds = %for.inc261
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body200

for.end263:                                       ; preds = %for.inc261.for.end263_crit_edge, %cleanup254.for.end263_crit_edge, %cleanup254.thread, %for.cond197.preheader.for.end263_crit_edge
  %err.2 = phi i32 [ %call240, %cleanup254.thread ], [ -22, %for.cond197.preheader.for.end263_crit_edge ], [ -22, %for.inc261.for.end263_crit_edge ], [ 0, %cleanup254.for.end263_crit_edge ]
  call void @kfree(ptr noundef nonnull %call193) #7
  br label %cleanup264

cleanup264:                                       ; preds = %for.end263, %if.end191.cleanup264_crit_edge, %lor.lhs.false.cleanup264_crit_edge, %if.end183.cleanup264_crit_edge
  %retval.1 = phi i32 [ %err.2, %for.end263 ], [ -12, %if.end191.cleanup264_crit_edge ], [ -22, %if.end183.cleanup264_crit_edge ], [ -22, %lor.lhs.false.cleanup264_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_read_oob(ptr nocapture noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) #0 align 64 {
entry:
  %devops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %devops) #7
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 6
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %devops, ptr %ops, i32 32)
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %7 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %oobretlen, align 4
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %8 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %retlen, align 4
  %len39 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %9 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp104 = icmp sgt i32 %10, 0
  br i1 %cmp104, label %for.body.lr.ph, label %entry.cleanup64_crit_edge

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup64

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  %ecc_stats28 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc63, %for.inc.for.body_crit_edge ]
  %from.addr.0105 = phi i64 [ %from, %for.body.lr.ph ], [ %from.addr.1, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.0107
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %from.addr.0105, i64 %16)
  %cmp2.not = icmp ult i64 %from.addr.0105, %16
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 %from.addr.0105, %16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %conv = zext i32 %18 to i64
  %add = add i64 %from.addr.0105, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %16)
  %cmp5 = icmp ugt i64 %add, %16
  br i1 %cmp5, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub9 = sub i64 %16, %from.addr.0105
  %conv10 = trunc i64 %sub9 to i32
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10, ptr %0, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %call = call i32 @mtd_read_oob(ptr noundef %14, i64 noundef %from.addr.0105, ptr noundef nonnull %devops) #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %22 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retlen, align 4
  %add15 = add i32 %23, %21
  store i32 %add15, ptr %retlen, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %26 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oobretlen, align 4
  %add18 = add i32 %27, %25
  store i32 %add18, ptr %oobretlen, align 4
  %28 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end12.cleanup64_crit_edge [
    i32 0, label %if.end12.if.end36_crit_edge
    i32 -74, label %if.then24
    i32 -117, label %if.then27
  ], !prof !63

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end12.cleanup64_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup64

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %failed, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end36

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ecc_stats28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_stats28, align 4
  %inc29 = add i32 %32, 1
  store i32 %inc29, ptr %ecc_stats28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0108)
  %tobool30.not = icmp eq i32 %ret.0108, 0
  %spec.select = select i1 %tobool30.not, i32 -117, i32 %ret.0108
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.then24, %if.end12.if.end36_crit_edge
  %ret.1 = phi i32 [ -74, %if.then24 ], [ %ret.0108, %if.end12.if.end36_crit_edge ], [ %spec.select, %if.then27 ]
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 4
  %tobool37.not = icmp eq ptr %34, null
  br i1 %tobool37.not, label %if.end36.if.end49_crit_edge, label %if.then38

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then38:                                        ; preds = %if.end36
  %35 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len39, align 4
  %37 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retlen, align 4
  %sub41 = sub i32 %36, %38
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub41, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %tobool44.not = icmp eq i32 %36, %38
  br i1 %tobool44.not, label %if.then38.cleanup64_crit_edge, label %if.end46

if.then38.cleanup64_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup64

if.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %34, i32 %21
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %4, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %if.end36.if.end49_crit_edge
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %tobool50.not = icmp eq ptr %42, null
  br i1 %tobool50.not, label %if.end49.for.inc_crit_edge, label %if.then51

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then51:                                        ; preds = %if.end49
  %43 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ooblen, align 4
  %45 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %oobretlen, align 4
  %sub53 = sub i32 %44, %46
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub53, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %tobool56.not = icmp eq i32 %44, %46
  br i1 %tobool56.not, label %if.then51.cleanup64_crit_edge, label %if.end58

if.then51.cleanup64_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup64

if.end58:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr61 = getelementptr i8, ptr %42, i32 %46
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr61, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end58, %if.end49.for.inc_crit_edge, %if.then
  %from.addr.1 = phi i64 [ %sub, %if.then ], [ 0, %if.end58 ], [ 0, %if.end49.for.inc_crit_edge ]
  %ret.2 = phi i32 [ %ret.0108, %if.then ], [ %ret.1, %if.end58 ], [ %ret.1, %if.end49.for.inc_crit_edge ]
  %inc63 = add nuw nsw i32 %i.0107, 1
  %49 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc63, %50
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup64_crit_edge

for.inc.cleanup64_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup64

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup64:                                        ; preds = %for.inc.cleanup64_crit_edge, %if.then51.cleanup64_crit_edge, %if.then38.cleanup64_crit_edge, %if.end12.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup64_crit_edge ], [ %call, %if.end12.cleanup64_crit_edge ], [ %ret.1, %if.then51.cleanup64_crit_edge ], [ %ret.1, %if.then38.cleanup64_crit_edge ], [ -22, %for.inc.cleanup64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %devops) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_write_oob(ptr nocapture noundef readonly %mtd, i64 noundef %to, ptr nocapture noundef %ops) #0 align 64 {
entry:
  %devops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %devops) #7
  %0 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 6
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %devops, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %devops, ptr %ops, i32 32)
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup50_crit_edge, label %if.end

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end:                                           ; preds = %entry
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %9 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %oobretlen, align 4
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %10 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %retlen, align 4
  %len26 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %11 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp78 = icmp sgt i32 %12, 0
  br i1 %cmp78, label %for.body.lr.ph, label %if.end.cleanup50_crit_edge

if.end.cleanup50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.body.lr.ph:                                   ; preds = %if.end
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %to.addr.079 = phi i64 [ %to, %for.body.lr.ph ], [ %to.addr.1, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.081
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %to.addr.079, i64 %18)
  %cmp2.not = icmp ult i64 %to.addr.079, %18
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 %to.addr.079, %18
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %conv = zext i32 %20 to i64
  %add = add i64 %to.addr.079, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %18)
  %cmp7 = icmp ugt i64 %add, %18
  br i1 %cmp7, label %if.then9, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %sub11 = sub i64 %18, %to.addr.079
  %conv12 = trunc i64 %sub11 to i32
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv12, ptr %0, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end5.if.end14_crit_edge
  %call = call i32 @mtd_write_oob(ptr noundef %16, i64 noundef %to.addr.079, ptr noundef nonnull %devops) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retlen, align 4
  %add17 = add i32 %25, %23
  store i32 %add17, ptr %retlen, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %28 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oobretlen, align 4
  %add20 = add i32 %29, %27
  store i32 %add20, ptr %oobretlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end23, label %if.end14.cleanup50_crit_edge

if.end14.cleanup50_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end23:                                         ; preds = %if.end14
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %4, align 4
  %tobool24.not = icmp eq ptr %31, null
  br i1 %tobool24.not, label %if.end23.if.end36_crit_edge, label %if.then25

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then25:                                        ; preds = %if.end23
  %32 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len26, align 4
  %sub28 = sub i32 %33, %add17
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub28, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add17)
  %tobool31.not = icmp eq i32 %33, %add17
  br i1 %tobool31.not, label %if.then25.cleanup50_crit_edge, label %if.end33

if.then25.cleanup50_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end33:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %31, i32 %23
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %4, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end23.if.end36_crit_edge
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  %tobool37.not = icmp eq ptr %37, null
  br i1 %tobool37.not, label %if.end36.for.inc_crit_edge, label %if.then38

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then38:                                        ; preds = %if.end36
  %38 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ooblen, align 4
  %sub40 = sub i32 %39, %add20
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub40, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add20)
  %tobool43.not = icmp eq i32 %39, %add20
  br i1 %tobool43.not, label %if.then38.cleanup50_crit_edge, label %if.end45

if.then38.cleanup50_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr48 = getelementptr i8, ptr %37, i32 %27
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr48, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %if.end36.for.inc_crit_edge, %if.then3
  %to.addr.1 = phi i64 [ %sub, %if.then3 ], [ 0, %if.end45 ], [ 0, %if.end36.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.081, 1
  %42 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc, %43
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup50_crit_edge

for.inc.cleanup50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup50:                                        ; preds = %for.inc.cleanup50_crit_edge, %if.then38.cleanup50_crit_edge, %if.then25.cleanup50_crit_edge, %if.end14.cleanup50_crit_edge, %if.end.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.2 = phi i32 [ -30, %entry.cleanup50_crit_edge ], [ -22, %if.end.cleanup50_crit_edge ], [ -22, %for.inc.cleanup50_crit_edge ], [ %call, %if.end14.cleanup50_crit_edge ], [ 0, %if.then25.cleanup50_crit_edge ], [ 0, %if.then38.cleanup50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %devops) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_block_isbad(ptr nocapture noundef readonly %mtd, i64 noundef %ofs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %mtd.addr.0.i.i = phi ptr [ %3, %entry ], [ %5, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %mtd_can_have_bb.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

mtd_can_have_bb.exit:                             ; preds = %while.cond.i.i
  %_block_isbad.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 42
  %6 = ptrtoint ptr %_block_isbad.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_block_isbad.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %mtd_can_have_bb.exit.cleanup9_crit_edge, label %for.cond.preheader

mtd_can_have_bb.exit.cleanup9_crit_edge:          ; preds = %mtd_can_have_bb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

for.cond.preheader:                               ; preds = %mtd_can_have_bb.exit
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %8 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29 = icmp sgt i32 %9, 0
  br i1 %cmp29, label %for.body.lr.ph, label %for.cond.preheader.cleanup9_crit_edge

for.cond.preheader.cleanup9_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdev, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ofs.addr.030 = phi i64 [ %ofs, %for.body.lr.ph ], [ %sub, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr ptr, ptr %11, i32 %i.031
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %ofs.addr.030, i64 %15)
  %cmp4.not = icmp ult i64 %ofs.addr.030, %15
  br i1 %cmp4.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @mtd_block_isbad(ptr noundef %13, i64 noundef %ofs.addr.030) #7
  br label %cleanup9

for.inc:                                          ; preds = %for.body
  %sub = sub i64 %ofs.addr.030, %15
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.cleanup9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

cleanup9:                                         ; preds = %for.inc.cleanup9_crit_edge, %cleanup, %for.cond.preheader.cleanup9_crit_edge, %mtd_can_have_bb.exit.cleanup9_crit_edge
  %retval.0 = phi i32 [ 0, %mtd_can_have_bb.exit.cleanup9_crit_edge ], [ %call8, %cleanup ], [ 0, %for.cond.preheader.cleanup9_crit_edge ], [ 0, %for.inc.cleanup9_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_block_markbad(ptr nocapture noundef %mtd, i64 noundef %ofs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc.for.body_crit_edge ]
  %ofs.addr.026 = phi i64 [ %ofs, %for.body.lr.ph ], [ %sub, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %ofs.addr.026, i64 %7)
  %cmp2.not = icmp ult i64 %ofs.addr.026, %7
  br i1 %cmp2.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call i32 @mtd_block_markbad(ptr noundef %5, i64 noundef %ofs.addr.026) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %badblocks = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 2
  %8 = ptrtoint ptr %badblocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %badblocks, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %badblocks, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %sub = sub i64 %ofs.addr.026, %7
  %inc6 = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc6, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then4, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %err.2 = phi i32 [ 0, %if.then4 ], [ %call, %if.end.for.end_crit_edge ], [ -22, %entry.for.end_crit_edge ], [ -22, %for.inc.for.end_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_panic_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  %retsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp70 = icmp sgt i32 %1, 0
  br i1 %cmp70, label %for.body.lr.ph, label %entry.cleanup28_crit_edge

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1.ph, %for.inc.for.body_crit_edge ]
  %to.addr.072 = phi i64 [ %to, %for.body.lr.ph ], [ %to.addr.1.ph, %for.inc.for.body_crit_edge ]
  %len.addr.071 = phi i32 [ %len, %for.body.lr.ph ], [ %len.addr.1.ph, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.074
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retsize) #7
  %6 = ptrtoint ptr %retsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %retsize, align 4, !annotation !62
  %size2 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %size2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %to.addr.072, i64 %8)
  %cmp3.not = icmp ult i64 %to.addr.072, %8
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 %to.addr.072, %8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = zext i32 %len.addr.071 to i64
  %add = add i64 %to.addr.072, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %8)
  %cmp6 = icmp ugt i64 %add, %8
  %sub10 = sub i64 %8, %to.addr.072
  %conv11 = trunc i64 %sub10 to i32
  %size.0 = select i1 %cmp6, i32 %conv11, i32 %len.addr.071
  %call = call i32 @mtd_panic_write(ptr noundef %5, i64 noundef %to.addr.072, i32 noundef %size.0, ptr noundef nonnull %retsize, ptr noundef %buf.addr.073) #7
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call, label %if.end.cleanup.thread63_crit_edge [
    i32 -95, label %cleanup
    i32 0, label %if.end19
  ]

if.end.cleanup.thread63_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread63

if.end19:                                         ; preds = %if.end
  %10 = ptrtoint ptr %retsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retsize, align 4
  %12 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retlen, align 4
  %add20 = add i32 %13, %11
  store i32 %add20, ptr %retlen, align 4
  %sub21 = sub i32 %len.addr.071, %size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21)
  %cmp22 = icmp eq i32 %sub21, 0
  br i1 %cmp22, label %if.end19.cleanup.thread63_crit_edge, label %if.end25

if.end19.cleanup.thread63_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread63

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf.addr.073, i32 %size.0
  br label %for.inc

cleanup.thread63:                                 ; preds = %if.end19.cleanup.thread63_crit_edge, %if.end.cleanup.thread63_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  br label %cleanup28

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  br label %cleanup28

for.inc:                                          ; preds = %if.end25, %if.then
  %len.addr.1.ph = phi i32 [ %sub21, %if.end25 ], [ %len.addr.071, %if.then ]
  %to.addr.1.ph = phi i64 [ 0, %if.end25 ], [ %sub, %if.then ]
  %buf.addr.1.ph = phi ptr [ %add.ptr, %if.end25 ], [ %buf.addr.073, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  %inc = add nuw nsw i32 %i.074, 1
  %14 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup28_crit_edge

for.inc.cleanup28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup28:                                        ; preds = %for.inc.cleanup28_crit_edge, %cleanup, %cleanup.thread63, %entry.cleanup28_crit_edge
  %retval.2 = phi i32 [ -95, %cleanup ], [ %call, %cleanup.thread63 ], [ -22, %entry.cleanup28_crit_edge ], [ -22, %for.inc.cleanup28_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_read(ptr nocapture noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  %retsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp78 = icmp sgt i32 %1, 0
  br i1 %cmp78, label %for.body.lr.ph, label %entry.cleanup41_crit_edge

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  %ecc_stats23 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc40, %for.inc.for.body_crit_edge ]
  %ret.082 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %buf.addr.081 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1, %for.inc.for.body_crit_edge ]
  %len.addr.080 = phi i32 [ %len, %for.body.lr.ph ], [ %len.addr.1, %for.inc.for.body_crit_edge ]
  %from.addr.079 = phi i64 [ %from, %for.body.lr.ph ], [ %from.addr.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.083
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retsize) #7
  %6 = ptrtoint ptr %retsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %retsize, align 4, !annotation !62
  %size2 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %size2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %from.addr.079, i64 %8)
  %cmp3.not = icmp ult i64 %from.addr.079, %8
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 %from.addr.079, %8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = zext i32 %len.addr.080 to i64
  %add = add i64 %from.addr.079, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %8)
  %cmp6 = icmp ugt i64 %add, %8
  %sub10 = sub i64 %8, %from.addr.079
  %conv11 = trunc i64 %sub10 to i32
  %size.0 = select i1 %cmp6, i32 %conv11, i32 %len.addr.080
  %call = call i32 @mtd_read(ptr noundef %5, i64 noundef %from.addr.079, i32 noundef %size.0, ptr noundef nonnull %retsize, ptr noundef %buf.addr.081) #7
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call, label %if.end.cleanup.thread_crit_edge [
    i32 0, label %if.end.if.end31_crit_edge
    i32 -74, label %if.then18
    i32 -117, label %if.then22
  ], !prof !63

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %failed, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end31

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ecc_stats23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ecc_stats23, align 4
  %inc24 = add i32 %13, 1
  store i32 %inc24, ptr %ecc_stats23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.082)
  %tobool25.not = icmp eq i32 %ret.082, 0
  %spec.select = select i1 %tobool25.not, i32 -117, i32 %ret.082
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.then18, %if.end.if.end31_crit_edge
  %ret.1 = phi i32 [ -74, %if.then18 ], [ %ret.082, %if.end.if.end31_crit_edge ], [ %spec.select, %if.then22 ]
  %14 = ptrtoint ptr %retsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retsize, align 4
  %16 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retlen, align 4
  %add32 = add i32 %17, %15
  store i32 %add32, ptr %retlen, align 4
  %sub33 = sub i32 %len.addr.080, %size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %cmp34 = icmp eq i32 %sub33, 0
  br i1 %cmp34, label %if.end31.cleanup.thread_crit_edge, label %if.end37

if.end31.cleanup.thread_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf.addr.081, i32 %size.0
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end31.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %ret.1, %if.end31.cleanup.thread_crit_edge ], [ %call, %if.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  br label %cleanup41

for.inc:                                          ; preds = %if.end37, %if.then
  %from.addr.1 = phi i64 [ %sub, %if.then ], [ 0, %if.end37 ]
  %len.addr.1 = phi i32 [ %len.addr.080, %if.then ], [ %sub33, %if.end37 ]
  %buf.addr.1 = phi ptr [ %buf.addr.081, %if.then ], [ %add.ptr, %if.end37 ]
  %ret.2 = phi i32 [ %ret.082, %if.then ], [ %ret.1, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  %inc40 = add nuw nsw i32 %i.083, 1
  %18 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc40, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup41_crit_edge

for.inc.cleanup41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup41:                                        ; preds = %for.inc.cleanup41_crit_edge, %cleanup.thread, %entry.cleanup41_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ -22, %entry.cleanup41_crit_edge ], [ -22, %for.inc.cleanup41_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  %retsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51 = icmp sgt i32 %1, 0
  br i1 %cmp51, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.054 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1, %for.inc.for.body_crit_edge ]
  %to.addr.053 = phi i64 [ %to, %for.body.lr.ph ], [ %to.addr.1, %for.inc.for.body_crit_edge ]
  %len.addr.052 = phi i32 [ %len, %for.body.lr.ph ], [ %len.addr.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.055
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retsize) #7
  %6 = ptrtoint ptr %retsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %retsize, align 4, !annotation !62
  %size2 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %size2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %to.addr.053, i64 %8)
  %cmp3.not = icmp ult i64 %to.addr.053, %8
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 %to.addr.053, %8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = zext i32 %len.addr.052 to i64
  %add = add i64 %to.addr.053, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %8)
  %cmp6 = icmp ugt i64 %add, %8
  %sub10 = sub i64 %8, %to.addr.053
  %conv11 = trunc i64 %sub10 to i32
  %size.0 = select i1 %cmp6, i32 %conv11, i32 %len.addr.052
  %call = call i32 @mtd_write(ptr noundef %5, i64 noundef %to.addr.053, i32 noundef %size.0, ptr noundef nonnull %retsize, ptr noundef %buf.addr.054) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end14:                                         ; preds = %if.end
  %9 = ptrtoint ptr %retsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retsize, align 4
  %11 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retlen, align 4
  %add15 = add i32 %12, %10
  store i32 %add15, ptr %retlen, align 4
  %sub16 = sub i32 %len.addr.052, %size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %cmp17 = icmp eq i32 %sub16, 0
  br i1 %cmp17, label %if.end14.cleanup.thread_crit_edge, label %if.end20

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf.addr.054, i32 %size.0
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end14.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  br label %for.end

for.inc:                                          ; preds = %if.end20, %if.then
  %len.addr.1 = phi i32 [ %len.addr.052, %if.then ], [ %sub16, %if.end20 ]
  %to.addr.1 = phi i64 [ %sub, %if.then ], [ 0, %if.end20 ]
  %buf.addr.1 = phi ptr [ %buf.addr.054, %if.then ], [ %add.ptr, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retsize) #7
  %inc = add nuw nsw i32 %i.055, 1
  %13 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %entry.for.end_crit_edge
  %err.2 = phi i32 [ %call, %cleanup.thread ], [ -22, %entry.for.end_crit_edge ], [ -22, %for.inc.for.end_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef %instr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %0 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %instr, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %sub = add i32 %5, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup159_crit_edge

if.then.cleanup159_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end:                                           ; preds = %if.then
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %and9 = and i64 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end64_crit_edge, label %if.end.cleanup159_crit_edge

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.else:                                          ; preds = %entry
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %8 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eraseregions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp238 = icmp sgt i32 %1, 0
  br i1 %cmp238, label %land.rhs.lr.ph, label %if.else.cleanup159_crit_edge

if.else.cleanup159_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

land.rhs.lr.ph:                                   ; preds = %if.else
  %10 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %instr, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0239 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.mtd_erase_region_info, ptr %9, i32 %i.0239
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp19.not = icmp ult i64 %11, %13
  br i1 %cmp19.not, label %land.rhs.for.end_crit_edge, label %for.inc

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.0239, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0239, %land.rhs.for.end_crit_edge ], [ %1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp21 = icmp eq i32 %i.0.lcssa, 0
  br i1 %cmp21, label %for.end.cleanup159_crit_edge, label %lor.lhs.false

for.end.cleanup159_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

lor.lhs.false:                                    ; preds = %for.end
  %dec = add nsw i32 %i.0.lcssa, -1
  %14 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %instr, align 8
  %erasesize25 = getelementptr %struct.mtd_erase_region_info, ptr %9, i32 %dec, i32 1
  %16 = ptrtoint ptr %erasesize25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasesize25, align 8
  %sub26 = add i32 %17, -1
  %conv27 = zext i32 %sub26 to i64
  %and28 = and i64 %15, %conv27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %for.cond32.preheader, label %lor.lhs.false.cleanup159_crit_edge

lor.lhs.false.cleanup159_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

for.cond32.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %1)
  %cmp35241.not = icmp sgt i32 %i.0.lcssa, %1
  br i1 %cmp35241.not, label %for.cond32.preheader.for.end48_crit_edge, label %land.rhs37.lr.ph

for.cond32.preheader.for.end48_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48

land.rhs37.lr.ph:                                 ; preds = %for.cond32.preheader
  %len39 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %18 = ptrtoint ptr %len39 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len39, align 8
  %add = add i64 %19, %15
  br label %land.rhs37

land.rhs37:                                       ; preds = %for.inc46.land.rhs37_crit_edge, %land.rhs37.lr.ph
  %i.1242 = phi i32 [ %dec, %land.rhs37.lr.ph ], [ %inc47, %for.inc46.land.rhs37_crit_edge ]
  %arrayidx40 = getelementptr %struct.mtd_erase_region_info, ptr %9, i32 %i.1242
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %21)
  %cmp42.not = icmp ult i64 %add, %21
  br i1 %cmp42.not, label %land.rhs37.for.end48_crit_edge, label %for.inc46

land.rhs37.for.end48_crit_edge:                   ; preds = %land.rhs37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48

for.inc46:                                        ; preds = %land.rhs37
  %inc47 = add nsw i32 %i.1242, 1
  %exitcond258.not = icmp eq i32 %inc47, %1
  br i1 %exitcond258.not, label %for.inc46.for.end48_crit_edge, label %for.inc46.land.rhs37_crit_edge

for.inc46.land.rhs37_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs37

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %land.rhs37.for.end48_crit_edge, %for.cond32.preheader.for.end48_crit_edge
  %i.1.lcssa = phi i32 [ %dec, %for.cond32.preheader.for.end48_crit_edge ], [ %1, %for.inc46.for.end48_crit_edge ], [ %i.1242, %land.rhs37.for.end48_crit_edge ]
  %dec49 = add i32 %i.1.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49)
  %cmp50 = icmp slt i32 %dec49, 0
  br i1 %cmp50, label %for.end48.cleanup159_crit_edge, label %lor.lhs.false52

for.end48.cleanup159_crit_edge:                   ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

lor.lhs.false52:                                  ; preds = %for.end48
  %len54 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %22 = ptrtoint ptr %len54 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %len54, align 8
  %add55 = add i64 %23, %15
  %erasesize57 = getelementptr %struct.mtd_erase_region_info, ptr %9, i32 %dec49, i32 1
  %24 = ptrtoint ptr %erasesize57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erasesize57, align 8
  %sub58 = add i32 %25, -1
  %conv59 = zext i32 %sub58 to i64
  %and60 = and i64 %add55, %conv59
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and60)
  %tobool61.not = icmp eq i64 %and60, 0
  br i1 %tobool61.not, label %lor.lhs.false52.if.end64_crit_edge, label %lor.lhs.false52.cleanup159_crit_edge

lor.lhs.false52.cleanup159_crit_edge:             ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

lor.lhs.false52.if.end64_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end64:                                         ; preds = %lor.lhs.false52.if.end64_crit_edge, %if.end.if.end64_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 24) #13
  %tobool65.not = icmp eq ptr %call7.i, null
  br i1 %tobool65.not, label %if.end64.cleanup159_crit_edge, label %if.end67

if.end64.cleanup159_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end67:                                         ; preds = %if.end64
  %27 = call ptr @memcpy(ptr %call7.i, ptr %instr, i32 24)
  %len68 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %28 = ptrtoint ptr %len68 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %len68, align 8
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %30 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp70245 = icmp sgt i32 %31, 0
  br i1 %cmp70245, label %for.body72.lr.ph, label %if.end67.do.body95_crit_edge

if.end67.do.body95_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95

for.body72.lr.ph:                                 ; preds = %if.end67
  %subdev73 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  %32 = ptrtoint ptr %subdev73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subdev73, align 4
  br label %for.body72

for.body72:                                       ; preds = %if.then78.for.body72_crit_edge, %for.body72.lr.ph
  %offset.0247 = phi i64 [ 0, %for.body72.lr.ph ], [ %add83, %if.then78.for.body72_crit_edge ]
  %i.2246 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc87, %if.then78.for.body72_crit_edge ]
  %arrayidx74 = getelementptr ptr, ptr %33, i32 %i.2246
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx74, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size, align 8
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %37)
  %cmp76.not = icmp ult i64 %39, %37
  br i1 %cmp76.not, label %for.cond102.preheader, label %if.then78

for.cond102.preheader:                            ; preds = %for.body72
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp103.not248 = icmp eq i64 %29, 0
  br i1 %cmp103.not248, label %for.cond102.preheader.for.end158_crit_edge, label %for.body105.lr.ph

for.cond102.preheader.for.end158_crit_edge:       ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end158

for.body105.lr.ph:                                ; preds = %for.cond102.preheader
  %len119 = getelementptr inbounds %struct.erase_info, ptr %call7.i, i32 0, i32 1
  br label %for.body105

if.then78:                                        ; preds = %for.body72
  %sub81 = sub i64 %39, %37
  %40 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sub81, ptr %call7.i, align 8
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %size, align 8
  %add83 = add i64 %42, %offset.0247
  %inc87 = add nuw nsw i32 %i.2246, 1
  %exitcond259.not = icmp eq i32 %inc87, %31
  br i1 %exitcond259.not, label %if.then78.do.body95_crit_edge, label %if.then78.for.body72_crit_edge

if.then78.for.body72_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body72

if.then78.do.body95_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95

do.body95:                                        ; preds = %if.then78.do.body95_crit_edge, %if.end67.do.body95_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdconcat.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

for.body105:                                      ; preds = %if.end152.for.body105_crit_edge, %for.body105.lr.ph
  %offset.1251 = phi i64 [ %offset.0247, %for.body105.lr.ph ], [ %add155, %if.end152.for.body105_crit_edge ]
  %length.0250 = phi i64 [ %29, %for.body105.lr.ph ], [ %sub122, %if.end152.for.body105_crit_edge ]
  %i.3249 = phi i32 [ %i.2246, %for.body105.lr.ph ], [ %inc157, %if.end152.for.body105_crit_edge ]
  %43 = ptrtoint ptr %subdev73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %subdev73, align 4
  %arrayidx107 = getelementptr ptr, ptr %44, i32 %i.3249
  %45 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx107, align 4
  %47 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %call7.i, align 8
  %add109 = add i64 %48, %length.0250
  %size110 = getelementptr inbounds %struct.mtd_info, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %size110 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %size110, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add109, i64 %50)
  %cmp111 = icmp ugt i64 %add109, %50
  %sub116 = sub i64 %50, %48
  %spec.select = select i1 %cmp111, i64 %sub116, i64 %length.0250
  %51 = ptrtoint ptr %len119 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %spec.select, ptr %len119, align 8
  %call123 = tail call i32 @mtd_erase(ptr noundef %46, ptr noundef nonnull %call7.i) #7
  %52 = zext i32 %call123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call123, label %do.end144 [
    i32 0, label %if.end152
    i32 -22, label %do.body136
  ], !prof !65

do.body136:                                       ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdconcat.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 460, 0\0A.popsection", ""() #7, !srcloc !66
  unreachable

do.end144:                                        ; preds = %for.body105
  %fail_addr = getelementptr inbounds %struct.erase_info, ptr %call7.i, i32 0, i32 2
  %53 = ptrtoint ptr %fail_addr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %fail_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %54)
  %cmp145.not = icmp eq i64 %54, -1
  br i1 %cmp145.not, label %do.end144.for.end158_crit_edge, label %if.then147

do.end144.for.end158_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end158

if.then147:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #9
  %add149 = add i64 %54, %offset.1251
  %fail_addr150 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 2
  %55 = ptrtoint ptr %fail_addr150 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add149, ptr %fail_addr150, align 8
  br label %for.end158

if.end152:                                        ; preds = %for.body105
  %sub122 = sub i64 %length.0250, %spec.select
  %56 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %call7.i, align 8
  %57 = ptrtoint ptr %size110 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size110, align 8
  %add155 = add i64 %58, %offset.1251
  %inc157 = add i32 %i.3249, 1
  %cmp103.not = icmp eq i64 %sub122, 0
  br i1 %cmp103.not, label %if.end152.for.end158_crit_edge, label %if.end152.for.body105_crit_edge

if.end152.for.body105_crit_edge:                  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body105

if.end152.for.end158_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end158

for.end158:                                       ; preds = %if.end152.for.end158_crit_edge, %if.then147, %do.end144.for.end158_crit_edge, %for.cond102.preheader.for.end158_crit_edge
  %err.1 = phi i32 [ %call123, %if.then147 ], [ %call123, %do.end144.for.end158_crit_edge ], [ 0, %for.cond102.preheader.for.end158_crit_edge ], [ 0, %if.end152.for.end158_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup159

cleanup159:                                       ; preds = %for.end158, %if.end64.cleanup159_crit_edge, %lor.lhs.false52.cleanup159_crit_edge, %for.end48.cleanup159_crit_edge, %lor.lhs.false.cleanup159_crit_edge, %for.end.cleanup159_crit_edge, %if.else.cleanup159_crit_edge, %if.end.cleanup159_crit_edge, %if.then.cleanup159_crit_edge
  %retval.1 = phi i32 [ %err.1, %for.end158 ], [ -22, %if.then.cleanup159_crit_edge ], [ -22, %if.end.cleanup159_crit_edge ], [ -22, %for.end48.cleanup159_crit_edge ], [ -22, %lor.lhs.false52.cleanup159_crit_edge ], [ -22, %for.end.cleanup159_crit_edge ], [ -22, %lor.lhs.false.cleanup159_crit_edge ], [ -12, %if.end64.cleanup159_crit_edge ], [ -22, %if.else.cleanup159_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @concat_sync(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %mtd_sync.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mtd_sync.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body
  %mtd.addr.0.i.i = phi ptr [ %5, %for.body ], [ %7, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %8 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.mtd_sync.exit_crit_edge, label %if.then.i

mtd_get_master.exit.i.mtd_sync.exit_crit_edge:    ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_sync.exit

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %mtd.addr.0.i.i) #7
  br label %mtd_sync.exit

mtd_sync.exit:                                    ; preds = %if.then.i, %mtd_get_master.exit.i.mtd_sync.exit_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %10 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %mtd_sync.exit.for.body_crit_edge, label %mtd_sync.exit.for.end_crit_edge

mtd_sync.exit.for.end_crit_edge:                  ; preds = %mtd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

mtd_sync.exit.for.body_crit_edge:                 ; preds = %mtd_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %mtd_sync.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_lock(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev.i = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp62.i = icmp sgt i32 %1, 0
  br i1 %cmp62.i, label %for.body.lr.ph.i, label %entry.concat_xxlock.exit_crit_edge

entry.concat_xxlock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %subdev1.i = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ofs.addr.064.i = phi i64 [ %ofs, %for.body.lr.ph.i ], [ %ofs.addr.160.i, %for.inc.i.for.body.i_crit_edge ]
  %len.addr.063.i = phi i64 [ %len, %for.body.lr.ph.i ], [ %len.addr.159.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %subdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.065.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %size2.i = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %ofs.addr.064.i, i64 %7)
  %cmp3.not.i = icmp ult i64 %ofs.addr.064.i, %7
  br i1 %cmp3.not.i, label %if.end.i, label %cleanup.thread52.i

cleanup.thread52.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i64 %ofs.addr.064.i, %7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %add.i = add i64 %len.addr.063.i, %ofs.addr.064.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %7)
  %cmp6.i = icmp ugt i64 %add.i, %7
  %sub9.i = sub i64 %7, %ofs.addr.064.i
  %size.0.i = select i1 %cmp6.i, i64 %sub9.i, i64 %len.addr.063.i
  %call.i = tail call i32 @mtd_lock(ptr noundef %5, i64 noundef %ofs.addr.064.i, i64 noundef %size.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %cleanup.i, label %if.end.i.concat_xxlock.exit_crit_edge

if.end.i.concat_xxlock.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

cleanup.i:                                        ; preds = %if.end.i
  %sub18.i = sub i64 %len.addr.063.i, %size.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub18.i)
  %cmp19.i = icmp eq i64 %sub18.i, 0
  br i1 %cmp19.i, label %cleanup.i.concat_xxlock.exit_crit_edge, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

cleanup.i.concat_xxlock.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %cleanup.thread52.i
  %ofs.addr.160.i = phi i64 [ %sub.i, %cleanup.thread52.i ], [ 0, %cleanup.i.for.inc.i_crit_edge ]
  %len.addr.159.i = phi i64 [ %len.addr.063.i, %cleanup.thread52.i ], [ %sub18.i, %cleanup.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %8 = ptrtoint ptr %num_subdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_subdev.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.concat_xxlock.exit_crit_edge

for.inc.i.concat_xxlock.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

concat_xxlock.exit:                               ; preds = %for.inc.i.concat_xxlock.exit_crit_edge, %cleanup.i.concat_xxlock.exit_crit_edge, %if.end.i.concat_xxlock.exit_crit_edge, %entry.concat_xxlock.exit_crit_edge
  %err.3.i = phi i32 [ -22, %entry.concat_xxlock.exit_crit_edge ], [ -22, %for.inc.i.concat_xxlock.exit_crit_edge ], [ 0, %cleanup.i.concat_xxlock.exit_crit_edge ], [ %call.i, %if.end.i.concat_xxlock.exit_crit_edge ]
  ret i32 %err.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_unlock(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev.i = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp62.i = icmp sgt i32 %1, 0
  br i1 %cmp62.i, label %for.body.lr.ph.i, label %entry.concat_xxlock.exit_crit_edge

entry.concat_xxlock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %subdev1.i = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ofs.addr.064.i = phi i64 [ %ofs, %for.body.lr.ph.i ], [ %ofs.addr.160.i, %for.inc.i.for.body.i_crit_edge ]
  %len.addr.063.i = phi i64 [ %len, %for.body.lr.ph.i ], [ %len.addr.159.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %subdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.065.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %size2.i = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %ofs.addr.064.i, i64 %7)
  %cmp3.not.i = icmp ult i64 %ofs.addr.064.i, %7
  br i1 %cmp3.not.i, label %if.end.i, label %cleanup.thread52.i

cleanup.thread52.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i64 %ofs.addr.064.i, %7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %add.i = add i64 %len.addr.063.i, %ofs.addr.064.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %7)
  %cmp6.i = icmp ugt i64 %add.i, %7
  %sub9.i = sub i64 %7, %ofs.addr.064.i
  %size.0.i = select i1 %cmp6.i, i64 %sub9.i, i64 %len.addr.063.i
  %call13.i = tail call i32 @mtd_unlock(ptr noundef %5, i64 noundef %ofs.addr.064.i, i64 noundef %size.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool15.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool15.not.i, label %cleanup.i, label %if.end.i.concat_xxlock.exit_crit_edge

if.end.i.concat_xxlock.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

cleanup.i:                                        ; preds = %if.end.i
  %sub18.i = sub i64 %len.addr.063.i, %size.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub18.i)
  %cmp19.i = icmp eq i64 %sub18.i, 0
  br i1 %cmp19.i, label %cleanup.i.concat_xxlock.exit_crit_edge, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

cleanup.i.concat_xxlock.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %cleanup.thread52.i
  %ofs.addr.160.i = phi i64 [ %sub.i, %cleanup.thread52.i ], [ 0, %cleanup.i.for.inc.i_crit_edge ]
  %len.addr.159.i = phi i64 [ %len.addr.063.i, %cleanup.thread52.i ], [ %sub18.i, %cleanup.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %8 = ptrtoint ptr %num_subdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_subdev.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.concat_xxlock.exit_crit_edge

for.inc.i.concat_xxlock.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %concat_xxlock.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

concat_xxlock.exit:                               ; preds = %for.inc.i.concat_xxlock.exit_crit_edge, %cleanup.i.concat_xxlock.exit_crit_edge, %if.end.i.concat_xxlock.exit_crit_edge, %entry.concat_xxlock.exit_crit_edge
  %err.3.i = phi i32 [ -22, %entry.concat_xxlock.exit_crit_edge ], [ -22, %for.inc.i.concat_xxlock.exit_crit_edge ], [ 0, %cleanup.i.concat_xxlock.exit_crit_edge ], [ %call13.i, %if.end.i.concat_xxlock.exit_crit_edge ]
  ret i32 %err.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_is_locked(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32 = icmp sgt i32 %1, 0
  br i1 %cmp32, label %for.body.lr.ph, label %entry.cleanup8_crit_edge

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ofs.addr.033 = phi i64 [ %ofs, %for.body.lr.ph ], [ %sub, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.034
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %ofs.addr.033, i64 %7)
  %cmp2.not = icmp ult i64 %ofs.addr.033, %7
  br i1 %cmp2.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %add = add i64 %ofs.addr.033, %len
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %7)
  %cmp5 = icmp ugt i64 %add, %7
  br i1 %cmp5, label %if.end.cleanup8_crit_edge, label %cleanup.thread

if.end.cleanup8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @mtd_is_locked(ptr noundef %5, i64 noundef %ofs.addr.033, i64 noundef %len) #7
  br label %cleanup8

for.inc:                                          ; preds = %for.body
  %sub = sub i64 %ofs.addr.033, %7
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

cleanup8:                                         ; preds = %for.inc.cleanup8_crit_edge, %cleanup.thread, %if.end.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup.thread ], [ -22, %if.end.cleanup8_crit_edge ], [ -22, %entry.cleanup8_crit_edge ], [ -22, %for.inc.cleanup8_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @concat_suspend(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.cleanup3_crit_edge

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body
  %mtd.addr.0.i.i = phi ptr [ %5, %for.body ], [ %7, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %suspended.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 64, i32 1, i32 152
  %8 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %suspended.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mtd_get_master.exit.i.for.inc_crit_edge

mtd_get_master.exit.i.for.inc_crit_edge:          ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %mtd_get_master.exit.i
  %_suspend.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 45
  %9 = ptrtoint ptr %_suspend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_suspend.i, align 8
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %cond.end.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

cond.end.i:                                       ; preds = %if.end.i
  %call3.i = tail call i32 %10(ptr noundef %mtd.addr.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %cond.end.i.if.end6.i_crit_edge, label %mtd_suspend.exit

cond.end.i.if.end6.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %cond.end.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %11 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load8.i = load i8, ptr %suspended.i, align 8
  %bf.set.i = or i8 %bf.load8.i, -128
  store i8 %bf.set.i, ptr %suspended.i, align 8
  br label %for.inc

mtd_suspend.exit:                                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp2 = icmp slt i32 %call3.i, 0
  br i1 %cmp2, label %mtd_suspend.exit.cleanup3_crit_edge, label %mtd_suspend.exit.for.inc_crit_edge

mtd_suspend.exit.for.inc_crit_edge:               ; preds = %mtd_suspend.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

mtd_suspend.exit.cleanup3_crit_edge:              ; preds = %mtd_suspend.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3

for.inc:                                          ; preds = %mtd_suspend.exit.for.inc_crit_edge, %if.end6.i, %mtd_get_master.exit.i.for.inc_crit_edge
  %retval.0.i13 = phi i32 [ %call3.i, %mtd_suspend.exit.for.inc_crit_edge ], [ 0, %if.end6.i ], [ 0, %mtd_get_master.exit.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.016, 1
  %12 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup3_crit_edge

for.inc.cleanup3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup3

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup3:                                         ; preds = %for.inc.cleanup3_crit_edge, %mtd_suspend.exit.cleanup3_crit_edge, %entry.cleanup3_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup3_crit_edge ], [ %retval.0.i13, %for.inc.cleanup3_crit_edge ], [ %call3.i, %mtd_suspend.exit.cleanup3_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @concat_resume(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_subdev = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 1
  %0 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_subdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.mtd_concat, ptr %mtd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %mtd_resume.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mtd_resume.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdev1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body
  %mtd.addr.0.i.i = phi ptr [ %5, %for.body ], [ %7, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %suspended.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 64, i32 1, i32 152
  %8 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %suspended.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.mtd_resume.exit_crit_edge, label %if.end.i

mtd_get_master.exit.i.mtd_resume.exit_crit_edge:  ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_resume.exit

if.end.i:                                         ; preds = %mtd_get_master.exit.i
  %_resume.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 46
  %9 = ptrtoint ptr %_resume.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_resume.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %10(ptr noundef %mtd.addr.0.i.i) #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %11 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load6.i = load i8, ptr %suspended.i, align 8
  %bf.clear.i = and i8 %bf.load6.i, 127
  store i8 %bf.clear.i, ptr %suspended.i, align 8
  br label %mtd_resume.exit

mtd_resume.exit:                                  ; preds = %if.end4.i, %mtd_get_master.exit.i.mtd_resume.exit_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %12 = ptrtoint ptr %num_subdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_subdev, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %mtd_resume.exit.for.body_crit_edge, label %mtd_resume.exit.for.end_crit_edge

mtd_resume.exit.for.end_crit_edge:                ; preds = %mtd_resume.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

mtd_resume.exit.for.body_crit_edge:               ; preds = %mtd_resume.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %mtd_resume.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtd_concat_destroy(ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %0 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %2 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eraseregions, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %mtd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_writev(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_panic_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_lock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unlock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_is_locked(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !43, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdconcat.c", i32 649, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtd_concat_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtd_concat_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/mtdconcat.c", i32 651, i32 3}
!8 = !{ptr @mtd_concat_create._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mtd_concat_create._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/mtdconcat.c", i32 652, i32 2}
!12 = !{ptr @mtd_concat_create._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mtd_concat_create._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/mtdconcat.c", i32 658, i32 3}
!16 = !{ptr @mtd_concat_create._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtd_concat_create._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/mtdconcat.c", i32 709, i32 4}
!20 = !{ptr @mtd_concat_create._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtd_concat_create._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/mtdconcat.c", i32 721, i32 5}
!24 = !{ptr @mtd_concat_create._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtd_concat_create._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/mtdconcat.c", i32 748, i32 4}
!28 = !{ptr @mtd_concat_create._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtd_concat_create._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/mtdconcat.c", i32 831, i32 4}
!32 = !{ptr @mtd_concat_create._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtd_concat_create._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_mtd_concat_create, !35, !"__ksymtab_mtd_concat_create", i1 false, i1 false}
!35 = !{!"../drivers/mtd/mtdconcat.c", i32 909, i32 1}
!36 = !{ptr @__ksymtab_mtd_concat_destroy, !37, !"__ksymtab_mtd_concat_destroy", i1 false, i1 false}
!37 = !{!"../drivers/mtd/mtdconcat.c", i32 910, i32 1}
!38 = !{ptr @__UNIQUE_ID_file272, !39, !"__UNIQUE_ID_file272", i1 false, i1 false}
!39 = !{!"../drivers/mtd/mtdconcat.c", i32 912, i32 1}
!40 = !{ptr @__UNIQUE_ID_license273, !39, !"__UNIQUE_ID_license273", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_author274, !42, !"__UNIQUE_ID_author274", i1 false, i1 false}
!42 = !{!"../drivers/mtd/mtdconcat.c", i32 913, i32 1}
!43 = !{ptr @__UNIQUE_ID_description275, !44, !"__UNIQUE_ID_description275", i1 false, i1 false}
!44 = !{!"../drivers/mtd/mtdconcat.c", i32 914, i32 1}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/mtdconcat.c", i32 127, i32 4}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @concat_panic_write._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @concat_panic_write._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148620824, i64 2148621104, i64 2148621438, i64 2148621772}
!62 = !{!"auto-init"}
!63 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!64 = !{i64 2154763820, i64 2154764308, i64 2154763857, i64 2154763913, i64 2154763947, i64 2154763971, i64 2154764012, i64 2154764033, i64 2154764061, i64 2154764095}
!65 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!66 = !{i64 2154765413, i64 2154765901, i64 2154765450, i64 2154765506, i64 2154765540, i64 2154765564, i64 2154765605, i64 2154765626, i64 2154765654, i64 2154765688}
