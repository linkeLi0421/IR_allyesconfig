; ModuleID = '/llk/IR_all_yes/fs/fat/misc.c_pt.bc'
source_filename = "../fs/fat/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__fat_fs_error\22, \22a\22\09"
module asm "\09.weak\09__crc___fat_fs_error\09\09\09\09"
module asm "\09.long\09__crc___fat_fs_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fat_fs_error:\09\09\09\09\09"
module asm "\09.asciz \09\22__fat_fs_error\22\09\09\09\09\09"
module asm "__kstrtabns___fat_fs_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_time_fat2unix\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_time_fat2unix\09\09\09\09"
module asm "\09.long\09__crc_fat_time_fat2unix\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_time_fat2unix:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_time_fat2unix\22\09\09\09\09\09"
module asm "__kstrtabns_fat_time_fat2unix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_time_unix2fat\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_time_unix2fat\09\09\09\09"
module asm "\09.long\09__crc_fat_time_unix2fat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_time_unix2fat:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_time_unix2fat\22\09\09\09\09\09"
module asm "__kstrtabns_fat_time_unix2fat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_truncate_time\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_truncate_time\09\09\09\09"
module asm "\09.long\09__crc_fat_truncate_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_truncate_time:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_truncate_time\22\09\09\09\09\09"
module asm "__kstrtabns_fat_truncate_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_update_time\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_update_time\09\09\09\09"
module asm "\09.long\09__crc_fat_update_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_fat_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fat_boot_fsinfo = type { i32, [120 x i32], i32, i32, i32, [4 x i32] }
%struct.fat_entry = type { i32, %union.anon.70, i32, [2 x ptr], ptr }
%union.anon.70 = type { [2 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"error, %pV\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FAT-fs (%s): fs panic from previous error\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Filesystem has been set read-only\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab___fat_fs_error = external dso_local constant [0 x i8], align 1
@__kstrtabns___fat_fs_error = external dso_local constant [0 x i8], align 1
@__ksymtab___fat_fs_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fat_fs_error to i32), ptr @__kstrtab___fat_fs_error, ptr @__kstrtabns___fat_fs_error }, section "___ksymtab_gpl+__fat_fs_error", align 4
@fat_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%sFAT-fs (%s): %pV\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fat_msg\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/fat/misc.c\00", [18 x i8] zeroinitializer }, align 32
@fat_msg._entry_ptr = internal global ptr @fat_msg._entry, section ".printk_index", align 4
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bread failed in fat_clusters_flush\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Invalid FSINFO signature: 0x%08x, 0x%08x (sector = %lu)\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clusters badly computed (%d != %llu)\00", [59 x i8] zeroinitializer }, align 32
@days_in_year = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@__kstrtab_fat_time_fat2unix = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_time_fat2unix = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_time_fat2unix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_time_fat2unix to i32), ptr @__kstrtab_fat_time_fat2unix, ptr @__kstrtabns_fat_time_fat2unix }, section "___ksymtab_gpl+fat_time_fat2unix", align 4
@__kstrtab_fat_time_unix2fat = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_time_unix2fat = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_time_unix2fat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_time_unix2fat to i32), ptr @__kstrtab_fat_time_unix2fat, ptr @__kstrtabns_fat_time_unix2fat }, section "___ksymtab_gpl+fat_time_unix2fat", align 4
@__kstrtab_fat_truncate_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_truncate_time = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_truncate_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_truncate_time to i32), ptr @__kstrtab_fat_truncate_time, ptr @__kstrtabns_fat_truncate_time }, section "___ksymtab_gpl+fat_truncate_time", align 4
@__kstrtab_fat_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_update_time to i32), ptr @__kstrtab_fat_update_time, ptr @__kstrtabns_fat_update_time }, section "___ksymtab_gpl+fat_update_time", align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 31, i32 15 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 31, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 36, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 39, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 56, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 73, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 80, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 155, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"days_in_year\00", align 1
@___asan_gen_.45 = private constant [17 x i8] c"../fs/fat/misc.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 185, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 354, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab___fat_fs_error, ptr @__ksymtab_fat_time_fat2unix, ptr @__ksymtab_fat_time_unix2fat, ptr @__ksymtab_fat_truncate_time, ptr @__ksymtab_fat_update_time, ptr @fat_msg._entry, ptr @fat_msg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @days_in_year, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @days_in_year to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @__fat_fs_error(ptr noundef %sb, i32 noundef %report, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #9
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %vaf, align 4, !annotation !43
  %4 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %report)
  %tobool.not = icmp eq i32 %report, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %vaf) #12
  call void @llvm.va_end(ptr nonnull %args)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %errors = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, i32 9
  %8 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %errors, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %if.end.if.end11_crit_edge [
    i8 2, label %if.then3
    i8 3, label %land.lhs.true
  ]

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef %s_id) #13
  unreachable

land.lhs.true:                                    ; preds = %if.end
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %11 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then9, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %12, 1
  %13 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %s_flags.i, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_msg(ptr noundef %sb, ptr noundef %level, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #9
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !43
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %level, ptr noundef %s_id, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_clusters_flush(ptr noundef %sb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fat_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fat_bits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fat_bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp.i = icmp eq i8 %3, 32
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsinfo_sector = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %fsinfo_sector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsinfo_sector, align 4
  %conv = zext i32 %5 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %7, i64 noundef %conv, i32 noundef %9, i32 noundef 8) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1381130561, i32 %13)
  %cmp6 = icmp eq i32 %13, 1381130561
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.then10_crit_edge

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

land.lhs.true:                                    ; preds = %if.end5
  %signature2 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %signature2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signature2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920090465, i32 %15)
  %cmp8 = icmp eq i32 %15, 1920090465
  br i1 %cmp8, label %if.else, label %land.lhs.true.if.then10_crit_edge

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %land.lhs.true.if.then10_crit_edge, %if.end5.if.then10_crit_edge
  %16 = tail call i32 @llvm.bswap.i32(i32 %13)
  %signature212 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %signature212 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %signature212, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %fsinfo_sector to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fsinfo_sector, align 4
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %16, i32 noundef %19, i32 noundef %21) #12
  br label %brelse.exit

if.else:                                          ; preds = %land.lhs.true
  %free_clusters = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %free_clusters to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %free_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp14.not = icmp eq i32 %23, -1
  br i1 %cmp14.not, label %if.else.if.end19_crit_edge, label %if.then16

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %free_clusters18 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %11, i32 0, i32 3
  %25 = ptrtoint ptr %free_clusters18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %free_clusters18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.else.if.end19_crit_edge
  %prev_free = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %prev_free to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prev_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp20.not = icmp eq i32 %27, -1
  br i1 %cmp20.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %next_cluster = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %11, i32 0, i32 4
  %29 = ptrtoint ptr %next_cluster to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %next_cluster, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.end24, %if.then10
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then4 ], [ 0, %brelse.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_chain_add(ptr noundef %inode, i32 noundef %new_dclus, i32 noundef %nr_cluster) local_unnamed_addr #5 align 64 {
entry:
  %fclus = alloca i32, align 4
  %dclus = alloca i32, align 4
  %fatent = alloca %struct.fat_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_start = getelementptr i8, ptr %inode, i32 -136
  %4 = ptrtoint ptr %i_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclus) #9
  %6 = ptrtoint ptr %fclus to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %fclus, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclus) #9
  %7 = ptrtoint ptr %dclus to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dclus, align 4, !annotation !43
  %call2 = call i32 @fat_get_cluster(ptr noundef %inode, i32 noundef 268435455, ptr noundef nonnull %fclus, ptr noundef nonnull %dclus) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup.thread, label %if.end5

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus) #9
  br label %cleanup56

if.end5:                                          ; preds = %if.then
  %8 = ptrtoint ptr %fclus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fclus, align 4
  %add = add i32 %9, 1
  %10 = ptrtoint ptr %dclus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclus, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclus) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end5.if.else_crit_edge, label %if.then7

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fatent) #9
  %12 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 1
  %13 = getelementptr inbounds %struct.fat_entry, ptr %fatent, i32 0, i32 2
  %14 = getelementptr inbounds i8, ptr %fatent, i32 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4
  %16 = ptrtoint ptr %fatent to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fatent, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %12, align 4
  %18 = call ptr @memset(ptr %13, i32 0, i32 16)
  %call8 = call i32 @fat_ent_read(ptr noundef %inode, ptr noundef nonnull %fatent, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.then10, label %if.end13.thread

if.end13.thread:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent) #9
  br label %cleanup56

if.then10:                                        ; preds = %if.then7
  %call11 = call i32 @inode_needs_sync(ptr noundef %inode) #9
  %call12 = call i32 @fat_ent_write(ptr noundef %inode, ptr noundef nonnull %fatent, i32 noundef %new_dclus, i32 noundef %call11) #9
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %12, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14.i = icmp sgt i32 %21, 0
  br i1 %cmp14.i, label %if.then10.for.body.i_crit_edge, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %if.then10.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fat_entry, ptr %fatent, i32 0, i32 3, i32 %i.015.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %23) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.if.end13_crit_edge

brelse.exit.i.if.end13_crit_edge:                 ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end13:                                         ; preds = %brelse.exit.i.if.end13_crit_edge, %if.then10.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp slt i32 %call12, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fatent) #9
  br i1 %cmp14, label %if.end13.cleanup56_crit_edge, label %if.end13.if.end37_crit_edge

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end13.cleanup56_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.else:                                          ; preds = %if.end5.if.else_crit_edge, %entry.if.else_crit_edge
  %new_fclus.1103 = phi i32 [ %add, %if.end5.if.else_crit_edge ], [ 0, %entry.if.else_crit_edge ]
  %26 = ptrtoint ptr %i_start to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %new_dclus, ptr %i_start, align 8
  %i_logstart = getelementptr i8, ptr %inode, i32 -132
  %27 = ptrtoint ptr %i_logstart to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %new_dclus, ptr %i_logstart, align 4
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inode, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %30)
  %cmp23 = icmp eq i16 %30, 16384
  br i1 %cmp23, label %land.lhs.true, label %if.else.if.else35_crit_edge

if.else.if.else35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else35

land.lhs.true:                                    ; preds = %if.else
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags, align 4
  %and26 = and i32 %34, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %land.lhs.true.if.then30_crit_edge

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false:                                    ; preds = %land.lhs.true
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %35 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_flags, align 4
  %and28 = and i32 %36, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.else35_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false.if.else35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else35

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge
  %call31 = call i32 @fat_sync_inode(ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end37_crit_edge, label %if.then30.cleanup56_crit_edge

if.then30.cleanup56_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.else35:                                        ; preds = %lor.lhs.false.if.else35_crit_edge, %if.else.if.else35_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #9
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then30.if.end37_crit_edge, %if.end13.if.end37_crit_edge
  %new_fclus.1102 = phi i32 [ %new_fclus.1103, %if.else35 ], [ %new_fclus.1103, %if.then30.if.end37_crit_edge ], [ %add, %if.end13.if.end37_crit_edge ]
  %conv38 = sext i32 %new_fclus.1102 to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %37 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_blocks, align 8
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cluster_bits, align 2
  %conv39 = zext i16 %40 to i32
  %sub = add nsw i32 %conv39, -9
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %38, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv38)
  %cmp40.not = icmp eq i64 %shr, %conv38
  br i1 %cmp40.not, label %if.end37.if.end49_crit_edge, label %if.then42

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %new_fclus.1102, i64 noundef %shr) #12
  call void @fat_cache_inval_inode(ptr noundef %inode) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.end37.if.end49_crit_edge
  %41 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cluster_bits, align 2
  %conv51 = zext i16 %42 to i32
  %sub52 = add nsw i32 %conv51, -9
  %shl = shl i32 %nr_cluster, %sub52
  %conv53 = sext i32 %shl to i64
  %43 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_blocks, align 8
  %add55 = add i64 %44, %conv53
  store i64 %add55, ptr %i_blocks, align 8
  br label %cleanup56

cleanup56:                                        ; preds = %if.end49, %if.then30.cleanup56_crit_edge, %if.end13.cleanup56_crit_edge, %if.end13.thread, %cleanup.thread
  %retval.3 = phi i32 [ 0, %if.end49 ], [ %call12, %if.end13.cleanup56_crit_edge ], [ %call31, %if.then30.cleanup56_crit_edge ], [ %call2, %cleanup.thread ], [ %call8, %if.end13.thread ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_inval_inode(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fat_time_fat2unix(ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %ts, i16 noundef zeroext %__time, i16 noundef zeroext %__date, i8 noundef zeroext %time_cs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %__time)
  %1 = tail call i16 @llvm.bswap.i16(i16 %__date)
  %conv = zext i16 %1 to i32
  %2 = lshr i32 %conv, 9
  %3 = lshr i32 %conv, 5
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %.and = select i1 %cmp, i32 1, i32 %and
  %and5 = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp7 = icmp eq i32 %and5, 0
  %phi.bo = add nsw i32 %and5, -1
  %cond12 = select i1 %cmp7, i32 0, i32 %phi.bo
  %add = add nuw nsw i32 %2, 3
  %div82 = lshr i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3585, i16 %1)
  %cmp13 = icmp ugt i16 %1, -3585
  %4 = and i32 %conv, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %2)
  %cmp16.not = icmp ne i32 %2, 120
  %or.cond.not = and i1 %tobool.not, %cmp16.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.and)
  %cmp19 = icmp ugt i32 %.and, 2
  %or.cond84 = select i1 %or.cond.not, i1 %cmp19, i1 false
  %inc = zext i1 %or.cond84 to i32
  %conv23 = zext i16 %0 to i32
  %and24 = shl nuw nsw i32 %conv23, 1
  %shl = and i32 %and24, 62
  %5 = lshr i32 %conv23, 5
  %and28 = and i32 %5, 63
  %mul = mul nuw nsw i32 %and28, 60
  %6 = lshr i32 %conv23, 11
  %mul33 = mul nuw nsw i32 %6, 3600
  %narrow = add nuw nsw i32 %mul33, %shl
  %narrow83 = add nuw nsw i32 %narrow, %mul
  %add35 = zext i32 %narrow83 to i64
  %mul36 = mul nuw nsw i32 %2, 365
  %arrayidx = getelementptr [16 x i32], ptr @days_in_year, i32 0, i32 %.and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %leap_day.0 = select i1 %cmp13, i32 3651, i32 3652
  %leap_day.1 = add nuw nsw i32 %leap_day.0, %mul36
  %add37 = add nuw nsw i32 %leap_day.1, %div82
  %add38 = add nuw nsw i32 %add37, %cond12
  %add39 = add nuw nsw i32 %add38, %inc
  %add40 = add i32 %add39, %8
  %conv41 = sext i32 %add40 to i64
  %mul42 = mul nsw i64 %conv41, 86400
  %add43 = add nsw i64 %mul42, %add35
  %tz_set.i = getelementptr inbounds %struct.msdos_sb_info, ptr %sbi, i32 0, i32 19, i32 12
  %9 = ptrtoint ptr %tz_set.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %tz_set.i, align 4
  %10 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %time_offset.i = getelementptr inbounds %struct.msdos_sb_info, ptr %sbi, i32 0, i32 19, i32 5
  %11 = ptrtoint ptr %time_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %time_offset.i, align 4
  %sub.i = sub i32 0, %12
  br label %fat_tz_offset.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %13 = load i32, ptr @sys_tz, align 4
  br label %fat_tz_offset.exit

fat_tz_offset.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ %13, %cond.false.i ]
  %mul.i = mul i32 %cond.i, 60
  %conv44 = sext i32 %mul.i to i64
  %add45 = add nsw i64 %add43, %conv44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %time_cs)
  %tobool46.not = icmp eq i8 %time_cs, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %fat_tz_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div4985 = udiv i8 %time_cs, 100
  %14 = zext i8 %div4985 to i64
  %add51 = add nsw i64 %add45, %14
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add51, ptr %ts, align 8
  %16 = mul i8 %div4985, 100
  %rem86.decomposed = sub i8 %time_cs, %16
  %rem.zext = zext i8 %rem86.decomposed to i32
  %mul53 = mul nuw nsw i32 %rem.zext, 10000000
  br label %if.end56

if.else:                                          ; preds = %fat_tz_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add45, ptr %ts, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then47
  %mul53.sink = phi i32 [ 0, %if.else ], [ %mul53, %if.then47 ]
  %18 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul53.sink, ptr %18, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fat_time_unix2fat(ptr nocapture noundef readonly %sbi, ptr nocapture noundef readonly %ts, ptr nocapture noundef writeonly %time, ptr nocapture noundef writeonly %date, ptr noundef writeonly %time_cs) #5 align 64 {
entry:
  %tm = alloca %struct.tm, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm) #9
  %0 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5
  %5 = call ptr @memset(ptr %tm, i32 255, i32 32)
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts, align 8
  %tz_set.i = getelementptr inbounds %struct.msdos_sb_info, ptr %sbi, i32 0, i32 19, i32 12
  %8 = ptrtoint ptr %tz_set.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %tz_set.i, align 4
  %9 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %time_offset.i = getelementptr inbounds %struct.msdos_sb_info, ptr %sbi, i32 0, i32 19, i32 5
  %10 = ptrtoint ptr %time_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time_offset.i, align 4
  %sub.i = sub i32 0, %11
  br label %fat_tz_offset.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %12 = load i32, ptr @sys_tz, align 4
  br label %fat_tz_offset.exit

fat_tz_offset.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ %12, %cond.false.i ]
  %mul.i.neg = mul i32 %cond.i, -60
  call void @time64_to_tm(i64 noundef %7, i32 noundef %mul.i.neg, ptr noundef nonnull %tm) #9
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %14)
  %cmp = icmp slt i32 %14, 80
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %fat_tz_offset.exit
  %15 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %time, align 2
  %16 = ptrtoint ptr %date to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8448, ptr %date, align 2
  %tobool.not = icmp eq ptr %time_cs, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %fat_tz_offset.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 207, i32 %14)
  %cmp4 = icmp ugt i32 %14, 207
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end2
  %17 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 32191, ptr %time, align 2
  %18 = ptrtoint ptr %date to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -24577, ptr %date, align 2
  %tobool6.not = icmp eq ptr %time_cs, null
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end2
  %sub11 = add nsw i32 %14, -80
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub11, ptr %4, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %3, align 4
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm, align 4
  %24 = lshr i32 %23, 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %shl = shl i32 %26, 11
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %shl12 = shl i32 %28, 5
  %or = or i32 %shl, %24
  %or14 = or i32 %or, %shl12
  %conv = trunc i32 %or14 to i16
  %29 = call i16 @llvm.bswap.i16(i16 %conv)
  %30 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %time, align 2
  %shl16 = shl nuw nsw i32 %sub11, 9
  %shl18 = shl i32 %inc, 5
  %or19 = or i32 %shl18, %shl16
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  %or20 = or i32 %or19, %32
  %conv21 = trunc i32 %or20 to i16
  %33 = call i16 @llvm.bswap.i16(i16 %conv21)
  %34 = ptrtoint ptr %date to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %date, align 2
  %tobool22.not = icmp eq ptr %time_cs, null
  br i1 %tobool22.not, label %if.end9.cleanup_crit_edge, label %if.then23

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ts, align 8
  %and = and i64 %36, 1
  %mul = mul nuw nsw i64 %and, 100
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %37 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %38, 10000000
  %conv2539 = zext i32 %div to i64
  %add = add nuw nsw i64 %mul, %conv2539
  %conv26 = trunc i64 %add to i8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then23, %if.then5.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %conv26.sink = phi i8 [ %conv26, %if.then23 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ -57, %if.then5.cleanup.sink.split_crit_edge ]
  %39 = ptrtoint ptr %time_cs to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv26.sink, ptr %time_cs, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_truncate_time(ptr noundef %inode, ptr noundef readonly %now, i32 noundef %flags) #5 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %remainder = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #9
  %4 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %now, null
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts, ptr noundef %inode) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %now.addr.0 = phi ptr [ %ts, %if.then2 ], [ %now, %if.end.if.end3_crit_edge ]
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3.if.end12_crit_edge, label %if.then4

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then4:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %now.addr.0 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %now.addr.0, align 8
  %tz_set.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %9 = ptrtoint ptr %tz_set.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %tz_set.i, align 4
  %10 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %time_offset.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 5
  %11 = ptrtoint ptr %time_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %time_offset.i, align 4
  %sub.i = sub i32 0, %12
  br label %fat_tz_offset.exit

cond.false.i:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %13 = load i32, ptr @sys_tz, align 4
  br label %fat_tz_offset.exit

fat_tz_offset.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ %13, %cond.false.i ]
  %mul.i = mul i32 %cond.i, 60
  %conv = sext i32 %mul.i to i64
  %sub = sub i64 %8, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder) #9
  %14 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %remainder, align 4, !annotation !43
  %call6 = call i64 @div_s64_rem(i64 noundef %sub, i32 noundef 86400, ptr noundef nonnull %remainder) #9
  %15 = ptrtoint ptr %tz_set.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i58 = load i16, ptr %tz_set.i, align 4
  %16 = and i16 %bf.load.i58, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i59 = icmp eq i16 %16, 0
  br i1 %tobool.not.i59, label %cond.false.i63, label %cond.true.i62

cond.true.i62:                                    ; preds = %fat_tz_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %time_offset.i60 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 5
  %17 = ptrtoint ptr %time_offset.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %time_offset.i60, align 4
  %sub.i61 = sub i32 0, %18
  br label %fat_tz_offset.exit66

cond.false.i63:                                   ; preds = %fat_tz_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %19 = load i32, ptr @sys_tz, align 4
  br label %fat_tz_offset.exit66

fat_tz_offset.exit66:                             ; preds = %cond.false.i63, %cond.true.i62
  %cond.i64 = phi i32 [ %sub.i61, %cond.true.i62 ], [ %19, %cond.false.i63 ]
  %mul.i65 = mul i32 %cond.i64, 60
  %conv8 = sext i32 %mul.i65 to i64
  %add = add i64 %sub, %conv8
  %20 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %remainder, align 4
  %conv9 = sext i32 %21 to i64
  %sub10 = sub i64 %add, %conv9
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %22 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub10, ptr %i_atime, align 8
  %.compoundliteral.sroa.2.0.i_atime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %23 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_atime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_atime.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder) #9
  br label %if.end12

if.end12:                                         ; preds = %fat_tz_offset.exit66, %if.end3.if.end12_crit_edge
  %and13 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end22_crit_edge, label %if.then15

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  %isvfat = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %24 = ptrtoint ptr %isvfat to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %isvfat, align 4
  %25 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool16.not = icmp eq i16 %25, 0
  %i_ctime19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %26 = ptrtoint ptr %now.addr.0 to i32
  call void @__asan_load8_noabort(i32 %26)
  %.fca.0.load52 = load i64, ptr %now.addr.0, align 8
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %now.addr.0, i32 0, i32 1
  %27 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %27)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %ts.sroa.2.8.extract.trunc.i = trunc i64 %ts.sroa.2.8.extract.shift.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ts.sroa.2.8.extract.trunc.i)
  %tobool.not.i67 = icmp eq i32 %ts.sroa.2.8.extract.trunc.i, 0
  br i1 %tobool.not.i67, label %if.then17.fat_timespec64_trunc_10ms.exit_crit_edge, label %if.then.i

if.then17.fat_timespec64_trunc_10ms.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %fat_timespec64_trunc_10ms.exit

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i = urem i32 %ts.sroa.2.8.extract.trunc.i, 10000000
  %sub.i68 = sub i32 %ts.sroa.2.8.extract.trunc.i, %rem.i
  %ts.sroa.2.8.insert.ext.i = zext i32 %sub.i68 to i64
  %ts.sroa.2.8.insert.shift.i = shl nuw i64 %ts.sroa.2.8.insert.ext.i, 32
  %ts.sroa.2.8.insert.mask.i = and i64 %.fca.1.load, 4294967295
  %ts.sroa.2.8.insert.insert.i = or i64 %ts.sroa.2.8.insert.shift.i, %ts.sroa.2.8.insert.mask.i
  br label %fat_timespec64_trunc_10ms.exit

fat_timespec64_trunc_10ms.exit:                   ; preds = %if.then.i, %if.then17.fat_timespec64_trunc_10ms.exit_crit_edge
  %ts.sroa.2.0.i = phi i64 [ %ts.sroa.2.8.insert.insert.i, %if.then.i ], [ %.fca.1.load, %if.then17.fat_timespec64_trunc_10ms.exit_crit_edge ]
  %28 = ptrtoint ptr %i_ctime19 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %.fca.0.load52, ptr %i_ctime19, align 8
  %tmp18.sroa.4.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %tmp18.sroa.4.0.i_ctime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %ts.sroa.2.0.i, ptr %tmp18.sroa.4.0.i_ctime.sroa_idx, align 8
  br label %if.end22

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i64 %.fca.0.load52, -2
  %30 = ptrtoint ptr %i_ctime19 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %and.i, ptr %i_ctime19, align 8
  %tmp20.sroa.4.0.i_ctime19.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %31 = ptrtoint ptr %tmp20.sroa.4.0.i_ctime19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tmp20.sroa.4.0.i_ctime19.sroa_idx, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %fat_timespec64_trunc_10ms.exit, %if.end12.if.end22_crit_edge
  %and23 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %32 = ptrtoint ptr %now.addr.0 to i32
  call void @__asan_load8_noabort(i32 %32)
  %.fca.0.load46 = load i64, ptr %now.addr.0, align 8
  %and.i69 = and i64 %.fca.0.load46, -2
  %33 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %and.i69, ptr %i_mtime, align 8
  %tmp26.sroa.4.0.i_mtime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %tmp26.sroa.4.0.i_mtime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %tmp26.sroa.4.0.i_mtime.sroa_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_update_time(ptr noundef %inode, ptr noundef %now, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @fat_truncate_time(ptr noundef %inode, ptr noundef %now, i32 noundef %flags)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and2 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool3.not, i32 1, i32 2048
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.end.if.end7_crit_edge
  %dirty_flags.0 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ %., %if.then1 ]
  %and8 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #9
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %land.lhs.true
  %cur.0.i = phi i64 [ %call.i.i1.i, %land.lhs.true ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i

for.cond.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_maybe_inc_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %6 = add i64 %cur.0.i, 2
  %add.i = and i64 %6, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #9
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #9
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !45

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %inode_maybe_inc_iversion.exit

inode_maybe_inc_iversion.exit:                    ; preds = %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge
  %7 = xor i1 %tobool4.not.i, true
  %or12 = zext i1 %7 to i32
  %spec.select = or i32 %dirty_flags.0, %or12
  br label %if.end13

if.end13:                                         ; preds = %inode_maybe_inc_iversion.exit, %if.end7.if.end13_crit_edge
  %dirty_flags.1 = phi i32 [ %dirty_flags.0, %if.end7.if.end13_crit_edge ], [ %spec.select, %inode_maybe_inc_iversion.exit ]
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef %dirty_flags.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_sync_bhs(ptr nocapture noundef readonly %bhs, i32 noundef %nr_bhs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs)
  %cmp20 = icmp sgt i32 %nr_bhs, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end9_crit_edge

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body
  br i1 %cmp20, label %for.cond1.preheader.for.body3_crit_edge, label %for.cond1.preheader.for.end9_crit_edge

for.cond1.preheader.for.end9_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %bhs, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @write_dirty_buffer(ptr noundef %1, i32 noundef 0) #9
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %nr_bhs
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body3:                                        ; preds = %for.inc7.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %err.024 = phi i32 [ %err.1, %for.inc7.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %i.123 = phi i32 [ %inc8, %for.inc7.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %arrayidx4 = getelementptr ptr, ptr %bhs, i32 %i.123
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 354) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.body3.wait_on_buffer.exit_crit_edge, label %if.then.i

for.body3.wait_on_buffer.exit_crit_edge:          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wait_on_buffer(ptr noundef %3) #9
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %for.body3.wait_on_buffer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.024)
  %tobool.not = icmp eq i32 %err.024, 0
  br i1 %tobool.not, label %land.lhs.true, label %wait_on_buffer.exit.for.inc7_crit_edge

wait_on_buffer.exit.for.inc7_crit_edge:           ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc7

land.lhs.true:                                    ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not = icmp eq i32 %and1.i.i, 0
  %spec.select = select i1 %tobool6.not, i32 -5, i32 0
  br label %for.inc7

for.inc7:                                         ; preds = %land.lhs.true, %wait_on_buffer.exit.for.inc7_crit_edge
  %err.1 = phi i32 [ %err.024, %wait_on_buffer.exit.for.inc7_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc8 = add nuw nsw i32 %i.123, 1
  %exitcond25.not = icmp eq i32 %inc8, %nr_bhs
  br i1 %exitcond25.not, label %for.inc7.for.end9_crit_edge, label %for.inc7.for.body3_crit_edge

for.inc7.for.body3_crit_edge:                     ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.inc7.for.end9_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.end9:                                         ; preds = %for.inc7.for.end9_crit_edge, %for.cond1.preheader.for.end9_crit_edge, %entry.for.end9_crit_edge
  %err.0.lcssa = phi i32 [ 0, %for.cond1.preheader.for.end9_crit_edge ], [ 0, %entry.for.end9_crit_edge ], [ %err.1, %for.inc7.for.end9_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fat/misc.c", i32 31, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/fat/misc.c", i32 31, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/fat/misc.c", i32 36, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/fat/misc.c", i32 39, i32 25}
!8 = !{ptr @__ksymtab___fat_fs_error, !9, !"__ksymtab___fat_fs_error", i1 false, i1 false}
!9 = !{!"../fs/fat/misc.c", i32 42, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/fat/misc.c", i32 56, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fat_msg._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @fat_msg._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/fat/misc.c", i32 73, i32 25}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/fat/misc.c", i32 80, i32 25}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/fat/misc.c", i32 155, i32 3}
!22 = !{ptr @__ksymtab_fat_time_fat2unix, !23, !"__ksymtab_fat_time_fat2unix", i1 false, i1 false}
!23 = !{!"../fs/fat/misc.c", i32 234, i32 1}
!24 = !{ptr @__ksymtab_fat_time_unix2fat, !25, !"__ksymtab_fat_time_unix2fat", i1 false, i1 false}
!25 = !{!"../fs/fat/misc.c", i32 271, i32 1}
!26 = !{ptr @__ksymtab_fat_truncate_time, !27, !"__ksymtab_fat_truncate_time", i1 false, i1 false}
!27 = !{!"../fs/fat/misc.c", i32 331, i32 1}
!28 = !{ptr @__ksymtab_fat_update_time, !29, !"__ksymtab_fat_update_time", i1 false, i1 false}
!29 = !{!"../fs/fat/misc.c", i32 354, i32 1}
!30 = !{ptr @days_in_year, !31, !"days_in_year", i1 false, i1 false}
!31 = !{!"../fs/fat/misc.c", i32 185, i32 13}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2153857445}
!45 = !{!"branch_weights", i32 2000, i32 1}
