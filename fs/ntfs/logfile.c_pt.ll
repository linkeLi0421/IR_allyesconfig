; ModuleID = '/llk/IR_all_yes/fs/ntfs/logfile.c_pt.bc'
source_filename = "../fs/ntfs/logfile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
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
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.RESTART_PAGE_HEADER = type <{ i32, i16, i16, i64, i32, i32, i16, i16, i16 }>
%struct.RESTART_AREA = type { i64, i16, i16, i16, i16, i32, i16, i16, i64, i32, i16, i16, i32, i32 }
%struct.LOG_CLIENT_RECORD = type { i64, i64, i16, i16, i16, [6 x i8], i32, [64 x i16] }
%struct.runlist_element = type { i64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ntfs/logfile.c\00", [46 x i8] zeroinitializer }, align 32
@__func__.ntfs_check_logfile = private unnamed_addr constant [19 x i8] c"ntfs_check_logfile\00", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"$LogFile is too small.\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error mapping $LogFile page (index %lu).\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Done.  ($LogFile is empty.)\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Did not find any restart pages in $LogFile and it was not empty.\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Using second restart page as it is more recent.\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Using first restart page as it is more recent.\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@__func__.ntfs_is_logfile_clean = private unnamed_addr constant [22 x i8] c"ntfs_is_logfile_clean\00", align 1
@.str.9 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"Restart page buffer is invalid.  This is probably a bug in that the $LogFile should have been consistency checked before calling this function.\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Done.  $LogFile indicates a dirty shutdown.\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Done.  $LogFile indicates a clean shutdown.\00", [52 x i8] zeroinitializer }, align 32
@__func__.ntfs_empty_logfile = private unnamed_addr constant [19 x i8] c"ntfs_empty_logfile\00", align 1
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to map runlist fragment (error %d).\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to write buffer.  Unmount and run chkdsk.\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Runlist is corrupt.  Unmount and run chkdsk.\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to fill $LogFile with 0xff bytes (error %d).\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__func__.ntfs_check_and_load_restart_page = private unnamed_addr constant [33 x i8] c"ntfs_check_and_load_restart_page\00", align 1
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to allocate memory for $LogFile restart page buffer.\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Multi sector transfer error detected in $LogFile restart page.\00", [33 x i8] zeroinitializer }, align 32
@__func__.ntfs_check_restart_page_header = private unnamed_addr constant [31 x i8] c"ntfs_check_restart_page_header\00", align 1
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"$LogFile uses unsupported page size.\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Found restart area in incorrect position in $LogFile.\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"$LogFile version %i.%i is not supported.  (This driver supports version 1.1 only.)\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"$LogFile restart page specifies inconsistent update sequence array count.\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"$LogFile restart page specifies inconsistent update sequence array offset.\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"$LogFile restart page specifies inconsistent restart area offset.\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"$LogFile restart page is not modified by chkdsk but a chkdsk LSN is specified.\00", [49 x i8] zeroinitializer }, align 32
@__func__.ntfs_check_restart_area = private unnamed_addr constant [24 x i8] c"ntfs_check_restart_area\00", align 1
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"$LogFile restart area specifies inconsistent file offset.\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"$LogFile restart area specifies inconsistent client array offset.\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"$LogFile restart area is out of bounds of the system page size specified by the restart page header and/or the specified restart area length is inconsistent.\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"$LogFile restart area specifies overflowing client free and/or in use lists.\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"$LogFile restart area specifies inconsistent sequence number bits.\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"$LogFile restart area specifies inconsistent log record header length.\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"$LogFile restart area specifies inconsistent log page data offset.\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@__func__.ntfs_check_log_client_array = private unnamed_addr constant [28 x i8] c"ntfs_check_log_client_array\00", align 1
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"$LogFile log client array is corrupt.\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1128811332, i64 1380143684, i64 1381192786]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1128811332, i64 1381192786]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 485, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 516, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 534, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 604, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 609, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 620, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 626, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 637, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 679, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 693, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 697, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 750, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 835, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 838, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 844, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 55, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 717, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 416, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 362, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 419, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 57, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 65, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 72, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 89, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 98, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 113, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 122, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 161, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 175, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 190, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 207, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 222, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 229, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 236, i32 3 }
@___asan_gen_.146 = private constant [21 x i8] c"../fs/ntfs/logfile.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 305, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 366, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_check_logfile(ptr noundef %log_vi, ptr noundef writeonly %rp) local_unnamed_addr #0 align 64 {
entry:
  %rstr1_lsn = alloca i64, align 8
  %rstr2_lsn = alloca i64, align 8
  %rstr1_ph = alloca ptr, align 4
  %rstr2_ph = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rstr1_lsn)
  %0 = ptrtoint ptr %rstr1_lsn to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rstr1_lsn, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rstr2_lsn)
  %1 = ptrtoint ptr %rstr2_lsn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %rstr2_lsn, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %log_vi, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %log_vi, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rstr1_ph)
  %8 = ptrtoint ptr %rstr1_ph to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rstr1_ph, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rstr2_ph)
  %9 = ptrtoint ptr %rstr2_ph to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rstr2_ph, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 485, ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef nonnull @.str.1) #9
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %entry.is_empty_crit_edge

entry.is_empty_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_empty

if.end:                                           ; preds = %entry
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %log_vi, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %log_vi, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %log_vi, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !95
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %14 = tail call ptr @llvm.returnaddress(i32 0) #9
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %15) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %15) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call ptr @llvm.returnaddress(i32 0) #9
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %17) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %17) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !97

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #9, !srcloc !98
  %19 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !100
  %21 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %22, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %20, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %22, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %23 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %26, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %27 = tail call i64 @llvm.umin.i64(i64 %24, i64 4294967296)
  %and = and i64 %27, 8589930496
  call void @__sanitizer_cov_trace_const_cmp8(i64 204800, i64 %and)
  %cmp15 = icmp ult i64 %and, 204800
  br i1 %cmp15, label %if.then17, label %i_size_read.exit.for.body_crit_edge

i_size_read.exit.for.body_crit_edge:              ; preds = %i_size_read.exit
  br label %for.body

if.then17:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef %29, ptr noundef nonnull @.str.2) #9
  br label %cleanup111

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %i_size_read.exit.for.body_crit_edge
  %logfile_is_empty.0.off0244 = phi i1 [ %.mux, %for.inc.for.body_crit_edge ], [ true, %i_size_read.exit.for.body_crit_edge ]
  %page.0243 = phi ptr [ %page.1, %for.inc.for.body_crit_edge ], [ null, %i_size_read.exit.for.body_crit_edge ]
  %pos.0234 = phi i64 [ %shl, %for.inc.for.body_crit_edge ], [ 0, %i_size_read.exit.for.body_crit_edge ]
  %30 = lshr i64 %pos.0234, 12
  %conv22 = trunc i64 %30 to i32
  %tobool23.not = icmp eq ptr %page.0243, null
  br i1 %tobool23.not, label %for.body.if.end30_crit_edge, label %lor.lhs.false24

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

lor.lhs.false24:                                  ; preds = %for.body
  %index = getelementptr inbounds %struct.page, ptr %page.0243, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv22)
  %cmp25.not = icmp eq i32 %32, %conv22
  br i1 %cmp25.not, label %lor.lhs.false24.if.end36_crit_edge, label %if.then29.critedge

lor.lhs.false24.if.end36_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then29.critedge:                               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %page.0243)
  br label %if.end30

if.end30:                                         ; preds = %if.then29.critedge, %for.body.if.end30_crit_edge
  %call31 = tail call fastcc ptr @ntfs_map_page(ptr noundef %7, i32 noundef %conv22)
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %conv22.le = trunc i64 %30 to i32
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef %34, ptr noundef nonnull @.str.3, i32 noundef %conv22.le) #9
  br label %err_out

if.end36:                                         ; preds = %if.end30.if.end36_crit_edge, %lor.lhs.false24.if.end36_crit_edge
  %page.1 = phi ptr [ %call31, %if.end30.if.end36_crit_edge ], [ %page.0243, %lor.lhs.false24.if.end36_crit_edge ]
  %call37 = tail call ptr @page_address(ptr noundef %page.1) #9
  %35 = trunc i64 %pos.0234 to i32
  %idx.ext = and i32 %35, 4094
  %add.ptr = getelementptr i8, ptr %call37, i32 %idx.ext
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i176 = icmp ne i32 %37, -1
  %brmerge = select i1 %cmp.i176, i1 true, i1 %logfile_is_empty.0.off0244
  %not.cmp.i176 = xor i1 %cmp.i176, true
  %.mux = select i1 %not.cmp.i176, i1 %logfile_is_empty.0.off0244, i1 false
  br i1 %brmerge, label %if.end44, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end44:                                         ; preds = %if.end36
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %if.then50 [
    i32 1380143684, label %if.end44.for.end_crit_edge
    i32 1381192786, label %if.end44.if.end54_crit_edge
    i32 1128811332, label %if.end44.if.end54_crit_edge328
  ]

if.end44.if.end54_crit_edge328:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.0234)
  %tobool51.not = icmp eq i64 %pos.0234, 0
  %spec.store.select125 = select i1 %tobool51.not, i64 256, i64 %pos.0234
  br label %for.inc

if.end54:                                         ; preds = %if.end44.if.end54_crit_edge, %if.end44.if.end54_crit_edge328
  %39 = ptrtoint ptr %rstr1_ph to i32
  call void @__asan_load4_noabort(i32 %39)
  %rstr1_ph.0.rstr1_ph.0. = load ptr, ptr %rstr1_ph, align 4
  %tobool55.not = icmp eq ptr %rstr1_ph.0.rstr1_ph.0., null
  %rstr2_ph.rstr1_ph = select i1 %tobool55.not, ptr %rstr1_ph, ptr %rstr2_ph
  %cond60 = select i1 %tobool55.not, ptr %rstr1_lsn, ptr %rstr2_lsn
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 344, ptr noundef nonnull @__func__.ntfs_check_and_load_restart_page, ptr noundef nonnull @.str.1) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef nonnull @.str.1) #9
  %system_page_size.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 4
  %40 = ptrtoint ptr %system_page_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %system_page_size.i.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %log_page_size.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 5
  %43 = ptrtoint ptr %log_page_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %log_page_size.i.i, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %42)
  %cmp.i.i = icmp ugt i32 %42, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %45)
  %cmp1.i.i = icmp ugt i32 %45, 511
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 false
  %46 = tail call i32 @llvm.ctpop.i32(i32 %41) #9, !range !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %tobool.not.i.i180 = icmp ult i32 %46, 2
  %or.cond125.i.i = select i1 %or.cond.i.i, i1 %tobool.not.i.i180, i1 false
  %47 = tail call i32 @llvm.ctpop.i32(i32 %44) #9, !range !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp1.i.i.i = icmp ult i32 %47, 2
  %or.cond144.i.i = select i1 %or.cond125.i.i, i1 %cmp1.i.i.i, i1 false
  br i1 %or.cond144.i.i, label %if.end.i.i, label %if.then.i.i181

if.then.i.i181:                                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef %49, ptr noundef nonnull @.str.21) #9
  br label %if.end71

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.0234)
  %tobool4.not.i.i = icmp eq i64 %pos.0234, 0
  %conv.i.i = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0234, i64 %conv.i.i)
  %cmp5.not.i.i = icmp eq i64 %pos.0234, %conv.i.i
  %or.cond126.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %cmp5.not.i.i
  br i1 %or.cond126.i.i, label %if.end9.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef %51, ptr noundef nonnull @.str.22) #9
  br label %if.end71

if.end9.i.i:                                      ; preds = %if.end.i.i
  %major_ver.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 8
  %52 = ptrtoint ptr %major_ver.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %major_ver.i.i, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %53)
  %cmp12.not.i.i = icmp eq i16 %53, 256
  br i1 %cmp12.not.i.i, label %lor.lhs.false14.i.i, label %if.end9.i.i.if.then19.i.i_crit_edge

if.end9.i.i.if.then19.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i.i

lor.lhs.false14.i.i:                              ; preds = %if.end9.i.i
  %minor_ver.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 7
  %55 = ptrtoint ptr %minor_ver.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %minor_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %56)
  %cmp17.not.i.i = icmp eq i16 %56, 256
  br i1 %cmp17.not.i.i, label %if.end27.i.i, label %lor.lhs.false14.i.i.if.then19.i.i_crit_edge

lor.lhs.false14.i.i.if.then19.i.i_crit_edge:      ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i.i

if.then19.i.i:                                    ; preds = %lor.lhs.false14.i.i.if.then19.i.i_crit_edge, %if.end9.i.i.if.then19.i.i_crit_edge
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  %conv23.i.i = sext i16 %54 to i32
  %minor_ver24.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 7
  %59 = ptrtoint ptr %minor_ver24.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %minor_ver24.i.i, align 1
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #9
  %conv26.i.i = sext i16 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef %58, ptr noundef nonnull @.str.23, i32 noundef %conv23.i.i, i32 noundef %conv26.i.i) #9
  br label %if.end71

if.end27.i.i:                                     ; preds = %lor.lhs.false14.i.i
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1128811332, i32 %63)
  %cmp.i.i.i = icmp eq i32 %63, 1128811332
  br i1 %cmp.i.i.i, label %land.lhs.true30.i.i, label %if.end27.i.i.if.end34.i.i_crit_edge

if.end27.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

land.lhs.true30.i.i:                              ; preds = %if.end27.i.i
  %usa_count31.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 2
  %64 = ptrtoint ptr %usa_count31.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %usa_count31.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool32.not.i.i182 = icmp eq i16 %65, 0
  br i1 %tobool32.not.i.i182, label %skip_usa_checks.thread.i.i, label %land.lhs.true30.i.i.if.end34.i.i_crit_edge

land.lhs.true30.i.i.if.end34.i.i_crit_edge:       ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %land.lhs.true30.i.i.if.end34.i.i_crit_edge, %if.end27.i.i.if.end34.i.i_crit_edge
  %shr.i.i183 = lshr i32 %42, 9
  %usa_count37.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 2
  %66 = ptrtoint ptr %usa_count37.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %usa_count37.i.i, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #9
  %69 = trunc i32 %shr.i.i183 to i16
  %70 = add i16 %69, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp39.not.i.i = icmp eq i16 %68, %70
  br i1 %cmp39.not.i.i, label %if.end43.i.i, label %if.then41.i.i

if.then41.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef %72, ptr noundef nonnull @.str.24) #9
  br label %if.end71

if.end43.i.i:                                     ; preds = %if.end34.i.i
  %usa_ofs44.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 1
  %73 = ptrtoint ptr %usa_ofs44.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %usa_ofs44.i.i, align 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %75)
  %cmp50.i.i = icmp ult i16 %75, 30
  %76 = shl i16 %68, 1
  %conv48.i.i = add i16 %75, %76
  call void @__sanitizer_cov_trace_const_cmp2(i16 510, i16 %conv48.i.i)
  %cmp54.i.i = icmp ugt i16 %conv48.i.i, 510
  %or.cond127.i.i = select i1 %cmp50.i.i, i1 true, i1 %cmp54.i.i
  br i1 %or.cond127.i.i, label %if.then56.i.i, label %skip_usa_checks.i.i

if.then56.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef %78, ptr noundef nonnull @.str.25) #9
  br label %if.end71

skip_usa_checks.i.i:                              ; preds = %if.end43.i.i
  %restart_area_offset.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 6
  %79 = ptrtoint ptr %restart_area_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %restart_area_offset.i.i, align 1
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #9
  %conv59.i.i = zext i16 %81 to i32
  %and60.i.i = and i32 %conv59.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %cond.true.i.i, label %skip_usa_checks.i.i.if.then76.i.i_crit_edge

skip_usa_checks.i.i.if.then76.i.i_crit_edge:      ; preds = %skip_usa_checks.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.i.i

skip_usa_checks.thread.i.i:                       ; preds = %land.lhs.true30.i.i
  %restart_area_offset133.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 6
  %82 = ptrtoint ptr %restart_area_offset133.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %restart_area_offset133.i.i, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #9
  %conv59134.i.i = zext i16 %84 to i32
  %and60135.i.i = and i32 %conv59134.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60135.i.i)
  %tobool61.not136.i.i = icmp eq i32 %and60135.i.i, 0
  br i1 %tobool61.not136.i.i, label %cond.false.i.i, label %skip_usa_checks.thread.i.i.if.then76.i.i_crit_edge

skip_usa_checks.thread.i.i.if.then76.i.i_crit_edge: ; preds = %skip_usa_checks.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.i.i

cond.true.i.i:                                    ; preds = %skip_usa_checks.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %conv48.i.i)
  %cmp67.i.i = icmp ult i16 %81, %conv48.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv59.i.i)
  %cmp74.old.i.i = icmp ult i32 %42, %conv59.i.i
  %or.cond129.i.i = select i1 %cmp67.i.i, i1 true, i1 %cmp74.old.i.i
  br i1 %or.cond129.i.i, label %cond.true.i.i.if.then76.i.i_crit_edge, label %if.end78.i.i

cond.true.i.i.if.then76.i.i_crit_edge:            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.i.i

cond.false.i.i:                                   ; preds = %skip_usa_checks.thread.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %84)
  %cmp70.i.i = icmp ult i16 %84, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv59134.i.i)
  %cmp74.i.i = icmp ult i32 %42, %conv59134.i.i
  %or.cond128.i.i = select i1 %cmp70.i.i, i1 true, i1 %cmp74.i.i
  br i1 %or.cond128.i.i, label %cond.false.i.i.if.then76.i.i_crit_edge, label %cond.false.i.i.if.end.i_crit_edge

cond.false.i.i.if.end.i_crit_edge:                ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

cond.false.i.i.if.then76.i.i_crit_edge:           ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.i.i

if.then76.i.i:                                    ; preds = %cond.false.i.i.if.then76.i.i_crit_edge, %cond.true.i.i.if.then76.i.i_crit_edge, %skip_usa_checks.thread.i.i.if.then76.i.i_crit_edge, %skip_usa_checks.i.i.if.then76.i.i_crit_edge
  %85 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef %86, ptr noundef nonnull @.str.26) #9
  br label %if.end71

if.end78.i.i:                                     ; preds = %cond.true.i.i
  br i1 %cmp.i.i.i, label %if.end78.i.i.if.end.i_crit_edge, label %land.lhs.true81.i.i

if.end78.i.i.if.end.i_crit_edge:                  ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true81.i.i:                              ; preds = %if.end78.i.i
  %chkdsk_lsn.i.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 3
  %87 = ptrtoint ptr %chkdsk_lsn.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %chkdsk_lsn.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool83.not.i.i = icmp eq i64 %88, 0
  br i1 %tobool83.not.i.i, label %land.lhs.true81.i.i.if.end.i_crit_edge, label %if.then84.i.i

land.lhs.true81.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then84.i.i:                                    ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef %90, ptr noundef nonnull @.str.27) #9
  br label %if.end71

if.end.i:                                         ; preds = %land.lhs.true81.i.i.if.end.i_crit_edge, %if.end78.i.i.if.end.i_crit_edge, %cond.false.i.i.if.end.i_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @__func__.ntfs_check_restart_page_header, ptr noundef nonnull @.str.8) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef nonnull @.str.1) #9
  %restart_area_offset.i162.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 6
  %91 = ptrtoint ptr %restart_area_offset.i162.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %restart_area_offset.i162.i, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #9
  %conv.i163.i = zext i16 %93 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %conv.i163.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 486, i16 %93)
  %cmp.i164.i = icmp ugt i16 %93, 486
  br i1 %cmp.i164.i, label %if.then.i166.i, label %if.end.i168.i

if.then.i166.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef %95, ptr noundef nonnull @.str.28) #9
  br label %if.end71

if.end.i168.i:                                    ; preds = %if.end.i
  %client_array_offset.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 7
  %96 = ptrtoint ptr %client_array_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %client_array_offset.i.i, align 1
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #9
  %conv3.i.i = zext i16 %98 to i32
  %add4.i.i = add nuw nsw i32 %conv3.i.i, 7
  %and.i.i = and i32 %add4.i.i, 131064
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv3.i.i)
  %cmp6.not.i.i = icmp ne i32 %and.i.i, %conv3.i.i
  %add10.i.i = add nuw nsw i32 %conv3.i.i, %conv.i163.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %add10.i.i)
  %cmp11.i.i = icmp ugt i32 %add10.i.i, 510
  %or.cond.i167.i = select i1 %cmp6.not.i.i, i1 true, i1 %cmp11.i.i
  br i1 %or.cond.i167.i, label %if.then13.i.i, label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef %100, ptr noundef nonnull @.str.29) #9
  br label %if.end71

if.end15.i.i:                                     ; preds = %if.end.i168.i
  %log_clients.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %log_clients.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %log_clients.i.i, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #9
  %mul.i.i = mul i16 %103, 160
  %add18.i.i = add i16 %mul.i.i, %98
  %conv21.i.i = zext i16 %add18.i.i to i32
  %add22.i.i = add nuw nsw i32 %conv21.i.i, %conv.i163.i
  %104 = ptrtoint ptr %system_page_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %system_page_size.i.i, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i.i, i32 %106)
  %cmp23.i.i = icmp ugt i32 %add22.i.i, %106
  br i1 %cmp23.i.i, label %if.end15.i.i.if.then38.i.i_crit_edge, label %lor.lhs.false25.i.i

if.end15.i.i.if.then38.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

lor.lhs.false25.i.i:                              ; preds = %if.end15.i.i
  %restart_area_length.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %restart_area_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %restart_area_length.i.i, align 1
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #9
  %conv27.i.i = zext i16 %109 to i32
  %add28.i.i = add nuw nsw i32 %conv27.i.i, %conv.i163.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i.i, i32 %106)
  %cmp30.i.i = icmp ugt i32 %add28.i.i, %106
  call void @__sanitizer_cov_trace_cmp2(i16 %add18.i.i, i16 %109)
  %cmp36.i.i = icmp ugt i16 %add18.i.i, %109
  %or.cond130.i.i = select i1 %cmp30.i.i, i1 true, i1 %cmp36.i.i
  br i1 %or.cond130.i.i, label %lor.lhs.false25.i.i.if.then38.i.i_crit_edge, label %if.end40.i.i

lor.lhs.false25.i.i.if.then38.i.i_crit_edge:      ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %lor.lhs.false25.i.i.if.then38.i.i_crit_edge, %if.end15.i.i.if.then38.i.i_crit_edge
  %110 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef %111, ptr noundef nonnull @.str.30) #9
  br label %if.end71

if.end40.i.i:                                     ; preds = %lor.lhs.false25.i.i
  %client_free_list.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %client_free_list.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %client_free_list.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %113)
  %cmp42.not.i.i = icmp eq i16 %113, -1
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %103)
  %cmp48.not.i.i = icmp ult i16 %114, %103
  %or.cond131.i.i = select i1 %cmp42.not.i.i, i1 true, i1 %cmp48.not.i.i
  br i1 %or.cond131.i.i, label %lor.lhs.false50.i.i, label %if.end40.i.i.if.then61.i.i_crit_edge

if.end40.i.i.if.then61.i.i_crit_edge:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61.i.i

lor.lhs.false50.i.i:                              ; preds = %if.end40.i.i
  %client_in_use_list.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %client_in_use_list.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %client_in_use_list.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %116)
  %cmp52.not.i.i = icmp eq i16 %116, -1
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %103)
  %cmp59.not.i.i = icmp ult i16 %117, %103
  %or.cond132.i.i = select i1 %cmp52.not.i.i, i1 true, i1 %cmp59.not.i.i
  br i1 %or.cond132.i.i, label %if.end63.i.i, label %lor.lhs.false50.i.i.if.then61.i.i_crit_edge

lor.lhs.false50.i.i.if.then61.i.i_crit_edge:      ; preds = %lor.lhs.false50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61.i.i

if.then61.i.i:                                    ; preds = %lor.lhs.false50.i.i.if.then61.i.i_crit_edge, %if.end40.i.i.if.then61.i.i_crit_edge
  %118 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef %119, ptr noundef nonnull @.str.31) #9
  br label %if.end71

if.end63.i.i:                                     ; preds = %lor.lhs.false50.i.i
  %file_size64.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 8
  %120 = ptrtoint ptr %file_size64.i.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %file_size64.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %121)
  %tobool.not133.i.i = icmp eq i64 %121, 0
  br i1 %tobool.not133.i.i, label %if.end63.i.i.while.end.i.i_crit_edge, label %while.body.preheader.i.i

if.end63.i.i.while.end.i.i_crit_edge:             ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.end63.i.i
  %122 = tail call i64 @llvm.bswap.i64(i64 %121) #9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %fs_bits.0135.i.i = phi i8 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %file_size.0134.i.i = phi i64 [ %shr.i170.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %122, %while.body.preheader.i.i ]
  %shr.i170.i = lshr i64 %file_size.0134.i.i, 1
  %inc.i.i = add nuw nsw i8 %fs_bits.0135.i.i, 1
  %tobool.not.i171.i = icmp ult i64 %file_size.0134.i.i, 2
  br i1 %tobool.not.i171.i, label %while.end.loopexit.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.end.loopexit.i.i:                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.i.i = zext i8 %inc.i.i to i32
  %phi.bo.i.i = sub nsw i32 67, %phi.cast.i.i
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.loopexit.i.i, %if.end63.i.i.while.end.i.i_crit_edge
  %fs_bits.0.lcssa.i.i = phi i32 [ 67, %if.end63.i.i.while.end.i.i_crit_edge ], [ %phi.bo.i.i, %while.end.loopexit.i.i ]
  %seq_number_bits.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 5
  %123 = ptrtoint ptr %seq_number_bits.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %seq_number_bits.i.i, align 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %fs_bits.0.lcssa.i.i)
  %cmp66.not.i.i = icmp eq i32 %125, %fs_bits.0.lcssa.i.i
  br i1 %cmp66.not.i.i, label %if.end70.i.i, label %if.then68.i.i

if.then68.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef %127, ptr noundef nonnull @.str.32) #9
  br label %if.end71

if.end70.i.i:                                     ; preds = %while.end.i.i
  %log_record_header_length.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 10
  %128 = ptrtoint ptr %log_record_header_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %log_record_header_length.i.i, align 1
  %130 = tail call i16 @llvm.bswap.i16(i16 %129) #9
  %conv71.i.i = zext i16 %130 to i32
  %add72.i.i = add nuw nsw i32 %conv71.i.i, 7
  %and73.i.i = and i32 %add72.i.i, 131064
  call void @__sanitizer_cov_trace_cmp4(i32 %and73.i.i, i32 %conv71.i.i)
  %cmp76.not.i.i = icmp eq i32 %and73.i.i, %conv71.i.i
  br i1 %cmp76.not.i.i, label %if.end80.i.i, label %if.then78.i.i

if.then78.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef %132, ptr noundef nonnull @.str.33) #9
  br label %if.end71

if.end80.i.i:                                     ; preds = %if.end70.i.i
  %log_page_data_offset.i.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i.i, i32 0, i32 11
  %133 = ptrtoint ptr %log_page_data_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %log_page_data_offset.i.i, align 1
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #9
  %conv81.i.i = zext i16 %135 to i32
  %add82.i.i = add nuw nsw i32 %conv81.i.i, 7
  %and83.i.i = and i32 %add82.i.i, 131064
  call void @__sanitizer_cov_trace_cmp4(i32 %and83.i.i, i32 %conv81.i.i)
  %cmp86.not.i.i = icmp eq i32 %and83.i.i, %conv81.i.i
  br i1 %cmp86.not.i.i, label %if.end3.i, label %if.then88.i.i

if.then88.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef %137, ptr noundef nonnull @.str.34) #9
  br label %if.end71

if.end3.i:                                        ; preds = %if.end80.i.i
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @__func__.ntfs_check_restart_area, ptr noundef nonnull @.str.8) #9
  %138 = ptrtoint ptr %restart_area_offset.i162.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %restart_area_offset.i162.i, align 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #9
  %conv.i = zext i16 %140 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %conv.i
  %141 = ptrtoint ptr %system_page_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %system_page_size.i.i, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %143)
  %cmp.i.i173.i = icmp ult i32 %143, 4097
  br i1 %cmp.i.i173.i, label %do.body.i.i.i, label %if.end16.i.i.i, !prof !104

do.body.i.i.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool2.not.i.i.i = icmp eq i32 %142, 0
  br i1 %tobool2.not.i.i.i, label %do.body12.i.i.i, label %do.end15.i.i.i, !prof !97

do.body12.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

do.end15.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %144 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %144, i32 noundef 3136, i32 noundef 4096) #12
  br label %ntfs_malloc_nofs.exit.i

if.end16.i.i.i:                                   ; preds = %if.end3.i
  %shr.i.i.i = lshr i32 %143, 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %145 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %145)
  %cmp18.i.i.i = icmp ult i32 %shr.i.i.i, %145
  br i1 %cmp18.i.i.i, label %if.then25.i.i.i, label %if.end16.i.i.i.ntfs_check_and_load_restart_page.exit.thread195_crit_edge, !prof !104

if.end16.i.i.i.ntfs_check_and_load_restart_page.exit.thread195_crit_edge: ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_and_load_restart_page.exit.thread195

if.then25.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i.i.i = tail call noalias ptr @__vmalloc(i32 noundef %143, i32 noundef 3138) #13
  br label %ntfs_malloc_nofs.exit.i

ntfs_malloc_nofs.exit.i:                          ; preds = %if.then25.i.i.i, %do.end15.i.i.i
  %retval.0.i.i.i = phi ptr [ %call7.i.i.i.i, %do.end15.i.i.i ], [ %call26.i.i.i, %if.then25.i.i.i ]
  %tobool.not.i184 = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i184, label %ntfs_malloc_nofs.exit.i.ntfs_check_and_load_restart_page.exit.thread195_crit_edge, label %if.end6.i

ntfs_malloc_nofs.exit.i.ntfs_check_and_load_restart_page.exit.thread195_crit_edge: ; preds = %ntfs_malloc_nofs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_and_load_restart_page.exit.thread195

ntfs_check_and_load_restart_page.exit.thread195:  ; preds = %ntfs_malloc_nofs.exit.i.ntfs_check_and_load_restart_page.exit.thread195_crit_edge, %if.end16.i.i.i.ntfs_check_and_load_restart_page.exit.thread195_crit_edge
  %146 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_and_load_restart_page, ptr noundef %147, ptr noundef nonnull @.str.19) #9
  br label %if.then70

if.end6.i:                                        ; preds = %ntfs_malloc_nofs.exit.i
  %conv7.i = sub nuw nsw i32 4096, %idx.ext
  %148 = ptrtoint ptr %system_page_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %system_page_size.i.i, align 1
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i, i32 %150)
  %cmp.not.i = icmp ult i32 %conv7.i, %150
  br i1 %cmp.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %151 = call ptr @memcpy(ptr %retval.0.i.i.i, ptr %add.ptr, i32 %150)
  br label %if.end56.i

if.else.i:                                        ; preds = %if.end6.i
  %152 = call ptr @memcpy(ptr %retval.0.i.i.i, ptr %add.ptr, i32 %conv7.i)
  %conv14.i = zext i32 %conv7.i to i64
  %add.i = add i64 %pos.0234, %conv14.i
  %and18.i = and i64 %add.i, 4094
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %do.body30.preheader.i, label %do.body23.i, !prof !104

do.body30.preheader.i:                            ; preds = %if.else.i
  %153 = lshr i64 %add.i, 12
  %conv15.i = trunc i64 %153 to i32
  %154 = ptrtoint ptr %system_page_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %system_page_size.i.i, align 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #9
  %sub13.i = sub i32 %156, %conv7.i
  br label %do.body30.i

do.body23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/logfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 385, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

do.body30.i:                                      ; preds = %if.end42.i.do.body30.i_crit_edge, %do.body30.preheader.i
  %idx.0.i = phi i32 [ %inc.i, %if.end42.i.do.body30.i_crit_edge ], [ %conv15.i, %do.body30.preheader.i ]
  %have_read.0.i = phi i32 [ %add47.i, %if.end42.i.do.body30.i_crit_edge ], [ %conv7.i, %do.body30.preheader.i ]
  %to_read.0.i = phi i32 [ %sub48.i, %if.end42.i.do.body30.i_crit_edge ], [ %sub13.i, %do.body30.preheader.i ]
  %157 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i_mapping, align 8
  %call31.i = tail call fastcc ptr @ntfs_map_page(ptr noundef %158, i32 noundef %idx.0.i) #9
  %cmp.i174.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174.i, label %cleanup.i, label %if.end42.i

if.end42.i:                                       ; preds = %do.body30.i
  %159 = tail call i32 @llvm.smin.i32(i32 %to_read.0.i, i32 4096) #9
  %add.ptr45.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %have_read.0.i
  %call46.i = tail call ptr @page_address(ptr noundef %call31.i) #9
  %160 = call ptr @memcpy(ptr %add.ptr45.i, ptr %call46.i, i32 %159)
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call31.i) #9
  %add47.i = add i32 %159, %have_read.0.i
  %sub48.i = sub i32 %to_read.0.i, %159
  %inc.i = add i32 %idx.0.i, 1
  %cmp50.i = icmp sgt i32 %sub48.i, 0
  br i1 %cmp50.i, label %if.end42.i.do.body30.i_crit_edge, label %if.end42.i.if.end56.i_crit_edge

if.end42.i.if.end56.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.end42.i.do.body30.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30.i

cleanup.i:                                        ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_and_load_restart_page, ptr noundef %162, ptr noundef nonnull @.str.3, i32 noundef %idx.0.i) #9
  tail call void @kvfree(ptr noundef nonnull %retval.0.i.i.i) #9
  br label %if.then70

if.end56.i:                                       ; preds = %if.end42.i.if.end56.i_crit_edge, %if.then10.i
  %163 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %retval.0.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1128811332, i32 %164)
  %cmp.i175.i = icmp eq i32 %164, 1128811332
  br i1 %cmp.i175.i, label %lor.lhs.false.i, label %if.end56.i.land.lhs.true60.i_crit_edge

if.end56.i.land.lhs.true60.i_crit_edge:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true60.i

lor.lhs.false.i:                                  ; preds = %if.end56.i
  %usa_count.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %retval.0.i.i.i, i32 0, i32 2
  %165 = ptrtoint ptr %usa_count.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %usa_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool59.not.i = icmp eq i16 %166, 0
  br i1 %tobool59.not.i, label %lor.lhs.false.i.if.end74.i_crit_edge, label %lor.lhs.false.i.land.lhs.true60.i_crit_edge

lor.lhs.false.i.land.lhs.true60.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true60.i

lor.lhs.false.i.if.end74.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

land.lhs.true60.i:                                ; preds = %lor.lhs.false.i.land.lhs.true60.i_crit_edge, %if.end56.i.land.lhs.true60.i_crit_edge
  %167 = ptrtoint ptr %system_page_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %system_page_size.i.i, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #9
  %call62.i = tail call i32 @post_read_mst_fixup(ptr noundef nonnull %retval.0.i.i.i, i32 noundef %169) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %land.lhs.true60.i.if.end74.i_crit_edge, label %if.then64.i

land.lhs.true60.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

if.then64.i:                                      ; preds = %land.lhs.true60.i
  %170 = ptrtoint ptr %restart_area_offset.i162.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %restart_area_offset.i162.i, align 1
  %172 = tail call i16 @llvm.bswap.i16(i16 %171) #9
  %conv66.i = zext i16 %172 to i32
  %restart_area_length.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i, i32 0, i32 6
  %173 = ptrtoint ptr %restart_area_length.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %restart_area_length.i, align 1
  %175 = tail call i16 @llvm.bswap.i16(i16 %174) #9
  %conv67.i = zext i16 %175 to i32
  %add68.i = add nuw nsw i32 %conv67.i, %conv66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %add68.i)
  %cmp69.i = icmp ugt i32 %add68.i, 510
  br i1 %cmp69.i, label %if.then71.i, label %if.then64.i.if.end74.i_crit_edge

if.then64.i.if.end74.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

if.then71.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  %176 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_and_load_restart_page, ptr noundef %177, ptr noundef nonnull @.str.20) #9
  br label %ntfs_check_and_load_restart_page.exit.thread200

if.end74.i:                                       ; preds = %if.then64.i.if.end74.i_crit_edge, %land.lhs.true60.i.if.end74.i_crit_edge, %lor.lhs.false.i.if.end74.i_crit_edge
  %178 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1381192786, i32 %179)
  %cmp.i176.i = icmp eq i32 %179, 1381192786
  br i1 %cmp.i176.i, label %land.lhs.true78.i, label %if.end74.i.ntfs_check_and_load_restart_page.exit.thread197_crit_edge

if.end74.i.ntfs_check_and_load_restart_page.exit.thread197_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_and_load_restart_page.exit.thread197

land.lhs.true78.i:                                ; preds = %if.end74.i
  %client_in_use_list.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i, i32 0, i32 3
  %180 = ptrtoint ptr %client_in_use_list.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 2)
  %181 = load i16, ptr %client_in_use_list.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %181)
  %cmp80.not.i = icmp eq i16 %181, -1
  br i1 %cmp80.not.i, label %land.lhs.true78.i.ntfs_check_and_load_restart_page.exit.thread197_crit_edge, label %if.then82.i

land.lhs.true78.i.ntfs_check_and_load_restart_page.exit.thread197_crit_edge: ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_and_load_restart_page.exit.thread197

if.then82.i:                                      ; preds = %land.lhs.true78.i
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @__func__.ntfs_check_log_client_array, ptr noundef nonnull @.str.1) #9
  %restart_area_offset.i177.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %retval.0.i.i.i, i32 0, i32 6
  %182 = ptrtoint ptr %restart_area_offset.i177.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %restart_area_offset.i177.i, align 1
  %184 = tail call i16 @llvm.bswap.i16(i16 %183) #9
  %conv.i178.i = zext i16 %184 to i32
  %add.ptr.i179.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %conv.i178.i
  %client_array_offset.i180.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i179.i, i32 0, i32 7
  %185 = ptrtoint ptr %client_array_offset.i180.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %186 = load i16, ptr %client_array_offset.i180.i, align 1
  %187 = tail call i16 @llvm.bswap.i16(i16 %186) #9
  %conv1.i.i = zext i16 %187 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i179.i, i32 %conv1.i.i
  %log_clients.i181.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i179.i, i32 0, i32 1
  %188 = ptrtoint ptr %log_clients.i181.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 2)
  %189 = load i16, ptr %log_clients.i181.i, align 1
  %190 = tail call i16 @llvm.bswap.i16(i16 %189) #9
  %client_free_list.i182.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i179.i, i32 0, i32 2
  %191 = ptrtoint ptr %client_free_list.i182.i to i32
  call void @__asan_loadN_noabort(i32 %191, i32 2)
  %192 = load i16, ptr %client_free_list.i182.i, align 1
  %client_in_use_list.i183.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i179.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %192)
  %cmp.not44.i.i = icmp eq i16 %192, -1
  br i1 %cmp.not44.i.i, label %if.then82.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.then82.i.for.end.i.i_crit_edge:                ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.then82.i
  %193 = tail call i16 @llvm.bswap.i16(i16 %192) #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %idx_is_first.0.off047.i.i = phi i1 [ false, %for.inc.i.i.for.body.i.i_crit_edge ], [ true, %for.body.preheader.i.i ]
  %idx.146.i.i = phi i16 [ %198, %for.inc.i.i.for.body.i.i_crit_edge ], [ %193, %for.body.preheader.i.i ]
  %nr_clients.145.i.i = phi i16 [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %190, %for.body.preheader.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nr_clients.145.i.i)
  %tobool.not.i184.i = icmp ne i16 %nr_clients.145.i.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %idx.146.i.i, i16 %190)
  %cmp8.not.i.i = icmp ult i16 %idx.146.i.i, %190
  %or.cond.i185.i = select i1 %tobool.not.i184.i, i1 %cmp8.not.i.i, i1 false
  br i1 %or.cond.i185.i, label %if.end.i186.i, label %for.body.i.i.ntfs_check_log_client_array.exit.i_crit_edge

for.body.i.i.ntfs_check_log_client_array.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_log_client_array.exit.i

if.end.i186.i:                                    ; preds = %for.body.i.i
  %conv348.i.i = zext i16 %idx.146.i.i to i32
  %add.ptr11.i.i = getelementptr %struct.LOG_CLIENT_RECORD, ptr %add.ptr2.i.i, i32 %conv348.i.i
  br i1 %idx_is_first.0.off047.i.i, label %if.then13.i187.i, label %if.end.i186.i.for.inc.i.i_crit_edge

if.end.i186.i.for.inc.i.i_crit_edge:              ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then13.i187.i:                                 ; preds = %if.end.i186.i
  %prev_client.i.i = getelementptr inbounds %struct.LOG_CLIENT_RECORD, ptr %add.ptr11.i.i, i32 0, i32 2
  %194 = ptrtoint ptr %prev_client.i.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 2)
  %195 = load i16, ptr %prev_client.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %195)
  %cmp15.not.i.i = icmp eq i16 %195, -1
  br i1 %cmp15.not.i.i, label %if.then13.i187.i.for.inc.i.i_crit_edge, label %if.then13.i187.i.ntfs_check_log_client_array.exit.i_crit_edge

if.then13.i187.i.ntfs_check_log_client_array.exit.i_crit_edge: ; preds = %if.then13.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_log_client_array.exit.i

if.then13.i187.i.for.inc.i.i_crit_edge:           ; preds = %if.then13.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then13.i187.i.for.inc.i.i_crit_edge, %if.end.i186.i.for.inc.i.i_crit_edge
  %dec.i.i = add i16 %nr_clients.145.i.i, -1
  %next_client.i.i = getelementptr inbounds %struct.LOG_CLIENT_RECORD, ptr %add.ptr11.i.i, i32 0, i32 3
  %196 = ptrtoint ptr %next_client.i.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %next_client.i.i, align 1
  %198 = tail call i16 @llvm.bswap.i16(i16 %197) #9
  %cmp.not.i.i = icmp eq i16 %197, -1
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then82.i.for.end.i.i_crit_edge
  %nr_clients.1.lcssa.i.i = phi i16 [ %190, %if.then82.i.for.end.i.i_crit_edge ], [ %dec.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %199 = ptrtoint ptr %client_in_use_list.i183.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 2)
  %200 = load i16, ptr %client_in_use_list.i183.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %200)
  %cmp.not44.1.i.i = icmp eq i16 %200, -1
  br i1 %cmp.not44.1.i.i, label %for.end.i.i.ntfs_check_log_client_array.exit.thread.i_crit_edge, label %for.body.preheader.1.i.i

for.end.i.i.ntfs_check_log_client_array.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_log_client_array.exit.thread.i

for.body.preheader.1.i.i:                         ; preds = %for.end.i.i
  %201 = tail call i16 @llvm.bswap.i16(i16 %200) #9
  br label %for.body.1.i.i

for.body.1.i.i:                                   ; preds = %for.inc.1.i.i.for.body.1.i.i_crit_edge, %for.body.preheader.1.i.i
  %idx_is_first.0.off047.1.i.i = phi i1 [ false, %for.inc.1.i.i.for.body.1.i.i_crit_edge ], [ true, %for.body.preheader.1.i.i ]
  %idx.146.1.i.i = phi i16 [ %206, %for.inc.1.i.i.for.body.1.i.i_crit_edge ], [ %201, %for.body.preheader.1.i.i ]
  %nr_clients.145.1.i.i = phi i16 [ %dec.1.i.i, %for.inc.1.i.i.for.body.1.i.i_crit_edge ], [ %nr_clients.1.lcssa.i.i, %for.body.preheader.1.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nr_clients.145.1.i.i)
  %tobool.not.1.i.i = icmp ne i16 %nr_clients.145.1.i.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %idx.146.1.i.i, i16 %190)
  %cmp8.not.1.i.i = icmp ult i16 %idx.146.1.i.i, %190
  %or.cond.1.i.i = select i1 %tobool.not.1.i.i, i1 %cmp8.not.1.i.i, i1 false
  br i1 %or.cond.1.i.i, label %if.end.1.i.i, label %for.body.1.i.i.ntfs_check_log_client_array.exit.i_crit_edge

for.body.1.i.i.ntfs_check_log_client_array.exit.i_crit_edge: ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_log_client_array.exit.i

if.end.1.i.i:                                     ; preds = %for.body.1.i.i
  %conv348.1.i.i = zext i16 %idx.146.1.i.i to i32
  %add.ptr11.1.i.i = getelementptr %struct.LOG_CLIENT_RECORD, ptr %add.ptr2.i.i, i32 %conv348.1.i.i
  br i1 %idx_is_first.0.off047.1.i.i, label %if.then13.1.i.i, label %if.end.1.i.i.for.inc.1.i.i_crit_edge

if.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

if.then13.1.i.i:                                  ; preds = %if.end.1.i.i
  %prev_client.1.i.i = getelementptr inbounds %struct.LOG_CLIENT_RECORD, ptr %add.ptr11.1.i.i, i32 0, i32 2
  %202 = ptrtoint ptr %prev_client.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %202, i32 2)
  %203 = load i16, ptr %prev_client.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %203)
  %cmp15.not.1.i.i = icmp eq i16 %203, -1
  br i1 %cmp15.not.1.i.i, label %if.then13.1.i.i.for.inc.1.i.i_crit_edge, label %if.then13.1.i.i.ntfs_check_log_client_array.exit.i_crit_edge

if.then13.1.i.i.ntfs_check_log_client_array.exit.i_crit_edge: ; preds = %if.then13.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_log_client_array.exit.i

if.then13.1.i.i.for.inc.1.i.i_crit_edge:          ; preds = %if.then13.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then13.1.i.i.for.inc.1.i.i_crit_edge, %if.end.1.i.i.for.inc.1.i.i_crit_edge
  %dec.1.i.i = add i16 %nr_clients.145.1.i.i, -1
  %next_client.1.i.i = getelementptr inbounds %struct.LOG_CLIENT_RECORD, ptr %add.ptr11.1.i.i, i32 0, i32 3
  %204 = ptrtoint ptr %next_client.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %next_client.1.i.i, align 1
  %206 = tail call i16 @llvm.bswap.i16(i16 %205) #9
  %cmp.not.1.i.i = icmp eq i16 %205, -1
  br i1 %cmp.not.1.i.i, label %for.inc.1.i.i.ntfs_check_log_client_array.exit.thread.i_crit_edge, label %for.inc.1.i.i.for.body.1.i.i_crit_edge

for.inc.1.i.i.for.body.1.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.1.i.i

for.inc.1.i.i.ntfs_check_log_client_array.exit.thread.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_check_log_client_array.exit.thread.i

ntfs_check_log_client_array.exit.thread.i:        ; preds = %for.inc.1.i.i.ntfs_check_log_client_array.exit.thread.i_crit_edge, %for.end.i.i.ntfs_check_log_client_array.exit.thread.i_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @__func__.ntfs_check_log_client_array, ptr noundef nonnull @.str.8) #9
  br label %ntfs_check_and_load_restart_page.exit.thread197

ntfs_check_log_client_array.exit.i:               ; preds = %if.then13.1.i.i.ntfs_check_log_client_array.exit.i_crit_edge, %for.body.1.i.i.ntfs_check_log_client_array.exit.i_crit_edge, %if.then13.i187.i.ntfs_check_log_client_array.exit.i_crit_edge, %for.body.i.i.ntfs_check_log_client_array.exit.i_crit_edge
  %207 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_log_client_array, ptr noundef %208, ptr noundef nonnull @.str.35) #9
  br label %ntfs_check_and_load_restart_page.exit.thread200

ntfs_check_and_load_restart_page.exit.thread197:  ; preds = %ntfs_check_log_client_array.exit.thread.i, %land.lhs.true78.i.ntfs_check_and_load_restart_page.exit.thread197_crit_edge, %if.end74.i.ntfs_check_and_load_restart_page.exit.thread197_crit_edge
  %209 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1381192786, i32 %210)
  %cmp.i189.i = icmp eq i32 %210, 1381192786
  %chkdsk_lsn.i = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %add.ptr, i32 0, i32 3
  %add.ptr.sink.i = select i1 %cmp.i189.i, ptr %add.ptr.i, ptr %chkdsk_lsn.i
  %211 = ptrtoint ptr %add.ptr.sink.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 8)
  %212 = load i64, ptr %add.ptr.sink.i, align 1
  %213 = tail call i64 @llvm.bswap.i64(i64 %212) #9
  %214 = ptrtoint ptr %cond60 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %213, ptr %cond60, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 444, ptr noundef nonnull @__func__.ntfs_check_and_load_restart_page, ptr noundef nonnull @.str.8) #9
  %215 = ptrtoint ptr %rstr2_ph.rstr1_ph to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %retval.0.i.i.i, ptr %rstr2_ph.rstr1_ph, align 4
  br i1 %tobool4.not.i.i, label %ntfs_check_and_load_restart_page.exit.thread197.for.inc_crit_edge, label %ntfs_check_and_load_restart_page.exit.thread197.for.end_crit_edge

ntfs_check_and_load_restart_page.exit.thread197.for.end_crit_edge: ; preds = %ntfs_check_and_load_restart_page.exit.thread197
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ntfs_check_and_load_restart_page.exit.thread197.for.inc_crit_edge: ; preds = %ntfs_check_and_load_restart_page.exit.thread197
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

ntfs_check_and_load_restart_page.exit.thread200:  ; preds = %ntfs_check_log_client_array.exit.i, %if.then71.i
  tail call void @kvfree(ptr noundef nonnull %retval.0.i.i.i) #9
  br label %if.end71

if.then70:                                        ; preds = %cleanup.i, %ntfs_check_and_load_restart_page.exit.thread195
  tail call fastcc void @ntfs_unmap_page(ptr noundef %page.1)
  br label %err_out

if.end71:                                         ; preds = %ntfs_check_and_load_restart_page.exit.thread200, %if.then88.i.i, %if.then78.i.i, %if.then68.i.i, %if.then61.i.i, %if.then38.i.i, %if.then13.i.i, %if.then.i166.i, %if.then84.i.i, %if.then76.i.i, %if.then56.i.i, %if.then41.i.i, %if.then19.i.i, %if.then7.i.i, %if.then.i.i181
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.0234)
  %tobool72.not = icmp eq i64 %pos.0234, 0
  %spec.store.select126 = select i1 %tobool72.not, i64 256, i64 %pos.0234
  br label %for.inc

for.inc:                                          ; preds = %if.end71, %ntfs_check_and_load_restart_page.exit.thread197.for.inc_crit_edge, %if.then50
  %pos.1.ph = phi i64 [ %spec.store.select125, %if.then50 ], [ %spec.store.select126, %if.end71 ], [ 256, %ntfs_check_and_load_restart_page.exit.thread197.for.inc_crit_edge ]
  %shl = shl i64 %pos.1.ph, 1
  %cmp19 = icmp slt i64 %shl, %and
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ntfs_check_and_load_restart_page.exit.thread197.for.end_crit_edge, %if.end44.for.end_crit_edge, %if.end36.for.end_crit_edge
  %logfile_is_empty.3.off0.ph = phi i1 [ %.mux, %for.inc.for.end_crit_edge ], [ false, %if.end36.for.end_crit_edge ], [ %.mux, %ntfs_check_and_load_restart_page.exit.thread197.for.end_crit_edge ], [ %.mux, %if.end44.for.end_crit_edge ]
  %tobool75.not = icmp eq ptr %page.1, null
  br i1 %tobool75.not, label %for.end.if.end77_crit_edge, label %if.then76

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then76:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %page.1)
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %for.end.if.end77_crit_edge
  br i1 %logfile_is_empty.3.off0.ph, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #9
  br label %is_empty

is_empty:                                         ; preds = %if.then79, %entry.is_empty_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 604, ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef nonnull @.str.4) #9
  br label %cleanup111

if.end80:                                         ; preds = %if.end77
  %216 = ptrtoint ptr %rstr1_ph to i32
  call void @__asan_load4_noabort(i32 %216)
  %rstr1_ph.0.rstr1_ph.0.189 = load ptr, ptr %rstr1_ph, align 4
  %tobool81.not = icmp eq ptr %rstr1_ph.0.rstr1_ph.0.189, null
  %217 = ptrtoint ptr %rstr2_ph to i32
  call void @__asan_load4_noabort(i32 %217)
  %rstr2_ph.0.rstr2_ph.0. = load ptr, ptr %rstr2_ph, align 4
  %tobool83.not = icmp eq ptr %rstr2_ph.0.rstr2_ph.0., null
  br i1 %tobool81.not, label %do.body, label %if.end95

do.body:                                          ; preds = %if.end80
  br i1 %tobool83.not, label %do.end93, label %do.body87, !prof !104

do.body87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/logfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 608, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

do.end93:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef %219, ptr noundef nonnull @.str.5) #9
  br label %cleanup111

if.end95:                                         ; preds = %if.end80
  br i1 %tobool83.not, label %if.end95.if.end103_crit_edge, label %if.then97

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then97:                                        ; preds = %if.end95
  %220 = ptrtoint ptr %rstr2_lsn to i32
  call void @__asan_load8_noabort(i32 %220)
  %rstr2_lsn.0.rstr2_lsn.0. = load i64, ptr %rstr2_lsn, align 8
  %221 = ptrtoint ptr %rstr1_lsn to i32
  call void @__asan_load8_noabort(i32 %221)
  %rstr1_lsn.0.rstr1_lsn.0. = load i64, ptr %rstr1_lsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %rstr2_lsn.0.rstr2_lsn.0., i64 %rstr1_lsn.0.rstr1_lsn.0.)
  %cmp98 = icmp sgt i64 %rstr2_lsn.0.rstr2_lsn.0., %rstr1_lsn.0.rstr1_lsn.0.
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 621, ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef nonnull @.str.6) #9
  tail call void @kvfree(ptr noundef nonnull %rstr1_ph.0.rstr1_ph.0.189) #9
  %222 = ptrtoint ptr %rstr1_ph to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %rstr2_ph.0.rstr2_ph.0., ptr %rstr1_ph, align 4
  br label %if.end102

if.else101:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef nonnull @.str.7) #9
  tail call void @kvfree(ptr noundef nonnull %rstr2_ph.0.rstr2_ph.0.) #9
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.then100
  %223 = ptrtoint ptr %rstr2_ph to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %rstr2_ph, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end95.if.end103_crit_edge
  %tobool104.not = icmp eq ptr %rp, null
  %224 = ptrtoint ptr %rstr1_ph to i32
  call void @__asan_load4_noabort(i32 %224)
  %rstr1_ph.0.rstr1_ph.0.192 = load ptr, ptr %rstr1_ph, align 4
  br i1 %tobool104.not, label %if.else106, label %if.then105

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %rp to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %rstr1_ph.0.rstr1_ph.0.192, ptr %rp, align 4
  br label %if.end107

if.else106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree(ptr noundef %rstr1_ph.0.rstr1_ph.0.192) #9
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.then105
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 637, ptr noundef nonnull @__func__.ntfs_check_logfile, ptr noundef nonnull @.str.8) #9
  br label %cleanup111

err_out:                                          ; preds = %if.then70, %if.then33
  %226 = ptrtoint ptr %rstr1_ph to i32
  call void @__asan_load4_noabort(i32 %226)
  %rstr1_ph.0.rstr1_ph.0.193 = load ptr, ptr %rstr1_ph, align 4
  %tobool108.not = icmp eq ptr %rstr1_ph.0.rstr1_ph.0.193, null
  br i1 %tobool108.not, label %err_out.cleanup111_crit_edge, label %if.then109

err_out.cleanup111_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.then109:                                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree(ptr noundef nonnull %rstr1_ph.0.rstr1_ph.0.193) #9
  br label %cleanup111

cleanup111:                                       ; preds = %if.then109, %err_out.cleanup111_crit_edge, %if.end107, %do.end93, %is_empty, %if.then17
  %retval.0 = phi i1 [ true, %is_empty ], [ false, %if.then17 ], [ true, %if.end107 ], [ false, %do.end93 ], [ false, %if.then109 ], [ false, %err_out.cleanup111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rstr2_ph)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rstr1_ph)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rstr2_lsn)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rstr1_lsn)
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !97

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.17) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !112

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %8) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_map_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %index, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 44) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %shr.i.i12 = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %shr.i.i12, label %if.then.if.then.i13_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.if.then.i13_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i13

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i13_crit_edge

is_highmem_idx.exit.i.if.then.i13_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i13

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i13:                                      ; preds = %is_highmem_idx.exit.i.if.then.i13_crit_edge, %if.then.if.then.i13_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i13
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !97

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !104

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.18) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !113
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !104

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %12, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %15, %if.end.i27.i ]
  %16 = inttoptr i32 %retval.0.i28.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %PageError.exit.cleanup_crit_edge, label %if.end

PageError.exit.cleanup_crit_edge:                 ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %PageError.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.end ], [ %call.i, %PageError.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_is_logfile_clean(ptr nocapture noundef readonly %log_vi, ptr noundef readonly %rp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %log_vi, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 670, ptr noundef nonnull @__func__.ntfs_is_logfile_clean, ptr noundef nonnull @.str.1) #9
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 673, ptr noundef nonnull @__func__.ntfs_is_logfile_clean, ptr noundef nonnull @.str.4) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %rp, null
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !97

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/logfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 676, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

do.end13:                                         ; preds = %do.body
  %7 = ptrtoint ptr %rp to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %rp, align 1
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %8, label %if.then17 [
    i32 1381192786, label %do.end13.if.end18_crit_edge
    i32 1128811332, label %do.end13.if.end18_crit_edge34
  ]

do.end13.if.end18_crit_edge34:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end13.if.end18_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_is_logfile_clean, ptr noundef %11, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end18:                                         ; preds = %do.end13.if.end18_crit_edge, %do.end13.if.end18_crit_edge34
  %restart_area_offset = getelementptr inbounds %struct.RESTART_PAGE_HEADER, ptr %rp, i32 0, i32 6
  %12 = ptrtoint ptr %restart_area_offset to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %restart_area_offset, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %rp, i32 %conv
  %client_in_use_list = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 3
  %15 = ptrtoint ptr %client_in_use_list to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %client_in_use_list, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp.not = icmp eq i16 %16, -1
  br i1 %cmp.not, label %if.end18.if.end25_crit_edge, label %land.lhs.true21

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.end18
  %flags = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %flags, align 1
  %19 = and i16 %18, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool23.not = icmp eq i16 %19, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 693, ptr noundef nonnull @__func__.ntfs_is_logfile_clean, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 697, ptr noundef nonnull @__func__.ntfs_is_logfile_clean, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then17, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.end25 ], [ false, %if.then24 ], [ false, %if.then17 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_empty_logfile(ptr noundef %log_vi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %log_vi, i32 -528
  %vol1 = getelementptr i8, ptr %log_vi, i32 -448
  %0 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @__func__.ntfs_empty_logfile, ptr noundef nonnull @.str.1) #9
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 726, ptr noundef nonnull @__func__.ntfs_empty_logfile, ptr noundef nonnull @.str.8) #9
  br label %cleanup189

if.end:                                           ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %call5 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #9
  %initialized_size = getelementptr i8, ptr %log_vi, i32 -480
  %11 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %initialized_size, align 8
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cluster_size_mask, align 4
  %conv6 = zext i32 %14 to i64
  %add = add i64 %12, %conv6
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %16 to i64
  %shr = ashr i64 %add, %sh_prom
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call5) #9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %log_vi, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %18, i64 noundef 0) #9
  %runlist = getelementptr i8, ptr %log_vi, i32 -432
  %lock = getelementptr i8, ptr %log_vi, i32 -428
  tail call void @down_write(ptr noundef %lock) #9
  %19 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runlist, align 8
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %if.end.map_vcn_crit_edge, label %lor.lhs.false, !prof !97

if.end.map_vcn_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_vcn

lor.lhs.false:                                    ; preds = %if.end
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp21 = icmp sgt i64 %22, 0
  br i1 %cmp21, label %lor.lhs.false.map_vcn_crit_edge, label %lor.rhs, !prof !97

lor.lhs.false.map_vcn_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_vcn

lor.rhs:                                          ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.runlist_element, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool23.not = icmp eq i64 %24, 0
  br i1 %tobool23.not, label %lor.rhs.map_vcn_crit_edge, label %lor.rhs.if.end62_crit_edge, !prof !97

lor.rhs.if.end62_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

lor.rhs.map_vcn_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_vcn

map_vcn:                                          ; preds = %cleanup170, %lor.rhs.map_vcn_crit_edge, %lor.lhs.false.map_vcn_crit_edge, %if.end.map_vcn_crit_edge
  %should_wait.0.off0 = phi i1 [ true, %lor.rhs.map_vcn_crit_edge ], [ %should_wait.2.off0, %cleanup170 ], [ true, %lor.lhs.false.map_vcn_crit_edge ], [ true, %if.end.map_vcn_crit_edge ]
  %vcn.0 = phi i64 [ 0, %lor.rhs.map_vcn_crit_edge ], [ %71, %cleanup170 ], [ 0, %lor.lhs.false.map_vcn_crit_edge ], [ 0, %if.end.map_vcn_crit_edge ]
  %call28 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef %add.ptr.i, i64 noundef %vcn.0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %map_vcn
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 0, %call28
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_empty_logfile, ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %sub) #9
  br label %err185

if.end31:                                         ; preds = %map_vcn
  %25 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %runlist, align 8
  %tobool35.not = icmp eq ptr %26, null
  br i1 %tobool35.not, label %if.end31.do.body53_crit_edge, label %lor.lhs.false36, !prof !97

if.end31.do.body53_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

lor.lhs.false36:                                  ; preds = %if.end31
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %vcn.0, i64 %28)
  %cmp38 = icmp slt i64 %vcn.0, %28
  br i1 %cmp38, label %lor.lhs.false36.do.body53_crit_edge, label %lor.rhs40, !prof !97

lor.lhs.false36.do.body53_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

lor.rhs40:                                        ; preds = %lor.lhs.false36
  %length41 = getelementptr inbounds %struct.runlist_element, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %length41 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %length41, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool42.not = icmp eq i64 %30, 0
  br i1 %tobool42.not, label %lor.rhs40.do.body53_crit_edge, label %lor.rhs40.if.end62_crit_edge, !prof !97

lor.rhs40.if.end62_crit_edge:                     ; preds = %lor.rhs40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

lor.rhs40.do.body53_crit_edge:                    ; preds = %lor.rhs40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.body53:                                        ; preds = %lor.rhs40.do.body53_crit_edge, %lor.lhs.false36.do.body53_crit_edge, %if.end31.do.body53_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/logfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

if.end62:                                         ; preds = %lor.rhs40.if.end62_crit_edge, %lor.rhs.if.end62_crit_edge
  %rl.0 = phi ptr [ %26, %lor.rhs40.if.end62_crit_edge ], [ %20, %lor.rhs.if.end62_crit_edge ]
  %should_wait.1.off0 = phi i1 [ %should_wait.0.off0, %lor.rhs40.if.end62_crit_edge ], [ true, %lor.rhs.if.end62_crit_edge ]
  %vcn.1 = phi i64 [ %vcn.0, %lor.rhs40.if.end62_crit_edge ], [ 0, %lor.rhs.if.end62_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end62
  %rl.1 = phi ptr [ %rl.0, %if.end62 ], [ %arrayidx, %land.rhs.while.cond_crit_edge ]
  %length63 = getelementptr inbounds %struct.runlist_element, ptr %rl.1, i32 0, i32 2
  %31 = ptrtoint ptr %length63 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %length63, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool64.not = icmp eq i64 %32, 0
  br i1 %tobool64.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.1, i32 1
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx, align 8
  %cmp66.not = icmp slt i64 %vcn.1, %34
  br i1 %cmp66.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %sh_prom102 = zext i8 %10 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  br label %do.body68

do.body68:                                        ; preds = %do.cond176.do.body68_crit_edge, %while.end
  %rl.2 = phi ptr [ %rl.1, %while.end ], [ %incdec.ptr177, %do.cond176.do.body68_crit_edge ]
  %should_wait.2.off0 = phi i1 [ %should_wait.1.off0, %while.end ], [ %should_wait.6.off0.ph, %do.cond176.do.body68_crit_edge ]
  %lcn69 = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 1
  %35 = ptrtoint ptr %lcn69 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lcn69, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %36)
  %cmp70 = icmp eq i64 %36, -2
  br i1 %cmp70, label %cleanup170, label %if.end80, !prof !97

if.end80:                                         ; preds = %do.body68
  %length81 = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 2
  %37 = ptrtoint ptr %length81 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %length81, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool82.not = icmp eq i64 %38, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %36)
  %cmp84 = icmp slt i64 %36, -1
  %spec.select = select i1 %tobool82.not, i1 true, i1 %cmp84, !prof !97
  br i1 %spec.select, label %if.end80.dirty_err_crit_edge, label %if.end94, !prof !97

if.end80.dirty_err_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %dirty_err

if.end94:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %36)
  %cmp95 = icmp eq i64 %36, -1
  br i1 %cmp95, label %if.end94.do.cond176_crit_edge, label %if.end98

if.end94.do.cond176_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond176

if.end98:                                         ; preds = %if.end94
  %39 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom101 = zext i8 %40 to i64
  %shl = shl i64 %36, %sh_prom101
  %shr103 = ashr i64 %shl, %sh_prom102
  %arrayidx105 = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  %41 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx105, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %shr)
  %cmp107 = icmp sgt i64 %42, %shr
  br i1 %cmp107, label %if.then109, label %if.end98.if.end112_crit_edge

if.end98.if.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then109:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %rl.2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rl.2, align 8
  %sub111 = sub i64 %shr, %44
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end98.if.end112_crit_edge
  %len.0 = phi i64 [ %sub111, %if.then109 ], [ %38, %if.end98.if.end112_crit_edge ]
  %add113 = add i64 %len.0, %36
  %shl117 = shl i64 %add113, %sh_prom101
  %shr119 = ashr i64 %shl117, %sh_prom102
  br label %do.body120

do.body120:                                       ; preds = %do.cond166.do.body120_crit_edge, %if.end112
  %should_wait.3.off0 = phi i1 [ %should_wait.2.off0, %if.end112 ], [ false, %do.cond166.do.body120_crit_edge ]
  %block.0 = phi i64 [ %shr103, %if.end112 ], [ %inc, %do.cond166.do.body120_crit_edge ]
  %45 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_bdev.i, align 4
  %47 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %46, i64 noundef %block.0, i32 noundef %48, i32 noundef 8) #9
  %tobool123.not = icmp eq ptr %call.i, null
  br i1 %tobool123.not, label %do.body133, label %do.end141, !prof !97

do.body133:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/logfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 792, 0\0A.popsection", ""() #9, !srcloc !116
  unreachable

do.end141:                                        ; preds = %do.body120
  tail call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 366) #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #9
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %do.end141.if.then.i286_crit_edge

do.end141.if.then.i286_crit_edge:                 ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i286

trylock_buffer.exit.i:                            ; preds = %do.end141
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #9, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  %52 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i286_crit_edge

trylock_buffer.exit.i.if.then.i286_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i286

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_buffer.exit

if.then.i286:                                     ; preds = %trylock_buffer.exit.i.if.then.i286_crit_edge, %do.end141.if.then.i286_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i) #9
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i286, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 7
  %53 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @end_buffer_write_sync, ptr %b_end_io, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !119
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %55 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data, align 4
  %57 = call ptr @memset(ptr %56, i32 255, i32 %8)
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool143.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool143.not, label %if.then144, label %lock_buffer.exit.if.end145_crit_edge

lock_buffer.exit.if.end145_crit_edge:             ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then144:                                       ; preds = %lock_buffer.exit
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %call.i, align 4
  %and1.i.i281 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i281)
  %tobool.not.i = icmp eq i32 %and1.i.i281, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then144.if.end145_crit_edge

if.then144.if.end145_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then.i:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i) #9
  br label %if.end145

if.end145:                                        ; preds = %if.then.i, %if.then144.if.end145_crit_edge, %lock_buffer.exit.if.end145_crit_edge
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %call.i, align 4
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool147.not = icmp eq i32 %64, 0
  br i1 %tobool147.not, label %if.end145.if.end149_crit_edge, label %if.then148

if.end145.if.end149_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %call.i) #9
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end145.if.end149_crit_edge
  %call150 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef nonnull %call.i) #9
  br i1 %should_wait.3.off0, label %if.then152, label %if.end149.do.cond166_crit_edge

if.end149.do.cond166_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond166

if.then152:                                       ; preds = %if.end149
  tail call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 354) #9
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %call.i, align 4
  %67 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i287 = icmp eq i32 %67, 0
  br i1 %tobool.not.i287, label %if.then152.wait_on_buffer.exit_crit_edge, label %if.then.i288

if.then152.wait_on_buffer.exit_crit_edge:         ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_on_buffer.exit

if.then.i288:                                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wait_on_buffer(ptr noundef nonnull %call.i) #9
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i288, %if.then152.wait_on_buffer.exit_crit_edge
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %call.i, align 4
  %and1.i.i283 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i283)
  %tobool154.not = icmp eq i32 %and1.i.i283, 0
  br i1 %tobool154.not, label %wait_on_buffer.exit.dirty_err_crit_edge, label %wait_on_buffer.exit.do.cond166_crit_edge, !prof !97

wait_on_buffer.exit.do.cond166_crit_edge:         ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond166

wait_on_buffer.exit.dirty_err_crit_edge:          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dirty_err

do.cond166:                                       ; preds = %wait_on_buffer.exit.do.cond166_crit_edge, %if.end149.do.cond166_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #9
  %inc = add i64 %block.0, 1
  %cmp167 = icmp ult i64 %inc, %shr119
  br i1 %cmp167, label %do.cond166.do.body120_crit_edge, label %do.cond166.do.cond176_crit_edge

do.cond166.do.cond176_crit_edge:                  ; preds = %do.cond166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond176

do.cond166.do.body120_crit_edge:                  ; preds = %do.cond166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

cleanup170:                                       ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %rl.2 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rl.2, align 8
  br label %map_vcn

do.cond176:                                       ; preds = %do.cond166.do.cond176_crit_edge, %if.end94.do.cond176_crit_edge
  %should_wait.6.off0.ph = phi i1 [ %should_wait.2.off0, %if.end94.do.cond176_crit_edge ], [ false, %do.cond166.do.cond176_crit_edge ]
  %incdec.ptr177 = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  %72 = ptrtoint ptr %incdec.ptr177 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %incdec.ptr177, align 8
  %cmp179 = icmp slt i64 %73, %shr
  br i1 %cmp179, label %do.cond176.do.body68_crit_edge, label %do.end181

do.cond176.do.body68_crit_edge:                   ; preds = %do.cond176
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

do.end181:                                        ; preds = %do.cond176
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_write(ptr noundef %lock) #9
  %74 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %75, i64 noundef 0) #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 832, ptr noundef nonnull @__func__.ntfs_empty_logfile, ptr noundef nonnull @.str.8) #9
  br label %cleanup189

dirty_err:                                        ; preds = %wait_on_buffer.exit.dirty_err_crit_edge, %if.end80.dirty_err_crit_edge
  %.str.14.sink = phi ptr [ @.str.13, %wait_on_buffer.exit.dirty_err_crit_edge ], [ @.str.14, %if.end80.dirty_err_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_empty_logfile, ptr noundef %3, ptr noundef nonnull %.str.14.sink) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %err185

err185:                                           ; preds = %dirty_err, %if.then30
  %err.0 = phi i32 [ %call28, %if.then30 ], [ -5, %dirty_err ]
  tail call void @up_write(ptr noundef %lock) #9
  %sub188 = sub i32 0, %err.0
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_empty_logfile, ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %sub188) #9
  br label %cleanup189

cleanup189:                                       ; preds = %err185, %do.end181, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ false, %err185 ], [ true, %do.end181 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_map_runlist_nolock(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_write_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_read_mst_fixup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/logfile.c", i32 485, i32 2}
!2 = !{ptr @__func__.ntfs_check_logfile, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/logfile.c", i32 516, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/logfile.c", i32 534, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/logfile.c", i32 604, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/logfile.c", i32 609, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/logfile.c", i32 620, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/logfile.c", i32 626, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/logfile.c", i32 637, i32 2}
!18 = !{ptr @__func__.ntfs_is_logfile_clean, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/logfile.c", i32 670, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/logfile.c", i32 679, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs/logfile.c", i32 693, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/logfile.c", i32 697, i32 2}
!26 = !{ptr @__func__.ntfs_empty_logfile, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs/logfile.c", i32 724, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ntfs/logfile.c", i32 750, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ntfs/logfile.c", i32 835, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ntfs/logfile.c", i32 838, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ntfs/logfile.c", i32 844, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!42 = !{ptr @__func__.ntfs_check_and_load_restart_page, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ntfs/logfile.c", i32 344, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ntfs/logfile.c", i32 362, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ntfs/logfile.c", i32 419, i32 4}
!48 = !{ptr @__func__.ntfs_check_restart_page_header, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ntfs/logfile.c", i32 45, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ntfs/logfile.c", i32 57, i32 3}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ntfs/logfile.c", i32 65, i32 3}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ntfs/logfile.c", i32 72, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ntfs/logfile.c", i32 89, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ntfs/logfile.c", i32 98, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ntfs/logfile.c", i32 113, i32 3}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ntfs/logfile.c", i32 122, i32 3}
!64 = !{ptr @__func__.ntfs_check_restart_area, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ntfs/logfile.c", i32 151, i32 2}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ntfs/logfile.c", i32 161, i32 3}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ntfs/logfile.c", i32 175, i32 3}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ntfs/logfile.c", i32 190, i32 3}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ntfs/logfile.c", i32 207, i32 3}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ntfs/logfile.c", i32 222, i32 3}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ntfs/logfile.c", i32 229, i32 3}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ntfs/logfile.c", i32 236, i32 3}
!80 = !{ptr @__func__.ntfs_check_log_client_array, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ntfs/logfile.c", i32 267, i32 2}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ntfs/logfile.c", i32 305, i32 2}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 1083077, i64 1083138}
!96 = !{i64 1085809}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 1086094}
!99 = !{i64 2152521228}
!100 = !{i64 2152521070}
!101 = !{i64 2152521398}
!102 = !{i64 2150107212}
!103 = !{i32 0, i32 33}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2154491403, i64 2154491883, i64 2154491440, i64 2154491496, i64 2154491530, i64 2154491554, i64 2154491595, i64 2154491616, i64 2154491644, i64 2154491678}
!106 = !{i64 2154511454, i64 2154511936, i64 2154511491, i64 2154511547, i64 2154511581, i64 2154511605, i64 2154511646, i64 2154511667, i64 2154511695, i64 2154511729}
!107 = !{i64 2154517294, i64 2154517776, i64 2154517331, i64 2154517387, i64 2154517421, i64 2154517445, i64 2154517486, i64 2154517507, i64 2154517535, i64 2154517569}
!108 = !{i64 2153165359, i64 2153165842, i64 2153165396, i64 2153165452, i64 2153165486, i64 2153165510, i64 2153165551, i64 2153165572, i64 2153165600, i64 2153165634}
!109 = !{i64 2148766873}
!110 = !{i64 2148681582, i64 2148681614, i64 2148681643, i64 2148681677, i64 2148681708, i64 2148681731}
!111 = !{i64 2148767102}
!112 = !{i64 2148502995, i64 2148503000, i64 2148503013, i64 2148503057, i64 2148503091, i64 2148503112}
!113 = !{i64 2150640174, i64 2150640665, i64 2150640211, i64 2150640267, i64 2150640301, i64 2150640325, i64 2150640366, i64 2150640387, i64 2150640415, i64 2150640449}
!114 = !{i64 2154519519, i64 2154520001, i64 2154519556, i64 2154519612, i64 2154519646, i64 2154519670, i64 2154519711, i64 2154519732, i64 2154519760, i64 2154519794}
!115 = !{i64 2154522890, i64 2154523372, i64 2154522927, i64 2154522983, i64 2154523017, i64 2154523041, i64 2154523082, i64 2154523103, i64 2154523131, i64 2154523165}
!116 = !{i64 2154524555, i64 2154525037, i64 2154524592, i64 2154524648, i64 2154524682, i64 2154524706, i64 2154524747, i64 2154524768, i64 2154524796, i64 2154524830}
!117 = !{i64 2148687255, i64 2148687287, i64 2148687316, i64 2148687350, i64 2148687381, i64 2148687404}
!118 = !{i64 2148776360}
!119 = !{i64 2148678397, i64 2148678423, i64 2148678452, i64 2148678486, i64 2148678517, i64 2148678540}
