; ModuleID = '/llk/IR_all_yes/fs/fat/dir.c_pt.bc'
source_filename = "../fs/fat/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fat_search_long\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_search_long\09\09\09\09"
module asm "\09.long\09__crc_fat_search_long\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_search_long:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_search_long\22\09\09\09\09\09"
module asm "__kstrtabns_fat_search_long:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_get_dotdot_entry\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_get_dotdot_entry\09\09\09\09"
module asm "\09.long\09__crc_fat_get_dotdot_entry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_get_dotdot_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_get_dotdot_entry\22\09\09\09\09\09"
module asm "__kstrtabns_fat_get_dotdot_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_dir_empty\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_dir_empty\09\09\09\09"
module asm "\09.long\09__crc_fat_dir_empty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_dir_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_dir_empty\22\09\09\09\09\09"
module asm "__kstrtabns_fat_dir_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_scan\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_scan\09\09\09\09"
module asm "\09.long\09__crc_fat_scan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_scan\22\09\09\09\09\09"
module asm "__kstrtabns_fat_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_remove_entries\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_remove_entries\09\09\09\09"
module asm "\09.long\09__crc_fat_remove_entries\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_remove_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_remove_entries\22\09\09\09\09\09"
module asm "__kstrtabns_fat_remove_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_alloc_new_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_alloc_new_dir\09\09\09\09"
module asm "\09.long\09__crc_fat_alloc_new_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_alloc_new_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_alloc_new_dir\22\09\09\09\09\09"
module asm "__kstrtabns_fat_alloc_new_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fat_add_entries\22, \22a\22\09"
module asm "\09.weak\09__crc_fat_add_entries\09\09\09\09"
module asm "\09.long\09__crc_fat_add_entries\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_add_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_add_entries\22\09\09\09\09\09"
module asm "__kstrtabns_fat_add_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.msdos_dir_slot = type { i8, [10 x i8], i8, i8, i8, [12 x i8], i16, [4 x i8] }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fat_ioctl_filldir_callback = type { %struct.dir_context, ptr, i32, ptr, i32, ptr, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.__fat_dirent = type { i32, i32, i16, [256 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }

@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_fat_search_long = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_search_long = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_search_long = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_search_long to i32), ptr @__kstrtab_fat_search_long, ptr @__kstrtabns_fat_search_long }, section "___ksymtab_gpl+fat_search_long", align 4
@fat_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fat_readdir, ptr null, ptr @fat_dir_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @fat_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"..         \00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_fat_get_dotdot_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_get_dotdot_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_get_dotdot_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_get_dotdot_entry to i32), ptr @__kstrtab_fat_get_dotdot_entry, ptr @__kstrtabns_fat_get_dotdot_entry }, section "___ksymtab_gpl+fat_get_dotdot_entry", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c".          \00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_fat_dir_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_dir_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_dir_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_dir_empty to i32), ptr @__kstrtab_fat_dir_empty, ptr @__kstrtabns_fat_dir_empty }, section "___ksymtab_gpl+fat_dir_empty", align 4
@__kstrtab_fat_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_scan to i32), ptr @__kstrtab_fat_scan, ptr @__kstrtabns_fat_scan }, section "___ksymtab_gpl+fat_scan", align 4
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't remove the long name slots\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_fat_remove_entries = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_remove_entries = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_remove_entries = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_remove_entries to i32), ptr @__kstrtab_fat_remove_entries, ptr @__kstrtabns_fat_remove_entries }, section "___ksymtab_gpl+fat_remove_entries", align 4
@__kstrtab_fat_alloc_new_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_alloc_new_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_alloc_new_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_alloc_new_dir to i32), ptr @__kstrtab_fat_alloc_new_dir, ptr @__kstrtabns_fat_alloc_new_dir }, section "___ksymtab_gpl+fat_alloc_new_dir", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Corrupted directory (i_pos %lld)\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Odd directory size\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_fat_add_entries = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_add_entries = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_add_entries = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_add_entries to i32), ptr @__kstrtab_fat_add_entries, ptr @__kstrtabns_fat_add_entries }, section "___ksymtab_gpl+fat_add_entries", align 4
@__func__.fat__get_entry = private unnamed_addr constant [15 x i8] c"fat__get_entry\00", align 1
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Directory bread(block %llu) failed\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"filename was truncated while converting.\00", [55 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/fat/dir.c\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2182640129, i64 2182640130]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 229]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"fat_dir_operations\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 858, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 897, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 915, i32 25 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1066, i32 16 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1067, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1323, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1323, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1388, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 102, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 408, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 174, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 3571, i32 25 }
@___asan_gen_.63 = private constant [16 x i8] c"../fs/fat/dir.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 812, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 230, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 214, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 174, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 366, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_fat_add_entries, ptr @__ksymtab_fat_alloc_new_dir, ptr @__ksymtab_fat_dir_empty, ptr @__ksymtab_fat_get_dotdot_entry, ptr @__ksymtab_fat_remove_entries, ptr @__ksymtab_fat_scan, ptr @__ksymtab_fat_search_long, ptr @fat_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fat_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_search_long(ptr noundef %inode, ptr nocapture noundef readonly %name, i32 noundef %name_len, ptr nocapture noundef writeonly %sinfo) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %de = alloca ptr, align 4
  %nr_slots = alloca i8, align 1
  %unicode = alloca ptr, align 4
  %bufname = alloca [73 x i8], align 1
  %cpos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #11
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #11
  %5 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nr_slots) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unicode) #11
  %6 = ptrtoint ptr %unicode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %unicode, align 4
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %bufname) #11
  %7 = call ptr @memset(ptr %bufname, i32 255, i32 73)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpos) #11
  %8 = ptrtoint ptr %cpos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %cpos, align 8
  %call1186 = call fastcc i32 @fat_get_entry(ptr noundef %inode, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1186)
  %cmp187 = icmp eq i32 %call1186, -1
  br i1 %cmp187, label %entry.end_of_dir_crit_edge, label %parse_record.preheader.lr.ph

entry.end_of_dir_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_of_dir

parse_record.preheader.lr.ph:                     ; preds = %entry
  %name_check.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 8
  %nls_io.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 21
  br label %parse_record

parse_record:                                     ; preds = %parse_record.backedge, %parse_record.preheader.lr.ph
  %9 = ptrtoint ptr %nr_slots to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %nr_slots, align 1
  %10 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %de, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -27, i8 %13)
  %cmp3 = icmp eq i8 %13, -27
  br i1 %cmp3, label %parse_record.while.cond.backedge_crit_edge, label %if.end6

parse_record.while.cond.backedge_crit_edge:       ; preds = %parse_record
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end6:                                          ; preds = %parse_record
  %attr = getelementptr inbounds %struct.msdos_dir_entry, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %attr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %15)
  %cmp8.not = icmp eq i8 %15, 15
  %16 = and i8 %15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %or.cond = or i1 %cmp8.not, %tobool.not
  br i1 %or.cond, label %if.end13, label %if.end6.while.cond.backedge_crit_edge

if.end6.while.cond.backedge_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end13:                                         ; preds = %if.end6
  br i1 %cmp8.not, label %if.then32, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cond = icmp eq i8 %13, 0
  br i1 %cond, label %land.lhs.true18.while.cond.backedge_crit_edge, label %land.lhs.true18.if.end52_crit_edge

land.lhs.true18.if.end52_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true18.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then32:                                        ; preds = %if.end13
  %call33 = call fastcc i32 @fat_parse_long(ptr noundef %inode, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de, ptr noundef nonnull %unicode, ptr noundef nonnull %nr_slots)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.end_of_dir_crit_edge, label %if.else

if.then32.end_of_dir_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_of_dir

if.else:                                          ; preds = %if.then32
  %17 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call33, label %if.else.if.end52_crit_edge [
    i32 1, label %if.else.while.cond.backedge_crit_edge
    i32 2, label %if.else.parse_record.backedge_crit_edge
    i32 3, label %if.else.end_of_dir_crit_edge
  ]

if.else.end_of_dir_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_of_dir

if.else.parse_record.backedge_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_record.backedge

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

parse_record.backedge:                            ; preds = %while.cond.backedge.parse_record.backedge_crit_edge, %if.else.parse_record.backedge_crit_edge
  br label %parse_record

if.end52:                                         ; preds = %if.else.if.end52_crit_edge, %land.lhs.true18.if.end52_crit_edge
  %18 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %de, align 4
  %call54 = call fastcc i32 @fat_parse_short(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %bufname, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.end52.while.cond.backedge_crit_edge, label %if.end58

if.end52.while.cond.backedge_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_cmp4(i32 %call54, i32 %name_len)
  %cmp.not.i = icmp eq i32 %call54, %name_len
  br i1 %cmp.not.i, label %if.end.i, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end.i:                                         ; preds = %if.end58
  %20 = ptrtoint ptr %name_check.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %name_check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %21)
  %cmp1.not.i = icmp eq i8 %21, 115
  br i1 %cmp1.not.i, label %fat_name_match.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nls_io.i, align 4
  %charset2lower.i.i.i = getelementptr inbounds %struct.nls_table, ptr %23, i32 0, i32 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then3.i
  %s1.addr.0.i.i = phi ptr [ %name, %if.then3.i ], [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %s2.addr.0.i.i = phi ptr [ %bufname, %if.then3.i ], [ %incdec.ptr1.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %len.addr.0.i.i = phi i32 [ %name_len, %if.then3.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.found_crit_edge, label %while.body.i.i

while.cond.i.i.found_crit_edge:                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add i32 %len.addr.0.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %s1.addr.0.i.i, i32 1
  %24 = ptrtoint ptr %s1.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s1.addr.0.i.i, align 1
  %26 = ptrtoint ptr %charset2lower.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %charset2lower.i.i.i, align 4
  %idxprom.i.i.i = zext i8 %25 to i32
  %arrayidx.i.i.i = getelementptr i8, ptr %27, i32 %idxprom.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i = icmp eq i8 %29, 0
  %c..i.i.i = select i1 %tobool.not.i.i.i, i8 %25, i8 %29
  %incdec.ptr1.i.i = getelementptr i8, ptr %s2.addr.0.i.i, i32 1
  %30 = ptrtoint ptr %s2.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %s2.addr.0.i.i, align 1
  %idxprom.i7.i.i = zext i8 %31 to i32
  %arrayidx.i8.i.i = getelementptr i8, ptr %27, i32 %idxprom.i7.i.i
  %32 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i9.i.i = icmp eq i8 %33, 0
  %c..i10.i.i = select i1 %tobool.not.i9.i.i, i8 %31, i8 %33
  %cmp.not.i.i = icmp eq i8 %c..i.i.i, %c..i10.i.i
  br i1 %cmp.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.if.end63_crit_edge

while.body.i.i.if.end63_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

fat_name_match.exit:                              ; preds = %if.end.i
  %bcmp.i = call i32 @bcmp(ptr %name, ptr nonnull %bufname, i32 %name_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i.not, label %fat_name_match.exit.found_crit_edge, label %fat_name_match.exit.if.end63_crit_edge

fat_name_match.exit.if.end63_crit_edge:           ; preds = %fat_name_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

fat_name_match.exit.found_crit_edge:              ; preds = %fat_name_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.end63:                                         ; preds = %fat_name_match.exit.if.end63_crit_edge, %while.body.i.i.if.end63_crit_edge, %if.end58.if.end63_crit_edge
  %34 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nr_slots, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool64.not = icmp eq i8 %35, 0
  br i1 %tobool64.not, label %if.end63.while.cond.backedge_crit_edge, label %if.then65

if.end63.while.cond.backedge_crit_edge:           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then65:                                        ; preds = %if.end63
  %36 = ptrtoint ptr %unicode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unicode, align 4
  %add.ptr = getelementptr i16, ptr %37, i32 261
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %utf8.i = getelementptr inbounds %struct.msdos_sb_info, ptr %39, i32 0, i32 19, i32 12
  %40 = ptrtoint ptr %utf8.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i = load i16, ptr %utf8.i, align 4
  %41 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i, label %if.else.i121, label %if.then.i

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call i32 @utf16s_to_utf8s(ptr noundef %37, i32 noundef 261, i32 noundef 0, ptr noundef %add.ptr, i32 noundef 3574) #11
  br label %fat_uni_to_x8.exit

if.else.i121:                                     ; preds = %if.then65
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not48.i.i.not = icmp eq i16 %43, 0
  br i1 %tobool.not48.i.i.not, label %if.else.i121.uni16_to_x8.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.else.i121.uni16_to_x8.exit.i_crit_edge:        ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %uni16_to_x8.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.else.i121
  %nls_io.i122 = getelementptr inbounds %struct.msdos_sb_info, ptr %39, i32 0, i32 21
  %44 = ptrtoint ptr %nls_io.i122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nls_io.i122, align 4
  %uni2char.i.i = getelementptr inbounds %struct.nls_table, ptr %45, i32 0, i32 2
  %46 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp6.not.i.i = icmp eq i16 %46, 0
  br label %while.body.i.i124

while.body.i.i124:                                ; preds = %if.end18.i.i.while.body.i.i124_crit_edge, %while.body.lr.ph.i.i
  %47 = phi i16 [ %43, %while.body.lr.ph.i.i ], [ %69, %if.end18.i.i.while.body.i.i124_crit_edge ]
  %op.054.i.i = phi ptr [ %add.ptr, %while.body.lr.ph.i.i ], [ %op.1.i.i, %if.end18.i.i.while.body.i.i124_crit_edge ]
  %ip.053.i.i = phi ptr [ %37, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i123, %if.end18.i.i.while.body.i.i124_crit_edge ]
  %len.addr.052.i.i = phi i32 [ 3574, %while.body.lr.ph.i.i ], [ %len.addr.1.i.i, %if.end18.i.i.while.body.i.i124_crit_edge ]
  %incdec.ptr.i.i123 = getelementptr i16, ptr %ip.053.i.i, i32 1
  %48 = ptrtoint ptr %uni2char.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %uni2char.i.i, align 4
  %call2.i.i = call i32 %49(i16 noundef zeroext %47, ptr noundef %op.054.i.i, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp sgt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i124
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %op.054.i.i, i32 %call2.i.i
  %sub5.i.i = sub i32 %len.addr.052.i.i, %call2.i.i
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %while.body.i.i124
  %incdec.ptr17.i.i = getelementptr i8, ptr %op.054.i.i, i32 1
  br i1 %cmp6.not.i.i, label %if.else16.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %op.054.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 58, ptr %op.054.i.i, align 1
  %51 = lshr i16 %47, 8
  %conv11.i.i = zext i16 %51 to i32
  %52 = lshr i32 %conv11.i.i, 4
  %arrayidx.i.i.i125 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i.i125 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.i125, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %op.054.i.i, i32 2
  %55 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %incdec.ptr17.i.i, align 1
  %and2.i.i.i = and i32 %conv11.i.i, 15
  %arrayidx3.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i
  %56 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx3.i.i.i, align 1
  %incdec.ptr4.i.i.i = getelementptr i8, ptr %op.054.i.i, i32 3
  %58 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %incdec.ptr.i.i.i, align 1
  %59 = and i16 %47, 255
  %conv.i42.i.i = zext i16 %59 to i32
  %60 = lshr i32 %conv.i42.i.i, 4
  %arrayidx.i43.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i43.i.i, align 1
  %incdec.ptr.i44.i.i = getelementptr i8, ptr %op.054.i.i, i32 4
  %63 = ptrtoint ptr %incdec.ptr4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %incdec.ptr4.i.i.i, align 1
  %and2.i45.i.i = and i32 %conv.i42.i.i, 15
  %arrayidx3.i46.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i45.i.i
  %64 = ptrtoint ptr %arrayidx3.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx3.i46.i.i, align 1
  %incdec.ptr4.i47.i.i = getelementptr i8, ptr %op.054.i.i, i32 5
  %66 = ptrtoint ptr %incdec.ptr.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %incdec.ptr.i44.i.i, align 1
  %sub15.i.i = add i32 %len.addr.052.i.i, -5
  br label %if.end18.i.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %op.054.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 63, ptr %op.054.i.i, align 1
  %dec.i.i126 = add i32 %len.addr.052.i.i, -1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else16.i.i, %if.then8.i.i, %if.then.i.i
  %len.addr.1.i.i = phi i32 [ %sub5.i.i, %if.then.i.i ], [ %sub15.i.i, %if.then8.i.i ], [ %dec.i.i126, %if.else16.i.i ]
  %op.1.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %incdec.ptr4.i47.i.i, %if.then8.i.i ], [ %incdec.ptr17.i.i, %if.else16.i.i ]
  %68 = ptrtoint ptr %incdec.ptr.i.i123 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %incdec.ptr.i.i123, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i.i127 = icmp ne i16 %69, 0
  %sub.i.i = add i32 %len.addr.1.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i127, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end18.i.i.while.body.i.i124_crit_edge, label %while.end.i.i

if.end18.i.i.while.body.i.i124_crit_edge:         ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i124

while.end.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool19.not.i.i = icmp eq i16 %69, 0
  br i1 %tobool19.not.i.i, label %while.end.i.i.uni16_to_x8.exit.i_crit_edge, label %if.then22.i.i, !prof !61

while.end.i.i.uni16_to_x8.exit.i_crit_edge:       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uni16_to_x8.exit.i

if.then22.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #15
  br label %uni16_to_x8.exit.i

uni16_to_x8.exit.i:                               ; preds = %if.then22.i.i, %while.end.i.i.uni16_to_x8.exit.i_crit_edge, %if.else.i121.uni16_to_x8.exit.i_crit_edge
  %op.0.lcssa.i.i173 = phi ptr [ %op.1.i.i, %if.then22.i.i ], [ %op.1.i.i, %while.end.i.i.uni16_to_x8.exit.i_crit_edge ], [ %add.ptr, %if.else.i121.uni16_to_x8.exit.i_crit_edge ]
  %70 = ptrtoint ptr %op.0.lcssa.i.i173 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %op.0.lcssa.i.i173, align 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %op.0.lcssa.i.i173 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %fat_uni_to_x8.exit

fat_uni_to_x8.exit:                               ; preds = %uni16_to_x8.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %sub.ptr.sub.i.i, %uni16_to_x8.exit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %name_len)
  %cmp.not.i128 = icmp eq i32 %retval.0.i, %name_len
  br i1 %cmp.not.i128, label %if.end.i131, label %fat_uni_to_x8.exit.while.cond.backedge_crit_edge

fat_uni_to_x8.exit.while.cond.backedge_crit_edge: ; preds = %fat_uni_to_x8.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end.i131:                                      ; preds = %fat_uni_to_x8.exit
  %71 = ptrtoint ptr %name_check.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %name_check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %72)
  %cmp1.not.i130 = icmp eq i8 %72, 115
  br i1 %cmp1.not.i130, label %fat_name_match.exit158, label %if.then3.i134

if.then3.i134:                                    ; preds = %if.end.i131
  %73 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nls_io.i, align 4
  %charset2lower.i.i.i133 = getelementptr inbounds %struct.nls_table, ptr %74, i32 0, i32 4
  br label %while.cond.i.i139

while.cond.i.i139:                                ; preds = %while.body.i.i152.while.cond.i.i139_crit_edge, %if.then3.i134
  %s1.addr.0.i.i135 = phi ptr [ %name, %if.then3.i134 ], [ %incdec.ptr.i.i141, %while.body.i.i152.while.cond.i.i139_crit_edge ]
  %s2.addr.0.i.i136 = phi ptr [ %add.ptr, %if.then3.i134 ], [ %incdec.ptr1.i.i146, %while.body.i.i152.while.cond.i.i139_crit_edge ]
  %len.addr.0.i.i137 = phi i32 [ %name_len, %if.then3.i134 ], [ %dec.i.i140, %while.body.i.i152.while.cond.i.i139_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i.i137)
  %tobool.not.i.i138 = icmp eq i32 %len.addr.0.i.i137, 0
  br i1 %tobool.not.i.i138, label %while.cond.i.i139.found_crit_edge, label %while.body.i.i152

while.cond.i.i139.found_crit_edge:                ; preds = %while.cond.i.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

while.body.i.i152:                                ; preds = %while.cond.i.i139
  %dec.i.i140 = add i32 %len.addr.0.i.i137, -1
  %incdec.ptr.i.i141 = getelementptr i8, ptr %s1.addr.0.i.i135, i32 1
  %75 = ptrtoint ptr %s1.addr.0.i.i135 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %s1.addr.0.i.i135, align 1
  %77 = ptrtoint ptr %charset2lower.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %charset2lower.i.i.i133, align 4
  %idxprom.i.i.i142 = zext i8 %76 to i32
  %arrayidx.i.i.i143 = getelementptr i8, ptr %78, i32 %idxprom.i.i.i142
  %79 = ptrtoint ptr %arrayidx.i.i.i143 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i.i143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i.i144 = icmp eq i8 %80, 0
  %c..i.i.i145 = select i1 %tobool.not.i.i.i144, i8 %76, i8 %80
  %incdec.ptr1.i.i146 = getelementptr i8, ptr %s2.addr.0.i.i136, i32 1
  %81 = ptrtoint ptr %s2.addr.0.i.i136 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %s2.addr.0.i.i136, align 1
  %idxprom.i7.i.i147 = zext i8 %82 to i32
  %arrayidx.i8.i.i148 = getelementptr i8, ptr %78, i32 %idxprom.i7.i.i147
  %83 = ptrtoint ptr %arrayidx.i8.i.i148 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i8.i.i148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i9.i.i149 = icmp eq i8 %84, 0
  %c..i10.i.i150 = select i1 %tobool.not.i9.i.i149, i8 %82, i8 %84
  %cmp.not.i.i151 = icmp eq i8 %c..i.i.i145, %c..i10.i.i150
  br i1 %cmp.not.i.i151, label %while.body.i.i152.while.cond.i.i139_crit_edge, label %while.body.i.i152.while.cond.backedge_crit_edge

while.body.i.i152.while.cond.backedge_crit_edge:  ; preds = %while.body.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.body.i.i152.while.cond.i.i139_crit_edge:    ; preds = %while.body.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i139

fat_name_match.exit158:                           ; preds = %if.end.i131
  %bcmp.i153 = call i32 @bcmp(ptr %name, ptr %add.ptr, i32 %name_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i153)
  %tobool5.not.i154.not = icmp eq i32 %bcmp.i153, 0
  br i1 %tobool5.not.i154.not, label %fat_name_match.exit158.found_crit_edge, label %fat_name_match.exit158.while.cond.backedge_crit_edge

fat_name_match.exit158.while.cond.backedge_crit_edge: ; preds = %fat_name_match.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

fat_name_match.exit158.found_crit_edge:           ; preds = %fat_name_match.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

while.cond.backedge:                              ; preds = %fat_name_match.exit158.while.cond.backedge_crit_edge, %while.body.i.i152.while.cond.backedge_crit_edge, %fat_uni_to_x8.exit.while.cond.backedge_crit_edge, %if.end63.while.cond.backedge_crit_edge, %if.end52.while.cond.backedge_crit_edge, %if.else.while.cond.backedge_crit_edge, %land.lhs.true18.while.cond.backedge_crit_edge, %if.end6.while.cond.backedge_crit_edge, %parse_record.while.cond.backedge_crit_edge
  %call1 = call fastcc i32 @fat_get_entry(ptr noundef %inode, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %while.cond.backedge.end_of_dir_crit_edge, label %while.cond.backedge.parse_record.backedge_crit_edge

while.cond.backedge.parse_record.backedge_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_record.backedge

while.cond.backedge.end_of_dir_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_of_dir

found:                                            ; preds = %fat_name_match.exit158.found_crit_edge, %while.cond.i.i139.found_crit_edge, %fat_name_match.exit.found_crit_edge, %while.cond.i.i.found_crit_edge
  %85 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nr_slots, align 1
  %inc = add i8 %86, 1
  store i8 %inc, ptr %nr_slots, align 1
  %87 = ptrtoint ptr %cpos to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %cpos, align 8
  %conv76 = zext i8 %inc to i32
  %mul = shl nuw nsw i32 %conv76, 5
  %conv77 = zext i32 %mul to i64
  %sub = sub i64 %88, %conv77
  %slot_off = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 1
  %89 = ptrtoint ptr %slot_off to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %sub, ptr %slot_off, align 8
  %nr_slots79 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 2
  %90 = ptrtoint ptr %nr_slots79 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv76, ptr %nr_slots79, align 8
  %91 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %de, align 4
  %de80 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %93 = ptrtoint ptr %de80 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %de80, align 4
  %94 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bh, align 4
  %bh81 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %96 = ptrtoint ptr %bh81 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %bh81, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %95, i32 0, i32 3
  %97 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %b_blocknr.i, align 8
  %99 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i, align 16
  %dir_per_block_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %100, i32 0, i32 24
  %101 = ptrtoint ptr %dir_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dir_per_block_bits.i, align 4
  %sh_prom.i = zext i32 %102 to i64
  %shl.i = shl i64 %98, %sh_prom.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %95, i32 0, i32 5
  %103 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %b_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %92 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %104 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i = sext i32 %sub.ptr.div.i to i64
  %or.i = or i64 %shl.i, %conv.i
  %105 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %or.i, ptr %sinfo, align 8
  br label %end_of_dir

end_of_dir:                                       ; preds = %found, %while.cond.backedge.end_of_dir_crit_edge, %if.else.end_of_dir_crit_edge, %if.then32.end_of_dir_crit_edge, %entry.end_of_dir_crit_edge
  %err.4 = phi i32 [ 0, %found ], [ -2, %entry.end_of_dir_crit_edge ], [ -2, %while.cond.backedge.end_of_dir_crit_edge ], [ -2, %if.else.end_of_dir_crit_edge ], [ %call33, %if.then32.end_of_dir_crit_edge ]
  %106 = ptrtoint ptr %unicode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %unicode, align 4
  %tobool85.not = icmp eq ptr %107, null
  br i1 %tobool85.not, label %end_of_dir.cleanup88_crit_edge, label %if.then86

end_of_dir.cleanup88_crit_edge:                   ; preds = %end_of_dir
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup88

if.then86:                                        ; preds = %end_of_dir
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %108 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %108, ptr noundef nonnull %107) #11
  br label %cleanup88

cleanup88:                                        ; preds = %if.then86, %end_of_dir.cleanup88_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpos) #11
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %bufname) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unicode) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nr_slots) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #11
  ret i32 %err.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_get_entry(ptr noundef %dir, ptr nocapture noundef %pos, ptr nocapture noundef %bh, ptr nocapture noundef %de) unnamed_addr #2 align 64 {
entry:
  %phys.i = alloca i64, align 8
  %mapped_blocks.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %de, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 5
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %dir_per_block = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %dir_per_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir_per_block, align 4
  %sub = add i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %sub)
  %cmp = icmp slt i32 %sub.ptr.div, %sub
  br i1 %cmp, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %add = add i64 %13, 32
  store i64 %add, ptr %pos, align 8
  %14 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %de, align 4
  %incdec.ptr = getelementptr %struct.msdos_dir_entry, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %de, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phys.i) #11
  %18 = ptrtoint ptr %phys.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %phys.i, align 8, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapped_blocks.i) #11
  %19 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %mapped_blocks.i, align 4, !annotation !60
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 2
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  br label %next.i

next.i:                                           ; preds = %do.end.i, %if.end
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %next.i.brelse.exit.i_crit_edge, label %if.then.i.i

next.i.brelse.exit.i_crit_edge:                   ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %21) #11
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %next.i.brelse.exit.i_crit_edge
  %22 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %bh, align 4
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pos, align 8
  %25 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %26 to i64
  %shr.i = ashr i64 %24, %sh_prom.i
  %call.i = call i32 @fat_bmap(ptr noundef %dir, i64 noundef %shr.i, ptr noundef nonnull %phys.i, ptr noundef nonnull %mapped_blocks.i, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %brelse.exit.i.fat__get_entry.exit_crit_edge

brelse.exit.i.fat__get_entry.exit_crit_edge:      ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat__get_entry.exit

lor.lhs.false.i:                                  ; preds = %brelse.exit.i
  %27 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %phys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool1.not.i = icmp eq i64 %28, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.fat__get_entry.exit_crit_edge, label %if.end.i

lor.lhs.false.i.fat__get_entry.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat__get_entry.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 4
  %conv.i.i = zext i16 %34 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %conv1.i.i = sext i32 %sub.i.i to i64
  %and.i.i = and i64 %shr.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i38.i = icmp ne i64 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %cmp.i.i = icmp eq i16 %34, 1
  %or.cond.i.i = select i1 %tobool.not.i38.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i.i, label %if.end.i.fat_dir_readahead.exit.i_crit_edge, label %if.end.i.i

if.end.i.fat_dir_readahead.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_dir_readahead.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %fat_bits.i.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %fat_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fat_bits.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %cmp.i.i.i = icmp eq i8 %36, 32
  br i1 %cmp.i.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %37 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp6.i.i = icmp eq i32 %38, 1
  br i1 %cmp6.i.i, label %land.lhs.true.i.i.fat_dir_readahead.exit.i_crit_edge, label %land.lhs.true.i.i.if.end9.i.i_crit_edge

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i.fat_dir_readahead.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_dir_readahead.exit.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 26
  %39 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 3
  %41 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = call ptr @__find_get_block(ptr noundef %40, i64 noundef %28, i32 noundef %42) #11
  %cmp11.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp11.i.i, label %if.end9.i.i.if.then16.i.i_crit_edge, label %lor.lhs.false13.i.i

if.end9.i.i.if.then16.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i.i

lor.lhs.false13.i.i:                              ; preds = %if.end9.i.i
  %43 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %call.i.i.i, align 4
  %and1.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool15.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool15.not.i.i, label %lor.lhs.false13.i.i.if.then16.i.i_crit_edge, label %lor.lhs.false13.i.i.if.then.i.i.i_crit_edge

lor.lhs.false13.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false13.i.i.if.then16.i.i_crit_edge:      ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %lor.lhs.false13.i.i.if.then16.i.i_crit_edge, %if.end9.i.i.if.then16.i.i_crit_edge
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp1940.not.i.i = icmp eq i16 %46, 0
  br i1 %cmp1940.not.i.i, label %if.then16.i.i.if.end22.i.i_crit_edge, label %if.then16.i.i.for.body.i.i_crit_edge

if.then16.i.i.for.body.i.i_crit_edge:             ; preds = %if.then16.i.i
  br label %for.body.i.i

if.then16.i.i.if.end22.i.i_crit_edge:             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then16.i.i.for.body.i.i_crit_edge
  %sec.041.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then16.i.i.for.body.i.i_crit_edge ]
  %conv21.i.i = zext i32 %sec.041.i.i to i64
  %add.i.i = add i64 %28, %conv21.i.i
  %47 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_bdev.i.i.i, align 4
  %49 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_blocksize.i.i.i, align 16
  call void @__breadahead(ptr noundef %48, i64 noundef %add.i.i, i32 noundef %50) #11
  %inc.i.i = add nuw nsw i32 %sec.041.i.i, 1
  %51 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %32, align 4
  %conv18.i.i = zext i16 %52 to i32
  %cmp19.i.i = icmp ult i32 %inc.i.i, %conv18.i.i
  br i1 %cmp19.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end22.i.i_crit_edge

for.body.i.i.if.end22.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end22.i.i:                                     ; preds = %for.body.i.i.if.end22.i.i_crit_edge, %if.then16.i.i.if.end22.i.i_crit_edge
  br i1 %cmp11.i.i, label %if.end22.i.i.fat_dir_readahead.exit.i_crit_edge, label %if.end22.i.i.if.then.i.i.i_crit_edge

if.end22.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end22.i.i.fat_dir_readahead.exit.i_crit_edge:  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_dir_readahead.exit.i

if.then.i.i.i:                                    ; preds = %if.end22.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false13.i.i.if.then.i.i.i_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i.i.i) #11
  br label %fat_dir_readahead.exit.i

fat_dir_readahead.exit.i:                         ; preds = %if.then.i.i.i, %if.end22.i.i.fat_dir_readahead.exit.i_crit_edge, %land.lhs.true.i.i.fat_dir_readahead.exit.i_crit_edge, %if.end.i.fat_dir_readahead.exit.i_crit_edge
  %53 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %phys.i, align 8
  %55 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_bdev.i.i, align 4
  %57 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %56, i64 noundef %54, i32 noundef %58, i32 noundef 8) #11
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i, ptr %bh, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %fat_dir_readahead.exit.i
  %60 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i.i, align 16
  %ratelimit.i = getelementptr inbounds %struct.msdos_sb_info, ptr %61, i32 0, i32 30
  %call6.i = call i32 @___ratelimit(ptr noundef %ratelimit.i, ptr noundef nonnull @__func__.fat__get_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then8.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %phys.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %phys.i, align 8
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %17, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i64 noundef %63) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i.do.end.i_crit_edge
  %add.i = add i64 %shr.i, 1
  %64 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom12.i = zext i8 %65 to i64
  %shl.i = shl i64 %add.i, %sh_prom12.i
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %shl.i, ptr %pos, align 8
  br label %next.i

if.end13.i:                                       ; preds = %fat_dir_readahead.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %pos, align 8
  %69 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i = add i32 %70, -1
  %71 = trunc i64 %68 to i32
  %conv15.i = and i32 %sub.i, %71
  %add16.i = add i64 %68, 32
  store i64 %add16.i, ptr %pos, align 8
  %72 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 %conv15.i
  %76 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i, ptr %de, align 4
  br label %fat__get_entry.exit

fat__get_entry.exit:                              ; preds = %if.end13.i, %lor.lhs.false.i.fat__get_entry.exit_crit_edge, %brelse.exit.i.fat__get_entry.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end13.i ], [ -1, %lor.lhs.false.i.fat__get_entry.exit_crit_edge ], [ -1, %brelse.exit.i.fat__get_entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_blocks.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys.i) #11
  br label %return

return:                                           ; preds = %fat__get_entry.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %fat__get_entry.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_parse_long(ptr noundef %dir, ptr nocapture noundef %pos, ptr nocapture noundef %bh, ptr nocapture noundef %de, ptr nocapture noundef %unicode, ptr nocapture noundef writeonly %nr_slots) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %unicode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unicode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %2 = load ptr, ptr @names_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #11
  %3 = ptrtoint ptr %unicode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %unicode, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then2.cleanup97_crit_edge, label %if.then.i

if.then2.cleanup97_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %5) #11
  br label %cleanup97

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %6 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %de, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 2
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not181 = icmp eq i8 %10, 0
  br i1 %tobool5.not181, label %if.end3.cleanup97_crit_edge, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  br label %if.end7

if.end3.cleanup97_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end7:                                          ; preds = %parse_long.backedge.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %11 = phi i8 [ %109, %parse_long.backedge.if.end7_crit_edge ], [ %9, %if.end3.if.end7_crit_edge ]
  %12 = phi ptr [ %107, %parse_long.backedge.if.end7_crit_edge ], [ %7, %if.end3.if.end7_crit_edge ]
  %and9 = and i8 %11, -65
  %13 = add i8 %and9, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %13)
  %14 = icmp ult i8 %13, -20
  br i1 %14, label %if.end7.cleanup97_crit_edge, label %if.end15

if.end7.cleanup97_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end15:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %nr_slots to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and9, ptr %nr_slots, align 1
  %alias_checksum16 = getelementptr inbounds %struct.msdos_dir_slot, ptr %12, i32 0, i32 4
  %16 = ptrtoint ptr %alias_checksum16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %alias_checksum16, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end52.while.cond_crit_edge, %if.end15
  %ds.0 = phi ptr [ %12, %if.end15 ], [ %94, %if.end52.while.cond_crit_edge ]
  %slot.0 = phi i8 [ %and9, %if.end15 ], [ %dec, %if.end52.while.cond_crit_edge ]
  %dec = add i8 %slot.0, -1
  %conv17 = zext i8 %dec to i32
  %mul = mul nuw nsw i32 %conv17, 13
  %18 = ptrtoint ptr %unicode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unicode, align 4
  %add.ptr = getelementptr i16, ptr %19, i32 %mul
  %name0_4 = getelementptr inbounds %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1
  %20 = ptrtoint ptr %name0_4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %name0_4, align 1
  %conv.i = zext i8 %21 to i16
  %arrayidx1.i = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %23 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i16, ptr %add.ptr, i32 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or.i, ptr %add.ptr, align 2
  %add.ptr.i = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 1
  %conv.i.1 = zext i8 %26 to i16
  %arrayidx1.i.1 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.1, align 1
  %conv2.i.1 = zext i8 %28 to i16
  %shl.i.1 = shl nuw i16 %conv2.i.1, 8
  %or.i.1 = or i16 %shl.i.1, %conv.i.1
  %incdec.ptr.i.1 = getelementptr i16, ptr %incdec.ptr.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %or.i.1, ptr %incdec.ptr.i, align 2
  %add.ptr.i.1 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.1, align 1
  %conv.i.2 = zext i8 %31 to i16
  %arrayidx1.i.2 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.i.2, align 1
  %conv2.i.2 = zext i8 %33 to i16
  %shl.i.2 = shl nuw i16 %conv2.i.2, 8
  %or.i.2 = or i16 %shl.i.2, %conv.i.2
  %incdec.ptr.i.2 = getelementptr i16, ptr %incdec.ptr.i.1, i32 1
  %34 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or.i.2, ptr %incdec.ptr.i.1, align 2
  %add.ptr.i.2 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.i.2, align 1
  %conv.i.3 = zext i8 %36 to i16
  %arrayidx1.i.3 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 7
  %37 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.i.3, align 1
  %conv2.i.3 = zext i8 %38 to i16
  %shl.i.3 = shl nuw i16 %conv2.i.3, 8
  %or.i.3 = or i16 %shl.i.3, %conv.i.3
  %incdec.ptr.i.3 = getelementptr i16, ptr %incdec.ptr.i.2, i32 1
  %39 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or.i.3, ptr %incdec.ptr.i.2, align 2
  %add.ptr.i.3 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 8
  %40 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i.3, align 1
  %conv.i.4 = zext i8 %41 to i16
  %arrayidx1.i.4 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 1, i32 9
  %42 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx1.i.4, align 1
  %conv2.i.4 = zext i8 %43 to i16
  %shl.i.4 = shl nuw i16 %conv2.i.4, 8
  %or.i.4 = or i16 %shl.i.4, %conv.i.4
  %44 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or.i.4, ptr %incdec.ptr.i.3, align 2
  %45 = load ptr, ptr %unicode, align 4
  %add.ptr18 = getelementptr i16, ptr %45, i32 5
  %add.ptr19 = getelementptr i16, ptr %add.ptr18, i32 %mul
  %name5_10 = getelementptr inbounds %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5
  %46 = ptrtoint ptr %name5_10 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %name5_10, align 1
  %conv.i143 = zext i8 %47 to i16
  %arrayidx1.i144 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %arrayidx1.i144 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx1.i144, align 1
  %conv2.i145 = zext i8 %49 to i16
  %shl.i146 = shl nuw i16 %conv2.i145, 8
  %or.i147 = or i16 %shl.i146, %conv.i143
  %incdec.ptr.i148 = getelementptr i16, ptr %add.ptr19, i32 1
  %50 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or.i147, ptr %add.ptr19, align 2
  %add.ptr.i149 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 2
  %51 = ptrtoint ptr %add.ptr.i149 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i149, align 1
  %conv.i143.1 = zext i8 %52 to i16
  %arrayidx1.i144.1 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 3
  %53 = ptrtoint ptr %arrayidx1.i144.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx1.i144.1, align 1
  %conv2.i145.1 = zext i8 %54 to i16
  %shl.i146.1 = shl nuw i16 %conv2.i145.1, 8
  %or.i147.1 = or i16 %shl.i146.1, %conv.i143.1
  %incdec.ptr.i148.1 = getelementptr i16, ptr %incdec.ptr.i148, i32 1
  %55 = ptrtoint ptr %incdec.ptr.i148 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %or.i147.1, ptr %incdec.ptr.i148, align 2
  %add.ptr.i149.1 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 4
  %56 = ptrtoint ptr %add.ptr.i149.1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr.i149.1, align 1
  %conv.i143.2 = zext i8 %57 to i16
  %arrayidx1.i144.2 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 5
  %58 = ptrtoint ptr %arrayidx1.i144.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx1.i144.2, align 1
  %conv2.i145.2 = zext i8 %59 to i16
  %shl.i146.2 = shl nuw i16 %conv2.i145.2, 8
  %or.i147.2 = or i16 %shl.i146.2, %conv.i143.2
  %incdec.ptr.i148.2 = getelementptr i16, ptr %incdec.ptr.i148.1, i32 1
  %60 = ptrtoint ptr %incdec.ptr.i148.1 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %or.i147.2, ptr %incdec.ptr.i148.1, align 2
  %add.ptr.i149.2 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 6
  %61 = ptrtoint ptr %add.ptr.i149.2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr.i149.2, align 1
  %conv.i143.3 = zext i8 %62 to i16
  %arrayidx1.i144.3 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 7
  %63 = ptrtoint ptr %arrayidx1.i144.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx1.i144.3, align 1
  %conv2.i145.3 = zext i8 %64 to i16
  %shl.i146.3 = shl nuw i16 %conv2.i145.3, 8
  %or.i147.3 = or i16 %shl.i146.3, %conv.i143.3
  %incdec.ptr.i148.3 = getelementptr i16, ptr %incdec.ptr.i148.2, i32 1
  %65 = ptrtoint ptr %incdec.ptr.i148.2 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %or.i147.3, ptr %incdec.ptr.i148.2, align 2
  %add.ptr.i149.3 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 8
  %66 = ptrtoint ptr %add.ptr.i149.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr.i149.3, align 1
  %conv.i143.4 = zext i8 %67 to i16
  %arrayidx1.i144.4 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 9
  %68 = ptrtoint ptr %arrayidx1.i144.4 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx1.i144.4, align 1
  %conv2.i145.4 = zext i8 %69 to i16
  %shl.i146.4 = shl nuw i16 %conv2.i145.4, 8
  %or.i147.4 = or i16 %shl.i146.4, %conv.i143.4
  %incdec.ptr.i148.4 = getelementptr i16, ptr %incdec.ptr.i148.3, i32 1
  %70 = ptrtoint ptr %incdec.ptr.i148.3 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %or.i147.4, ptr %incdec.ptr.i148.3, align 2
  %add.ptr.i149.4 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 10
  %71 = ptrtoint ptr %add.ptr.i149.4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr.i149.4, align 1
  %conv.i143.5 = zext i8 %72 to i16
  %arrayidx1.i144.5 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 5, i32 11
  %73 = ptrtoint ptr %arrayidx1.i144.5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx1.i144.5, align 1
  %conv2.i145.5 = zext i8 %74 to i16
  %shl.i146.5 = shl nuw i16 %conv2.i145.5, 8
  %or.i147.5 = or i16 %shl.i146.5, %conv.i143.5
  %75 = ptrtoint ptr %incdec.ptr.i148.4 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %or.i147.5, ptr %incdec.ptr.i148.4, align 2
  %76 = load ptr, ptr %unicode, align 4
  %add.ptr21 = getelementptr i16, ptr %76, i32 11
  %add.ptr22 = getelementptr i16, ptr %add.ptr21, i32 %mul
  %name11_12 = getelementptr inbounds %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 7
  %77 = ptrtoint ptr %name11_12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %name11_12, align 1
  %conv.i157 = zext i8 %78 to i16
  %arrayidx1.i158 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 7, i32 1
  %79 = ptrtoint ptr %arrayidx1.i158 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx1.i158, align 1
  %conv2.i159 = zext i8 %80 to i16
  %shl.i160 = shl nuw i16 %conv2.i159, 8
  %or.i161 = or i16 %shl.i160, %conv.i157
  %incdec.ptr.i162 = getelementptr i16, ptr %add.ptr22, i32 1
  %81 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %or.i161, ptr %add.ptr22, align 2
  %add.ptr.i163 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 7, i32 2
  %82 = ptrtoint ptr %add.ptr.i163 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr.i163, align 1
  %conv.i157.1 = zext i8 %83 to i16
  %arrayidx1.i158.1 = getelementptr %struct.msdos_dir_slot, ptr %ds.0, i32 0, i32 7, i32 3
  %84 = ptrtoint ptr %arrayidx1.i158.1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx1.i158.1, align 1
  %conv2.i159.1 = zext i8 %85 to i16
  %shl.i160.1 = shl nuw i16 %conv2.i159.1, 8
  %or.i161.1 = or i16 %shl.i160.1, %conv.i157.1
  %86 = ptrtoint ptr %incdec.ptr.i162 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %or.i161.1, ptr %incdec.ptr.i162, align 2
  %87 = ptrtoint ptr %ds.0 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ds.0, align 2
  %89 = and i8 %88, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool27.not = icmp eq i8 %89, 0
  br i1 %tobool27.not, label %while.cond.if.end29_crit_edge, label %if.then28

while.cond.if.end29_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %unicode to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %unicode, align 4
  %add = add nuw nsw i32 %mul, 13
  %arrayidx = getelementptr i16, ptr %91, i32 %add
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %arrayidx, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %while.cond.if.end29_crit_edge
  %call30 = tail call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef %pos, ptr noundef %bh, ptr noundef %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup97_crit_edge, label %if.end34

if.end29.cleanup97_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp36 = icmp eq i8 %dec, 0
  %93 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %de, align 4
  br i1 %cmp36, label %while.end, label %if.end39

if.end39:                                         ; preds = %if.end34
  %attr = getelementptr inbounds %struct.msdos_dir_slot, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %attr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %96)
  %cmp41.not = icmp eq i8 %96, 15
  br i1 %cmp41.not, label %if.end44, label %if.end39.cleanup97_crit_edge

if.end39.cleanup97_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end44:                                         ; preds = %if.end39
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %94, align 2
  %99 = and i8 %98, -65
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %dec)
  %cmp49.not = icmp eq i8 %99, %dec
  br i1 %cmp49.not, label %if.end52, label %if.end44.parse_long.backedge_crit_edge

if.end44.parse_long.backedge_crit_edge:           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_long.backedge

if.end52:                                         ; preds = %if.end44
  %alias_checksum53 = getelementptr inbounds %struct.msdos_dir_slot, ptr %94, i32 0, i32 4
  %100 = ptrtoint ptr %alias_checksum53 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %alias_checksum53, align 1
  %cmp56.not = icmp eq i8 %101, %17
  br i1 %cmp56.not, label %if.end52.while.cond_crit_edge, label %if.end52.parse_long.backedge_crit_edge

if.end52.parse_long.backedge_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_long.backedge

if.end52.while.cond_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %if.end34
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -27, i8 %103)
  %cmp62 = icmp eq i8 %103, -27
  br i1 %cmp62, label %while.end.cleanup97_crit_edge, label %if.end65

while.end.cleanup97_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end65:                                         ; preds = %while.end
  %attr66 = getelementptr inbounds %struct.msdos_dir_entry, ptr %94, i32 0, i32 1
  %104 = ptrtoint ptr %attr66 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %attr66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %105)
  %cmp68 = icmp eq i8 %105, 15
  br i1 %cmp68, label %if.end65.parse_long.backedge_crit_edge, label %if.end71

if.end65.parse_long.backedge_crit_edge:           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_long.backedge

parse_long.backedge:                              ; preds = %if.end65.parse_long.backedge_crit_edge, %if.end52.parse_long.backedge_crit_edge, %if.end44.parse_long.backedge_crit_edge
  %106 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %de, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 2
  %110 = and i8 %109, 64
  %tobool5.not = icmp eq i8 %110, 0
  br i1 %tobool5.not, label %parse_long.backedge.cleanup97_crit_edge, label %parse_long.backedge.if.end7_crit_edge

parse_long.backedge.if.end7_crit_edge:            ; preds = %parse_long.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

parse_long.backedge.cleanup97_crit_edge:          ; preds = %parse_long.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool74.not = icmp ne i8 %103, 0
  %111 = and i8 %105, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool85.not = icmp eq i8 %111, 0
  %or.cond137 = select i1 %tobool74.not, i1 %tobool85.not, i1 false
  br i1 %or.cond137, label %if.end87, label %if.end71.cleanup97_crit_edge

if.end71.cleanup97_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.end87:                                         ; preds = %if.end71
  %call90 = tail call fastcc zeroext i8 @fat_checksum(ptr noundef %94)
  call void @__sanitizer_cov_trace_cmp1(i8 %call90, i8 %17)
  %cmp93.not = icmp eq i8 %call90, %17
  br i1 %cmp93.not, label %if.end87.cleanup97_crit_edge, label %if.then95

if.end87.cleanup97_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup97

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %nr_slots to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %nr_slots, align 1
  br label %cleanup97

cleanup97:                                        ; preds = %if.then95, %if.end87.cleanup97_crit_edge, %if.end71.cleanup97_crit_edge, %parse_long.backedge.cleanup97_crit_edge, %while.end.cleanup97_crit_edge, %if.end39.cleanup97_crit_edge, %if.end29.cleanup97_crit_edge, %if.end7.cleanup97_crit_edge, %if.end3.cleanup97_crit_edge, %if.then.i, %if.then2.cleanup97_crit_edge
  %retval.3 = phi i32 [ 1, %if.end71.cleanup97_crit_edge ], [ 0, %if.then95 ], [ 0, %if.end87.cleanup97_crit_edge ], [ -12, %if.then2.cleanup97_crit_edge ], [ -12, %if.then.i ], [ 1, %if.end3.cleanup97_crit_edge ], [ 3, %if.end29.cleanup97_crit_edge ], [ 2, %if.end39.cleanup97_crit_edge ], [ 1, %while.end.cleanup97_crit_edge ], [ 1, %if.end7.cleanup97_crit_edge ], [ 1, %parse_long.backedge.cleanup97_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_parse_short(ptr noundef %sb, ptr nocapture noundef readonly %de, ptr noundef %name, i32 noundef %dot_hidden) unnamed_addr #0 align 64 {
entry:
  %uni_name = alloca [14 x i16], align 2
  %work = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %isvfat1 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, i32 12
  %2 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %isvfat1, align 4
  %shortname = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, i32 7
  %3 = ptrtoint ptr %shortname to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %shortname, align 4
  %nls_disk9 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %nls_disk9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nls_disk9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %uni_name) #11
  %7 = call ptr @memset(ptr %uni_name, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %work) #11
  %8 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dot_hidden)
  %tobool10.not = icmp ne i32 %dot_hidden, 0
  %9 = and i1 %tobool10.not, %tobool.not
  br i1 %9, label %land.lhs.true11, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true11:                                  ; preds = %entry
  %attr = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 1
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %attr, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.end_crit_edge, label %if.then

land.lhs.true11.if.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %name, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 46, ptr %name, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true11.if.end_crit_edge, %entry.if.end_crit_edge
  %ptname.0 = phi ptr [ %name, %entry.if.end_crit_edge ], [ %incdec.ptr, %if.then ], [ %name, %land.lhs.true11.if.end_crit_edge ]
  %dotoffset.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then ], [ 0, %land.lhs.true11.if.end_crit_edge ]
  %14 = call ptr @memcpy(ptr %work, ptr %de, i32 11)
  %15 = ptrtoint ptr %work to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %work, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp = icmp eq i8 %16, 5
  br i1 %cmp, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %work to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -27, ptr %work, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %lcase = getelementptr inbounds %struct.msdos_dir_entry, ptr %de, i32 0, i32 2
  %18 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool36.not = icmp eq i16 %18, 0
  br label %for.body

for.body:                                         ; preds = %if.end73.for.body_crit_edge, %if.end19
  %uni_len.0281 = phi i32 [ 0, %if.end19 ], [ %uni_len.1, %if.end73.for.body_crit_edge ]
  %name_len.0280 = phi i32 [ 0, %if.end19 ], [ %name_len.1, %if.end73.for.body_crit_edge ]
  %j.0279 = phi i32 [ 0, %if.end19 ], [ %inc, %if.end73.for.body_crit_edge ]
  %i.0278 = phi i32 [ 0, %if.end19 ], [ %i.3, %if.end73.for.body_crit_edge ]
  %arrayidx22 = getelementptr [11 x i8], ptr %work, i32 0, i32 %i.0278
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp eq i8 %20, 0
  br i1 %tobool23.not, label %for.body.for.end74_crit_edge, label %if.end25

for.body.for.end74_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end74

if.end25:                                         ; preds = %for.body
  %sub = sub i32 8, %i.0278
  %inc = add i32 %j.0279, 1
  %arrayidx27 = getelementptr [14 x i16], ptr %uni_name, i32 0, i32 %j.0279
  %21 = ptrtoint ptr %lcase to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lcase, align 4
  %23 = and i8 %22, 8
  %and29 = zext i8 %23 to i32
  %call30 = call fastcc i32 @fat_shortname2uni(ptr noundef %6, ptr noundef %arrayidx22, i32 noundef %sub, ptr noundef %arrayidx27, i16 noundef zeroext %4, i32 noundef %and29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 2
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end25
  br i1 %tobool.not, label %if.then35, label %if.then33.if.end42_crit_edge

if.then33.if.end42_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %24 = add i8 %20, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %24)
  %25 = icmp ult i8 %24, 26
  %add.i = add i8 %20, 32
  %26 = select i1 %tobool36.not, i1 %25, i1 false
  %cond.in = select i1 %26, i8 %add.i, i8 %20
  %arrayidx41 = getelementptr i8, ptr %ptname.0, i32 %i.0278
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %cond.in, ptr %arrayidx41, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %if.then33.if.end42_crit_edge
  %inc43 = add nsw i32 %i.0278, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp45.not = icmp eq i8 %20, 32
  %spec.select = select i1 %cmp45.not, i32 %name_len.0280, i32 %inc43
  %spec.select261 = select i1 %cmp45.not, i32 %uni_len.0281, i32 %inc
  br label %if.end73

if.else:                                          ; preds = %if.end25
  br i1 %tobool.not, label %for.body64.preheader, label %if.then50

for.body64.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %uglygep = getelementptr i8, ptr %ptname.0, i32 %i.0278
  %28 = add nsw i32 %call30, -1
  %29 = sub i32 7, %i.0278
  %umin = call i32 @llvm.umin.i32(i32 %29, i32 %28)
  %30 = add nuw nsw i32 %umin, 1
  %31 = call ptr @memcpy(ptr %uglygep, ptr %arrayidx22, i32 %30)
  %32 = add nsw i32 %i.0278, 1
  %33 = add i32 %32, %umin
  br label %if.end73

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %34 = call i32 @llvm.smin.i32(i32 %call30, i32 %sub)
  %add = add i32 %34, %i.0278
  br label %if.end73

if.end73:                                         ; preds = %if.then50, %for.body64.preheader, %if.end42
  %i.3 = phi i32 [ %inc43, %if.end42 ], [ %add, %if.then50 ], [ %33, %for.body64.preheader ]
  %name_len.1 = phi i32 [ %spec.select, %if.end42 ], [ %add, %if.then50 ], [ %33, %for.body64.preheader ]
  %uni_len.1 = phi i32 [ %spec.select261, %if.end42 ], [ %inc, %if.then50 ], [ %inc, %for.body64.preheader ]
  %cmp20 = icmp slt i32 %i.3, 8
  br i1 %cmp20, label %if.end73.for.body_crit_edge, label %if.end73.for.end74_crit_edge

if.end73.for.end74_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end74

if.end73.for.body_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end74:                                        ; preds = %if.end73.for.end74_crit_edge, %for.body.for.end74_crit_edge
  %name_len.0.lcssa = phi i32 [ %name_len.0280, %for.body.for.end74_crit_edge ], [ %name_len.1, %if.end73.for.end74_crit_edge ]
  %uni_len.0.lcssa = phi i32 [ %uni_len.0281, %for.body.for.end74_crit_edge ], [ %uni_len.1, %if.end73.for.end74_crit_edge ]
  %inc75 = add i32 %uni_len.0.lcssa, 1
  %arrayidx76 = getelementptr [14 x i16], ptr %uni_name, i32 0, i32 %uni_len.0.lcssa
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %6, i32 0, i32 3
  %35 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %char2uni.i, align 4
  %call.i = call i32 %36(ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %arrayidx76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.end74.fat_short2uni.exit_crit_edge

for.end74.fat_short2uni.exit_crit_edge:           ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_short2uni.exit

if.then.i:                                        ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 63, ptr %arrayidx76, align 2
  br label %fat_short2uni.exit

fat_short2uni.exit:                               ; preds = %if.then.i, %for.end74.fat_short2uni.exit_crit_edge
  br i1 %tobool.not, label %if.then79, label %fat_short2uni.exit.if.end81_crit_edge

fat_short2uni.exit.if.end81_crit_edge:            ; preds = %fat_short2uni.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then79:                                        ; preds = %fat_short2uni.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx80 = getelementptr i8, ptr %ptname.0, i32 %name_len.0.lcssa
  %38 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 46, ptr %arrayidx80, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %fat_short2uni.exit.if.end81_crit_edge
  %inc82 = add i32 %name_len.0.lcssa, 1
  br label %for.body86

for.body86:                                       ; preds = %if.end155.for.body86_crit_edge, %if.end81
  %uni_len.2295 = phi i32 [ %uni_len.0.lcssa, %if.end81 ], [ %uni_len.3, %if.end155.for.body86_crit_edge ]
  %name_len.2294 = phi i32 [ %name_len.0.lcssa, %if.end81 ], [ %name_len.3, %if.end155.for.body86_crit_edge ]
  %k.0293 = phi i32 [ 8, %if.end81 ], [ %k.3, %if.end155.for.body86_crit_edge ]
  %j.1292 = phi i32 [ %inc75, %if.end81 ], [ %inc93, %if.end155.for.body86_crit_edge ]
  %i.4290 = phi i32 [ %inc82, %if.end81 ], [ %i.7, %if.end155.for.body86_crit_edge ]
  %arrayidx87 = getelementptr [11 x i8], ptr %work, i32 0, i32 %k.0293
  %39 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool88.not = icmp eq i8 %40, 0
  br i1 %tobool88.not, label %for.body86.for.end156_crit_edge, label %if.end90

for.body86.for.end156_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end156

if.end90:                                         ; preds = %for.body86
  %sub92 = sub i32 11, %k.0293
  %inc93 = add i32 %j.1292, 1
  %arrayidx94 = getelementptr [14 x i16], ptr %uni_name, i32 0, i32 %j.1292
  %41 = ptrtoint ptr %lcase to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lcase, align 4
  %43 = and i8 %42, 16
  %and97 = zext i8 %43 to i32
  %call98 = call fastcc i32 @fat_shortname2uni(ptr noundef %6, ptr noundef %arrayidx87, i32 noundef %sub92, ptr noundef %arrayidx94, i16 noundef zeroext %4, i32 noundef %and97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 2
  br i1 %cmp99, label %if.then101, label %if.else122

if.then101:                                       ; preds = %if.end90
  %inc102 = add nsw i32 %k.0293, 1
  br i1 %tobool.not, label %if.then104, label %if.then101.if.end115_crit_edge

if.then101.if.end115_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then104:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  %44 = add i8 %40, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %44)
  %45 = icmp ult i8 %44, 26
  %add.i266 = add i8 %40, 32
  %46 = select i1 %tobool36.not, i1 %45, i1 false
  %cond112.in = select i1 %46, i8 %add.i266, i8 %40
  %arrayidx114 = getelementptr i8, ptr %ptname.0, i32 %i.4290
  %47 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %cond112.in, ptr %arrayidx114, align 1
  br label %if.end115

if.end115:                                        ; preds = %if.then104, %if.then101.if.end115_crit_edge
  %inc116 = add i32 %i.4290, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp118.not = icmp eq i8 %40, 32
  %spec.select263 = select i1 %cmp118.not, i32 %name_len.2294, i32 %inc116
  %spec.select264 = select i1 %cmp118.not, i32 %uni_len.2295, i32 %inc93
  br label %if.end155

if.else122:                                       ; preds = %if.end90
  br i1 %tobool.not, label %for.body143.preheader, label %if.then124

for.body143.preheader:                            ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #13
  %uglygep298 = getelementptr i8, ptr %ptname.0, i32 %i.4290
  %48 = add nsw i32 %call98, -1
  %49 = sub i32 10, %k.0293
  %umin300 = call i32 @llvm.umin.i32(i32 %49, i32 %48)
  %50 = add nuw nsw i32 %umin300, 1
  %51 = call ptr @memcpy(ptr %uglygep298, ptr %arrayidx87, i32 %50)
  %52 = add nsw i32 %k.0293, 1
  %53 = add i32 %i.4290, 1
  %54 = add i32 %53, %umin300
  %55 = add i32 %52, %umin300
  br label %if.end155

if.then124:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #13
  %56 = call i32 @llvm.smin.i32(i32 %call98, i32 %sub92)
  %add133 = add i32 %56, %k.0293
  %add134 = add i32 %56, %i.4290
  br label %if.end155

if.end155:                                        ; preds = %if.then124, %for.body143.preheader, %if.end115
  %i.7 = phi i32 [ %inc116, %if.end115 ], [ %add134, %if.then124 ], [ %54, %for.body143.preheader ]
  %k.3 = phi i32 [ %inc102, %if.end115 ], [ %add133, %if.then124 ], [ %55, %for.body143.preheader ]
  %name_len.3 = phi i32 [ %spec.select263, %if.end115 ], [ %add134, %if.then124 ], [ %54, %for.body143.preheader ]
  %uni_len.3 = phi i32 [ %spec.select264, %if.end115 ], [ %inc93, %if.then124 ], [ %inc93, %for.body143.preheader ]
  %cmp84 = icmp slt i32 %k.3, 11
  br i1 %cmp84, label %if.end155.for.body86_crit_edge, label %if.end155.for.end156_crit_edge

if.end155.for.end156_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end156

if.end155.for.body86_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body86

for.end156:                                       ; preds = %if.end155.for.end156_crit_edge, %for.body86.for.end156_crit_edge
  %name_len.2.lcssa = phi i32 [ %name_len.2294, %for.body86.for.end156_crit_edge ], [ %name_len.3, %if.end155.for.end156_crit_edge ]
  %uni_len.2.lcssa = phi i32 [ %uni_len.2295, %for.body86.for.end156_crit_edge ], [ %uni_len.3, %if.end155.for.end156_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name_len.2.lcssa)
  %cmp157 = icmp sgt i32 %name_len.2.lcssa, 0
  br i1 %cmp157, label %if.then159, label %for.end156.if.end173_crit_edge

for.end156.if.end173_crit_edge:                   ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then159:                                       ; preds = %for.end156
  %add160 = add i32 %name_len.2.lcssa, %dotoffset.0
  %57 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load163 = load i16, ptr %isvfat1, align 4
  %58 = and i16 %bf.load163, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool167.not = icmp eq i16 %58, 0
  br i1 %tobool167.not, label %if.then159.if.end173_crit_edge, label %if.then168

if.then159.if.end173_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then168:                                       ; preds = %if.then159
  %arrayidx169 = getelementptr [14 x i16], ptr %uni_name, i32 0, i32 %uni_len.2.lcssa
  %59 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %arrayidx169, align 2
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %utf8.i = getelementptr inbounds %struct.msdos_sb_info, ptr %61, i32 0, i32 19, i32 12
  %62 = ptrtoint ptr %utf8.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load.i = load i16, ptr %utf8.i, align 4
  %63 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i = icmp eq i16 %63, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i268

if.then.i268:                                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call i32 @utf16s_to_utf8s(ptr noundef nonnull %uni_name, i32 noundef 261, i32 noundef 0, ptr noundef %name, i32 noundef 73) #11
  br label %if.end173

if.else.i:                                        ; preds = %if.then168
  %64 = ptrtoint ptr %uni_name to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %uni_name, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not48.i.i.not = icmp eq i16 %65, 0
  br i1 %tobool.not48.i.i.not, label %if.else.i.uni16_to_x8.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.else.i.uni16_to_x8.exit.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uni16_to_x8.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.else.i
  %nls_io.i = getelementptr inbounds %struct.msdos_sb_info, ptr %61, i32 0, i32 21
  %66 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nls_io.i, align 4
  %uni2char.i.i = getelementptr inbounds %struct.nls_table, ptr %67, i32 0, i32 2
  %68 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp6.not.i.i = icmp eq i16 %68, 0
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end18.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %69 = phi i16 [ %65, %while.body.lr.ph.i.i ], [ %91, %if.end18.i.i.while.body.i.i_crit_edge ]
  %op.054.i.i = phi ptr [ %name, %while.body.lr.ph.i.i ], [ %op.1.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %ip.053.i.i = phi ptr [ %uni_name, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %len.addr.052.i.i = phi i32 [ 73, %while.body.lr.ph.i.i ], [ %len.addr.1.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i16, ptr %ip.053.i.i, i32 1
  %70 = ptrtoint ptr %uni2char.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %uni2char.i.i, align 4
  %call2.i.i = call i32 %71(i16 noundef zeroext %69, ptr noundef %op.054.i.i, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp sgt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %op.054.i.i, i32 %call2.i.i
  %sub5.i.i = sub i32 %len.addr.052.i.i, %call2.i.i
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %incdec.ptr17.i.i = getelementptr i8, ptr %op.054.i.i, i32 1
  br i1 %cmp6.not.i.i, label %if.else16.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %op.054.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 58, ptr %op.054.i.i, align 1
  %73 = lshr i16 %69, 8
  %conv11.i.i = zext i16 %73 to i32
  %74 = lshr i32 %conv11.i.i, 4
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i.i, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %op.054.i.i, i32 2
  %77 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %incdec.ptr17.i.i, align 1
  %and2.i.i.i = and i32 %conv11.i.i, 15
  %arrayidx3.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i
  %78 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx3.i.i.i, align 1
  %incdec.ptr4.i.i.i = getelementptr i8, ptr %op.054.i.i, i32 3
  %80 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %incdec.ptr.i.i.i, align 1
  %81 = and i16 %69, 255
  %conv.i42.i.i = zext i16 %81 to i32
  %82 = lshr i32 %conv.i42.i.i, 4
  %arrayidx.i43.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i43.i.i, align 1
  %incdec.ptr.i44.i.i = getelementptr i8, ptr %op.054.i.i, i32 4
  %85 = ptrtoint ptr %incdec.ptr4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %incdec.ptr4.i.i.i, align 1
  %and2.i45.i.i = and i32 %conv.i42.i.i, 15
  %arrayidx3.i46.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i45.i.i
  %86 = ptrtoint ptr %arrayidx3.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx3.i46.i.i, align 1
  %incdec.ptr4.i47.i.i = getelementptr i8, ptr %op.054.i.i, i32 5
  %88 = ptrtoint ptr %incdec.ptr.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %incdec.ptr.i44.i.i, align 1
  %sub15.i.i = add i32 %len.addr.052.i.i, -5
  br label %if.end18.i.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %op.054.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 63, ptr %op.054.i.i, align 1
  %dec.i.i = add i32 %len.addr.052.i.i, -1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else16.i.i, %if.then8.i.i, %if.then.i.i
  %len.addr.1.i.i = phi i32 [ %sub5.i.i, %if.then.i.i ], [ %sub15.i.i, %if.then8.i.i ], [ %dec.i.i, %if.else16.i.i ]
  %op.1.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %incdec.ptr4.i47.i.i, %if.then8.i.i ], [ %incdec.ptr17.i.i, %if.else16.i.i ]
  %90 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %incdec.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.not.i.i = icmp ne i16 %91, 0
  %sub.i.i = add i32 %len.addr.1.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end18.i.i.while.body.i.i_crit_edge, label %while.end.i.i

if.end18.i.i.while.body.i.i_crit_edge:            ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool19.not.i.i = icmp eq i16 %91, 0
  br i1 %tobool19.not.i.i, label %while.end.i.i.uni16_to_x8.exit.i_crit_edge, label %if.then22.i.i, !prof !61

while.end.i.i.uni16_to_x8.exit.i_crit_edge:       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uni16_to_x8.exit.i

if.then22.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #15
  br label %uni16_to_x8.exit.i

uni16_to_x8.exit.i:                               ; preds = %if.then22.i.i, %while.end.i.i.uni16_to_x8.exit.i_crit_edge, %if.else.i.uni16_to_x8.exit.i_crit_edge
  %op.0.lcssa.i.i272 = phi ptr [ %op.1.i.i, %if.then22.i.i ], [ %op.1.i.i, %while.end.i.i.uni16_to_x8.exit.i_crit_edge ], [ %name, %if.else.i.uni16_to_x8.exit.i_crit_edge ]
  %92 = ptrtoint ptr %op.0.lcssa.i.i272 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %op.0.lcssa.i.i272, align 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %op.0.lcssa.i.i272 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %name to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %if.end173

if.end173:                                        ; preds = %uni16_to_x8.exit.i, %if.then.i268, %if.then159.if.end173_crit_edge, %for.end156.if.end173_crit_edge
  %name_len.4 = phi i32 [ %add160, %if.then159.if.end173_crit_edge ], [ %name_len.2.lcssa, %for.end156.if.end173_crit_edge ], [ %call1.i, %if.then.i268 ], [ %sub.ptr.sub.i.i, %uni16_to_x8.exit.i ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %work) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %uni_name) #11
  ret i32 %name_len.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call fastcc i32 @__fat_readdir(ptr noundef %1, ptr noundef %file, ptr noundef %ctx, i32 noundef 0, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_dir_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %buf.i = alloca %struct.fat_ioctl_filldir_callback, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %sw.default [
    i32 -2112327166, label %entry.sw.epilog_crit_edge
    i32 -2112327167, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @fat_generic_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %tobool5.not.i = phi i1 [ true, %entry.sw.epilog_crit_edge ], [ false, %sw.bb1 ]
  %short_only.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb1 ]
  %d_reclen = getelementptr inbounds %struct.__fat_dirent, ptr %2, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 812) #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !62
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_reclen, i16 0, i32 -1226833921) #11, !srcloc !65
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf.i) #11
  %8 = call ptr @memset(ptr %buf.i, i32 0, i32 40)
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fat_ioctl_filldir, ptr %buf.i, align 8
  %dirent1.i = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %dirent1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %dirent1.i, align 8
  %result.i = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %buf.i, i32 0, i32 2
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i.i) #11
  %f_pos.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %11 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_pos.i, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %buf.i, i32 0, i32 1
  %13 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %pos.i, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i, align 4
  %and.i14 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_read(ptr noundef %i_rwsem.i.i) #11
  br label %fat_ioctl_readdir.exit

if.end.i:                                         ; preds = %if.end
  %buf..i = select i1 %tobool5.not.i, ptr null, ptr %buf.i
  %call.i = call fastcc i32 @__fat_readdir(ptr noundef %1, ptr noundef %filp, ptr noundef nonnull %buf.i, i32 noundef %short_only.0, ptr noundef %buf..i) #11
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos.i, align 8
  %18 = ptrtoint ptr %f_pos.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %f_pos.i, align 8
  call void @up_read(ptr noundef %i_rwsem.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then9.i, label %if.end.i.fat_ioctl_readdir.exit_crit_edge

if.end.i.fat_ioctl_readdir.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_ioctl_readdir.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %result.i, align 4
  br label %fat_ioctl_readdir.exit

fat_ioctl_readdir.exit:                           ; preds = %if.then9.i, %if.end.i.fat_ioctl_readdir.exit_crit_edge, %if.end.thread.i
  %ret.1.i = phi i32 [ %20, %if.then9.i ], [ %call.i, %if.end.i.fat_ioctl_readdir.exit_crit_edge ], [ -2, %if.end.thread.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fat_ioctl_readdir.exit, %sw.epilog.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ %call2, %sw.default ], [ %ret.1.i, %fat_ioctl_readdir.exit ], [ -14, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_get_dotdot_entry(ptr noundef %dir, ptr nocapture noundef %bh, ptr nocapture noundef %de) #0 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #11
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %offset, align 8
  %1 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %de, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call10.i = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %offset, ptr noundef %bh, ptr noundef %de) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %cmp11.i = icmp sgt i32 %call10.i, -1
  br i1 %cmp11.i, label %while.cond.while.body.i_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.while.body.i_crit_edge:                ; preds = %while.cond
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.while.body.i_crit_edge
  %2 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %de, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %5, label %land.lhs.true.i [
    i8 0, label %while.body.i.if.end.i_crit_edge
    i8 -27, label %while.body.i.if.end.i_crit_edge11
  ]

while.body.i.if.end.i_crit_edge11:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %attr.i, align 1
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %while.body, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge11
  %call.i = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %offset, ptr noundef %bh, ptr noundef %de) #11
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body:                                       ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %de, align 4
  %call1 = tail call i32 @strncmp(ptr noundef %11, ptr noundef nonnull dereferenceable(12) @.str, i32 noundef 11)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.i.cleanup_crit_edge ], [ -2, %while.cond.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_dir_empty(ptr noundef %dir) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %de = alloca ptr, align 4
  %cpos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #11
  %0 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpos) #11
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bh, align 4
  %2 = ptrtoint ptr %cpos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %cpos, align 8
  %call10.i10 = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i10)
  %cmp11.i11 = icmp sgt i32 %call10.i10, -1
  br i1 %cmp11.i11, label %entry.while.body.i_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %entry.while.body.i_crit_edge
  %3 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %de, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %6, label %land.lhs.true.i [
    i8 0, label %while.body.i.if.end.i_crit_edge
    i8 -27, label %while.body.i.if.end.i_crit_edge16
  ]

while.body.i.if.end.i_crit_edge16:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %attr.i, align 1
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not.i = icmp eq i8 %10, 0
  br i1 %tobool6.not.i, label %while.body, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge16
  %call.i = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end.i.while.body.i.backedge_crit_edge, label %if.end.i.while.end_crit_edge

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i.while.body.i.backedge_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %if.end.while.body.i.backedge_crit_edge, %if.end.i.while.body.i.backedge_crit_edge
  br label %while.body.i

while.body:                                       ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %de, align 4
  %call1 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(12) @.str.1, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %call4 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(12) @.str, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %call10.i = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %cmp11.i = icmp sgt i32 %call10.i, -1
  br i1 %cmp11.i, label %if.end.while.body.i.backedge_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.while.body.i.backedge_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.backedge

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.end.i.while.end_crit_edge, %entry.while.end_crit_edge
  %result.0 = phi i32 [ 0, %entry.while.end_crit_edge ], [ -39, %land.lhs.true.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ 0, %if.end.i.while.end_crit_edge ]
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.end.brelse.exit_crit_edge, label %if.then.i

while.end.brelse.exit_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %14) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %while.end.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpos) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #11
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_subdirs(ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %de = alloca ptr, align 4
  %cpos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #11
  %0 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpos) #11
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bh, align 4
  %2 = ptrtoint ptr %cpos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %cpos, align 8
  %call10.i8 = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i8)
  %cmp11.i9 = icmp sgt i32 %call10.i8, -1
  br i1 %cmp11.i9, label %entry.while.body.i.preheader_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.while.body.i.preheader_crit_edge:           ; preds = %entry
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %while.body.while.body.i.preheader_crit_edge, %entry.while.body.i.preheader_crit_edge
  %count.010 = phi i32 [ %spec.select, %while.body.while.body.i.preheader_crit_edge ], [ 0, %entry.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %3 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %de, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %6, label %land.lhs.true.i [
    i8 0, label %while.body.i.if.end.i_crit_edge
    i8 -27, label %while.body.i.if.end.i_crit_edge20
  ]

while.body.i.if.end.i_crit_edge20:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %attr.i, align 1
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not.i = icmp eq i8 %10, 0
  br i1 %tobool6.not.i, label %while.body, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge20
  %call.i = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de) #11
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end_crit_edge

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body:                                       ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %de, align 4
  %attr = getelementptr inbounds %struct.msdos_dir_entry, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %attr, align 1
  %15 = lshr i8 %14, 4
  %.lobit = and i8 %15, 1
  %16 = zext i8 %.lobit to i32
  %spec.select = add i32 %count.010, %16
  %call10.i = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de) #11
  %cmp11.i = icmp sgt i32 %call10.i, -1
  br i1 %cmp11.i, label %while.body.while.body.i.preheader_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body.i.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.preheader

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.i.while.end_crit_edge, %entry.while.end_crit_edge
  %count.07 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %count.010, %if.end.i.while.end_crit_edge ], [ %spec.select, %while.body.while.end_crit_edge ]
  %17 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %while.end.brelse.exit_crit_edge, label %if.then.i

while.end.brelse.exit_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %18) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %while.end.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpos) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #11
  ret i32 %count.07
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_scan(ptr noundef %dir, ptr nocapture noundef readonly %name, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %slot_off = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 1
  %2 = ptrtoint ptr %slot_off to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %slot_off, align 8
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bh, align 8
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call10.i = tail call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef %slot_off, ptr noundef %bh, ptr noundef %de) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %cmp11.i = icmp sgt i32 %call10.i, -1
  br i1 %cmp11.i, label %while.cond.while.body.i_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.while.body.i_crit_edge:                ; preds = %while.cond
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.while.body.i_crit_edge
  %4 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %de, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %7, label %land.lhs.true.i [
    i8 0, label %while.body.i.if.end.i_crit_edge
    i8 -27, label %while.body.i.if.end.i_crit_edge28
  ]

while.body.i.if.end.i_crit_edge28:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %attr.i, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %while.body, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge28
  %call.i = tail call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef %slot_off, ptr noundef %bh, ptr noundef %de) #11
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body:                                       ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %de, align 4
  %call5 = tail call i32 @strncmp(ptr noundef %13, ptr noundef %name, i32 noundef 11)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %slot_off to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %slot_off, align 8
  %sub = add i64 %15, -32
  store i64 %sub, ptr %slot_off, align 8
  %nr_slots = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 2
  %16 = ptrtoint ptr %nr_slots to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nr_slots, align 8
  %17 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bh, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %b_blocknr.i, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %dir_per_block_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %dir_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dir_per_block_bits.i, align 4
  %sh_prom.i = zext i32 %24 to i64
  %shl.i = shl i64 %20, %sh_prom.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %25 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i = sext i32 %sub.ptr.div.i to i64
  %or.i = or i64 %shl.i, %conv.i
  %27 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %or.i, ptr %sinfo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %if.end.i.cleanup_crit_edge ], [ -2, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_scan_logstart(ptr noundef %dir, i32 noundef %i_logstart, ptr nocapture noundef %sinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %slot_off = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 1
  %2 = ptrtoint ptr %slot_off to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %slot_off, align 8
  %bh = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bh, align 8
  %de = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  br label %while.cond

while.cond:                                       ; preds = %fat_get_start.exit.while.cond_crit_edge, %entry
  %call10.i = tail call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef %slot_off, ptr noundef %bh, ptr noundef %de) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %cmp11.i = icmp sgt i32 %call10.i, -1
  br i1 %cmp11.i, label %while.cond.while.body.i_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.while.body.i_crit_edge:                ; preds = %while.cond
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.while.body.i_crit_edge
  %4 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %de, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %7, label %land.lhs.true.i [
    i8 0, label %while.body.i.if.end.i_crit_edge
    i8 -27, label %while.body.i.if.end.i_crit_edge34
  ]

while.body.i.if.end.i_crit_edge34:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %attr.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %attr.i, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %while.body, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge34
  %call.i = tail call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef %slot_off, ptr noundef %bh, ptr noundef %de) #11
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body:                                       ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %14 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %de, align 4
  %start.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %start.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #11
  %conv.i = zext i16 %18 to i32
  %fat_bits.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %fat_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fat_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 32
  br i1 %cmp.i.i, label %if.then.i, label %while.body.fat_get_start.exit_crit_edge

while.body.fat_get_start.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_get_start.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %starthi.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %15, i32 0, i32 7
  %21 = ptrtoint ptr %starthi.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %starthi.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #11
  %conv1.i = zext i16 %23 to i32
  %shl.i = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i, %conv.i
  br label %fat_get_start.exit

fat_get_start.exit:                               ; preds = %if.then.i, %while.body.fat_get_start.exit_crit_edge
  %cluster.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %while.body.fat_get_start.exit_crit_edge ]
  %cmp6 = icmp eq i32 %cluster.0.i, %i_logstart
  br i1 %cmp6, label %if.then, label %fat_get_start.exit.while.cond_crit_edge

fat_get_start.exit.while.cond_crit_edge:          ; preds = %fat_get_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then:                                          ; preds = %fat_get_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %slot_off to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %slot_off, align 8
  %sub = add i64 %25, -32
  store i64 %sub, ptr %slot_off, align 8
  %nr_slots = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 2
  %26 = ptrtoint ptr %nr_slots to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %nr_slots, align 8
  %27 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bh, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %b_blocknr.i, align 8
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %dir_per_block_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %dir_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dir_per_block_bits.i, align 4
  %sh_prom.i = zext i32 %34 to i64
  %shl.i24 = shl i64 %30, %sh_prom.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %28, i32 0, i32 5
  %35 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i25 = sext i32 %sub.ptr.div.i to i64
  %or.i26 = or i64 %shl.i24, %conv.i25
  %37 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or.i26, ptr %sinfo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %if.end.i.cleanup_crit_edge ], [ -2, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_remove_entries(ptr noundef %dir, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %nr_slots1 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 2
  %2 = ptrtoint ptr %nr_slots1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_slots1, align 8
  %de2 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %4 = ptrtoint ptr %de2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %de2, align 4
  store ptr null, ptr %de2, align 4
  %bh4 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %6 = ptrtoint ptr %bh4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh4, align 8
  store ptr null, ptr %bh4, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not61 = icmp eq i32 %3, 0
  br i1 %tobool.not61, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %nr_slots.063 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %3, %entry.land.rhs_crit_edge ]
  %de.062 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %5, %entry.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %cmp.not = icmp ult ptr %de.062, %9
  br i1 %cmp.not, label %land.rhs.while.end.loopexit_crit_edge, label %while.body

land.rhs.while.end.loopexit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.loopexit

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %de.062 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -27, ptr %de.062, align 4
  %incdec.ptr = getelementptr %struct.msdos_dir_entry, ptr %de.062, i32 -1
  %dec = add i32 %nr_slots.063, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end.loopexit_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.while.end.loopexit_crit_edge, %land.rhs.while.end.loopexit_crit_edge
  %nr_slots.0.lcssa.ph = phi i32 [ %nr_slots.063, %land.rhs.while.end.loopexit_crit_edge ], [ 0, %while.body.while.end.loopexit_crit_edge ]
  %11 = xor i1 %cmp.not, true
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %nr_slots.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %nr_slots.0.lcssa.ph, %while.end.loopexit ]
  %tobool.not.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %11, %while.end.loopexit ]
  tail call void @mark_buffer_dirty_inode(ptr noundef %7, ptr noundef %dir) #11
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags, align 4
  %and = and i32 %15, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %while.end.if.then_crit_edge

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %while.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %16 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags, align 4
  %and8 = and i32 %17, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.end.if.then_crit_edge
  %call = tail call i32 @sync_dirty_buffer(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %7) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool10.not = icmp eq i32 %err.0, 0
  br i1 %tobool10.not, label %if.end12, label %brelse.exit.cleanup_crit_edge

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %brelse.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #11
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end12
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end12 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %18 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %18, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #11
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #11
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !61

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  br i1 %tobool.not.lcssa, label %inode_inc_iversion.exit.if.end19_crit_edge, label %if.then14

inode_inc_iversion.exit.if.end19_crit_edge:       ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %inode_inc_iversion.exit
  %slot_off = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 1
  %19 = ptrtoint ptr %slot_off to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %slot_off, align 8
  %call15 = tail call fastcc i32 @__fat_remove_entries(ptr noundef %dir, i64 noundef %20, i32 noundef %nr_slots.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then17

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then14.if.end19_crit_edge, %inode_inc_iversion.exit.if.end19_crit_edge
  %call20 = tail call i32 @fat_truncate_time(ptr noundef %dir, ptr noundef null, i32 noundef 3) #11
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_flags22 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %s_flags22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_flags22, align 4
  %and23 = and i32 %24, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.end19.if.then29_crit_edge

if.end19.if.then29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

lor.lhs.false25:                                  ; preds = %if.end19
  %i_flags26 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags26, align 4
  %and27 = and i32 %26, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %lor.lhs.false25.if.then29_crit_edge

lor.lhs.false25.if.then29_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false25.if.then29_crit_edge, %if.end19.if.then29_crit_edge
  %call30 = tail call i32 @fat_sync_inode(ptr noundef %dir) #11
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then29, %brelse.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %brelse.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fat_remove_entries(ptr noundef %dir, i64 noundef %pos, i32 noundef %nr_slots) unnamed_addr #0 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  %bh = alloca ptr, align 4
  %de = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #11
  %3 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_slots)
  %tobool.not34 = icmp eq i32 %nr_slots, 0
  br i1 %tobool.not34, label %entry.while.end16_crit_edge, label %while.body.lr.ph

entry.while.end16_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

while.body.lr.ph:                                 ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %nr_slots.addr.035 = phi i32 [ %nr_slots, %while.body.lr.ph ], [ %nr_slots.addr.1.lcssa, %if.end14.while.body_crit_edge ]
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bh, align 4
  %call = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %pos.addr, ptr noundef nonnull %bh, ptr noundef nonnull %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.body.while.end16_crit_edge, label %if.end

while.body.while.end16_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data, align 4
  %9 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  %11 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %11)
  %de.promoted = load ptr, ptr %de, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body4.land.rhs_crit_edge, %if.end
  %nr_slots.addr.130 = phi i32 [ %nr_slots.addr.035, %if.end ], [ %dec, %while.body4.land.rhs_crit_edge ]
  %incdec.ptr2629 = phi ptr [ %de.promoted, %if.end ], [ %incdec.ptr, %while.body4.land.rhs_crit_edge ]
  %cmp3 = icmp ult ptr %incdec.ptr2629, %add.ptr
  br i1 %cmp3, label %while.body4, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body4:                                      ; preds = %land.rhs
  %12 = ptrtoint ptr %incdec.ptr2629 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -27, ptr %incdec.ptr2629, align 4
  %incdec.ptr = getelementptr %struct.msdos_dir_entry, ptr %incdec.ptr2629, i32 1
  %dec = add i32 %nr_slots.addr.130, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.body4.while.end_crit_edge, label %while.body4.land.rhs_crit_edge

while.body4.land.rhs_crit_edge:                   ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body4.while.end_crit_edge:                  ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body4.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %incdec.ptr27 = phi ptr [ %incdec.ptr, %while.body4.while.end_crit_edge ], [ %incdec.ptr2629, %land.rhs.while.end_crit_edge ]
  %nr_slots.addr.1.lcssa = phi i32 [ 0, %while.body4.while.end_crit_edge ], [ %nr_slots.addr.130, %land.rhs.while.end_crit_edge ]
  %13 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr27, ptr %de, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %6, ptr noundef %dir) #11
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags, align 4
  %and = and i32 %17, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %while.end.if.then9_crit_edge

while.end.if.then9_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false:                                    ; preds = %while.end
  %18 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags, align 4
  %and7 = and i32 %19, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %while.end.if.then9_crit_edge
  %call10 = tail call i32 @sync_dirty_buffer(ptr noundef %6) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %lor.lhs.false.if.end11_crit_edge
  %err.1 = phi i32 [ %call10, %if.then9 ], [ 0, %lor.lhs.false.if.end11_crit_edge ]
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end11.brelse.exit_crit_edge, label %if.then.i

if.end11.brelse.exit_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %6) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end11.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool12.not = icmp eq i32 %err.1, 0
  br i1 %tobool12.not, label %if.end14, label %brelse.exit.while.end16_crit_edge

brelse.exit.while.end16_crit_edge:                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

if.end14:                                         ; preds = %brelse.exit
  %sub = sub i32 %nr_slots.addr.035, %nr_slots.addr.1.lcssa
  %mul = shl i32 %sub, 5
  %sub15 = add i32 %mul, -32
  %conv = zext i32 %sub15 to i64
  %20 = ptrtoint ptr %pos.addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos.addr, align 8
  %add = add i64 %21, %conv
  store i64 %add, ptr %pos.addr, align 8
  %tobool.not = icmp eq i32 %nr_slots.addr.1.lcssa, 0
  br i1 %tobool.not, label %if.end14.while.end16_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end14.while.end16_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

while.end16:                                      ; preds = %if.end14.while.end16_crit_edge, %brelse.exit.while.end16_crit_edge, %while.body.while.end16_crit_edge, %entry.while.end16_crit_edge
  %err.2 = phi i32 [ 0, %entry.while.end16_crit_edge ], [ -5, %while.body.while.end16_crit_edge ], [ %err.1, %brelse.exit.while.end16_crit_edge ], [ 0, %if.end14.while.end16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #11
  ret i32 %err.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_alloc_new_dir(ptr noundef %dir, ptr noundef %ts) #0 align 64 {
entry:
  %bhs = alloca [8 x ptr], align 4
  %date = alloca i16, align 2
  %time = alloca i16, align 2
  %time_cs = alloca i8, align 1
  %cluster = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs) #11
  %4 = getelementptr inbounds i8, ptr %bhs, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %date) #11
  %6 = ptrtoint ptr %date to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %date, align 2, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %time) #11
  %7 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %time, align 2, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %time_cs) #11
  %8 = ptrtoint ptr %time_cs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %time_cs, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster) #11
  %9 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %cluster, align 4, !annotation !60
  %call1 = call i32 @fat_alloc_clusters(ptr noundef %dir, ptr noundef nonnull %cluster, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cluster, align 4
  %conv.i = sext i32 %11 to i64
  %sub.i = add nsw i64 %conv.i, -2
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 4
  %conv1.i = zext i16 %13 to i64
  %mul.i = mul nsw i64 %sub.i, %conv1.i
  %data_start.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %data_start.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_start.i, align 4
  %conv2.i = zext i32 %15 to i64
  %add.i = add nsw i64 %mul.i, %conv2.i
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__getblk_gfp(ptr noundef %17, i64 noundef %add.i, i32 noundef %19, i32 noundef 8) #11
  %20 = ptrtoint ptr %bhs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %bhs, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.error_free_crit_edge, label %if.end7

if.end.error_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free

if.end7:                                          ; preds = %if.end
  call void @fat_time_unix2fat(ptr noundef %3, ptr noundef %ts, ptr noundef nonnull %time, ptr noundef nonnull %date, ptr noundef nonnull %time_cs) #11
  %21 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bhs, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %22, i32 noundef 4) #11
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end7.if.then.i124_crit_edge

if.end7.if.then.i124_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i124

trylock_buffer.exit.i:                            ; preds = %if.end7
  call void @llvm.prefetch.p0(ptr %22, i32 1, i32 3, i32 1) #11
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 4, ptr elementtype(i32) %22) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  %28 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i124_crit_edge

trylock_buffer.exit.i.if.then.i124_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i124

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i124:                                     ; preds = %trylock_buffer.exit.i.if.then.i124_crit_edge, %if.end7.if.then.i124_crit_edge
  call void @__lock_buffer(ptr noundef %22) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i124, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %29 = call ptr @memcpy(ptr %24, ptr @.str.1, i32 11)
  %arrayidx11 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1
  %30 = call ptr @memcpy(ptr %arrayidx11, ptr @.str, i32 11)
  %attr = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 1
  %31 = ptrtoint ptr %attr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %attr, align 1
  %attr15 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %attr15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 16, ptr %attr15, align 1
  %lcase = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 2
  %33 = ptrtoint ptr %lcase to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %lcase, align 4
  %lcase18 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 2
  %34 = ptrtoint ptr %lcase18 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %lcase18, align 4
  %35 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %time, align 2
  %time20 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 8
  %37 = ptrtoint ptr %time20 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %time20, align 2
  %time22 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 8
  %38 = ptrtoint ptr %time22 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %36, ptr %time22, align 2
  %39 = ptrtoint ptr %date to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %date, align 2
  %date24 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 9
  %41 = ptrtoint ptr %date24 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %date24, align 4
  %date26 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 9
  %42 = ptrtoint ptr %date26 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %40, ptr %date26, align 4
  %isvfat = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %43 = ptrtoint ptr %isvfat to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load = load i16, ptr %isvfat, align 4
  %44 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool27.not = icmp eq i16 %44, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %time, align 2
  %ctime = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 4
  %47 = ptrtoint ptr %ctime to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %ctime, align 2
  %48 = ptrtoint ptr %time_cs to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %time_cs, align 1
  %ctime_cs = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 3
  %50 = ptrtoint ptr %ctime_cs to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %ctime_cs, align 1
  %51 = ptrtoint ptr %date to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %date, align 2
  br label %if.end57

if.else:                                          ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ctime42 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 4
  %53 = ptrtoint ptr %ctime42 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %ctime42, align 2
  %ctime_cs46 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 3
  %54 = ptrtoint ptr %ctime_cs46 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %ctime_cs46, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then28
  %.sink135 = phi i16 [ 0, %if.else ], [ %46, %if.then28 ]
  %.sink134 = phi i8 [ 0, %if.else ], [ %49, %if.then28 ]
  %.sink133 = phi i16 [ 0, %if.else ], [ %52, %if.then28 ]
  %55 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %.sink135, ptr %55, align 2
  %57 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 3
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink134, ptr %57, align 1
  %59 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 5
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %.sink133, ptr %59, align 4
  %61 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 6
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %.sink133, ptr %61, align 2
  %63 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 5
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %.sink133, ptr %63, align 4
  %65 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 6
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %.sink133, ptr %65, align 2
  %67 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cluster, align 4
  %conv.i125 = trunc i32 %68 to i16
  %69 = call i16 @llvm.bswap.i16(i16 %conv.i125) #11
  %start.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 10
  %70 = ptrtoint ptr %start.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %start.i, align 2
  %71 = lshr i32 %68, 16
  %conv1.i126 = trunc i32 %71 to i16
  %72 = call i16 @llvm.bswap.i16(i16 %conv1.i126) #11
  %starthi.i = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 7
  %73 = ptrtoint ptr %starthi.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %starthi.i, align 4
  %i_logstart = getelementptr i8, ptr %dir, i32 -132
  %74 = ptrtoint ptr %i_logstart to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_logstart, align 4
  %conv.i127 = trunc i32 %75 to i16
  %76 = call i16 @llvm.bswap.i16(i16 %conv.i127) #11
  %start.i128 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 10
  %77 = ptrtoint ptr %start.i128 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %start.i128, align 2
  %78 = lshr i32 %75, 16
  %conv1.i129 = trunc i32 %78 to i16
  %79 = call i16 @llvm.bswap.i16(i16 %conv1.i129) #11
  %starthi.i130 = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 7
  %80 = ptrtoint ptr %starthi.i130 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %starthi.i130, align 4
  %size = getelementptr %struct.msdos_dir_entry, ptr %24, i32 1, i32 11
  %81 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %size, align 4
  %size63 = getelementptr inbounds %struct.msdos_dir_entry, ptr %24, i32 0, i32 11
  %82 = ptrtoint ptr %size63 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %size63, align 4
  %add.ptr = getelementptr %struct.msdos_dir_entry, ptr %24, i32 2
  %83 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_blocksize.i, align 16
  %sub = add i32 %84, -64
  %85 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %86 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bhs, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %and1.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end57.set_buffer_uptodate.exit_crit_edge

if.end57.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %87) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end57.set_buffer_uptodate.exit_crit_edge
  %90 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bhs, align 4
  call void @unlock_buffer(ptr noundef %91) #11
  call void @mark_buffer_dirty_inode(ptr noundef %91, ptr noundef %dir) #11
  %call68 = call fastcc i32 @fat_zeroed_cluster(ptr noundef %dir, i64 noundef %add.i, i32 noundef 1, ptr noundef nonnull %bhs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %set_buffer_uptodate.exit.error_free_crit_edge

set_buffer_uptodate.exit.error_free_crit_edge:    ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free

if.end71:                                         ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cluster, align 4
  br label %cleanup

error_free:                                       ; preds = %set_buffer_uptodate.exit.error_free_crit_edge, %if.end.error_free_crit_edge
  %err.0 = phi i32 [ %call68, %set_buffer_uptodate.exit.error_free_crit_edge ], [ -12, %if.end.error_free_crit_edge ]
  %94 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cluster, align 4
  %call72 = call i32 @fat_free_clusters(ptr noundef %dir, i32 noundef %95) #11
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.end71, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %93, %if.end71 ], [ %call1, %entry.cleanup_crit_edge ], [ %err.0, %error_free ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %time_cs) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %time) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %date) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_alloc_clusters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_zeroed_cluster(ptr noundef %dir, i64 noundef %blknr, i32 noundef %nr_used, ptr noundef %bhs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv = zext i16 %5 to i64
  %add = add i64 %conv, %blknr
  %conv1 = sext i32 %nr_used to i64
  %add2 = add i64 %conv1, %blknr
  call void @__sanitizer_cov_trace_cmp8(i64 %add2, i64 %add)
  %cmp13 = icmp ult i64 %add2, %add
  br i1 %cmp13, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %arrayidx27.1 = getelementptr ptr, ptr %bhs, i32 1
  %arrayidx27.2 = getelementptr ptr, ptr %bhs, i32 2
  %arrayidx27.3 = getelementptr ptr, ptr %bhs, i32 3
  %arrayidx27.4 = getelementptr ptr, ptr %bhs, i32 4
  %arrayidx27.5 = getelementptr ptr, ptr %bhs, i32 5
  %arrayidx27.6 = getelementptr ptr, ptr %bhs, i32 6
  %arrayidx27.7 = getelementptr ptr, ptr %bhs, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %n.015 = phi i32 [ %nr_used, %while.body.lr.ph ], [ %n.1, %if.end29.while.body_crit_edge ]
  %blknr.addr.014 = phi i64 [ %add2, %while.body.lr.ph ], [ %inc11, %if.end29.while.body_crit_edge ]
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %7, i64 noundef %blknr.addr.014, i32 noundef %9, i32 noundef 8) #11
  %arrayidx = getelementptr ptr, ptr %bhs, i32 %n.015
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.error_crit_edge, label %if.end

while.body.error_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %while.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end.if.then.i1_crit_edge

if.end.if.then.i1_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i1

trylock_buffer.exit.i:                            ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  %14 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i1_crit_edge

trylock_buffer.exit.i.if.then.i1_crit_edge:       ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i1

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i1:                                       ; preds = %trylock_buffer.exit.i.if.then.i1_crit_edge, %if.end.if.then.i1_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i1, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %19 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i, align 16
  %21 = call ptr @memset(ptr %18, i32 0, i32 %20)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %22) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  tail call void @unlock_buffer(ptr noundef %26) #11
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %28, ptr noundef %dir) #11
  %inc = add i32 %n.015, 1
  %inc11 = add nuw i64 %blknr.addr.014, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp12 = icmp eq i32 %inc, 8
  br i1 %cmp12, label %if.then14, label %set_buffer_uptodate.exit.if.end29_crit_edge

set_buffer_uptodate.exit.if.end29_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then14:                                        ; preds = %set_buffer_uptodate.exit
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_flags, align 4
  %and = and i32 %32, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.then14.if.then19_crit_edge

if.then14.if.then19_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then14
  %33 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_flags, align 4
  %and17 = and i32 %34, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then14.if.then19_crit_edge
  %call20 = tail call i32 @fat_sync_bhs(ptr noundef %bhs, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.for.body55.preheader_crit_edge

if.then19.for.body55.preheader_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55.preheader

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %35 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bhs, align 4
  %tobool.not.i2 = icmp eq ptr %36, null
  br i1 %tobool.not.i2, label %if.end24.brelse.exit_crit_edge, label %if.then.i3

if.end24.brelse.exit_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i3:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %36) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i3, %if.end24.brelse.exit_crit_edge
  %37 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx27.1, align 4
  %tobool.not.i2.1 = icmp eq ptr %38, null
  br i1 %tobool.not.i2.1, label %brelse.exit.brelse.exit.1_crit_edge, label %if.then.i3.1

brelse.exit.brelse.exit.1_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.1

if.then.i3.1:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %38) #11
  br label %brelse.exit.1

brelse.exit.1:                                    ; preds = %if.then.i3.1, %brelse.exit.brelse.exit.1_crit_edge
  %39 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx27.2, align 4
  %tobool.not.i2.2 = icmp eq ptr %40, null
  br i1 %tobool.not.i2.2, label %brelse.exit.1.brelse.exit.2_crit_edge, label %if.then.i3.2

brelse.exit.1.brelse.exit.2_crit_edge:            ; preds = %brelse.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.2

if.then.i3.2:                                     ; preds = %brelse.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %40) #11
  br label %brelse.exit.2

brelse.exit.2:                                    ; preds = %if.then.i3.2, %brelse.exit.1.brelse.exit.2_crit_edge
  %41 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx27.3, align 4
  %tobool.not.i2.3 = icmp eq ptr %42, null
  br i1 %tobool.not.i2.3, label %brelse.exit.2.brelse.exit.3_crit_edge, label %if.then.i3.3

brelse.exit.2.brelse.exit.3_crit_edge:            ; preds = %brelse.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.3

if.then.i3.3:                                     ; preds = %brelse.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %42) #11
  br label %brelse.exit.3

brelse.exit.3:                                    ; preds = %if.then.i3.3, %brelse.exit.2.brelse.exit.3_crit_edge
  %43 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx27.4, align 4
  %tobool.not.i2.4 = icmp eq ptr %44, null
  br i1 %tobool.not.i2.4, label %brelse.exit.3.brelse.exit.4_crit_edge, label %if.then.i3.4

brelse.exit.3.brelse.exit.4_crit_edge:            ; preds = %brelse.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.4

if.then.i3.4:                                     ; preds = %brelse.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %44) #11
  br label %brelse.exit.4

brelse.exit.4:                                    ; preds = %if.then.i3.4, %brelse.exit.3.brelse.exit.4_crit_edge
  %45 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx27.5, align 4
  %tobool.not.i2.5 = icmp eq ptr %46, null
  br i1 %tobool.not.i2.5, label %brelse.exit.4.brelse.exit.5_crit_edge, label %if.then.i3.5

brelse.exit.4.brelse.exit.5_crit_edge:            ; preds = %brelse.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.5

if.then.i3.5:                                     ; preds = %brelse.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %46) #11
  br label %brelse.exit.5

brelse.exit.5:                                    ; preds = %if.then.i3.5, %brelse.exit.4.brelse.exit.5_crit_edge
  %47 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx27.6, align 4
  %tobool.not.i2.6 = icmp eq ptr %48, null
  br i1 %tobool.not.i2.6, label %brelse.exit.5.brelse.exit.6_crit_edge, label %if.then.i3.6

brelse.exit.5.brelse.exit.6_crit_edge:            ; preds = %brelse.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.6

if.then.i3.6:                                     ; preds = %brelse.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %48) #11
  br label %brelse.exit.6

brelse.exit.6:                                    ; preds = %if.then.i3.6, %brelse.exit.5.brelse.exit.6_crit_edge
  %49 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx27.7, align 4
  %tobool.not.i2.7 = icmp eq ptr %50, null
  br i1 %tobool.not.i2.7, label %brelse.exit.6.if.end29_crit_edge, label %if.then.i3.7

brelse.exit.6.if.end29_crit_edge:                 ; preds = %brelse.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then.i3.7:                                     ; preds = %brelse.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %50) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then.i3.7, %brelse.exit.6.if.end29_crit_edge, %set_buffer_uptodate.exit.if.end29_crit_edge
  %n.1 = phi i32 [ %inc, %set_buffer_uptodate.exit.if.end29_crit_edge ], [ 0, %if.then.i3.7 ], [ 0, %brelse.exit.6.if.end29_crit_edge ]
  %cmp = icmp ult i64 %inc11, %add
  br i1 %cmp, label %if.end29.while.body_crit_edge, label %if.end29.while.end_crit_edge

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %entry.while.end_crit_edge
  %n.0.lcssa = phi i32 [ %nr_used, %entry.while.end_crit_edge ], [ %n.1, %if.end29.while.end_crit_edge ]
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  %s_flags31 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %s_flags31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_flags31, align 4
  %and32 = and i32 %54, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %while.end.if.then38_crit_edge

while.end.if.then38_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

lor.lhs.false34:                                  ; preds = %while.end
  %i_flags35 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %55 = ptrtoint ptr %i_flags35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_flags35, align 4
  %and36 = and i32 %56, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false34.if.end43_crit_edge, label %lor.lhs.false34.if.then38_crit_edge

lor.lhs.false34.if.then38_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

lor.lhs.false34.if.end43_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then38:                                        ; preds = %lor.lhs.false34.if.then38_crit_edge, %while.end.if.then38_crit_edge
  %call39 = tail call i32 @fat_sync_bhs(ptr noundef %bhs, i32 noundef %n.0.lcssa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.error_crit_edge

if.then38.error_crit_edge:                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %lor.lhs.false34.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa)
  %cmp4516 = icmp sgt i32 %n.0.lcssa, 0
  br i1 %cmp4516, label %if.end43.for.body47_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43.for.body47_crit_edge:                    ; preds = %if.end43
  br label %for.body47

for.body47:                                       ; preds = %brelse.exit6.for.body47_crit_edge, %if.end43.for.body47_crit_edge
  %i.117 = phi i32 [ %inc50, %brelse.exit6.for.body47_crit_edge ], [ 0, %if.end43.for.body47_crit_edge ]
  %arrayidx48 = getelementptr ptr, ptr %bhs, i32 %i.117
  %57 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx48, align 4
  %tobool.not.i4 = icmp eq ptr %58, null
  br i1 %tobool.not.i4, label %for.body47.brelse.exit6_crit_edge, label %if.then.i5

for.body47.brelse.exit6_crit_edge:                ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit6

if.then.i5:                                       ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %58) #11
  br label %brelse.exit6

brelse.exit6:                                     ; preds = %if.then.i5, %for.body47.brelse.exit6_crit_edge
  %inc50 = add nuw nsw i32 %i.117, 1
  %exitcond.not = icmp eq i32 %inc50, %n.0.lcssa
  br i1 %exitcond.not, label %brelse.exit6.cleanup_crit_edge, label %brelse.exit6.for.body47_crit_edge

brelse.exit6.for.body47_crit_edge:                ; preds = %brelse.exit6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body47

brelse.exit6.cleanup_crit_edge:                   ; preds = %brelse.exit6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error:                                            ; preds = %if.then38.error_crit_edge, %while.body.error_crit_edge
  %err.0 = phi i32 [ %call39, %if.then38.error_crit_edge ], [ -12, %while.body.error_crit_edge ]
  %n.2 = phi i32 [ %n.0.lcssa, %if.then38.error_crit_edge ], [ %n.015, %while.body.error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.2)
  %cmp5318 = icmp sgt i32 %n.2, 0
  br i1 %cmp5318, label %error.for.body55.preheader_crit_edge, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error.for.body55.preheader_crit_edge:             ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55.preheader

for.body55.preheader:                             ; preds = %error.for.body55.preheader_crit_edge, %if.then19.for.body55.preheader_crit_edge
  %n.226 = phi i32 [ %n.2, %error.for.body55.preheader_crit_edge ], [ 8, %if.then19.for.body55.preheader_crit_edge ]
  %err.025 = phi i32 [ %err.0, %error.for.body55.preheader_crit_edge ], [ %call20, %if.then19.for.body55.preheader_crit_edge ]
  br label %for.body55

for.body55:                                       ; preds = %bforget.exit.for.body55_crit_edge, %for.body55.preheader
  %i.219 = phi i32 [ %inc58, %bforget.exit.for.body55_crit_edge ], [ 0, %for.body55.preheader ]
  %arrayidx56 = getelementptr ptr, ptr %bhs, i32 %i.219
  %59 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx56, align 4
  %tobool.not.i7 = icmp eq ptr %60, null
  br i1 %tobool.not.i7, label %for.body55.bforget.exit_crit_edge, label %if.then.i8

for.body55.bforget.exit_crit_edge:                ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %bforget.exit

if.then.i8:                                       ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__bforget(ptr noundef nonnull %60) #11
  br label %bforget.exit

bforget.exit:                                     ; preds = %if.then.i8, %for.body55.bforget.exit_crit_edge
  %inc58 = add nuw nsw i32 %i.219, 1
  %exitcond21.not = icmp eq i32 %inc58, %n.226
  br i1 %exitcond21.not, label %bforget.exit.cleanup_crit_edge, label %bforget.exit.for.body55_crit_edge

bforget.exit.for.body55_crit_edge:                ; preds = %bforget.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55

bforget.exit.cleanup_crit_edge:                   ; preds = %bforget.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %bforget.exit.cleanup_crit_edge, %error.cleanup_crit_edge, %brelse.exit6.cleanup_crit_edge, %if.end43.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ %err.025, %bforget.exit.cleanup_crit_edge ], [ 0, %brelse.exit6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fat_add_entries(ptr noundef %dir, ptr nocapture noundef readonly %slots, i32 noundef %nr_slots, ptr nocapture noundef writeonly %sinfo) #0 align 64 {
entry:
  %bhs.i = alloca [8 x ptr], align 4
  %cluster.i = alloca [2 x i32], align 4
  %bh = alloca ptr, align 4
  %bhs = alloca [3 x ptr], align 4
  %de = alloca ptr, align 4
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bhs) #11
  %4 = ptrtoint ptr %bhs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bhs, align 4, !annotation !60
  %5 = getelementptr inbounds [3 x ptr], ptr %bhs, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !60
  %7 = getelementptr inbounds [3 x ptr], ptr %bhs, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #11
  %9 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #11
  %nr_slots1 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 2
  %10 = ptrtoint ptr %nr_slots1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nr_slots, ptr %nr_slots1, align 8
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bh, align 4
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %pos, align 8
  %call2323 = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %pos, ptr noundef nonnull %bh, ptr noundef nonnull %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2323)
  %cmp324 = icmp sgt i32 %call2323, -1
  br i1 %cmp324, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %entry.while.body_crit_edge
  %nr_bhs.0327 = phi i32 [ %nr_bhs.2, %if.end22.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %free_slots.0326 = phi i32 [ %free_slots.1, %if.end22.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %prev.0325 = phi ptr [ %prev.2, %if.end22.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %14)
  %cmp3 = icmp sgt i64 %14, 2097151
  br i1 %cmp3, label %while.body.error_crit_edge, label %if.end

while.body.error_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %while.body
  %15 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %de, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %18, label %for.cond.preheader [
    i8 0, label %if.end.if.then8_crit_edge
    i8 -27, label %if.end.if.then8_crit_edge383
  ]

if.end.if.then8_crit_edge383:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.0327)
  %cmp18321 = icmp sgt i32 %nr_bhs.0327, 0
  br i1 %cmp18321, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end22_crit_edge

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge383
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 4
  %cmp9.not = icmp eq ptr %prev.0325, %21
  br i1 %cmp9.not, label %if.then8.if.end12_crit_edge, label %if.then11

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !69
  %arrayidx = getelementptr [3 x ptr], ptr %bhs, i32 0, i32 %nr_bhs.0327
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %arrayidx, align 4
  %inc = add i32 %nr_bhs.0327, 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then8.if.end12_crit_edge
  %prev.1 = phi ptr [ %21, %if.then11 ], [ %prev.0325, %if.then8.if.end12_crit_edge ]
  %nr_bhs.1 = phi i32 [ %inc, %if.then11 ], [ %nr_bhs.0327, %if.then8.if.end12_crit_edge ]
  %inc13 = add i32 %free_slots.0326, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc13, i32 %nr_slots)
  %cmp14 = icmp eq i32 %inc13, %nr_slots
  br i1 %cmp14, label %if.end12.found_crit_edge, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end12.found_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0322 = phi i32 [ %inc21, %brelse.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx20 = getelementptr [3 x ptr], ptr %bhs, i32 0, i32 %i.0322
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx20, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %25) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc21 = add nuw nsw i32 %i.0322, 1
  %exitcond.not = icmp eq i32 %inc21, %nr_bhs.0327
  br i1 %exitcond.not, label %brelse.exit.if.end22_crit_edge, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

brelse.exit.if.end22_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %brelse.exit.if.end22_crit_edge, %if.end12.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge
  %prev.2 = phi ptr [ %prev.1, %if.end12.if.end22_crit_edge ], [ null, %for.cond.preheader.if.end22_crit_edge ], [ null, %brelse.exit.if.end22_crit_edge ]
  %free_slots.1 = phi i32 [ %inc13, %if.end12.if.end22_crit_edge ], [ 0, %for.cond.preheader.if.end22_crit_edge ], [ 0, %brelse.exit.if.end22_crit_edge ]
  %nr_bhs.2 = phi i32 [ %nr_bhs.1, %if.end12.if.end22_crit_edge ], [ 0, %for.cond.preheader.if.end22_crit_edge ], [ 0, %brelse.exit.if.end22_crit_edge ]
  %call2 = call fastcc i32 @fat_get_entry(ptr noundef %dir, ptr noundef nonnull %pos, ptr noundef nonnull %bh, ptr noundef nonnull %de)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.end22.while.body_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %entry.while.end_crit_edge
  %free_slots.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %free_slots.1, %if.end22.while.end_crit_edge ]
  %nr_bhs.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %nr_bhs.2, %if.end22.while.end_crit_edge ]
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp23 = icmp eq i32 %27, 1
  br i1 %cmp23, label %if.then25, label %if.else29

if.then25:                                        ; preds = %while.end
  %fat_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %fat_bits.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fat_bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %29)
  %cmp.i = icmp eq i8 %29, 32
  br i1 %cmp.i, label %if.then25.found_crit_edge, label %if.then25.error_crit_edge

if.then25.error_crit_edge:                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then25.found_crit_edge:                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.else29:                                        ; preds = %while.end
  %i_start = getelementptr i8, ptr %dir, i32 -136
  %30 = ptrtoint ptr %i_start to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp31 = icmp eq i32 %31, 0
  br i1 %cmp31, label %if.then33, label %if.else29.found_crit_edge

if.else29.found_crit_edge:                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #13
  %i_pos35 = getelementptr i8, ptr %dir, i32 -120
  %32 = ptrtoint ptr %i_pos35 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_pos35, align 8
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i64 noundef %33) #15
  br label %error

found:                                            ; preds = %if.else29.found_crit_edge, %if.then25.found_crit_edge, %if.end12.found_crit_edge
  %free_slots.2 = phi i32 [ %free_slots.0.lcssa, %if.then25.found_crit_edge ], [ %free_slots.0.lcssa, %if.else29.found_crit_edge ], [ %nr_slots, %if.end12.found_crit_edge ]
  %nr_bhs.3 = phi i32 [ %nr_bhs.0.lcssa, %if.then25.found_crit_edge ], [ %nr_bhs.0.lcssa, %if.else29.found_crit_edge ], [ %nr_bhs.1, %if.end12.found_crit_edge ]
  %mul = shl i32 %free_slots.2, 5
  %conv38 = zext i32 %mul to i64
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pos, align 8
  %sub = sub i64 %35, %conv38
  store i64 %sub, ptr %pos, align 8
  %sub39 = sub i32 %nr_slots, %free_slots.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_slots.2)
  %tobool40.not = icmp eq i32 %free_slots.2, 0
  br i1 %tobool40.not, label %found.if.end120_crit_edge, label %if.then41

found.if.end120_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then41:                                        ; preds = %found
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize, align 16
  %sub43 = add i32 %37, -1
  %38 = trunc i64 %sub to i32
  %conv45 = and i32 %sub43, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %free_slots.2, i32 %nr_slots)
  %cmp46 = icmp eq i32 %free_slots.2, %nr_slots
  %conv47.neg = sext i1 %cmp46 to i32
  %sub48 = add i32 %nr_bhs.3, %conv47.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48)
  %cmp50329 = icmp sgt i32 %sub48, 0
  br i1 %cmp50329, label %for.body52.preheader, label %if.then41.for.end63_crit_edge

if.then41.for.end63_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.body52.preheader:                             ; preds = %if.then41
  %39 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize, align 16
  %sub54.peel = sub i32 %40, %conv45
  %41 = tail call i32 @llvm.smin.i32(i32 %sub54.peel, i32 %mul)
  %42 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bhs, align 4
  %b_data.peel = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %b_data.peel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data.peel, align 4
  %add.ptr.peel = getelementptr i8, ptr %45, i32 %conv45
  %46 = call ptr @memcpy(ptr %add.ptr.peel, ptr %slots, i32 %41)
  tail call void @mark_buffer_dirty_inode(ptr noundef %43, ptr noundef %dir) #11
  %add.ptr59.peel = getelementptr i8, ptr %slots, i32 %41
  %sub60.peel = sub i32 %mul, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub48)
  %exitcond346.peel.not = icmp eq i32 %sub48, 1
  br i1 %exitcond346.peel.not, label %for.body52.preheader.land.lhs.true_crit_edge, label %for.body52.preheader.for.body52_crit_edge

for.body52.preheader.for.body52_crit_edge:        ; preds = %for.body52.preheader
  br label %for.body52

for.body52.preheader.land.lhs.true_crit_edge:     ; preds = %for.body52.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.preheader.for.body52_crit_edge
  %slots.addr.0333 = phi ptr [ %add.ptr59, %for.body52.for.body52_crit_edge ], [ %add.ptr59.peel, %for.body52.preheader.for.body52_crit_edge ]
  %size.0331 = phi i32 [ %sub60, %for.body52.for.body52_crit_edge ], [ %sub60.peel, %for.body52.preheader.for.body52_crit_edge ]
  %i.1330 = phi i32 [ %inc62, %for.body52.for.body52_crit_edge ], [ 1, %for.body52.preheader.for.body52_crit_edge ]
  %47 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize, align 16
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 %size.0331)
  %arrayidx57 = getelementptr [3 x ptr], ptr %bhs, i32 0, i32 %i.1330
  %50 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx57, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data, align 4
  %54 = call ptr @memcpy(ptr %53, ptr %slots.addr.0333, i32 %49)
  tail call void @mark_buffer_dirty_inode(ptr noundef %51, ptr noundef %dir) #11
  %add.ptr59 = getelementptr i8, ptr %slots.addr.0333, i32 %49
  %sub60 = sub i32 %size.0331, %49
  %inc62 = add nuw nsw i32 %i.1330, 1
  %exitcond346.not = icmp eq i32 %inc62, %sub48
  br i1 %exitcond346.not, label %for.body52.for.end63_crit_edge, label %for.body52.for.body52_crit_edge, !llvm.loop !70

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52

for.body52.for.end63_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.end63:                                        ; preds = %for.body52.for.end63_crit_edge, %if.then41.for.end63_crit_edge
  %i.1.lcssa = phi i32 [ 0, %if.then41.for.end63_crit_edge ], [ %sub48, %for.body52.for.end63_crit_edge ]
  %size.0.lcssa = phi i32 [ %mul, %if.then41.for.end63_crit_edge ], [ %sub60, %for.body52.for.end63_crit_edge ]
  %offset.0.lcssa = phi i32 [ %conv45, %if.then41.for.end63_crit_edge ], [ 0, %for.body52.for.end63_crit_edge ]
  %slots.addr.0.lcssa = phi ptr [ %slots, %if.then41.for.end63_crit_edge ], [ %add.ptr59, %for.body52.for.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48)
  %tobool64.not = icmp eq i32 %sub48, 0
  br i1 %tobool64.not, label %for.end63.land.lhs.true76_crit_edge, label %for.end63.land.lhs.true_crit_edge

for.end63.land.lhs.true_crit_edge:                ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.end63.land.lhs.true76_crit_edge:              ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true76

land.lhs.true:                                    ; preds = %for.end63.land.lhs.true_crit_edge, %for.body52.preheader.land.lhs.true_crit_edge
  %slots.addr.0.lcssa362 = phi ptr [ %slots.addr.0.lcssa, %for.end63.land.lhs.true_crit_edge ], [ %add.ptr59.peel, %for.body52.preheader.land.lhs.true_crit_edge ]
  %offset.0.lcssa360 = phi i32 [ %offset.0.lcssa, %for.end63.land.lhs.true_crit_edge ], [ 0, %for.body52.preheader.land.lhs.true_crit_edge ]
  %size.0.lcssa358 = phi i32 [ %size.0.lcssa, %for.end63.land.lhs.true_crit_edge ], [ %sub60.peel, %for.body52.preheader.land.lhs.true_crit_edge ]
  %i.1.lcssa356 = phi i32 [ %i.1.lcssa, %for.end63.land.lhs.true_crit_edge ], [ 1, %for.body52.preheader.land.lhs.true_crit_edge ]
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_flags, align 4
  %and66 = and i32 %58, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %land.lhs.true.if.end74_crit_edge

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

lor.lhs.false68:                                  ; preds = %land.lhs.true
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %59 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_flags, align 4
  %and69 = and i32 %60, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %lor.lhs.false68.land.lhs.true76_crit_edge, label %lor.lhs.false68.if.end74_crit_edge

lor.lhs.false68.if.end74_crit_edge:               ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

lor.lhs.false68.land.lhs.true76_crit_edge:        ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true76

if.end74:                                         ; preds = %lor.lhs.false68.if.end74_crit_edge, %land.lhs.true.if.end74_crit_edge
  %call73 = call i32 @fat_sync_bhs(ptr noundef nonnull %bhs, i32 noundef %sub48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool75.not = icmp eq i32 %call73, 0
  br i1 %tobool75.not, label %if.end74.land.lhs.true76_crit_edge, label %if.end74.if.end106_crit_edge

if.end74.if.end106_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.end74.land.lhs.true76_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end74.land.lhs.true76_crit_edge, %lor.lhs.false68.land.lhs.true76_crit_edge, %for.end63.land.lhs.true76_crit_edge
  %slots.addr.0.lcssa363 = phi ptr [ %slots.addr.0.lcssa, %for.end63.land.lhs.true76_crit_edge ], [ %slots.addr.0.lcssa362, %lor.lhs.false68.land.lhs.true76_crit_edge ], [ %slots.addr.0.lcssa362, %if.end74.land.lhs.true76_crit_edge ]
  %offset.0.lcssa361 = phi i32 [ %offset.0.lcssa, %for.end63.land.lhs.true76_crit_edge ], [ %offset.0.lcssa360, %lor.lhs.false68.land.lhs.true76_crit_edge ], [ %offset.0.lcssa360, %if.end74.land.lhs.true76_crit_edge ]
  %size.0.lcssa359 = phi i32 [ %size.0.lcssa, %for.end63.land.lhs.true76_crit_edge ], [ %size.0.lcssa358, %lor.lhs.false68.land.lhs.true76_crit_edge ], [ %size.0.lcssa358, %if.end74.land.lhs.true76_crit_edge ]
  %i.1.lcssa357 = phi i32 [ %i.1.lcssa, %for.end63.land.lhs.true76_crit_edge ], [ %i.1.lcssa356, %lor.lhs.false68.land.lhs.true76_crit_edge ], [ %i.1.lcssa356, %if.end74.land.lhs.true76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa357, i32 %nr_bhs.3)
  %cmp77 = icmp slt i32 %i.1.lcssa357, %nr_bhs.3
  br i1 %cmp77, label %if.then79, label %land.lhs.true76.if.end106_crit_edge

land.lhs.true76.if.end106_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then79:                                        ; preds = %land.lhs.true76
  %61 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_blocksize, align 16
  %sub82 = sub i32 %62, %offset.0.lcssa361
  %63 = call i32 @llvm.smin.i32(i32 %sub82, i32 %size.0.lcssa359)
  %arrayidx90 = getelementptr [3 x ptr], ptr %bhs, i32 0, i32 %i.1.lcssa357
  %64 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx90, align 4
  %b_data91 = getelementptr inbounds %struct.buffer_head, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %b_data91 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data91, align 4
  %add.ptr92 = getelementptr i8, ptr %67, i32 %offset.0.lcssa361
  %68 = call ptr @memcpy(ptr %add.ptr92, ptr %slots.addr.0.lcssa363, i32 %63)
  %69 = load ptr, ptr %arrayidx90, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %69, ptr noundef %dir) #11
  %70 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb, align 4
  %s_flags95 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %s_flags95 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_flags95, align 4
  %and96 = and i32 %73, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %lor.lhs.false98, label %if.then79.if.then102_crit_edge

if.then79.if.then102_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then102

lor.lhs.false98:                                  ; preds = %if.then79
  %i_flags99 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %74 = ptrtoint ptr %i_flags99 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_flags99, align 4
  %and100 = and i32 %75, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %lor.lhs.false98.if.end106_crit_edge, label %lor.lhs.false98.if.then102_crit_edge

lor.lhs.false98.if.then102_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then102

lor.lhs.false98.if.end106_crit_edge:              ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then102:                                       ; preds = %lor.lhs.false98.if.then102_crit_edge, %if.then79.if.then102_crit_edge
  %76 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx90, align 4
  %call104 = call i32 @sync_dirty_buffer(ptr noundef %77) #11
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %lor.lhs.false98.if.end106_crit_edge, %land.lhs.true76.if.end106_crit_edge, %if.end74.if.end106_crit_edge
  %slots.addr.0.lcssa364 = phi ptr [ %slots.addr.0.lcssa362, %if.end74.if.end106_crit_edge ], [ %slots.addr.0.lcssa363, %land.lhs.true76.if.end106_crit_edge ], [ %slots.addr.0.lcssa363, %if.then102 ], [ %slots.addr.0.lcssa363, %lor.lhs.false98.if.end106_crit_edge ]
  %err.2 = phi i32 [ %call73, %if.end74.if.end106_crit_edge ], [ 0, %land.lhs.true76.if.end106_crit_edge ], [ %call104, %if.then102 ], [ 0, %lor.lhs.false98.if.end106_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.3)
  %cmp108338 = icmp sgt i32 %nr_bhs.3, 0
  br i1 %cmp108338, label %if.end106.for.body110_crit_edge, label %if.end106.for.end114_crit_edge

if.end106.for.end114_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

if.end106.for.body110_crit_edge:                  ; preds = %if.end106
  br label %for.body110

for.body110:                                      ; preds = %brelse.exit291.for.body110_crit_edge, %if.end106.for.body110_crit_edge
  %i.2339 = phi i32 [ %inc113, %brelse.exit291.for.body110_crit_edge ], [ 0, %if.end106.for.body110_crit_edge ]
  %arrayidx111 = getelementptr [3 x ptr], ptr %bhs, i32 0, i32 %i.2339
  %78 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx111, align 4
  %tobool.not.i289 = icmp eq ptr %79, null
  br i1 %tobool.not.i289, label %for.body110.brelse.exit291_crit_edge, label %if.then.i290

for.body110.brelse.exit291_crit_edge:             ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit291

if.then.i290:                                     ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %79) #11
  br label %brelse.exit291

brelse.exit291:                                   ; preds = %if.then.i290, %for.body110.brelse.exit291_crit_edge
  %inc113 = add nuw nsw i32 %i.2339, 1
  %exitcond348.not = icmp eq i32 %inc113, %nr_bhs.3
  br i1 %exitcond348.not, label %brelse.exit291.for.end114_crit_edge, label %brelse.exit291.for.body110_crit_edge

brelse.exit291.for.body110_crit_edge:             ; preds = %brelse.exit291
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body110

brelse.exit291.for.end114_crit_edge:              ; preds = %brelse.exit291
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

for.end114:                                       ; preds = %brelse.exit291.for.end114_crit_edge, %if.end106.for.end114_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool115.not = icmp eq i32 %err.2, 0
  br i1 %tobool115.not, label %for.end114.if.end120_crit_edge, label %for.end114.error_remove_crit_edge

for.end114.error_remove_crit_edge:                ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_remove

for.end114.if.end120_crit_edge:                   ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.end120:                                        ; preds = %for.end114.if.end120_crit_edge, %found.if.end120_crit_edge
  %slots.addr.1 = phi ptr [ %slots.addr.0.lcssa364, %for.end114.if.end120_crit_edge ], [ %slots, %found.if.end120_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %free_slots.2, i32 %nr_slots)
  %tobool121.not = icmp eq i32 %free_slots.2, %nr_slots
  br i1 %tobool121.not, label %if.end120.if.end162_crit_edge, label %if.then122

if.end120.if.end162_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

if.then122:                                       ; preds = %if.end120
  %80 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 33
  %82 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs.i) #11
  %84 = call ptr @memset(ptr %bhs.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cluster.i) #11
  %85 = ptrtoint ptr %cluster.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %cluster.i, align 4, !annotation !60
  %86 = getelementptr inbounds [2 x i32], ptr %cluster.i, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %86, align 4, !annotation !60
  %mul.i = shl i32 %sub39, 5
  %cluster_size.i = getelementptr inbounds %struct.msdos_sb_info, ptr %83, i32 0, i32 2
  %88 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cluster_size.i, align 4
  %sub.i = add i32 %mul.i, -1
  %add.i = add i32 %sub.i, %89
  %cluster_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %83, i32 0, i32 1
  %90 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %cluster_bits.i, align 2
  %conv.i = zext i16 %91 to i32
  %shr.i = lshr i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp.i292 = icmp sgt i32 %shr.i, 2
  br i1 %cmp.i292, label %do.body3.i, label %do.end8.i, !prof !72

do.body3.i:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1216, 0\0A.popsection", ""() #11, !srcloc !73
  unreachable

do.end8.i:                                        ; preds = %if.then122
  %call9.i = call i32 @fat_alloc_clusters(ptr noundef %dir, ptr noundef nonnull %cluster.i, i32 noundef %shr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body13.preheader.i, label %do.end8.i.fat_add_new_entries.exit_crit_edge

do.end8.i.fat_add_new_entries.exit_crit_edge:     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fat_add_new_entries.exit

do.body13.preheader.i:                            ; preds = %do.end8.i
  %data_start.i.i = getelementptr inbounds %struct.msdos_sb_info, ptr %83, i32 0, i32 9
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 3
  %smax = call i32 @llvm.smax.i32(i32 %shr.i, i32 1)
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.cond37.i.do.body13.i_crit_edge, %do.body13.preheader.i
  %slots.addr.0.i = phi ptr [ %slots.addr.2.i, %do.cond37.i.do.body13.i_crit_edge ], [ %slots.addr.1, %do.body13.preheader.i ]
  %size.0.i = phi i32 [ %size.2.i, %do.cond37.i.do.body13.i_crit_edge ], [ %mul.i, %do.body13.preheader.i ]
  %copy.0.i = phi i32 [ %copy.2.i, %do.cond37.i.do.body13.i_crit_edge ], [ 0, %do.body13.preheader.i ]
  %i.0.i = phi i32 [ %inc38.i, %do.cond37.i.do.body13.i_crit_edge ], [ 0, %do.body13.preheader.i ]
  %n.0.i = phi i32 [ %n.1.lcssa.i, %do.cond37.i.do.body13.i_crit_edge ], [ 0, %do.body13.preheader.i ]
  %arrayidx.i = getelementptr [2 x i32], ptr %cluster.i, i32 0, i32 %i.0.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i, align 4
  %conv.i.i = sext i32 %93 to i64
  %sub.i.i = add nsw i64 %conv.i.i, -2
  %94 = ptrtoint ptr %83 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %83, align 4
  %conv1.i.i = zext i16 %95 to i64
  %mul.i.i = mul nsw i64 %sub.i.i, %conv1.i.i
  %96 = ptrtoint ptr %data_start.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_start.i.i, align 4
  %conv2.i.i = zext i32 %97 to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv2.i.i
  %add16.i = add nsw i64 %add.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %add16.i)
  %cmp17137.i = icmp ult i64 %add.i.i, %add16.i
  br i1 %cmp17137.i, label %do.body13.i.while.body.i_crit_edge, label %do.body13.i.do.cond37.i_crit_edge

do.body13.i.do.cond37.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond37.i

do.body13.i.while.body.i_crit_edge:               ; preds = %do.body13.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end35.i.while.body.i_crit_edge, %do.body13.i.while.body.i_crit_edge
  %n.1141.i = phi i32 [ %inc.i, %if.end35.i.while.body.i_crit_edge ], [ %n.0.i, %do.body13.i.while.body.i_crit_edge ]
  %size.1140.i = phi i32 [ %sub32.i, %if.end35.i.while.body.i_crit_edge ], [ %size.0.i, %do.body13.i.while.body.i_crit_edge ]
  %blknr.0139.i = phi i64 [ %inc36.i, %if.end35.i.while.body.i_crit_edge ], [ %add.i.i, %do.body13.i.while.body.i_crit_edge ]
  %slots.addr.1138.i = phi ptr [ %add.ptr.i293, %if.end35.i.while.body.i_crit_edge ], [ %slots.addr.0.i, %do.body13.i.while.body.i_crit_edge ]
  %98 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_bdev.i.i, align 4
  %100 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %99, i64 noundef %blknr.0139.i, i32 noundef %101, i32 noundef 8) #11
  %arrayidx20.i = getelementptr [8 x ptr], ptr %bhs.i, i32 0, i32 %n.1141.i
  %102 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i.i, ptr %arrayidx20.i, align 4
  %tobool22.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not.i, label %error_nomem.i, label %if.end24.i

if.end24.i:                                       ; preds = %while.body.i
  %103 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_blocksize.i.i, align 16
  %105 = call i32 @llvm.umin.i32(i32 %size.1140.i, i32 %104) #11
  call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #11
  %106 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %call.i.i, align 4
  %and.i.i.i.i.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end24.i.if.then.i129.i_crit_edge

if.end24.i.if.then.i129.i_crit_edge:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i129.i

trylock_buffer.exit.i.i:                          ; preds = %if.end24.i
  call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #11
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 4, ptr nonnull elementtype(i32) %call.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  %109 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.not.i.i = icmp eq i32 %109, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i129.i_crit_edge

trylock_buffer.exit.i.i.if.then.i129.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i129.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit.i

if.then.i129.i:                                   ; preds = %trylock_buffer.exit.i.i.if.then.i129.i_crit_edge, %if.end24.i.if.then.i129.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i.i) #11
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i129.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %110 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx20.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %b_data.i, align 4
  %114 = call ptr @memcpy(ptr %113, ptr %slots.addr.1138.i, i32 %105)
  %115 = load ptr, ptr %arrayidx20.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %115, align 4
  %and1.i.i.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge

lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge: ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit.i

if.then.i.i:                                      ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %115) #11
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i.i, %lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge
  %118 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx20.i, align 4
  call void @unlock_buffer(ptr noundef %119) #11
  call void @mark_buffer_dirty_inode(ptr noundef %119, ptr noundef %dir) #11
  %add.ptr.i293 = getelementptr i8, ptr %slots.addr.1138.i, i32 %105
  %sub32.i = sub i32 %size.1140.i, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32.i)
  %tobool33.not.i = icmp eq i32 %sub32.i, 0
  br i1 %tobool33.not.i, label %set_buffer_uptodate.exit.i.do.cond37.i_crit_edge, label %if.end35.i

set_buffer_uptodate.exit.i.do.cond37.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond37.i

if.end35.i:                                       ; preds = %set_buffer_uptodate.exit.i
  %inc.i = add i32 %n.1141.i, 1
  %inc36.i = add nuw i64 %blknr.0139.i, 1
  %cmp17.i = icmp ult i64 %inc36.i, %add16.i
  br i1 %cmp17.i, label %if.end35.i.while.body.i_crit_edge, label %if.end35.i.do.cond37.i_crit_edge

if.end35.i.do.cond37.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond37.i

if.end35.i.while.body.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.cond37.i:                                      ; preds = %if.end35.i.do.cond37.i_crit_edge, %set_buffer_uptodate.exit.i.do.cond37.i_crit_edge, %do.body13.i.do.cond37.i_crit_edge
  %n.1.lcssa.i = phi i32 [ %n.0.i, %do.body13.i.do.cond37.i_crit_edge ], [ %n.1141.i, %set_buffer_uptodate.exit.i.do.cond37.i_crit_edge ], [ %inc.i, %if.end35.i.do.cond37.i_crit_edge ]
  %slots.addr.2.i = phi ptr [ %slots.addr.0.i, %do.body13.i.do.cond37.i_crit_edge ], [ %add.ptr.i293, %set_buffer_uptodate.exit.i.do.cond37.i_crit_edge ], [ %add.ptr.i293, %if.end35.i.do.cond37.i_crit_edge ]
  %size.2.i = phi i32 [ %size.0.i, %do.body13.i.do.cond37.i_crit_edge ], [ 0, %set_buffer_uptodate.exit.i.do.cond37.i_crit_edge ], [ %sub32.i, %if.end35.i.do.cond37.i_crit_edge ]
  %copy.2.i = phi i32 [ %copy.0.i, %do.body13.i.do.cond37.i_crit_edge ], [ %105, %set_buffer_uptodate.exit.i.do.cond37.i_crit_edge ], [ %105, %if.end35.i.do.cond37.i_crit_edge ]
  %inc38.i = add nuw nsw i32 %i.0.i, 1
  %exitcond349.not = icmp eq i32 %inc38.i, %smax
  br i1 %exitcond349.not, label %do.end41.i, label %do.cond37.i.do.body13.i_crit_edge

do.cond37.i.do.body13.i_crit_edge:                ; preds = %do.cond37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13.i

do.end41.i:                                       ; preds = %do.cond37.i
  %arrayidx42.i = getelementptr [8 x ptr], ptr %bhs.i, i32 0, i32 %n.1.lcssa.i
  %120 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx42.i, align 4
  %b_data43.i = getelementptr inbounds %struct.buffer_head, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %b_data43.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %b_data43.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %123, i32 %copy.2.i
  %124 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %s_blocksize.i.i, align 16
  %sub46.i = sub i32 %125, %copy.2.i
  %126 = call ptr @memset(ptr %add.ptr44.i, i32 0, i32 %sub46.i)
  %sub47.i = add i32 %copy.2.i, -32
  %127 = load ptr, ptr %arrayidx42.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %127, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #11
  %128 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #11, !srcloc !69
  %129 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %127, ptr %bh, align 4
  %b_data50.i = getelementptr inbounds %struct.buffer_head, ptr %127, i32 0, i32 5
  %130 = ptrtoint ptr %b_data50.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data50.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %131, i32 %sub47.i
  %132 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr51.i, ptr %de, align 4
  %inc53.i = add i32 %n.1.lcssa.i, 1
  %call55.i = call fastcc i32 @fat_zeroed_cluster(ptr noundef %dir, i64 noundef %add.i.i, i32 noundef %inc53.i, ptr noundef nonnull %bhs.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %error_free.i

if.end58.i:                                       ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %cluster.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cluster.i, align 4
  br label %fat_add_new_entries.exit

error_free.i:                                     ; preds = %do.end41.i
  %tobool.not.i131.i = icmp eq ptr %127, null
  br i1 %tobool.not.i131.i, label %error_free.i.error_nomem.thread.i_crit_edge, label %if.then.i132.i

error_free.i.error_nomem.thread.i_crit_edge:      ; preds = %error_free.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_nomem.thread.i

if.then.i132.i:                                   ; preds = %error_free.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %127) #11
  br label %error_nomem.thread.i

error_nomem.thread.i:                             ; preds = %if.then.i132.i, %error_free.i.error_nomem.thread.i_crit_edge
  %135 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %bh, align 4
  br label %for.end.i

error_nomem.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1141.i)
  %cmp60149.i = icmp sgt i32 %n.1141.i, 0
  br i1 %cmp60149.i, label %error_nomem.i.for.body.i_crit_edge, label %error_nomem.i.for.end.i_crit_edge

error_nomem.i.for.end.i_crit_edge:                ; preds = %error_nomem.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

error_nomem.i.for.body.i_crit_edge:               ; preds = %error_nomem.i
  br label %for.body.i

for.body.i:                                       ; preds = %bforget.exit.i.for.body.i_crit_edge, %error_nomem.i.for.body.i_crit_edge
  %i.1150.i = phi i32 [ %inc63.i, %bforget.exit.i.for.body.i_crit_edge ], [ 0, %error_nomem.i.for.body.i_crit_edge ]
  %arrayidx62.i = getelementptr [8 x ptr], ptr %bhs.i, i32 0, i32 %i.1150.i
  %136 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx62.i, align 4
  %tobool.not.i133.i = icmp eq ptr %137, null
  br i1 %tobool.not.i133.i, label %for.body.i.bforget.exit.i_crit_edge, label %if.then.i134.i

for.body.i.bforget.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bforget.exit.i

if.then.i134.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__bforget(ptr noundef nonnull %137) #11
  br label %bforget.exit.i

bforget.exit.i:                                   ; preds = %if.then.i134.i, %for.body.i.bforget.exit.i_crit_edge
  %inc63.i = add nuw nsw i32 %i.1150.i, 1
  %exitcond.not.i = icmp eq i32 %inc63.i, %n.1141.i
  br i1 %exitcond.not.i, label %bforget.exit.i.for.end.i_crit_edge, label %bforget.exit.i.for.body.i_crit_edge

bforget.exit.i.for.body.i_crit_edge:              ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

bforget.exit.i.for.end.i_crit_edge:               ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %bforget.exit.i.for.end.i_crit_edge, %error_nomem.i.for.end.i_crit_edge, %error_nomem.thread.i
  %err.0156.i = phi i32 [ %call55.i, %error_nomem.thread.i ], [ -12, %error_nomem.i.for.end.i_crit_edge ], [ -12, %bforget.exit.i.for.end.i_crit_edge ]
  %138 = ptrtoint ptr %cluster.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cluster.i, align 4
  %call65.i = call i32 @fat_free_clusters(ptr noundef %dir, i32 noundef %139) #11
  br label %fat_add_new_entries.exit

fat_add_new_entries.exit:                         ; preds = %for.end.i, %if.end58.i, %do.end8.i.fat_add_new_entries.exit_crit_edge
  %retval.0.i = phi i32 [ %134, %if.end58.i ], [ %call9.i, %do.end8.i.fat_add_new_entries.exit_crit_edge ], [ %err.0156.i, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cluster.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp124 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp124, label %fat_add_new_entries.exit.error_remove_crit_edge, label %if.end127

fat_add_new_entries.exit.error_remove_crit_edge:  ; preds = %fat_add_new_entries.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_remove

if.end127:                                        ; preds = %fat_add_new_entries.exit
  %call128 = call i32 @fat_chain_add(ptr noundef %dir, i32 noundef %retval.0.i, i32 noundef %shr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end132, label %if.then130

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %call131 = call i32 @fat_free_clusters(ptr noundef %dir, i32 noundef %retval.0.i) #11
  br label %error_remove

if.end132:                                        ; preds = %if.end127
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %140 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %i_size, align 8
  %cluster_size = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 2
  %142 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cluster_size, align 4
  %sub133 = add i32 %143, -1
  %conv134 = zext i32 %sub133 to i64
  %and135 = and i64 %141, %conv134
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and135)
  %tobool136.not = icmp eq i64 %and135, 0
  br i1 %tobool136.not, label %if.end132.cleanup158_crit_edge, label %if.then137

if.end132.cleanup158_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup158

if.then137:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.6) #15
  %144 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %i_size, align 8
  %146 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cluster_size, align 4
  %conv140 = zext i32 %147 to i64
  %add = add i64 %145, -1
  %sub141 = add i64 %add, %conv140
  %neg = sub nsw i64 0, %conv140
  %and145 = and i64 %sub141, %neg
  store i64 %and145, ptr %i_size, align 8
  br label %cleanup158

cleanup158:                                       ; preds = %if.then137, %if.end132.cleanup158_crit_edge
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 1
  %148 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %cluster_bits, align 2
  %conv148 = zext i16 %149 to i32
  %shl = shl i32 %shr.i, %conv148
  %conv149 = sext i32 %shl to i64
  %150 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %i_size, align 8
  %add151 = add i64 %151, %conv149
  store i64 %add151, ptr %i_size, align 8
  %152 = load i16, ptr %cluster_bits, align 2
  %conv153 = zext i16 %152 to i32
  %shl154 = shl i32 %shr.i, %conv153
  %conv155 = sext i32 %shl154 to i64
  %mmu_private = getelementptr i8, ptr %dir, i32 -144
  %153 = ptrtoint ptr %mmu_private to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %mmu_private, align 8
  %add157 = add i64 %154, %conv155
  store i64 %add157, ptr %mmu_private, align 8
  br label %if.end162

if.end162:                                        ; preds = %cleanup158, %if.end120.if.end162_crit_edge
  %slot_off = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 1
  %155 = ptrtoint ptr %slot_off to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %sub, ptr %slot_off, align 8
  %156 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %de, align 4
  %de163 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 3
  %158 = ptrtoint ptr %de163 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %de163, align 4
  %159 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bh, align 4
  %bh164 = getelementptr inbounds %struct.fat_slot_info, ptr %sinfo, i32 0, i32 4
  %161 = ptrtoint ptr %bh164 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %bh164, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %160, i32 0, i32 3
  %162 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %b_blocknr.i, align 8
  %164 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_fs_info.i, align 16
  %dir_per_block_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %165, i32 0, i32 24
  %166 = ptrtoint ptr %dir_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dir_per_block_bits.i, align 4
  %sh_prom.i = zext i32 %167 to i64
  %shl.i = shl i64 %163, %sh_prom.i
  %b_data.i296 = getelementptr inbounds %struct.buffer_head, ptr %160, i32 0, i32 5
  %168 = ptrtoint ptr %b_data.i296 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %b_data.i296, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %157 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %169 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i297 = sext i32 %sub.ptr.div.i to i64
  %or.i = or i64 %shl.i, %conv.i297
  %170 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %or.i, ptr %sinfo, align 8
  br label %cleanup181

error:                                            ; preds = %if.then33, %if.then25.error_crit_edge, %while.body.error_crit_edge
  %nr_bhs.0318 = phi i32 [ %nr_bhs.0.lcssa, %if.then25.error_crit_edge ], [ %nr_bhs.0.lcssa, %if.then33 ], [ %nr_bhs.0327, %while.body.error_crit_edge ]
  %err.4 = phi i32 [ -28, %if.then25.error_crit_edge ], [ -5, %if.then33 ], [ -28, %while.body.error_crit_edge ]
  %171 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bh, align 4
  %tobool.not.i298 = icmp eq ptr %172, null
  br i1 %tobool.not.i298, label %error.brelse.exit300_crit_edge, label %if.then.i299

error.brelse.exit300_crit_edge:                   ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit300

if.then.i299:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %172) #11
  br label %brelse.exit300

brelse.exit300:                                   ; preds = %if.then.i299, %error.brelse.exit300_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.0318)
  %cmp170340 = icmp sgt i32 %nr_bhs.0318, 0
  br i1 %cmp170340, label %brelse.exit300.for.body172_crit_edge, label %brelse.exit300.cleanup181_crit_edge

brelse.exit300.cleanup181_crit_edge:              ; preds = %brelse.exit300
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

brelse.exit300.for.body172_crit_edge:             ; preds = %brelse.exit300
  br label %for.body172

for.body172:                                      ; preds = %brelse.exit303.for.body172_crit_edge, %brelse.exit300.for.body172_crit_edge
  %i.3341 = phi i32 [ %inc175, %brelse.exit303.for.body172_crit_edge ], [ 0, %brelse.exit300.for.body172_crit_edge ]
  %arrayidx173 = getelementptr [3 x ptr], ptr %bhs, i32 0, i32 %i.3341
  %173 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx173, align 4
  %tobool.not.i301 = icmp eq ptr %174, null
  br i1 %tobool.not.i301, label %for.body172.brelse.exit303_crit_edge, label %if.then.i302

for.body172.brelse.exit303_crit_edge:             ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit303

if.then.i302:                                     ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %174) #11
  br label %brelse.exit303

brelse.exit303:                                   ; preds = %if.then.i302, %for.body172.brelse.exit303_crit_edge
  %inc175 = add nuw nsw i32 %i.3341, 1
  %exitcond350.not = icmp eq i32 %inc175, %nr_bhs.0318
  br i1 %exitcond350.not, label %brelse.exit303.cleanup181_crit_edge, label %brelse.exit303.for.body172_crit_edge

brelse.exit303.for.body172_crit_edge:             ; preds = %brelse.exit303
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body172

brelse.exit303.cleanup181_crit_edge:              ; preds = %brelse.exit303
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

error_remove:                                     ; preds = %if.then130, %fat_add_new_entries.exit.error_remove_crit_edge, %for.end114.error_remove_crit_edge
  %err.5 = phi i32 [ %err.2, %for.end114.error_remove_crit_edge ], [ %retval.0.i, %fat_add_new_entries.exit.error_remove_crit_edge ], [ %call128, %if.then130 ]
  %175 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bh, align 4
  %tobool.not.i304 = icmp eq ptr %176, null
  br i1 %tobool.not.i304, label %error_remove.brelse.exit306_crit_edge, label %if.then.i305

error_remove.brelse.exit306_crit_edge:            ; preds = %error_remove
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit306

if.then.i305:                                     ; preds = %error_remove
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %176) #11
  br label %brelse.exit306

brelse.exit306:                                   ; preds = %if.then.i305, %error_remove.brelse.exit306_crit_edge
  br i1 %tobool40.not, label %brelse.exit306.cleanup181_crit_edge, label %if.then178

brelse.exit306.cleanup181_crit_edge:              ; preds = %brelse.exit306
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup181

if.then178:                                       ; preds = %brelse.exit306
  call void @__sanitizer_cov_trace_pc() #13
  %call179 = call fastcc i32 @__fat_remove_entries(ptr noundef %dir, i64 noundef %sub, i32 noundef %free_slots.2)
  br label %cleanup181

cleanup181:                                       ; preds = %if.then178, %brelse.exit306.cleanup181_crit_edge, %brelse.exit303.cleanup181_crit_edge, %brelse.exit300.cleanup181_crit_edge, %if.end162
  %retval.0 = phi i32 [ 0, %if.end162 ], [ %err.5, %if.then178 ], [ %err.5, %brelse.exit306.cleanup181_crit_edge ], [ %err.4, %brelse.exit300.cleanup181_crit_edge ], [ %err.4, %brelse.exit303.cleanup181_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bhs) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_bhs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_chain_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @fat_checksum(ptr nocapture noundef readonly %name) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name, align 1
  %add = tail call i8 @llvm.fshl.i8(i8 %1, i8 %1, i8 7)
  %arrayidx2 = getelementptr i8, ptr %name, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %add4 = add i8 %add, %3
  %add10 = tail call i8 @llvm.fshl.i8(i8 %add4, i8 %add4, i8 7)
  %arrayidx11 = getelementptr i8, ptr %name, i32 2
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  %add13 = add i8 %add10, %5
  %add19 = tail call i8 @llvm.fshl.i8(i8 %add13, i8 %add13, i8 7)
  %arrayidx20 = getelementptr i8, ptr %name, i32 3
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx20, align 1
  %add22 = add i8 %add19, %7
  %add28 = tail call i8 @llvm.fshl.i8(i8 %add22, i8 %add22, i8 7)
  %arrayidx29 = getelementptr i8, ptr %name, i32 4
  %8 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx29, align 1
  %add31 = add i8 %add28, %9
  %add37 = tail call i8 @llvm.fshl.i8(i8 %add31, i8 %add31, i8 7)
  %arrayidx38 = getelementptr i8, ptr %name, i32 5
  %10 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx38, align 1
  %add40 = add i8 %add37, %11
  %add46 = tail call i8 @llvm.fshl.i8(i8 %add40, i8 %add40, i8 7)
  %arrayidx47 = getelementptr i8, ptr %name, i32 6
  %12 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx47, align 1
  %add49 = add i8 %add46, %13
  %add55 = tail call i8 @llvm.fshl.i8(i8 %add49, i8 %add49, i8 7)
  %arrayidx56 = getelementptr i8, ptr %name, i32 7
  %14 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx56, align 1
  %add58 = add i8 %add55, %15
  %add64 = tail call i8 @llvm.fshl.i8(i8 %add58, i8 %add58, i8 7)
  %arrayidx65 = getelementptr i8, ptr %name, i32 8
  %16 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx65, align 1
  %add67 = add i8 %add64, %17
  %add73 = tail call i8 @llvm.fshl.i8(i8 %add67, i8 %add67, i8 7)
  %arrayidx74 = getelementptr i8, ptr %name, i32 9
  %18 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx74, align 1
  %add76 = add i8 %add73, %19
  %add82 = tail call i8 @llvm.fshl.i8(i8 %add76, i8 %add76, i8 7)
  %arrayidx83 = getelementptr i8, ptr %name, i32 10
  %20 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx83, align 1
  %add85 = add i8 %add82, %21
  ret i8 %add85
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fat_shortname2uni(ptr nocapture noundef readonly %nls, ptr noundef %buf, i32 noundef %buf_size, ptr noundef %uni_buf, i16 noundef zeroext %opt, i32 noundef %lower) unnamed_addr #2 align 64 {
entry:
  %wc.i44 = alloca i16, align 2
  %nc.i45 = alloca i8, align 1
  %wc.i = alloca i16, align 2
  %nc.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %opt to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wc.i) #11
  %0 = ptrtoint ptr %wc.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %wc.i, align 2, !annotation !60
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 3
  %1 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %char2uni.i, align 4
  %call.i = call i32 %2(ptr noundef %buf, i32 noundef %buf_size, ptr noundef nonnull %wc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 63, ptr %uni_buf, align 2
  br label %fat_short2lower_uni.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp1.i = icmp ult i32 %call.i, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.else9.i

if.then2.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nc.i) #11
  %charset2lower.i = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 4
  %4 = ptrtoint ptr %charset2lower.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %charset2lower.i, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr i8, ptr %5, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 %7, i8 %9
  %10 = ptrtoint ptr %nc.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.store.select.i, ptr %nc.i, align 1
  %11 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %char2uni.i, align 4
  %call5.i = call i32 %12(ptr noundef nonnull %nc.i, i32 noundef 1, ptr noundef %uni_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 63, ptr %uni_buf, align 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.then2.i.if.end8.i_crit_edge
  %charlen.0.i = phi i32 [ 1, %if.then7.i ], [ %call5.i, %if.then2.i.if.end8.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nc.i) #11
  br label %fat_short2lower_uni.exit

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %wc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %wc.i, align 2
  %16 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %uni_buf, align 2
  br label %fat_short2lower_uni.exit

fat_short2lower_uni.exit:                         ; preds = %if.else9.i, %if.end8.i, %if.then.i
  %charlen.1.i = phi i32 [ 1, %if.then.i ], [ %charlen.0.i, %if.end8.i ], [ %call.i, %if.else9.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wc.i) #11
  br label %if.end20

if.else:                                          ; preds = %entry
  %and2 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  %char2uni.i39 = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 3
  %17 = ptrtoint ptr %char2uni.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %char2uni.i39, align 4
  %call.i40 = tail call i32 %18(ptr noundef %buf, i32 noundef %buf_size, ptr noundef %uni_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i41 = icmp slt i32 %call.i40, 0
  br i1 %cmp.i41, label %if.then.i42, label %if.then4.if.end20_crit_edge

if.then4.if.end20_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then.i42:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 63, ptr %uni_buf, align 2
  br label %if.end20

if.else6:                                         ; preds = %if.else
  %and8 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else16, label %if.then10

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lower)
  %tobool11.not = icmp eq i32 %lower, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wc.i44) #11
  %20 = ptrtoint ptr %wc.i44 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %wc.i44, align 2, !annotation !60
  %char2uni.i46 = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 3
  %21 = ptrtoint ptr %char2uni.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %char2uni.i46, align 4
  %call.i47 = call i32 %22(ptr noundef %buf, i32 noundef %buf_size, ptr noundef nonnull %wc.i44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i48 = icmp slt i32 %call.i47, 0
  br i1 %cmp.i48, label %if.then.i49, label %if.else.i51

if.then.i49:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 63, ptr %uni_buf, align 2
  br label %fat_short2lower_uni.exit65

if.else.i51:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i47)
  %cmp1.i50 = icmp ult i32 %call.i47, 2
  br i1 %cmp1.i50, label %if.then2.i59, label %if.else9.i63

if.then2.i59:                                     ; preds = %if.else.i51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nc.i45) #11
  %charset2lower.i52 = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 4
  %24 = ptrtoint ptr %charset2lower.i52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %charset2lower.i52, align 4
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %idxprom.i53 = zext i8 %27 to i32
  %arrayidx.i54 = getelementptr i8, ptr %25, i32 %idxprom.i53
  %28 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i55 = icmp eq i8 %29, 0
  %spec.store.select.i56 = select i1 %tobool.not.i55, i8 %27, i8 %29
  %30 = ptrtoint ptr %nc.i45 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.store.select.i56, ptr %nc.i45, align 1
  %31 = ptrtoint ptr %char2uni.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %char2uni.i46, align 4
  %call5.i57 = call i32 %32(ptr noundef nonnull %nc.i45, i32 noundef 1, ptr noundef %uni_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i57)
  %cmp6.i58 = icmp slt i32 %call5.i57, 0
  br i1 %cmp6.i58, label %if.then7.i60, label %if.then2.i59.if.end8.i62_crit_edge

if.then2.i59.if.end8.i62_crit_edge:               ; preds = %if.then2.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i62

if.then7.i60:                                     ; preds = %if.then2.i59
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 63, ptr %uni_buf, align 2
  br label %if.end8.i62

if.end8.i62:                                      ; preds = %if.then7.i60, %if.then2.i59.if.end8.i62_crit_edge
  %charlen.0.i61 = phi i32 [ 1, %if.then7.i60 ], [ %call5.i57, %if.then2.i59.if.end8.i62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nc.i45) #11
  br label %fat_short2lower_uni.exit65

if.else9.i63:                                     ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %wc.i44 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %wc.i44, align 2
  %36 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %uni_buf, align 2
  br label %fat_short2lower_uni.exit65

fat_short2lower_uni.exit65:                       ; preds = %if.else9.i63, %if.end8.i62, %if.then.i49
  %charlen.1.i64 = phi i32 [ 1, %if.then.i49 ], [ %charlen.0.i61, %if.end8.i62 ], [ %call.i47, %if.else9.i63 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wc.i44) #11
  br label %if.end20

if.else14:                                        ; preds = %if.then10
  %char2uni.i66 = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 3
  %37 = ptrtoint ptr %char2uni.i66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %char2uni.i66, align 4
  %call.i67 = tail call i32 %38(ptr noundef %buf, i32 noundef %buf_size, ptr noundef %uni_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %if.then.i69, label %if.else14.if.end20_crit_edge

if.else14.if.end20_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then.i69:                                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 63, ptr %uni_buf, align 2
  br label %if.end20

if.else16:                                        ; preds = %if.else6
  %char2uni.i72 = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 3
  %40 = ptrtoint ptr %char2uni.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %char2uni.i72, align 4
  %call.i73 = tail call i32 %41(ptr noundef %buf, i32 noundef %buf_size, ptr noundef %uni_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i74 = icmp slt i32 %call.i73, 0
  br i1 %cmp.i74, label %if.then.i75, label %if.else16.if.end20_crit_edge

if.else16.if.end20_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then.i75:                                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %uni_buf to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 63, ptr %uni_buf, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then.i75, %if.else16.if.end20_crit_edge, %if.then.i69, %if.else14.if.end20_crit_edge, %fat_short2lower_uni.exit65, %if.then.i42, %if.then4.if.end20_crit_edge, %fat_short2lower_uni.exit
  %len.0 = phi i32 [ %charlen.1.i, %fat_short2lower_uni.exit ], [ %charlen.1.i64, %fat_short2lower_uni.exit65 ], [ 1, %if.then.i42 ], [ %call.i40, %if.then4.if.end20_crit_edge ], [ 1, %if.then.i69 ], [ %call.i67, %if.else14.if.end20_crit_edge ], [ 1, %if.then.i75 ], [ %call.i73, %if.else16.if.end20_crit_edge ]
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fat_readdir(ptr noundef %inode, ptr nocapture noundef readonly %file, ptr noundef %ctx, i32 noundef %short_only, ptr noundef writeonly %both) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %de = alloca ptr, align 4
  %nr_slots = alloca i8, align 1
  %unicode = alloca ptr, align 4
  %bufname = alloca [73 x i8], align 1
  %cpos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #11
  %4 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nr_slots) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unicode) #11
  %5 = ptrtoint ptr %unicode to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %unicode, align 4
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %bufname) #11
  %6 = call ptr @memset(ptr %bufname, i32 255, i32 73)
  %isvfat1 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 19, i32 12
  %7 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %isvfat1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpos) #11
  %s_lock = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #11
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  %10 = ptrtoint ptr %cpos to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %cpos, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.23)
  switch i64 %9, label %if.end [
    i64 0, label %if.then.i
    i64 1, label %if.then.if.then6.i_crit_edge
  ]

if.then.if.then6.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then.i:                                        ; preds = %if.then
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %20 to i64
  %call.i.i = tail call i32 %14(ptr noundef %ctx, ptr noundef nonnull @.str.8, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.cleanup194_crit_edge

if.then.i.cleanup194_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup194

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %pos, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.then.if.then6.i_crit_edge
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #11
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #11
  %conv.i20.i = zext i32 %31 to i64
  %call1.i.i = tail call i32 %23(ptr noundef %ctx, ptr noundef nonnull @.str.10, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end.thread, label %if.then6.i.cleanup194_crit_edge

if.then6.i.cleanup194_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup194

if.end.thread:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 2, ptr %pos, align 8
  br label %if.then6

if.end:                                           ; preds = %if.then
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %.pr = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %.pr)
  %cmp5 = icmp eq i64 %.pr, 2
  br i1 %cmp5, label %if.end.if.then6_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.thread
  %34 = ptrtoint ptr %cpos to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %cpos, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %fake_offset.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.end.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %35 = ptrtoint ptr %cpos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cpos, align 8
  %and = and i64 %36, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup194_crit_edge

if.end8.cleanup194_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup194

if.end10:                                         ; preds = %if.end8
  %37 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %bh, align 4
  %call11314 = call fastcc i32 @fat_get_entry(ptr noundef %inode, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11314)
  %cmp12315 = icmp eq i32 %call11314, -1
  br i1 %cmp12315, label %if.end10.end_of_dir_crit_edge, label %parse_record.preheader.lr.ph

if.end10.end_of_dir_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_of_dir

parse_record.preheader.lr.ph:                     ; preds = %if.end10
  %38 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool15.not = icmp eq i16 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %short_only)
  %tobool16.not = icmp ne i32 %short_only, 0
  %39 = or i1 %tobool16.not, %tobool15.not
  %tobool93.not = icmp eq ptr %both, null
  %longname107 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %both, i32 0, i32 3
  %long_len = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %both, i32 0, i32 4
  %shortname = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %both, i32 0, i32 5
  %short_len109 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %both, i32 0, i32 6
  %dentry.i263 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  br label %parse_record.preheader

parse_record.preheader:                           ; preds = %record_end.parse_record.preheader_crit_edge, %parse_record.preheader.lr.ph
  %fake_offset.1319 = phi i32 [ %fake_offset.0, %parse_record.preheader.lr.ph ], [ 0, %record_end.parse_record.preheader_crit_edge ]
  br label %parse_record

parse_record:                                     ; preds = %if.else74.parse_record_crit_edge, %parse_record.preheader
  %40 = ptrtoint ptr %nr_slots to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %nr_slots, align 1
  %41 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %de, align 4
  br i1 %39, label %if.else, label %if.then17

if.then17:                                        ; preds = %parse_record
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -27, i8 %44)
  %cmp18 = icmp eq i8 %44, -27
  br i1 %cmp18, label %if.then17.record_end_crit_edge, label %if.end21

if.then17.record_end_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

if.end21:                                         ; preds = %if.then17
  %attr = getelementptr inbounds %struct.msdos_dir_entry, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %attr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %46)
  %cmp23.not = icmp eq i8 %46, 15
  %47 = and i8 %46, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool29.not = icmp eq i8 %47, 0
  %or.cond256 = or i1 %cmp23.not, %tobool29.not
  br i1 %or.cond256, label %if.end31, label %if.end21.record_end_crit_edge

if.end21.record_end_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

if.end31:                                         ; preds = %if.end21
  %cmp23.not.not = xor i1 %cmp23.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cond305 = icmp eq i8 %44, 0
  %or.cond306 = select i1 %cmp23.not.not, i1 %cond305, i1 false
  br i1 %or.cond306, label %if.end31.record_end_crit_edge, label %if.end31.if.end62_crit_edge

if.end31.if.end62_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end31.record_end_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

if.else:                                          ; preds = %parse_record
  %attr46 = getelementptr inbounds %struct.msdos_dir_entry, ptr %42, i32 0, i32 1
  %48 = ptrtoint ptr %attr46 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %attr46, align 1
  %50 = and i8 %49, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool49.not = icmp eq i8 %50, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.else.record_end_crit_edge

if.else.record_end_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

lor.lhs.false50:                                  ; preds = %if.else
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %42, align 4
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %52, label %lor.lhs.false50.if.end62_crit_edge [
    i8 0, label %lor.lhs.false50.record_end_crit_edge
    i8 -27, label %lor.lhs.false50.record_end_crit_edge356
  ]

lor.lhs.false50.record_end_crit_edge356:          ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

lor.lhs.false50.record_end_crit_edge:             ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

lor.lhs.false50.if.end62_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end62:                                         ; preds = %lor.lhs.false50.if.end62_crit_edge, %if.end31.if.end62_crit_edge
  br i1 %tobool15.not, label %if.end62.if.end114_crit_edge, label %land.lhs.true64

if.end62.if.end114_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

land.lhs.true64:                                  ; preds = %if.end62
  %54 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %de, align 4
  %attr65 = getelementptr inbounds %struct.msdos_dir_entry, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %attr65 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %attr65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %57)
  %cmp67 = icmp eq i8 %57, 15
  br i1 %cmp67, label %if.then69, label %land.lhs.true64.if.end114_crit_edge

land.lhs.true64.if.end114_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then69:                                        ; preds = %land.lhs.true64
  %call70 = call fastcc i32 @fat_parse_long(ptr noundef %inode, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de, ptr noundef nonnull %unicode, ptr noundef nonnull %nr_slots)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %bh, align 4
  br label %end_of_dir

if.else74:                                        ; preds = %if.then69
  %59 = zext i32 %call70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call70, label %if.end89 [
    i32 1, label %if.else74.record_end_crit_edge
    i32 2, label %if.else74.parse_record_crit_edge
    i32 3, label %if.else74.end_of_dir_crit_edge
  ]

if.else74.end_of_dir_crit_edge:                   ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %end_of_dir

if.else74.parse_record_crit_edge:                 ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_record

if.else74.record_end_crit_edge:                   ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

if.end89:                                         ; preds = %if.else74
  %60 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nr_slots, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool90.not = icmp eq i8 %61, 0
  br i1 %tobool90.not, label %if.end89.if.end114_crit_edge, label %if.then91

if.end89.if.end114_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then91:                                        ; preds = %if.end89
  %62 = ptrtoint ptr %unicode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %unicode, align 4
  %add.ptr = getelementptr i16, ptr %63, i32 261
  %64 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i, align 16
  %utf8.i = getelementptr inbounds %struct.msdos_sb_info, ptr %65, i32 0, i32 19, i32 12
  %66 = ptrtoint ptr %utf8.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i = load i16, ptr %utf8.i, align 4
  %67 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i = icmp eq i16 %67, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i258

if.then.i258:                                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call i32 @utf16s_to_utf8s(ptr noundef %63, i32 noundef 261, i32 noundef 0, ptr noundef %add.ptr, i32 noundef 3574) #11
  br label %fat_uni_to_x8.exit

if.else.i:                                        ; preds = %if.then91
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %63, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not48.i.i.not = icmp eq i16 %69, 0
  br i1 %tobool.not48.i.i.not, label %if.else.i.uni16_to_x8.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.else.i.uni16_to_x8.exit.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uni16_to_x8.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.else.i
  %nls_io.i = getelementptr inbounds %struct.msdos_sb_info, ptr %65, i32 0, i32 21
  %70 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nls_io.i, align 4
  %uni2char.i.i = getelementptr inbounds %struct.nls_table, ptr %71, i32 0, i32 2
  %72 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp6.not.i.i = icmp eq i16 %72, 0
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end18.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %73 = phi i16 [ %69, %while.body.lr.ph.i.i ], [ %95, %if.end18.i.i.while.body.i.i_crit_edge ]
  %op.054.i.i = phi ptr [ %add.ptr, %while.body.lr.ph.i.i ], [ %op.1.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %ip.053.i.i = phi ptr [ %63, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %len.addr.052.i.i = phi i32 [ 3574, %while.body.lr.ph.i.i ], [ %len.addr.1.i.i, %if.end18.i.i.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i16, ptr %ip.053.i.i, i32 1
  %74 = ptrtoint ptr %uni2char.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %uni2char.i.i, align 4
  %call2.i.i = call i32 %75(i16 noundef zeroext %73, ptr noundef %op.054.i.i, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp sgt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %op.054.i.i, i32 %call2.i.i
  %sub5.i.i = sub i32 %len.addr.052.i.i, %call2.i.i
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %incdec.ptr17.i.i = getelementptr i8, ptr %op.054.i.i, i32 1
  br i1 %cmp6.not.i.i, label %if.else16.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %op.054.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 58, ptr %op.054.i.i, align 1
  %77 = lshr i16 %73, 8
  %conv11.i.i = zext i16 %77 to i32
  %78 = lshr i32 %conv11.i.i, 4
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i.i, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %op.054.i.i, i32 2
  %81 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %incdec.ptr17.i.i, align 1
  %and2.i.i.i = and i32 %conv11.i.i, 15
  %arrayidx3.i.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i.i.i
  %82 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx3.i.i.i, align 1
  %incdec.ptr4.i.i.i = getelementptr i8, ptr %op.054.i.i, i32 3
  %84 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %incdec.ptr.i.i.i, align 1
  %85 = and i16 %73, 255
  %conv.i42.i.i = zext i16 %85 to i32
  %86 = lshr i32 %conv.i42.i.i, 4
  %arrayidx.i43.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i43.i.i, align 1
  %incdec.ptr.i44.i.i = getelementptr i8, ptr %op.054.i.i, i32 4
  %89 = ptrtoint ptr %incdec.ptr4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %incdec.ptr4.i.i.i, align 1
  %and2.i45.i.i = and i32 %conv.i42.i.i, 15
  %arrayidx3.i46.i.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i45.i.i
  %90 = ptrtoint ptr %arrayidx3.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx3.i46.i.i, align 1
  %incdec.ptr4.i47.i.i = getelementptr i8, ptr %op.054.i.i, i32 5
  %92 = ptrtoint ptr %incdec.ptr.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %incdec.ptr.i44.i.i, align 1
  %sub15.i.i = add i32 %len.addr.052.i.i, -5
  br label %if.end18.i.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %op.054.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 63, ptr %op.054.i.i, align 1
  %dec.i.i = add i32 %len.addr.052.i.i, -1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else16.i.i, %if.then8.i.i, %if.then.i.i
  %len.addr.1.i.i = phi i32 [ %sub5.i.i, %if.then.i.i ], [ %sub15.i.i, %if.then8.i.i ], [ %dec.i.i, %if.else16.i.i ]
  %op.1.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %incdec.ptr4.i47.i.i, %if.then8.i.i ], [ %incdec.ptr17.i.i, %if.else16.i.i ]
  %94 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %incdec.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i.i = icmp ne i16 %95, 0
  %sub.i.i = add i32 %len.addr.1.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i259 = icmp sgt i32 %sub.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i259, i1 false
  br i1 %or.cond.i.i, label %if.end18.i.i.while.body.i.i_crit_edge, label %while.end.i.i

if.end18.i.i.while.body.i.i_crit_edge:            ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool19.not.i.i = icmp eq i16 %95, 0
  br i1 %tobool19.not.i.i, label %while.end.i.i.uni16_to_x8.exit.i_crit_edge, label %if.then22.i.i, !prof !61

while.end.i.i.uni16_to_x8.exit.i_crit_edge:       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uni16_to_x8.exit.i

if.then22.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #15
  br label %uni16_to_x8.exit.i

uni16_to_x8.exit.i:                               ; preds = %if.then22.i.i, %while.end.i.i.uni16_to_x8.exit.i_crit_edge, %if.else.i.uni16_to_x8.exit.i_crit_edge
  %op.0.lcssa.i.i281 = phi ptr [ %op.1.i.i, %if.then22.i.i ], [ %op.1.i.i, %while.end.i.i.uni16_to_x8.exit.i_crit_edge ], [ %add.ptr, %if.else.i.uni16_to_x8.exit.i_crit_edge ]
  %96 = ptrtoint ptr %op.0.lcssa.i.i281 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %op.0.lcssa.i.i281, align 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %op.0.lcssa.i.i281 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %fat_uni_to_x8.exit

fat_uni_to_x8.exit:                               ; preds = %uni16_to_x8.exit.i, %if.then.i258
  %retval.0.i260 = phi i32 [ %call1.i, %if.then.i258 ], [ %sub.ptr.sub.i.i, %uni16_to_x8.exit.i ]
  br i1 %tobool93.not, label %fat_uni_to_x8.exit.start_filldir_crit_edge, label %if.end95

fat_uni_to_x8.exit.start_filldir_crit_edge:       ; preds = %fat_uni_to_x8.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_filldir

if.end95:                                         ; preds = %fat_uni_to_x8.exit
  %97 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %de, align 4
  %99 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load98 = load i16, ptr %isvfat1, align 4
  %bf.lshr99 = lshr i16 %bf.load98, 12
  %bf.clear100 = and i16 %bf.lshr99, 1
  %bf.cast101 = zext i16 %bf.clear100 to i32
  %call102 = call fastcc i32 @fat_parse_short(ptr noundef %1, ptr noundef %98, ptr noundef nonnull %bufname, i32 noundef %bf.cast101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %if.end95.record_end_crit_edge, label %if.end106

if.end95.record_end_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

if.end106:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %longname107 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr, ptr %longname107, align 8
  %101 = ptrtoint ptr %long_len to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i260, ptr %long_len, align 4
  %102 = ptrtoint ptr %shortname to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %bufname, ptr %shortname, align 8
  %103 = ptrtoint ptr %short_len109 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call102, ptr %short_len109, align 4
  br label %start_filldir

if.end114:                                        ; preds = %if.end89.if.end114_crit_edge, %land.lhs.true64.if.end114_crit_edge, %if.end62.if.end114_crit_edge
  %104 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %de, align 4
  %106 = ptrtoint ptr %isvfat1 to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load118 = load i16, ptr %isvfat1, align 4
  %bf.lshr119 = lshr i16 %bf.load118, 12
  %bf.clear120 = and i16 %bf.lshr119, 1
  %bf.cast121 = zext i16 %bf.clear120 to i32
  %call122 = call fastcc i32 @fat_parse_short(ptr noundef %1, ptr noundef %105, ptr noundef nonnull %bufname, i32 noundef %bf.cast121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.end114.record_end_crit_edge, label %if.end114.start_filldir_crit_edge

if.end114.start_filldir_crit_edge:                ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_filldir

if.end114.record_end_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

start_filldir:                                    ; preds = %if.end114.start_filldir_crit_edge, %if.end106, %fat_uni_to_x8.exit.start_filldir_crit_edge
  %fill_name.5 = phi ptr [ %bufname, %if.end114.start_filldir_crit_edge ], [ %add.ptr, %fat_uni_to_x8.exit.start_filldir_crit_edge ], [ null, %if.end106 ]
  %fill_len.5 = phi i32 [ %call122, %if.end114.start_filldir_crit_edge ], [ %retval.0.i260, %fat_uni_to_x8.exit.start_filldir_crit_edge ], [ 0, %if.end106 ]
  %107 = ptrtoint ptr %cpos to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %cpos, align 8
  %109 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nr_slots, align 1
  %conv128 = zext i8 %110 to i32
  %add = shl nuw nsw i32 %conv128, 5
  %mul = add nuw nsw i32 %add, 32
  %conv129 = zext i32 %mul to i64
  %sub = sub i64 %108, %conv129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fake_offset.1319)
  %tobool131.not = icmp ne i32 %fake_offset.1319, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %sub)
  %cmp134 = icmp slt i64 %sub, 2
  %or.cond257 = select i1 %tobool131.not, i1 %cmp134, i1 false
  %spec.store.select = select i1 %or.cond257, i64 2, i64 %sub
  %111 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %spec.store.select, ptr %pos, align 8
  %112 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %de, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(11) %113, ptr noundef nonnull dereferenceable(11) @.str.1, i32 11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool142.not = icmp eq i32 %bcmp, 0
  br i1 %tobool142.not, label %if.then143, label %if.else147

if.then143:                                       ; preds = %start_filldir
  %114 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctx, align 8
  %116 = ptrtoint ptr %dentry.i263 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dentry.i263, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %119, i32 0, i32 11
  %120 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %121 to i64
  %call.i = call i32 %115(ptr noundef %ctx, ptr noundef nonnull @.str.8, i32 noundef 1, i64 noundef %spec.store.select, i64 noundef %conv.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then143.record_end_crit_edge, label %if.then143.fill_failed_crit_edge

if.then143.fill_failed_crit_edge:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_failed

if.then143.record_end_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

if.else147:                                       ; preds = %start_filldir
  %bcmp255 = call i32 @bcmp(ptr noundef dereferenceable(11) %113, ptr noundef nonnull dereferenceable(11) @.str, i32 11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp255)
  %tobool151.not = icmp eq i32 %bcmp255, 0
  br i1 %tobool151.not, label %if.then152, label %if.else156

if.then152:                                       ; preds = %if.else147
  %122 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ctx, align 8
  %124 = ptrtoint ptr %dentry.i263 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dentry.i263, align 4
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %125, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #11
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %d_parent.i.i, align 8
  %d_inode.i.i264 = getelementptr inbounds %struct.dentry, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %d_inode.i.i264 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %d_inode.i.i264, align 8
  %i_ino.i.i265 = getelementptr inbounds %struct.inode, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %i_ino.i.i265 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %i_ino.i.i265, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #11
  %conv.i266 = zext i32 %131 to i64
  %call1.i267 = call i32 %123(ptr noundef %ctx, ptr noundef nonnull @.str.10, i32 noundef 2, i64 noundef %spec.store.select, i64 noundef %conv.i266, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i267)
  %cmp.i268 = icmp eq i32 %call1.i267, 0
  br i1 %cmp.i268, label %if.then152.record_end_crit_edge, label %if.then152.fill_failed_crit_edge

if.then152.fill_failed_crit_edge:                 ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_failed

if.then152.record_end_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

if.else156:                                       ; preds = %if.else147
  %132 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bh, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %b_blocknr.i, align 8
  %136 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i, align 16
  %dir_per_block_bits.i = getelementptr inbounds %struct.msdos_sb_info, ptr %137, i32 0, i32 24
  %138 = ptrtoint ptr %dir_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dir_per_block_bits.i, align 4
  %sh_prom.i = zext i32 %139 to i64
  %shl.i = shl i64 %135, %sh_prom.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %133, i32 0, i32 5
  %140 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %b_data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %141 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %conv.i270 = sext i32 %sub.ptr.div.i to i64
  %or.i = or i64 %shl.i, %conv.i270
  %call158 = call ptr @fat_iget(ptr noundef %1, i64 noundef %or.i) #11
  %tobool159.not = icmp eq ptr %call158, null
  br i1 %tobool159.not, label %if.else162, label %if.then160

if.then160:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino161 = getelementptr inbounds %struct.inode, ptr %call158, i32 0, i32 11
  %142 = ptrtoint ptr %i_ino161 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i_ino161, align 8
  call void @iput(ptr noundef nonnull %call158) #11
  br label %if.end164

if.else162:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #13
  %call163 = call i32 @iunique(ptr noundef %1, i32 noundef 1) #11
  br label %if.end164

if.end164:                                        ; preds = %if.else162, %if.then160
  %inum.0 = phi i32 [ %143, %if.then160 ], [ %call163, %if.else162 ]
  %conv165 = zext i32 %inum.0 to i64
  %attr166 = getelementptr inbounds %struct.msdos_dir_entry, ptr %113, i32 0, i32 1
  %144 = ptrtoint ptr %attr166 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %attr166, align 1
  %146 = and i8 %145, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool169.not = icmp eq i8 %146, 0
  %cond = select i1 %tobool169.not, i32 8, i32 4
  %147 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ctx, align 8
  %149 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %pos, align 8
  %call.i272 = call i32 %148(ptr noundef %ctx, ptr noundef %fill_name.5, i32 noundef %fill_len.5, i64 noundef %150, i64 noundef %conv165, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %cmp.i273 = icmp eq i32 %call.i272, 0
  br i1 %cmp.i273, label %if.end164.record_end_crit_edge, label %if.end164.fill_failed_crit_edge

if.end164.fill_failed_crit_edge:                  ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_failed

if.end164.record_end_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %record_end

record_end:                                       ; preds = %if.end164.record_end_crit_edge, %if.then152.record_end_crit_edge, %if.then143.record_end_crit_edge, %if.end114.record_end_crit_edge, %if.end95.record_end_crit_edge, %if.else74.record_end_crit_edge, %lor.lhs.false50.record_end_crit_edge, %lor.lhs.false50.record_end_crit_edge356, %if.else.record_end_crit_edge, %if.end31.record_end_crit_edge, %if.end21.record_end_crit_edge, %if.then17.record_end_crit_edge
  %151 = ptrtoint ptr %cpos to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %cpos, align 8
  %153 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %pos, align 8
  %call11 = call fastcc i32 @fat_get_entry(ptr noundef %inode, ptr noundef nonnull %cpos, ptr noundef nonnull %bh, ptr noundef nonnull %de)
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %record_end.if.else187_crit_edge, label %record_end.parse_record.preheader_crit_edge

record_end.parse_record.preheader_crit_edge:      ; preds = %record_end
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_record.preheader

record_end.if.else187_crit_edge:                  ; preds = %record_end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else187

end_of_dir:                                       ; preds = %if.else74.end_of_dir_crit_edge, %if.then73, %if.end10.end_of_dir_crit_edge
  %fake_offset.1313 = phi i32 [ %fake_offset.1319, %if.then73 ], [ %fake_offset.0, %if.end10.end_of_dir_crit_edge ], [ %fake_offset.1319, %if.else74.end_of_dir_crit_edge ]
  %ret.6 = phi i32 [ %call70, %if.then73 ], [ 0, %if.end10.end_of_dir_crit_edge ], [ 0, %if.else74.end_of_dir_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fake_offset.1313)
  %tobool181.not = icmp eq i32 %fake_offset.1313, 0
  br i1 %tobool181.not, label %end_of_dir.if.else187_crit_edge, label %land.lhs.true182

end_of_dir.if.else187_crit_edge:                  ; preds = %end_of_dir
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else187

land.lhs.true182:                                 ; preds = %end_of_dir
  %154 = ptrtoint ptr %cpos to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %cpos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %155)
  %cmp183 = icmp slt i64 %155, 2
  br i1 %cmp183, label %land.lhs.true182.fill_failed.sink.split_crit_edge, label %land.lhs.true182.if.else187_crit_edge

land.lhs.true182.if.else187_crit_edge:            ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else187

land.lhs.true182.fill_failed.sink.split_crit_edge: ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_failed.sink.split

if.else187:                                       ; preds = %land.lhs.true182.if.else187_crit_edge, %end_of_dir.if.else187_crit_edge, %record_end.if.else187_crit_edge
  %ret.6335 = phi i32 [ %ret.6, %land.lhs.true182.if.else187_crit_edge ], [ %ret.6, %end_of_dir.if.else187_crit_edge ], [ 0, %record_end.if.else187_crit_edge ]
  %156 = ptrtoint ptr %cpos to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %cpos, align 8
  br label %fill_failed.sink.split

fill_failed.sink.split:                           ; preds = %if.else187, %land.lhs.true182.fill_failed.sink.split_crit_edge
  %.sink = phi i64 [ %157, %if.else187 ], [ 2, %land.lhs.true182.fill_failed.sink.split_crit_edge ]
  %ret.7.ph = phi i32 [ %ret.6335, %if.else187 ], [ %ret.6, %land.lhs.true182.fill_failed.sink.split_crit_edge ]
  %158 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %.sink, ptr %pos, align 8
  br label %fill_failed

fill_failed:                                      ; preds = %fill_failed.sink.split, %if.end164.fill_failed_crit_edge, %if.then152.fill_failed_crit_edge, %if.then143.fill_failed_crit_edge
  %ret.7 = phi i32 [ %ret.7.ph, %fill_failed.sink.split ], [ 0, %if.then143.fill_failed_crit_edge ], [ 0, %if.then152.fill_failed_crit_edge ], [ 0, %if.end164.fill_failed_crit_edge ]
  %159 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bh, align 4
  %tobool.not.i274 = icmp eq ptr %160, null
  br i1 %tobool.not.i274, label %fill_failed.brelse.exit_crit_edge, label %if.then.i275

fill_failed.brelse.exit_crit_edge:                ; preds = %fill_failed
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i275:                                     ; preds = %fill_failed
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %160) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i275, %fill_failed.brelse.exit_crit_edge
  %161 = ptrtoint ptr %unicode to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %unicode, align 4
  %tobool190.not = icmp eq ptr %162, null
  br i1 %tobool190.not, label %brelse.exit.cleanup194_crit_edge, label %if.then191

brelse.exit.cleanup194_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup194

if.then191:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %163 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %163, ptr noundef nonnull %162) #11
  br label %cleanup194

cleanup194:                                       ; preds = %if.then191, %brelse.exit.cleanup194_crit_edge, %if.end8.cleanup194_crit_edge, %if.then6.i.cleanup194_crit_edge, %if.then.i.cleanup194_crit_edge
  %ret.8 = phi i32 [ %ret.7, %if.then191 ], [ %ret.7, %brelse.exit.cleanup194_crit_edge ], [ -2, %if.end8.cleanup194_crit_edge ], [ 0, %if.then.i.cleanup194_crit_edge ], [ 0, %if.then6.i.cleanup194_crit_edge ]
  call void @mutex_unlock(ptr noundef %s_lock) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpos) #11
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %bufname) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unicode) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nr_slots) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #11
  ret i32 %ret.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_iget(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_generic_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fat_ioctl_filldir(ptr nocapture noundef %ctx, ptr noundef %name, i32 noundef %name_len, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dirent = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dirent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dirent, align 8
  %add.ptr1 = getelementptr %struct.__fat_dirent, ptr %1, i32 1
  %result = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup213_crit_edge

entry.cleanup213_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup213

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %result, align 4
  %cmp.not = icmp eq ptr %name, null
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = tail call i32 @llvm.umin.i32(i32 %name_len, i32 255)
  %d_name = getelementptr %struct.__fat_dirent, ptr %1, i32 1, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !62
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_name, i8 0, i32 -1226833921) #11, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then3.efault_crit_edge

if.then3.efault_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false:                                    ; preds = %if.then3
  %d_reclen = getelementptr %struct.__fat_dirent, ptr %1, i32 1, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i247 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i247 to ptr
  %cpu_domain.i.i248 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i248) #7, !srcloc !62
  %and.i249 = and i32 %12, -13
  %or.i250 = or i32 %and.i249, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i250) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_reclen, i16 0, i32 -1226833921) #11, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool25.not = icmp eq i32 %13, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %lor.lhs.false.efault_crit_edge

lor.lhs.false.efault_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %d_name27 = getelementptr inbounds %struct.__fat_dirent, ptr %1, i32 0, i32 3
  tail call void @__check_object_size(ptr noundef nonnull %name, i32 noundef %5, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %lor.lhs.false26.copy_to_user.exit_crit_edge, label %if.end.i.i

lor.lhs.false26.copy_to_user.exit_crit_edge:      ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %lor.lhs.false26
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %d_name27, i32 %5, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %name, i32 noundef %5) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %d_name27, ptr noundef nonnull %name, i32 noundef %5) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %lor.lhs.false26.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %5, %lor.lhs.false26.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %5, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool30.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %copy_to_user.exit.efault_crit_edge

copy_to_user.exit.efault_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false31:                                  ; preds = %copy_to_user.exit
  %add.ptr37 = getelementptr i8, ptr %d_name27, i32 %5
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i251 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i251 to ptr
  %cpu_domain.i.i252 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i252) #7, !srcloc !62
  %and.i253 = and i32 %17, -13
  %or.i254 = or i32 %and.i253, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i254) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr37, i8 0, i32 -1226833921) #11, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool50.not = icmp eq i32 %18, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %lor.lhs.false31.efault_crit_edge

lor.lhs.false31.efault_crit_edge:                 ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false51:                                  ; preds = %lor.lhs.false31
  %d_reclen55 = getelementptr inbounds %struct.__fat_dirent, ptr %1, i32 0, i32 2
  %conv = trunc i32 %5 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %19 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i255 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i255 to ptr
  %cpu_domain.i.i256 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i256) #7, !srcloc !62
  %and.i257 = and i32 %21, -13
  %or.i258 = or i32 %and.i257, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i258) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_reclen55, i16 %conv, i32 -1226833921) #11, !srcloc !78
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool68.not = icmp eq i32 %22, 0
  br i1 %tobool68.not, label %lor.lhs.false51.cleanup213_crit_edge, label %lor.lhs.false51.efault_crit_edge

lor.lhs.false51.efault_crit_edge:                 ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false51.cleanup213_crit_edge:             ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup213

if.else:                                          ; preds = %if.end
  %longname71 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %ctx, i32 0, i32 3
  %23 = ptrtoint ptr %longname71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %longname71, align 8
  %long_len72 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %ctx, i32 0, i32 4
  %25 = ptrtoint ptr %long_len72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %long_len72, align 4
  %shortname73 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %ctx, i32 0, i32 5
  %27 = ptrtoint ptr %shortname73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shortname73, align 8
  %short_len74 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %ctx, i32 0, i32 6
  %29 = ptrtoint ptr %short_len74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %short_len74, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %26, i32 255)
  %32 = tail call i32 @llvm.umin.i32(i32 %30, i32 255)
  %d_name83 = getelementptr %struct.__fat_dirent, ptr %1, i32 1, i32 3
  tail call void @__check_object_size(ptr noundef %24, i32 noundef %31, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #11
  %call.i.i267 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i267, label %if.else.copy_to_user.exit276_crit_edge, label %if.end.i.i271

if.else.copy_to_user.exit276_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit276

if.end.i.i271:                                    ; preds = %if.else
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %d_name83, i32 %31, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i269 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i269)
  %cmp.i6.i270 = icmp eq i32 %asmresult.i.i269, 0
  br i1 %cmp.i6.i270, label %if.then2.i.i274, label %if.end.i.i271.copy_to_user.exit276_crit_edge

if.end.i.i271.copy_to_user.exit276_crit_edge:     ; preds = %if.end.i.i271
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit276

if.then2.i.i274:                                  ; preds = %if.end.i.i271
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i272 = tail call zeroext i1 @__kasan_check_read(ptr noundef %24, i32 noundef %31) #11
  %call.i12.i.i273 = tail call i32 @arm_copy_to_user(ptr noundef %d_name83, ptr noundef %24, i32 noundef %31) #11
  br label %copy_to_user.exit276

copy_to_user.exit276:                             ; preds = %if.then2.i.i274, %if.end.i.i271.copy_to_user.exit276_crit_edge, %if.else.copy_to_user.exit276_crit_edge
  %n.addr.0.i275 = phi i32 [ %31, %if.else.copy_to_user.exit276_crit_edge ], [ %call.i12.i.i273, %if.then2.i.i274 ], [ %31, %if.end.i.i271.copy_to_user.exit276_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i275)
  %tobool86.not = icmp eq i32 %n.addr.0.i275, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %copy_to_user.exit276.efault_crit_edge

copy_to_user.exit276.efault_crit_edge:            ; preds = %copy_to_user.exit276
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false87:                                  ; preds = %copy_to_user.exit276
  %add.ptr93 = getelementptr i8, ptr %d_name83, i32 %31
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %34 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i277 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i277 to ptr
  %cpu_domain.i.i278 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i278) #7, !srcloc !62
  %and.i279 = and i32 %36, -13
  %or.i280 = or i32 %and.i279, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i280) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr93, i8 0, i32 -1226833921) #11, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool106.not = icmp eq i32 %37, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %lor.lhs.false87.efault_crit_edge

lor.lhs.false87.efault_crit_edge:                 ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false107:                                 ; preds = %lor.lhs.false87
  %d_reclen111 = getelementptr %struct.__fat_dirent, ptr %1, i32 1, i32 2
  %conv113 = trunc i32 %31 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %38 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i281 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i281 to ptr
  %cpu_domain.i.i282 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i282) #7, !srcloc !62
  %and.i283 = and i32 %40, -13
  %or.i284 = or i32 %and.i283, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i284) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %41 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_reclen111, i16 %conv113, i32 -1226833921) #11, !srcloc !80
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool125.not = icmp eq i32 %41, 0
  br i1 %tobool125.not, label %lor.lhs.false126, label %lor.lhs.false107.efault_crit_edge

lor.lhs.false107.efault_crit_edge:                ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false126:                                 ; preds = %lor.lhs.false107
  %conv131 = trunc i64 %ino to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %42 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i285 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i285 to ptr
  %cpu_domain.i.i286 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i286) #7, !srcloc !62
  %and.i287 = and i32 %44, -13
  %or.i288 = or i32 %and.i287, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i288) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr1, i32 %conv131, i32 -1226833921) #11, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool143.not = icmp eq i32 %45, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %lor.lhs.false126.efault_crit_edge

lor.lhs.false126.efault_crit_edge:                ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false144:                                 ; preds = %lor.lhs.false126
  %d_off = getelementptr %struct.__fat_dirent, ptr %1, i32 1, i32 1
  %conv149 = trunc i64 %offset to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %46 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i289 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i289 to ptr
  %cpu_domain.i.i290 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i290) #7, !srcloc !62
  %and.i291 = and i32 %48, -13
  %or.i292 = or i32 %and.i291, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i292) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %49 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_off, i32 %conv149, i32 -1226833921) #11, !srcloc !82
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool161.not = icmp eq i32 %49, 0
  br i1 %tobool161.not, label %lor.lhs.false162, label %lor.lhs.false144.efault_crit_edge

lor.lhs.false144.efault_crit_edge:                ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false162:                                 ; preds = %lor.lhs.false144
  %d_name163 = getelementptr inbounds %struct.__fat_dirent, ptr %1, i32 0, i32 3
  tail call void @__check_object_size(ptr noundef %28, i32 noundef %32, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #11
  %call.i.i301 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i301, label %lor.lhs.false162.copy_to_user.exit310_crit_edge, label %if.end.i.i305

lor.lhs.false162.copy_to_user.exit310_crit_edge:  ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit310

if.end.i.i305:                                    ; preds = %lor.lhs.false162
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %d_name163, i32 %32, i32 -1226833920) #17, !srcloc !76
  %asmresult.i.i303 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i303)
  %cmp.i6.i304 = icmp eq i32 %asmresult.i.i303, 0
  br i1 %cmp.i6.i304, label %if.then2.i.i308, label %if.end.i.i305.copy_to_user.exit310_crit_edge

if.end.i.i305.copy_to_user.exit310_crit_edge:     ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit310

if.then2.i.i308:                                  ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i306 = tail call zeroext i1 @__kasan_check_read(ptr noundef %28, i32 noundef %32) #11
  %call.i12.i.i307 = tail call i32 @arm_copy_to_user(ptr noundef %d_name163, ptr noundef %28, i32 noundef %32) #11
  br label %copy_to_user.exit310

copy_to_user.exit310:                             ; preds = %if.then2.i.i308, %if.end.i.i305.copy_to_user.exit310_crit_edge, %lor.lhs.false162.copy_to_user.exit310_crit_edge
  %n.addr.0.i309 = phi i32 [ %32, %lor.lhs.false162.copy_to_user.exit310_crit_edge ], [ %call.i12.i.i307, %if.then2.i.i308 ], [ %32, %if.end.i.i305.copy_to_user.exit310_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i309)
  %tobool166.not = icmp eq i32 %n.addr.0.i309, 0
  br i1 %tobool166.not, label %lor.lhs.false167, label %copy_to_user.exit310.efault_crit_edge

copy_to_user.exit310.efault_crit_edge:            ; preds = %copy_to_user.exit310
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false167:                                 ; preds = %copy_to_user.exit310
  %add.ptr173 = getelementptr i8, ptr %d_name163, i32 %32
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %51 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i311 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i311 to ptr
  %cpu_domain.i.i312 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i312) #7, !srcloc !62
  %and.i313 = and i32 %53, -13
  %or.i314 = or i32 %and.i313, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i314) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %54 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr173, i8 0, i32 -1226833921) #11, !srcloc !83
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool186.not = icmp eq i32 %54, 0
  br i1 %tobool186.not, label %lor.lhs.false187, label %lor.lhs.false167.efault_crit_edge

lor.lhs.false167.efault_crit_edge:                ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false187:                                 ; preds = %lor.lhs.false167
  %d_reclen191 = getelementptr inbounds %struct.__fat_dirent, ptr %1, i32 0, i32 2
  %conv193 = trunc i32 %32 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 759) #11
  %55 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i315 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i315 to ptr
  %cpu_domain.i.i316 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 4
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i316) #7, !srcloc !62
  %and.i317 = and i32 %57, -13
  %or.i318 = or i32 %and.i317, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i318) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %58 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_reclen191, i16 %conv193, i32 -1226833921) #11, !srcloc !84
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool205.not = icmp eq i32 %58, 0
  br i1 %tobool205.not, label %lor.lhs.false187.cleanup213_crit_edge, label %lor.lhs.false187.efault_crit_edge

lor.lhs.false187.efault_crit_edge:                ; preds = %lor.lhs.false187
  call void @__sanitizer_cov_trace_pc() #13
  br label %efault

lor.lhs.false187.cleanup213_crit_edge:            ; preds = %lor.lhs.false187
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup213

efault:                                           ; preds = %lor.lhs.false187.efault_crit_edge, %lor.lhs.false167.efault_crit_edge, %copy_to_user.exit310.efault_crit_edge, %lor.lhs.false144.efault_crit_edge, %lor.lhs.false126.efault_crit_edge, %lor.lhs.false107.efault_crit_edge, %lor.lhs.false87.efault_crit_edge, %copy_to_user.exit276.efault_crit_edge, %lor.lhs.false51.efault_crit_edge, %lor.lhs.false31.efault_crit_edge, %copy_to_user.exit.efault_crit_edge, %lor.lhs.false.efault_crit_edge, %if.then3.efault_crit_edge
  %59 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -14, ptr %result, align 4
  br label %cleanup213

cleanup213:                                       ; preds = %efault, %lor.lhs.false187.cleanup213_crit_edge, %lor.lhs.false51.cleanup213_crit_edge, %entry.cleanup213_crit_edge
  %retval.0 = phi i32 [ -14, %efault ], [ -22, %entry.cleanup213_crit_edge ], [ 0, %lor.lhs.false51.cleanup213_crit_edge ], [ 0, %lor.lhs.false187.cleanup213_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__ksymtab_fat_search_long, !1, !"__ksymtab_fat_search_long", i1 false, i1 false}
!1 = !{!"../fs/fat/dir.c", i32 540, i32 1}
!2 = !{ptr @fat_dir_operations, !3, !"fat_dir_operations", i1 false, i1 false}
!3 = !{!"../fs/fat/dir.c", i32 858, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/fat/dir.c", i32 897, i32 29}
!6 = !{ptr @__ksymtab_fat_get_dotdot_entry, !7, !"__ksymtab_fat_get_dotdot_entry", i1 false, i1 false}
!7 = !{!"../fs/fat/dir.c", i32 902, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fat/dir.c", i32 915, i32 25}
!10 = !{ptr @__ksymtab_fat_dir_empty, !11, !"__ksymtab_fat_dir_empty", i1 false, i1 false}
!11 = !{!"../fs/fat/dir.c", i32 924, i32 1}
!12 = !{ptr @__ksymtab_fat_scan, !13, !"__ksymtab_fat_scan", i1 false, i1 false}
!13 = !{!"../fs/fat/dir.c", i32 969, i32 1}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/fat/dir.c", i32 1066, i32 16}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/fat/dir.c", i32 1067, i32 11}
!18 = !{ptr @__ksymtab_fat_remove_entries, !19, !"__ksymtab_fat_remove_entries", i1 false, i1 false}
!19 = !{!"../fs/fat/dir.c", i32 1079, i32 1}
!20 = !{ptr @__ksymtab_fat_alloc_new_dir, !21, !"__ksymtab_fat_alloc_new_dir", i1 false, i1 false}
!21 = !{!"../fs/fat/dir.c", i32 1196, i32 1}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/fat/dir.c", i32 1323, i32 15}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/fat/dir.c", i32 1323, i32 25}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/fat/dir.c", i32 1388, i32 4}
!28 = !{ptr @__ksymtab_fat_add_entries, !29, !"__ksymtab_fat_add_entries", i1 false, i1 false}
!29 = !{!"../fs/fat/dir.c", i32 1414, i32 1}
!30 = !{ptr @__func__.fat__get_entry, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/fat/dir.c", i32 102, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/fat/dir.c", i32 408, i32 26}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/fat/dir.c", i32 174, i32 4}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/fat/dir.c", i32 812, i32 6}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 5193587}
!63 = !{i64 5193784}
!64 = !{i64 2152679017}
!65 = !{i64 2154095745, i64 2154096025, i64 2154096359, i64 2154096693}
!66 = !{i64 2153096784}
!67 = !{i64 2148623219, i64 2148623251, i64 2148623280, i64 2148623314, i64 2148623345, i64 2148623368}
!68 = !{i64 2148712324}
!69 = !{i64 2148614361, i64 2148614387, i64 2148614416, i64 2148614450, i64 2148614481, i64 2148614504}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.peeled.count", i32 1}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2154109609, i64 2154110087, i64 2154109646, i64 2154109702, i64 2154109736, i64 2154109760, i64 2154109801, i64 2154109822, i64 2154109850, i64 2154109884}
!74 = !{i64 2154003743, i64 2154004023, i64 2154004357, i64 2154004691}
!75 = !{i64 2154014511, i64 2154014791, i64 2154015125, i64 2154015459}
!76 = !{i64 2152698713, i64 2152698738}
!77 = !{i64 2154021395, i64 2154021675, i64 2154022009, i64 2154022343}
!78 = !{i64 2154032177, i64 2154032457, i64 2154032791, i64 2154033125}
!79 = !{i64 2154039061, i64 2154039341, i64 2154039675, i64 2154040009}
!80 = !{i64 2154049843, i64 2154050123, i64 2154050457, i64 2154050791}
!81 = !{i64 2154060600, i64 2154060880, i64 2154061214, i64 2154061548}
!82 = !{i64 2154069401, i64 2154069681, i64 2154070015, i64 2154070349}
!83 = !{i64 2154074328, i64 2154074608, i64 2154074942, i64 2154075276}
!84 = !{i64 2154085112, i64 2154085392, i64 2154085726, i64 2154086060}
