; ModuleID = '/llk/IR_all_yes/fs/ntfs3/frecord.c_pt.bc'
source_filename = "../fs/ntfs3/frecord.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.84, %struct.anon.86, i32, %struct.inode }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%union.anon.84 = type { %struct.ntfs_index }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.86 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.87 }
%union.anon.87 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.78, %struct.anon.79, %struct.anon.80, %struct.anon.81, %struct.anon.82, %struct.anon.83, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.anon.78 = type { %struct.wnd_bitmap, i32 }
%struct.anon.79 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.80 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.anon.81 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.82 = type { %struct.ntfs_index, ptr }
%struct.anon.83 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.ATTR_LIST_ENTRY = type { i32, i16, i8, i8, i64, %struct.MFT_REF, i16, [3 x i16] }
%struct.ATTR_FILE_NAME = type { %struct.MFT_REF, %struct.NTFS_DUP_INFO, i8, i8, [0 x i16] }
%struct.NTFS_DUP_INFO = type { i64, i64, i64, i64, i64, i64, i32, i16, i16 }
%struct.REPARSE_DATA_BUFFER = type { i32, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32, i32 }
%struct.NTFS_DE = type { %union.anon.93, i16, i16, i16, i16 }
%union.anon.93 = type { %struct.MFT_REF }
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
%struct.ATTR_STD_INFO = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ntfs3/frecord.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014file can't be sparsed and compressed\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014one can change sparsed/compressed only for empty files\00", [39 x i8] zeroinitializer }, align 32
@ntfs_aops = external dso_local constant %struct.address_space_operations, align 4
@ntfs_aops_cmpr = external dso_local constant %struct.address_space_operations, align 4
@I30_NAME = external dso_local constant [4 x i16], align 2
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014fiemap is not supported for compressed file (cp -r)\00", [42 x i8] zeroinitializer }, align 32
@WOF_NAME = external dso_local constant [17 x i16], align 2
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013external compressed file should contains data attribute \22WofCompressedData\22\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s r=%lx failed, %d.\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014failed to open parent directory r=%lx to update\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013Internal error\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\014repack problem\00", [47 x i8] zeroinitializer }, align 32
@switch.table.ni_parse_reparse = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 4, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1073741824, i64 3221225472]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 128, i64 50331808, i64 201326752, i64 318767232, i64 385876096]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2147483648, i64 3221225472]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 854, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1684, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1693, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1876, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 2464, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 3275, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 717, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 260, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 416, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 44, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 788, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 3126, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 753, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [22 x i8] c"../fs/ntfs3/frecord.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 625, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"switch.table.ni_parse_reparse\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.ni_parse_reparse], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_parse_reparse to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_remove_mi(ptr noundef %ni, ptr noundef %mi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mi_tree = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  tail call void @rb_erase(ptr noundef %mi, ptr noundef %mi_tree) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ni_std(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mi_find_attr(ptr noundef %ni, ptr noundef null, i32 noundef 268435456, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_off.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp.i = icmp ult i32 %4, %add.i
  br i1 %cmp.i, label %if.end.i.cond.end_crit_edge, label %if.end3.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %11)
  %cmp4.i = icmp ult i32 %11, 48
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %spec.select.i = select i1 %cmp4.i, ptr null, ptr %add.ptr.i
  br label %cond.end

cond.end:                                         ; preds = %if.end3.i, %if.end.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ null, %entry.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ null, %if.end.i.cond.end_crit_edge ], [ %spec.select.i, %if.end3.i ]
  ret ptr %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mi_find_attr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ni_std5(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mi_find_attr(ptr noundef %ni, ptr noundef null, i32 noundef 268435456, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_off.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 72
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp.i = icmp ult i32 %4, %add.i
  br i1 %cmp.i, label %if.end.i.cond.end_crit_edge, label %if.end3.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %11)
  %cmp4.i = icmp ult i32 %11, 72
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %spec.select.i = select i1 %cmp4.i, ptr null, ptr %add.ptr.i
  br label %cond.end

cond.end:                                         ; preds = %if.end3.i, %if.end.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ null, %entry.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ null, %if.end.i.cond.end_crit_edge ], [ %spec.select.i, %if.end3.i ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_clear(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %3 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mrec, align 8
  %flags.i = getelementptr inbounds %struct.MFT_REC, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i, align 2
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @ni_delete_all(ptr noundef %ni)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @al_destroy(ptr noundef %ni) #9
  %mi_tree = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  %call2 = tail call ptr @rb_first(ptr noundef %mi_tree) #9
  %tobool3.not32 = icmp eq ptr %call2, null
  br i1 %tobool3.not32, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.033 = phi ptr [ %call4, %for.body.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %call4 = tail call ptr @rb_next(ptr noundef nonnull %node.033) #9
  tail call void @rb_erase(ptr noundef nonnull %node.033, ptr noundef %mi_tree) #9
  tail call void @mi_put(ptr noundef nonnull %node.033) #9
  %tobool3.not = icmp eq ptr %call4, null
  br i1 %tobool3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %8 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ni_flags, align 4
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  tail call void @indx_clear(ptr noundef %10) #9
  br label %if.end14

if.else:                                          ; preds = %for.end
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %11 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %run, align 4
  tail call void @kvfree(ptr noundef %12) #9
  %13 = call ptr @memset(ptr %run, i32 0, i32 12)
  %offs_page = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 3
  %14 = ptrtoint ptr %offs_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %offs_page, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.else.if.end14_crit_edge, label %if.then10

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.else
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %15 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !44

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ni_clear, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !49

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %20, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %20) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %24 = ptrtoint ptr %offs_page to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %offs_page, align 4
  br label %if.end14

if.end14:                                         ; preds = %put_page.exit, %if.else.if.end14_crit_edge, %if.then8
  %nb.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 3
  %nbufs1.i.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i31 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i31, label %if.end14.mi_clear.exit_crit_edge, label %if.end14.for.body.i.i_crit_edge

if.end14.for.body.i.i_crit_edge:                  ; preds = %if.end14
  br label %for.body.i.i

if.end14.mi_clear.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %mi_clear.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end14.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end14.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %nb.i, i32 0, i32 %i.010.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %28, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #9, !srcloc !51
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %mi_clear.exit

mi_clear.exit:                                    ; preds = %for.end.i.i, %if.end14.mi_clear.exit_crit_edge
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %31 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mrec.i, align 4
  tail call void @kfree(ptr noundef %32) #9
  %33 = ptrtoint ptr %mrec.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %mrec.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_delete_all(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  %ref = alloca %struct.MFT_REF, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #9
  %0 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %le, align 4
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %1 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sbi1, align 4
  %major_ver.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %2, i32 0, i32 29, i32 5
  %3 = ptrtoint ptr %major_ver.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %major_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.i = icmp ugt i8 %4, 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #9
  %5 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %6 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %ref, align 8
  %call2105 = call ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, ptr noundef null)
  %tobool.not106 = icmp eq ptr %call2105, null
  br i1 %tobool.not106, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call2107 = phi ptr [ %call2105, %while.body.lr.ph ], [ %call2, %while.cond.backedge.while.body_crit_edge ]
  br i1 %cmp.i, label %lor.lhs.false, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

lor.lhs.false:                                    ; preds = %while.body
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 3
  %8 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.else, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %call2107 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call2107, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.else.if.end21_crit_edge [
    i32 -1073741824, label %if.then6
    i32 1073741824, label %land.lhs.true
  ]

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rno.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ref, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %5, align 4
  %18 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mrec.i, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %seq.i, align 8
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %6, align 2
  %call8 = call i32 @ntfs_remove_reparse(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %ref) #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.else
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 2
  %23 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true14:                                  ; preds = %land.lhs.true
  %25 = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %28)
  %cmp15 = icmp ugt i32 %28, 15
  br i1 %cmp15, label %if.then17, label %land.lhs.true14.if.end21_crit_edge

land.lhs.true14.if.end21_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data_off.i, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30) #9
  %conv.i = zext i16 %31 to i32
  %add.ptr.i = getelementptr i8, ptr %call2107, i32 %conv.i
  %call19 = call i32 @ntfs_objid_remove(ptr noundef %2, ptr noundef %add.ptr.i) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true14.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.then6, %if.else.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %non_res22 = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 2
  %32 = ptrtoint ptr %non_res22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %non_res22, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool23.not = icmp eq i8 %33, 0
  br i1 %tobool23.not, label %if.end21.while.cond.backedge_crit_edge, label %if.end25

if.end21.while.cond.backedge_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end25:                                         ; preds = %if.end21
  %34 = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 7
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %34, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36)
  %conv27 = trunc i64 %37 to i32
  %evcn28 = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 7, i32 0, i32 1
  %38 = ptrtoint ptr %evcn28 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %evcn28, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39)
  %conv29 = trunc i64 %40 to i32
  %add = add i32 %conv29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv27)
  %cmp30.not = icmp ugt i32 %add, %conv27
  br i1 %cmp30.not, label %if.end33, label %if.end25.while.cond.backedge_crit_edge

if.end25.while.cond.backedge_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 1
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %call2107, i32 0, i32 7, i32 0, i32 2
  %44 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %run_off, align 8
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %47 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rno.i, align 8
  %conv35 = zext i16 %46 to i32
  %add.ptr = getelementptr i8, ptr %call2107, i32 %conv35
  %sub = sub i32 %43, %conv35
  %call37 = call i32 @run_unpack_ex(ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %2, i32 noundef %48, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv27, ptr noundef %add.ptr, i32 noundef %sub) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end33, %if.end25.while.cond.backedge_crit_edge, %if.end21.while.cond.backedge_crit_edge
  %call2 = call ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef nonnull %call2107, ptr noundef nonnull %le, ptr noundef null)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %size38 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %49 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool39.not = icmp eq i32 %50, 0
  br i1 %tobool39.not, label %while.end.if.end45_crit_edge, label %if.then40

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %attr_list = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9
  %51 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sbi1, align 4
  %call44 = call i32 @run_deallocate(ptr noundef %52, ptr noundef %attr_list, i1 noundef zeroext true) #9
  call void @al_destroy(ptr noundef %ni) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %while.end.if.end45_crit_edge
  %mi_tree = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  %call46 = call ptr @rb_first(ptr noundef %mi_tree) #9
  %tobool47.not108 = icmp eq ptr %call46, null
  br i1 %tobool47.not108, label %if.end45.for.end_crit_edge, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  br label %for.body

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end45.for.body_crit_edge
  %node.0109 = phi ptr [ %call48, %for.body.for.body_crit_edge ], [ %call46, %if.end45.for.body_crit_edge ]
  %call48 = call ptr @rb_next(ptr noundef nonnull %node.0109) #9
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %node.0109, i32 0, i32 2
  %53 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mrec, align 4
  %flags.i = getelementptr inbounds %struct.MFT_REC, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i, align 2
  %57 = and i16 %56, -257
  store i16 %57, ptr %flags.i, align 2
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %node.0109, i32 0, i32 5
  %58 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %dirty, align 4
  %call52 = call i32 @mi_write(ptr noundef nonnull %node.0109, i32 noundef 0) #9
  %rno53 = getelementptr inbounds %struct.mft_inode, ptr %node.0109, i32 0, i32 4
  %59 = ptrtoint ptr %rno53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rno53, align 4
  call void @ntfs_mark_rec_free(ptr noundef %2, i32 noundef %60) #9
  call void @rb_erase(ptr noundef nonnull %node.0109, ptr noundef %mi_tree) #9
  call void @mi_put(ptr noundef nonnull %node.0109) #9
  %tobool47.not = icmp eq ptr %call48, null
  br i1 %tobool47.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end45.for.end_crit_edge
  %mrec55 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %61 = ptrtoint ptr %mrec55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mrec55, align 8
  %flags.i104 = getelementptr inbounds %struct.MFT_REC, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags.i104, align 2
  %65 = and i16 %64, -257
  store i16 %65, ptr %flags.i104, align 2
  %dirty58 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 5
  %66 = ptrtoint ptr %dirty58 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %dirty58, align 4
  %call60 = call i32 @mi_write(ptr noundef %ni, i32 noundef 0) #9
  %rno62 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %67 = ptrtoint ptr %rno62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rno62, align 8
  call void @ntfs_mark_rec_free(ptr noundef %2, i32 noundef %68) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #9
  ret i32 %call60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @al_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mi_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @indx_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_load_mi_ex(ptr noundef %ni, i32 noundef %rno, ptr noundef writeonly %mi) local_unnamed_addr #0 align 64 {
entry:
  %r = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #9
  %mi_tree.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  %0 = ptrtoint ptr %mi_tree.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mi_tree.i, align 4
  %tobool.not7.i.i = icmp eq ptr %1, null
  br i1 %tobool.not7.i.i, label %entry.if.end_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %2 = phi ptr [ %6, %cleanup.i.i.while.body.i.i_crit_edge ], [ %1, %entry.while.body.i.i_crit_edge ]
  %rno.i.i = getelementptr inbounds %struct.mft_inode, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %rno.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rno.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rno)
  %cmp.i.i = icmp ugt i32 %4, %rno
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rno)
  %cmp2.i.i = icmp ult i32 %4, %rno
  br i1 %cmp2.i.i, label %if.then3.i.i, label %ni_find_mi.exit

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %p.2.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %5 = ptrtoint ptr %p.2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.if.end_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

cleanup.i.i.if.end_crit_edge:                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ni_find_mi.exit:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %r, align 4
  br label %out

if.end:                                           ; preds = %cleanup.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %r, align 4
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %9 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sbi, align 4
  %call2 = call i32 @mi_get(ptr noundef %10, i32 noundef %rno, ptr noundef nonnull %r) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %r, align 4
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rno.i, align 4
  %15 = ptrtoint ptr %mi_tree.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mi_tree.i, align 4
  %tobool.not7.i.i16 = icmp eq ptr %16, null
  br i1 %tobool.not7.i.i16, label %if.end5.while.end.i.i_crit_edge, label %if.end5.while.body.i.i19_crit_edge

if.end5.while.body.i.i19_crit_edge:               ; preds = %if.end5
  br label %while.body.i.i19

if.end5.while.end.i.i_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i19:                                 ; preds = %cleanup.i.i28.while.body.i.i19_crit_edge, %if.end5.while.body.i.i19_crit_edge
  %17 = phi ptr [ %21, %cleanup.i.i28.while.body.i.i19_crit_edge ], [ %16, %if.end5.while.body.i.i19_crit_edge ]
  %rno.i.i17 = getelementptr inbounds %struct.mft_inode, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %rno.i.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rno.i.i17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %14)
  %cmp.i.i18 = icmp ugt i32 %19, %14
  br i1 %cmp.i.i18, label %if.then.i.i21, label %if.else.i.i23

if.then.i.i21:                                    ; preds = %while.body.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i20 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  br label %cleanup.i.i28

if.else.i.i23:                                    ; preds = %while.body.i.i19
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %14)
  %cmp2.i.i22 = icmp ult i32 %19, %14
  br i1 %cmp2.i.i22, label %if.then3.i.i25, label %if.else.i.i23.out_crit_edge

if.else.i.i23.out_crit_edge:                      ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then3.i.i25:                                   ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i24 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %cleanup.i.i28

cleanup.i.i28:                                    ; preds = %if.then3.i.i25, %if.then.i.i21
  %p.2.i.i26 = phi ptr [ %rb_left.i.i20, %if.then.i.i21 ], [ %rb_right.i.i24, %if.then3.i.i25 ]
  %20 = ptrtoint ptr %p.2.i.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p.2.i.i26, align 4
  %tobool.not.i.i27 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i27, label %while.cond.while.end_crit_edge.i.i, label %cleanup.i.i28.while.body.i.i19_crit_edge

cleanup.i.i28.while.body.i.i19_crit_edge:         ; preds = %cleanup.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i19

while.cond.while.end_crit_edge.i.i:               ; preds = %cleanup.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i = ptrtoint ptr %17 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %if.end5.while.end.i.i_crit_edge
  %pr.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end5.while.end.i.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.2.i.i26, %while.cond.while.end_crit_edge.i.i ], [ %mi_tree.i, %if.end5.while.end.i.i_crit_edge ]
  %tobool6.not.i.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i.i, label %while.end.i.i.out_crit_edge, label %if.end8.i.i

while.end.i.i.out_crit_edge:                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %pr.0.lcssa.i.i, ptr %12, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %23 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %24 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %25 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %12, ptr %p.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %12, ptr noundef %mi_tree.i) #9
  br label %out

out:                                              ; preds = %if.end8.i.i, %while.end.i.i.out_crit_edge, %if.else.i.i23.out_crit_edge, %ni_find_mi.exit
  %tobool6.not = icmp eq ptr %mi, null
  br i1 %tobool6.not, label %out.cleanup_crit_edge, label %if.then7

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %r, align 4
  %28 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %mi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %out.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_load_mi(ptr noundef %ni, ptr noundef readonly %le, ptr noundef %mi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %le, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ni, ptr %mi, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le, i32 0, i32 5
  %1 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ref, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %rno3 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %4 = ptrtoint ptr %rno3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rno3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ni, ptr %mi, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @ni_load_mi_ex(ptr noundef %ni, i32 noundef %3, ptr noundef %mi)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call7, %if.end6 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ni_find_attr(ptr noundef %ni, ptr noundef %attr, ptr noundef %le_o, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %vcn, ptr noundef writeonly %mi) local_unnamed_addr #0 align 64 {
entry:
  %m = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #9
  %0 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %m, align 4, !annotation !52
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %name_len)
  %tobool1.not = icmp eq i8 %name_len, 0
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %land.lhs.true.if.end11_crit_edge [
    i32 536870912, label %land.lhs.true.if.then_crit_edge
    i32 268435456, label %land.lhs.true.if.then_crit_edge105
  ]

land.lhs.true.if.then_crit_edge105:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge105, %entry.if.then_crit_edge
  %tobool4.not = icmp eq ptr %le_o, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %le_o to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %le_o, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %tobool6.not = icmp eq ptr %mi, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ni, ptr %mi, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %conv = zext i8 %name_len to i32
  %call = tail call ptr @mi_find_attr(ptr noundef %ni, ptr noundef %attr, i32 noundef %type, ptr noundef %name, i32 noundef %conv, ptr noundef null) #9
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %le_o, null
  br i1 %tobool12.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.end11
  %call13 = tail call ptr @al_find_ex(ptr noundef %ni, ptr noundef null, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %vcn) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end.i_crit_edge

cond.end.if.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end.thread:                                  ; preds = %if.end11
  %6 = ptrtoint ptr %le_o to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %le_o, align 4
  %call1397 = tail call ptr @al_find_ex(ptr noundef %ni, ptr noundef %7, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %vcn) #9
  %tobool14.not98 = icmp eq ptr %call1397, null
  br i1 %tobool14.not98, label %cond.end.thread.cleanup_crit_edge, label %if.then18

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %le_o to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1397, ptr %le_o, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then18, %cond.end.if.end.i_crit_edge
  %call1399102 = phi ptr [ %call1397, %if.then18 ], [ %call13, %cond.end.if.end.i_crit_edge ]
  %ref.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call1399102, i32 0, i32 5
  %9 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ref.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %rno3.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %12 = ptrtoint ptr %rno3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rno3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp eq i32 %11, %13
  br i1 %cmp.i, label %ni_load_mi.exit.thread, label %ni_load_mi.exit

ni_load_mi.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ni, ptr %m, align 4
  br label %if.end23

ni_load_mi.exit:                                  ; preds = %if.end.i
  %call7.i = call i32 @ni_load_mi_ex(ptr noundef %ni, i32 noundef %11, ptr noundef nonnull %m) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool21.not = icmp eq i32 %call7.i, 0
  br i1 %tobool21.not, label %ni_load_mi.exit.if.end23_crit_edge, label %ni_load_mi.exit.cleanup_crit_edge

ni_load_mi.exit.cleanup_crit_edge:                ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ni_load_mi.exit.if.end23_crit_edge:               ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %ni_load_mi.exit.if.end23_crit_edge, %ni_load_mi.exit.thread
  %15 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m, align 4
  %conv24 = zext i8 %name_len to i32
  %id = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call1399102, i32 0, i32 6
  %call25 = call ptr @mi_find_attr(ptr noundef %16, ptr noundef null, i32 noundef %type, ptr noundef %name, i32 noundef %conv24, ptr noundef %id) #9
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.out_crit_edge, label %if.end28

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end28:                                         ; preds = %if.end23
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call25, i32 0, i32 2
  %17 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp eq i8 %18, 0
  %tobool31.not = icmp eq ptr %vcn, null
  br i1 %tobool29.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  br i1 %tobool31.not, label %if.then30.if.end53_crit_edge, label %land.lhs.true32

if.then30.if.end53_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true32:                                  ; preds = %if.then30
  %19 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  br i1 %tobool33.not, label %land.lhs.true32.if.end53_crit_edge, label %land.lhs.true32.out_crit_edge

land.lhs.true32.out_crit_edge:                    ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true32.if.end53_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else:                                          ; preds = %if.end28
  %21 = getelementptr inbounds %struct.ATTRIB, ptr %call25, i32 0, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  br i1 %tobool31.not, label %if.then37, label %if.else41

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool38.not = icmp eq i64 %23, 0
  br i1 %tobool38.not, label %if.then37.if.end53_crit_edge, label %if.then37.out_crit_edge

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then37.if.end53_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else41:                                        ; preds = %if.else
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %25 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vcn, align 4
  %conv43 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv43)
  %cmp44 = icmp ugt i64 %24, %conv43
  br i1 %cmp44, label %if.else41.out_crit_edge, label %lor.lhs.false46

if.else41.out_crit_edge:                          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false46:                                  ; preds = %if.else41
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call25, i32 0, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %evcn, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv43)
  %cmp48 = icmp ult i64 %29, %conv43
  br i1 %cmp48, label %lor.lhs.false46.out_crit_edge, label %lor.lhs.false46.if.end53_crit_edge

lor.lhs.false46.if.end53_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

lor.lhs.false46.out_crit_edge:                    ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end53:                                         ; preds = %lor.lhs.false46.if.end53_crit_edge, %if.then37.if.end53_crit_edge, %land.lhs.true32.if.end53_crit_edge, %if.then30.if.end53_crit_edge
  %tobool54.not = icmp eq ptr %mi, null
  br i1 %tobool54.not, label %if.end53.cleanup_crit_edge, label %if.then55

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m, align 4
  %32 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %mi, align 4
  br label %cleanup

out:                                              ; preds = %lor.lhs.false46.out_crit_edge, %if.else41.out_crit_edge, %if.then37.out_crit_edge, %land.lhs.true32.out_crit_edge, %if.end23.out_crit_edge
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %33 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sbi, align 4
  %call58 = call i32 @ntfs_set_state(ptr noundef %34, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then55, %if.end53.cleanup_crit_edge, %ni_load_mi.exit.cleanup_crit_edge, %cond.end.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end9
  %retval.0 = phi ptr [ null, %out ], [ %call, %if.end9 ], [ null, %cond.end.cleanup_crit_edge ], [ null, %ni_load_mi.exit.cleanup_crit_edge ], [ %call25, %if.then55 ], [ %call25, %if.end53.cleanup_crit_edge ], [ null, %cond.end.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @al_find_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef %attr, ptr nocapture noundef %le, ptr noundef writeonly %mi) local_unnamed_addr #0 align 64 {
entry:
  %mi2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi2) #9
  %0 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi2, align 4, !annotation !52
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %le, align 4
  %tobool1.not = icmp eq ptr %mi, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ni, ptr %mi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %call = tail call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef %attr) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %attr, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %le, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ null, %if.end5.cond.end_crit_edge ]
  %call7 = tail call ptr @al_enumerate(ptr noundef %ni, ptr noundef %cond) #9
  %7 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %le, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cond.end.cleanup_crit_edge, label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %cond.end
  %ref.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call7, i32 0, i32 5
  %8 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %rno3.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %11 = ptrtoint ptr %rno3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rno3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp eq i32 %10, %12
  br i1 %cmp.i, label %ni_load_mi.exit.thread, label %ni_load_mi.exit

ni_load_mi.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ni, ptr %mi2, align 4
  br label %if.end14

ni_load_mi.exit:                                  ; preds = %if.end.i
  %call7.i = call i32 @ni_load_mi_ex(ptr noundef %ni, i32 noundef %10, ptr noundef nonnull %mi2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool12.not = icmp eq i32 %call7.i, 0
  br i1 %tobool12.not, label %ni_load_mi.exit.if.end14_crit_edge, label %ni_load_mi.exit.cleanup_crit_edge

ni_load_mi.exit.cleanup_crit_edge:                ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ni_load_mi.exit.if.end14_crit_edge:               ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %ni_load_mi.exit.if.end14_crit_edge, %ni_load_mi.exit.thread
  %tobool15.not = icmp eq ptr %mi, null
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mi2, align 4
  %16 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %mi, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %17 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mi2, align 4
  %19 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call7, align 8
  %name_off.i.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call7, i32 0, i32 3
  %21 = ptrtoint ptr %name_off.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %name_off.i.i, align 1
  %conv.i.i = zext i8 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call7, i32 %conv.i.i
  %name_len.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call7, i32 0, i32 2
  %23 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %name_len.i, align 2
  %conv.i = zext i8 %24 to i32
  %id.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call7, i32 0, i32 6
  %call1.i = call ptr @mi_find_attr(ptr noundef %18, ptr noundef null, i32 noundef %20, ptr noundef %add.ptr.i.i, i32 noundef %conv.i, ptr noundef %id.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %ni_load_mi.exit.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end
  %retval.0 = phi ptr [ %call1.i, %if.end17 ], [ %call, %if.end ], [ null, %cond.end.cleanup_crit_edge ], [ null, %ni_load_mi.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mi_enum_attr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @al_enumerate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ni_load_attr(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %vcn, ptr noundef writeonly %pmi) local_unnamed_addr #0 align 64 {
entry:
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #9
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !52
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %pmi, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %pmi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ni, ptr %pmi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %conv = zext i8 %name_len to i32
  %call = tail call ptr @mi_find_attr(ptr noundef %ni, ptr noundef null, i32 noundef %type, ptr noundef %name, i32 noundef %conv, ptr noundef null) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call ptr @al_find_ex(ptr noundef %ni, ptr noundef null, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef null) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vcn)
  %tobool10.not = icmp eq i32 %vcn, 0
  br i1 %tobool10.not, label %if.end9.if.end.i_crit_edge, label %for.cond.preheader

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.cond.preheader:                               ; preds = %if.end9
  %conv15 = zext i32 %vcn to i64
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %for.cond.preheader
  %le.0 = phi ptr [ %call12, %lor.lhs.false.for.cond_crit_edge ], [ %call6, %for.cond.preheader ]
  %call12 = tail call ptr @al_find_ex(ptr noundef %ni, ptr noundef nonnull %le.0, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef null) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.cond.if.end.i_crit_edge, label %lor.lhs.false

for.cond.if.end.i_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false:                                    ; preds = %for.cond
  %vcn14 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call12, i32 0, i32 4
  %4 = ptrtoint ptr %vcn14 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vcn14, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %cmp = icmp ugt i64 %6, %conv15
  br i1 %cmp, label %lor.lhs.false.if.end.i_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.if.end.i_crit_edge, %for.cond.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  %le.1 = phi ptr [ %call6, %if.end9.if.end.i_crit_edge ], [ %le.0, %lor.lhs.false.if.end.i_crit_edge ], [ %le.0, %for.cond.if.end.i_crit_edge ]
  %ref.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 5
  %7 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %rno3.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %10 = ptrtoint ptr %rno3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rno3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br i1 %cmp.i, label %ni_load_mi.exit.thread, label %ni_load_mi.exit

ni_load_mi.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ni, ptr %mi, align 4
  br label %if.end23

ni_load_mi.exit:                                  ; preds = %if.end.i
  %call7.i = call i32 @ni_load_mi_ex(ptr noundef %ni, i32 noundef %9, ptr noundef nonnull %mi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool21.not = icmp eq i32 %call7.i, 0
  br i1 %tobool21.not, label %ni_load_mi.exit.if.end23_crit_edge, label %ni_load_mi.exit.cleanup_crit_edge

ni_load_mi.exit.cleanup_crit_edge:                ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ni_load_mi.exit.if.end23_crit_edge:               ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %ni_load_mi.exit.if.end23_crit_edge, %ni_load_mi.exit.thread
  %tobool24.not = icmp eq ptr %pmi, null
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mi, align 4
  %15 = ptrtoint ptr %pmi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pmi, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %16 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mi, align 4
  %conv27 = zext i8 %name_len to i32
  %id = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.1, i32 0, i32 6
  %call28 = call ptr @mi_find_attr(ptr noundef %17, ptr noundef null, i32 noundef %type, ptr noundef %name, i32 noundef %conv27, ptr noundef %id) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call28, i32 0, i32 2
  %18 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not = icmp eq i8 %19, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %20 = getelementptr inbounds %struct.ATTRIB, ptr %call28, i32 0, i32 7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %conv35 = zext i32 %vcn to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv35)
  %cmp36.not = icmp ugt i64 %23, %conv35
  br i1 %cmp36.not, label %if.end34.if.end42_crit_edge, label %land.lhs.true

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end34
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call28, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %evcn, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25)
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv35)
  %cmp39.not = icmp ult i64 %26, %conv35
  br i1 %cmp39.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %land.lhs.true.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %ni_load_mi.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end
  %retval.0 = phi ptr [ null, %if.end42 ], [ %call, %if.end ], [ null, %if.end5.cleanup_crit_edge ], [ null, %ni_load_mi.exit.cleanup_crit_edge ], [ null, %if.end26.cleanup_crit_edge ], [ %call28, %if.end31.cleanup_crit_edge ], [ %call28, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_load_all_mi(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  %r.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup10_crit_edge, label %while.cond.preheader

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

while.cond.preheader:                             ; preds = %entry
  %call27 = call ptr @al_enumerate(ptr noundef %ni, ptr noundef null) #9
  %tobool1.not28 = icmp eq ptr %call27, null
  br i1 %tobool1.not28, label %while.cond.preheader.cleanup10_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup10_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rno3 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %mi_tree.i.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call29 = phi ptr [ %call27, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  %ref = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call29, i32 0, i32 5
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref, align 4
  %4 = call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = ptrtoint ptr %rno3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rno3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r.i) #9
  %7 = ptrtoint ptr %mi_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mi_tree.i.i, align 4
  %tobool.not7.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not7.i.i.i, label %if.end5.if.end.i_crit_edge, label %if.end5.while.body.i.i.i_crit_edge

if.end5.while.body.i.i.i_crit_edge:               ; preds = %if.end5
  br label %while.body.i.i.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end5.while.body.i.i.i_crit_edge
  %9 = phi ptr [ %13, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %8, %if.end5.while.body.i.i.i_crit_edge ]
  %rno.i.i.i = getelementptr inbounds %struct.mft_inode, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %rno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rno.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %4)
  %cmp.i.i.i = icmp ugt i32 %11, %4
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %4)
  %cmp2.i.i.i = icmp ult i32 %11, %4
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.else.i.i.i.select.unfold_crit_edge

if.else.i.i.i.select.unfold_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %select.unfold

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %p.2.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then3.i.i.i ]
  %12 = ptrtoint ptr %p.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.2.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.if.end.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

cleanup.i.i.i.if.end.i_crit_edge:                 ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.i.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %14 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %r.i, align 4
  %15 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbi.i, align 4
  %call2.i = call i32 @mi_get(ptr noundef %16, i32 noundef %4, ptr noundef nonnull %r.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %cleanup.thread

if.end5.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %r.i, align 4
  %rno.i.i = getelementptr inbounds %struct.mft_inode, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %rno.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rno.i.i, align 4
  %21 = ptrtoint ptr %mi_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mi_tree.i.i, align 4
  %tobool.not7.i.i16.i = icmp eq ptr %22, null
  br i1 %tobool.not7.i.i16.i, label %if.end5.i.while.end.i.i.i_crit_edge, label %if.end5.i.while.body.i.i19.i_crit_edge

if.end5.i.while.body.i.i19.i_crit_edge:           ; preds = %if.end5.i
  br label %while.body.i.i19.i

if.end5.i.while.end.i.i.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.body.i.i19.i:                               ; preds = %cleanup.i.i28.i.while.body.i.i19.i_crit_edge, %if.end5.i.while.body.i.i19.i_crit_edge
  %23 = phi ptr [ %27, %cleanup.i.i28.i.while.body.i.i19.i_crit_edge ], [ %22, %if.end5.i.while.body.i.i19.i_crit_edge ]
  %rno.i.i17.i = getelementptr inbounds %struct.mft_inode, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %rno.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rno.i.i17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp.i.i18.i = icmp ugt i32 %25, %20
  br i1 %cmp.i.i18.i, label %if.then.i.i21.i, label %if.else.i.i23.i

if.then.i.i21.i:                                  ; preds = %while.body.i.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i20.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %cleanup.i.i28.i

if.else.i.i23.i:                                  ; preds = %while.body.i.i19.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp2.i.i22.i = icmp ult i32 %25, %20
  br i1 %cmp2.i.i22.i, label %if.then3.i.i25.i, label %if.else.i.i23.i.select.unfold_crit_edge

if.else.i.i23.i.select.unfold_crit_edge:          ; preds = %if.else.i.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %select.unfold

if.then3.i.i25.i:                                 ; preds = %if.else.i.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i24.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %cleanup.i.i28.i

cleanup.i.i28.i:                                  ; preds = %if.then3.i.i25.i, %if.then.i.i21.i
  %p.2.i.i26.i = phi ptr [ %rb_left.i.i20.i, %if.then.i.i21.i ], [ %rb_right.i.i24.i, %if.then3.i.i25.i ]
  %26 = ptrtoint ptr %p.2.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p.2.i.i26.i, align 4
  %tobool.not.i.i27.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i27.i, label %while.cond.while.end_crit_edge.i.i.i, label %cleanup.i.i28.i.while.body.i.i19.i_crit_edge

cleanup.i.i28.i.while.body.i.i19.i_crit_edge:     ; preds = %cleanup.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i19.i

while.cond.while.end_crit_edge.i.i.i:             ; preds = %cleanup.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i.i = ptrtoint ptr %23 to i32
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.while.end_crit_edge.i.i.i, %if.end5.i.while.end.i.i.i_crit_edge
  %pr.0.lcssa.i.i.i = phi i32 [ %phi.cast.le.i.i.i, %while.cond.while.end_crit_edge.i.i.i ], [ 0, %if.end5.i.while.end.i.i.i_crit_edge ]
  %p.0.lcssa.i.i.i = phi ptr [ %p.2.i.i26.i, %while.cond.while.end_crit_edge.i.i.i ], [ %mi_tree.i.i, %if.end5.i.while.end.i.i.i_crit_edge ]
  %tobool6.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i.i.i, label %while.end.i.i.i.select.unfold_crit_edge, label %if.end8.i.i.i

while.end.i.i.i.select.unfold_crit_edge:          ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %select.unfold

if.end8.i.i.i:                                    ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pr.0.lcssa.i.i.i, ptr %18, align 4
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %29 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  %30 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_left.i.i.i.i, align 4
  %31 = ptrtoint ptr %p.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %18, ptr %p.0.lcssa.i.i.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %18, ptr noundef %mi_tree.i.i) #9
  br label %select.unfold

cleanup.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #9
  br label %cleanup10

select.unfold:                                    ; preds = %if.end8.i.i.i, %while.end.i.i.i.select.unfold_crit_edge, %if.else.i.i23.i.select.unfold_crit_edge, %if.else.i.i.i.select.unfold_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #9
  br label %cleanup

cleanup:                                          ; preds = %select.unfold, %while.body.cleanup_crit_edge
  %call = call ptr @al_enumerate(ptr noundef %ni, ptr noundef %call29) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %cleanup.cleanup10_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup.cleanup10_crit_edge, %cleanup.thread, %while.cond.preheader.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ %call2.i, %cleanup.thread ], [ 0, %while.cond.preheader.cleanup10_crit_edge ], [ 0, %cleanup.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ni_add_subrecord(ptr noundef %ni, i32 noundef %rno, ptr nocapture noundef writeonly %mi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 72) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %1 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sbi, align 4
  %rno3 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %3 = ptrtoint ptr %rno3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rno3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %call4 = tail call i32 @mi_format_new(ptr noundef nonnull %call7.i.i, ptr noundef %2, i32 noundef %rno, i16 noundef zeroext 0, i1 noundef zeroext %cmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mi_put(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrec, align 8
  %parent_ref = getelementptr inbounds %struct.MFT_REC, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %rno3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rno3, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %parent_ref to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %parent_ref, align 4
  %high.i = getelementptr inbounds %struct.MFT_REC, ptr %6, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %high.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %high.i, align 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %12 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mrec.i, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %seq.i, align 8
  %seq1.i = getelementptr inbounds %struct.MFT_REC, ptr %6, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %seq1.i, align 2
  %mi_tree.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  %rno.i17 = getelementptr inbounds %struct.mft_inode, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %rno.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rno.i17, align 8
  %19 = ptrtoint ptr %mi_tree.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mi_tree.i, align 4
  %tobool.not7.i.i = icmp eq ptr %20, null
  br i1 %tobool.not7.i.i, label %if.end7.if.end8.i.i_crit_edge, label %if.end7.while.body.i.i_crit_edge

if.end7.while.body.i.i_crit_edge:                 ; preds = %if.end7
  br label %while.body.i.i

if.end7.if.end8.i.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end7.while.body.i.i_crit_edge
  %21 = phi ptr [ %25, %cleanup.i.i.while.body.i.i_crit_edge ], [ %20, %if.end7.while.body.i.i_crit_edge ]
  %rno.i.i = getelementptr inbounds %struct.mft_inode, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %rno.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rno.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp.i.i = icmp ugt i32 %23, %18
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp2.i.i = icmp ult i32 %23, %18
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i.ni_add_mi.exit_crit_edge

if.else.i.i.ni_add_mi.exit_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_add_mi.exit

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %p.2.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %24 = ptrtoint ptr %p.2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p.2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i = ptrtoint ptr %21 to i32
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %while.cond.while.end_crit_edge.i.i, %if.end7.if.end8.i.i_crit_edge
  %pr.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end7.if.end8.i.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.2.i.i, %while.cond.while.end_crit_edge.i.i ], [ %mi_tree.i, %if.end7.if.end8.i.i_crit_edge ]
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %pr.0.lcssa.i.i, ptr %call7.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %29 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %p.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %mi_tree.i) #9
  br label %ni_add_mi.exit

ni_add_mi.exit:                                   ; preds = %if.end8.i.i, %if.else.i.i.ni_add_mi.exit_crit_edge
  %30 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %mi, align 4
  br label %cleanup

cleanup:                                          ; preds = %ni_add_mi.exit, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ true, %ni_add_mi.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_format_new(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_remove_attr(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i32 noundef %name_len, i1 noundef zeroext %base_only, ptr noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #9
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %type)
  %cmp = icmp eq i32 %type, 536870912
  %or.cond = or i1 %cmp, %base_only
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false1

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false1:                                   ; preds = %entry
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %lor.lhs.false1.if.then_crit_edge, label %if.end8

lor.lhs.false1.if.then_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false1.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call ptr @mi_find_attr(ptr noundef %ni, ptr noundef null, i32 noundef %type, ptr noundef %name, i32 noundef %name_len, ptr noundef %id) #9
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call zeroext i1 @mi_remove_attr(ptr noundef %ni, ptr noundef %ni, ptr noundef nonnull %call) #9
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false1
  %3 = tail call i32 @llvm.bswap.i32(i32 %type)
  %call9101 = call ptr @al_enumerate(ptr noundef %ni, ptr noundef null) #9
  %tobool10.not102 = icmp eq ptr %call9101, null
  br i1 %tobool10.not102, label %if.end8.cleanup_crit_edge, label %next_le2.preheader.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

next_le2.preheader.lr.ph:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name_len)
  %tobool25.not = icmp eq i32 %name_len, 0
  %mul = shl i32 %name_len, 1
  %tobool31.not = icmp eq ptr %id, null
  %rno3.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %le51 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  br label %next_le2.preheader

for.cond.loopexit:                                ; preds = %land.lhs.true32.for.cond.loopexit_crit_edge, %land.lhs.true.for.cond.loopexit_crit_edge, %if.end19.for.cond.loopexit_crit_edge, %next_le2.for.cond.loopexit_crit_edge
  %call9 = call ptr @al_enumerate(ptr noundef %ni, ptr noundef %call9103) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.next_le2.preheader_crit_edge

for.cond.loopexit.next_le2.preheader_crit_edge:   ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_le2.preheader

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

next_le2.preheader:                               ; preds = %for.cond.loopexit.next_le2.preheader_crit_edge, %next_le2.preheader.lr.ph
  %call9103 = phi ptr [ %call9101, %next_le2.preheader.lr.ph ], [ %call9, %for.cond.loopexit.next_le2.preheader_crit_edge ]
  %name_len20 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call9103, i32 0, i32 2
  %name_off.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call9103, i32 0, i32 3
  %id33 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call9103, i32 0, i32 6
  %ref.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call9103, i32 0, i32 5
  %4 = ptrtoint ptr %call9103 to i32
  br label %next_le2

next_le2:                                         ; preds = %if.end48.next_le2_crit_edge, %next_le2.preheader
  %5 = ptrtoint ptr %call9103 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call9103, align 8
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %sub = sub i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %next_le2.for.cond.loopexit_crit_edge, label %if.end16

next_le2.for.cond.loopexit_crit_edge:             ; preds = %next_le2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

if.end16:                                         ; preds = %next_le2
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %type)
  %cmp17.not = icmp eq i32 %6, %type
  br i1 %cmp17.not, label %if.end19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %8 = ptrtoint ptr %name_len20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name_len20, align 2
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %name_len)
  %cmp21.not = icmp eq i32 %conv, %name_len
  br i1 %cmp21.not, label %if.end24, label %if.end19.for.cond.loopexit_crit_edge

if.end19.for.cond.loopexit_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

if.end24:                                         ; preds = %if.end19
  br i1 %tobool25.not, label %if.end24.if.end30_crit_edge, label %land.lhs.true

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end24
  %10 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name_off.i, align 1
  %conv.i = zext i8 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %call9103, i32 %conv.i
  %bcmp = call i32 @bcmp(ptr %add.ptr.i, ptr %name, i32 %mul) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool28.not = icmp eq i32 %bcmp, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.for.cond.loopexit_crit_edge

land.lhs.true.for.cond.loopexit_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end24.if.end30_crit_edge
  br i1 %tobool31.not, label %if.end30.if.end.i_crit_edge, label %land.lhs.true32

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true32:                                  ; preds = %if.end30
  %12 = ptrtoint ptr %id33 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id33, align 8
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp36.not = icmp eq i16 %13, %15
  br i1 %cmp36.not, label %land.lhs.true32.if.end.i_crit_edge, label %land.lhs.true32.for.cond.loopexit_crit_edge

land.lhs.true32.for.cond.loopexit_crit_edge:      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

land.lhs.true32.if.end.i_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true32.if.end.i_crit_edge, %if.end30.if.end.i_crit_edge
  %16 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %rno3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rno3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp eq i32 %18, %20
  br i1 %cmp.i, label %ni_load_mi.exit.thread, label %ni_load_mi.exit

ni_load_mi.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ni, ptr %mi, align 4
  br label %if.end43

ni_load_mi.exit:                                  ; preds = %if.end.i
  %call7.i = call i32 @ni_load_mi_ex(ptr noundef %ni, i32 noundef %18, ptr noundef nonnull %mi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool41.not = icmp eq i32 %call7.i, 0
  br i1 %tobool41.not, label %ni_load_mi.exit.if.end43_crit_edge, label %ni_load_mi.exit.cleanup_crit_edge

ni_load_mi.exit.cleanup_crit_edge:                ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ni_load_mi.exit.if.end43_crit_edge:               ; preds = %ni_load_mi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %ni_load_mi.exit.if.end43_crit_edge, %ni_load_mi.exit.thread
  %call44 = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef nonnull %call9103) #9
  %22 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mi, align 4
  %call45 = call ptr @mi_find_attr(ptr noundef %23, ptr noundef null, i32 noundef %type, ptr noundef %name, i32 noundef %name_len, ptr noundef %id) #9
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %if.end48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %24 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mi, align 4
  %call49 = call zeroext i1 @mi_remove_attr(ptr noundef %ni, ptr noundef %25, ptr noundef nonnull %call45) #9
  %26 = ptrtoint ptr %le51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %le51, align 4
  %28 = ptrtoint ptr %27 to i32
  %sub52 = sub i32 %4, %28
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %cmp55.not = icmp ult i32 %sub52, %30
  br i1 %cmp55.not, label %if.end48.next_le2_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48.next_le2_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_le2

cleanup:                                          ; preds = %if.end48.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %ni_load_mi.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %if.then.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ -2, %if.end43.cleanup_crit_edge ], [ %call7.i, %ni_load_mi.exit.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %for.cond.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mi_remove_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @al_remove_le(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_create_attr_list(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  %arr_move = alloca [7 x ptr], align 4
  %le_b = alloca [7 x ptr], align 4
  %rno = alloca i32, align 4
  %mi2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %arr_move) #9
  %2 = call ptr @memset(ptr %arr_move, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %le_b) #9
  %3 = call ptr @memset(ptr %le_b, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rno) #9
  %4 = ptrtoint ptr %rno to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi2) #9
  %5 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi2, align 4, !annotation !52
  %rno4 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %6 = ptrtoint ptr %rno4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rno4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %8 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mrec, align 8
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %record_size, align 8
  %add.i = add i32 %11, 1023
  %and.i = and i32 %add.i, -1024
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3136) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call9.i, i32 0, i32 5
  %12 = ptrtoint ptr %rno4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rno4, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ref, align 16
  %high.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call9.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %high.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %high.i, align 4
  %17 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mrec, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %seq.i, align 8
  %seq1.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call9.i, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %seq1.i, align 2
  %le8 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %le8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %le8, align 4
  %call10380 = tail call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef null) #9
  %tobool11.not381 = icmp eq ptr %call10380, null
  br i1 %tobool11.not381, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %not.cmp = xor i1 %cmp, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call10388 = phi ptr [ %call10380, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %le.0386 = phi ptr [ %call9.i, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %nb.0384 = phi i32 [ 0, %for.body.lr.ph ], [ %nb.1, %for.inc.for.body_crit_edge ]
  %free_b.0382 = phi i32 [ 0, %for.body.lr.ph ], [ %free_b.1, %for.inc.for.body_crit_edge ]
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %call10388, i32 0, i32 3
  %23 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %name_len, align 1
  %conv.i = zext i8 %24 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add1.i = add nuw nsw i32 %mul.i, 33
  %and.i362 = and i32 %add1.i, 1016
  %conv = trunc i32 %and.i362 to i16
  %25 = ptrtoint ptr %call10388 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call10388, align 8
  %27 = ptrtoint ptr %le.0386 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %le.0386, align 8
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0386, i32 0, i32 1
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %size, align 4
  %30 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %name_len, align 1
  %name_len15 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0386, i32 0, i32 2
  %32 = ptrtoint ptr %name_len15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %name_len15, align 2
  %name_off = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0386, i32 0, i32 3
  %33 = ptrtoint ptr %name_off to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 26, ptr %name_off, align 1
  %vcn = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0386, i32 0, i32 4
  %34 = ptrtoint ptr %vcn to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %vcn, align 8
  %35 = ptrtoint ptr %le8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %le8, align 4
  %cmp18.not = icmp eq ptr %le.0386, %36
  br i1 %cmp18.not, label %for.body.if.end25_crit_edge, label %if.then20

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ref21 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0386, i32 0, i32 5
  %ref24 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %ref24 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ref24, align 8
  %39 = ptrtoint ptr %ref21 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %ref21, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %for.body.if.end25_crit_edge
  %id = getelementptr inbounds %struct.ATTRIB, ptr %call10388, i32 0, i32 6
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %id, align 2
  %id26 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0386, i32 0, i32 6
  %42 = ptrtoint ptr %id26 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %id26, align 8
  %43 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool28.not = icmp eq i8 %44, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  %name = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %le.0386, i32 0, i32 7
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call10388, i32 0, i32 4
  %45 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %name_off.i, align 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #9
  %conv.i363 = zext i16 %47 to i32
  %add.ptr.i = getelementptr i8, ptr %call10388, i32 %conv.i363
  %conv32 = zext i8 %44 to i32
  %mul = shl nuw nsw i32 %conv32, 1
  %48 = call ptr @memcpy(ptr %name, ptr %add.ptr.i, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %nb.0384)
  %switch360.old = icmp ult i32 %nb.0384, 7
  br i1 %switch360.old, label %if.then29.if.then56_crit_edge, label %if.then29.for.inc_crit_edge

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then29.if.then56_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.else:                                          ; preds = %if.end25
  %49 = ptrtoint ptr %call10388 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call10388, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %50, label %if.else42 [
    i32 268435456, label %if.else.for.inc_crit_edge
    i32 536870912, label %if.else.for.inc_crit_edge400
  ]

if.else.for.inc_crit_edge400:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %50)
  %cmp46 = icmp ne i32 %50, -2147483648
  %or.cond = select i1 %not.cmp, i1 true, i1 %cmp46
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %nb.0384)
  %switch360 = icmp ult i32 %nb.0384, 7
  %or.cond361 = select i1 %or.cond, i1 %switch360, i1 false
  br i1 %or.cond361, label %if.else42.if.then56_crit_edge, label %if.else42.for.inc_crit_edge

if.else42.for.inc_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else42.if.then56_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %if.else42.if.then56_crit_edge, %if.then29.if.then56_crit_edge
  %arrayidx = getelementptr [7 x ptr], ptr %le_b, i32 0, i32 %nb.0384
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %le.0386, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %nb.0384, 1
  %arrayidx57 = getelementptr [7 x ptr], ptr %arr_move, i32 0, i32 %nb.0384
  %53 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call10388, ptr %arrayidx57, align 4
  %size58 = getelementptr inbounds %struct.ATTRIB, ptr %call10388, i32 0, i32 1
  %54 = ptrtoint ptr %size58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size58, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %add = add i32 %56, %free_b.0382
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %if.else42.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.else.for.inc_crit_edge400, %if.then29.for.inc_crit_edge
  %free_b.1 = phi i32 [ %add, %if.then56 ], [ %free_b.0382, %if.else.for.inc_crit_edge ], [ %free_b.0382, %if.else.for.inc_crit_edge400 ], [ %free_b.0382, %if.else42.for.inc_crit_edge ], [ %free_b.0382, %if.then29.for.inc_crit_edge ]
  %nb.1 = phi i32 [ %inc, %if.then56 ], [ %nb.0384, %if.else.for.inc_crit_edge ], [ %nb.0384, %if.else.for.inc_crit_edge400 ], [ %nb.0384, %if.else42.for.inc_crit_edge ], [ %nb.0384, %if.then29.for.inc_crit_edge ]
  %add.ptr = getelementptr i8, ptr %le.0386, i32 %and.i362
  %call10 = tail call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef nonnull %call10388) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %free_b.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %free_b.1, %for.inc.for.end_crit_edge ]
  %nb.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %nb.1, %for.inc.for.end_crit_edge ]
  %le.0.lcssa = phi ptr [ %call9.i, %if.end.for.end_crit_edge ], [ %add.ptr, %for.inc.for.end_crit_edge ]
  %57 = ptrtoint ptr %le.0.lcssa to i32
  %58 = ptrtoint ptr %le8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %le8, align 4
  %60 = ptrtoint ptr %59 to i32
  %sub = sub i32 %57, %60
  %size64 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %61 = ptrtoint ptr %size64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub, ptr %size64, align 4
  %used = getelementptr inbounds %struct.MFT_REC, ptr %9, i32 0, i32 5
  %62 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %used, align 8
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %add65 = add i32 %sub, 24
  %add66 = add i32 %add65, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %add66, i32 %11)
  %cmp67.not = icmp ugt i32 %add66, %11
  br i1 %cmp67.not, label %if.else70, label %if.end76.thread

if.else70:                                        ; preds = %for.end
  %sub71 = sub i32 %add66, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub71, i32 %free_b.0.lcssa)
  %cmp72 = icmp ugt i32 %sub71, %free_b.0.lcssa
  br i1 %cmp72, label %if.else70.out1_crit_edge, label %if.end76

if.else70.out1_crit_edge:                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end76:                                         ; preds = %if.else70
  %call78 = call i32 @ntfs_look_free_mft(ptr noundef %1, ptr noundef nonnull %rno, i1 noundef zeroext %cmp, ptr noundef %ni, ptr noundef nonnull %mi2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %while.cond.preheader, label %if.end76.out1_crit_edge

if.end76.out1_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end76.thread:                                  ; preds = %for.end
  %call78395 = call i32 @ntfs_look_free_mft(ptr noundef %1, ptr noundef nonnull %rno, i1 noundef zeroext %cmp, ptr noundef %ni, ptr noundef nonnull %mi2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78395)
  %tobool79.not396 = icmp eq i32 %call78395, 0
  br i1 %tobool79.not396, label %if.end76.thread.while.end_crit_edge, label %if.end76.thread.out1_crit_edge

if.end76.thread.out1_crit_edge:                   ; preds = %if.end76.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end76.thread.while.end_crit_edge:              ; preds = %if.end76.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.preheader:                             ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub71)
  %cmp82.not391 = icmp eq i32 %sub71, 0
  br i1 %cmp82.not391, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %to_free.1393 = phi i32 [ %sub162, %cleanup.while.body_crit_edge ], [ %sub71, %while.cond.preheader.while.body_crit_edge ]
  %nb.2392 = phi i32 [ %dec, %cleanup.while.body_crit_edge ], [ %nb.0.lcssa, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %nb.2392, -1
  %arrayidx84 = getelementptr [7 x ptr], ptr %arr_move, i32 0, i32 %dec
  %65 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx84, align 4
  %size85 = getelementptr inbounds %struct.ATTRIB, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %size85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size85, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %name_off87 = getelementptr inbounds %struct.ATTRIB, ptr %66, i32 0, i32 4
  %70 = ptrtoint ptr %name_off87 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %name_off87, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  %73 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mi2, align 4
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %66, align 8
  %conv89 = zext i16 %72 to i32
  %add.ptr90 = getelementptr i8, ptr %66, i32 %conv89
  %name_len91 = getelementptr inbounds %struct.ATTRIB, ptr %66, i32 0, i32 3
  %77 = ptrtoint ptr %name_len91 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %name_len91, align 1
  %call92 = call ptr @mi_insert_attr(ptr noundef %74, i32 noundef %76, ptr noundef %add.ptr90, i8 noundef zeroext %78, i32 noundef %69, i16 noundef zeroext %72) #9
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %do.end, label %while.body.if.end109_crit_edge, !prof !44

while.body.if.end109_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 9, ptr noundef null) #9
  br label %if.end109

if.end109:                                        ; preds = %do.end, %while.body.if.end109_crit_edge
  %79 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mi2, align 4
  %arrayidx116 = getelementptr [7 x ptr], ptr %le_b, i32 0, i32 %dec
  %81 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx116, align 4
  %ref117 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %82, i32 0, i32 5
  %rno.i364 = getelementptr inbounds %struct.mft_inode, ptr %80, i32 0, i32 4
  %83 = ptrtoint ptr %rno.i364 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rno.i364, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  %86 = ptrtoint ptr %ref117 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %ref117, align 4
  %high.i365 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %82, i32 0, i32 5, i32 1
  %87 = ptrtoint ptr %high.i365 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %high.i365, align 4
  %mrec.i366 = getelementptr inbounds %struct.mft_inode, ptr %80, i32 0, i32 2
  %88 = ptrtoint ptr %mrec.i366 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mrec.i366, align 4
  %seq.i367 = getelementptr inbounds %struct.MFT_REC, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %seq.i367 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %seq.i367, align 8
  %seq1.i368 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %82, i32 0, i32 5, i32 2
  %92 = ptrtoint ptr %seq1.i368 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %seq1.i368, align 2
  %id118 = getelementptr inbounds %struct.ATTRIB, ptr %call92, i32 0, i32 6
  %93 = ptrtoint ptr %id118 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %id118, align 2
  %id120 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %82, i32 0, i32 6
  %95 = ptrtoint ptr %id120 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %id120, align 8
  %96 = call ptr @memcpy(ptr %call92, ptr %66, i32 %69)
  %97 = load i16, ptr %id120, align 8
  store i16 %97, ptr %id118, align 2
  %call126 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %ni, ptr noundef %66) #9
  br i1 %call126, label %if.end109.if.end150_crit_edge, label %do.end144, !prof !43

if.end109.if.end150_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

do.end144:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 864, i32 noundef 9, ptr noundef null) #9
  br label %if.end150

if.end150:                                        ; preds = %do.end144, %if.end109.if.end150_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %to_free.1393, i32 %69)
  %cmp158.not = icmp ugt i32 %to_free.1393, %69
  br i1 %cmp158.not, label %if.end161, label %if.end150.while.end_crit_edge

if.end150.while.end_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end161:                                        ; preds = %if.end150
  %sub162 = sub i32 %to_free.1393, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool164.not = icmp eq i32 %dec, 0
  br i1 %tobool164.not, label %do.end182, label %if.end161.cleanup_crit_edge, !prof !44

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end182:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 869, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end182, %if.end161.cleanup_crit_edge
  %cmp82.not = icmp eq i32 %sub162, 0
  br i1 %cmp82.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end150.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge, %if.end76.thread.while.end_crit_edge
  %call200 = call ptr @mi_insert_attr(ptr noundef %ni, i32 noundef 536870912, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add65, i16 noundef zeroext 24) #9
  %tobool202.not = icmp eq ptr %call200, null
  br i1 %tobool202.not, label %do.end220, label %while.end.if.end.i372_crit_edge, !prof !44

while.end.if.end.i372_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i372

do.end220:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 874, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i372

if.end.i372:                                      ; preds = %do.end220, %while.end.if.end.i372_crit_edge
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call200, i32 0, i32 2
  %98 = ptrtoint ptr %non_res to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %non_res, align 8
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %call200, i32 0, i32 5
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %flags, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %sub)
  %101 = getelementptr inbounds %struct.ATTRIB, ptr %call200, i32 0, i32 7
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %100, ptr %101, align 8
  %data_off = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %101, i32 0, i32 1
  %103 = ptrtoint ptr %data_off to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 6144, ptr %data_off, align 4
  %flags234 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %101, i32 0, i32 2
  %104 = ptrtoint ptr %flags234 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %flags234, align 2
  %res = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %101, i32 0, i32 3
  %105 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %res, align 1
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call200, i32 0, i32 1
  %106 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %size.i, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %add65)
  %cmp.i371 = icmp ult i32 %108, %add65
  %add.ptr.i373 = getelementptr i8, ptr %call200, i32 24
  %spec.select = select i1 %cmp.i371, ptr null, ptr %add.ptr.i373
  %109 = ptrtoint ptr %le8 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %le8, align 4
  %111 = call ptr @memcpy(ptr %spec.select, ptr %110, i32 %sub)
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %112 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %dirty, align 4
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #9
  br label %out

out1:                                             ; preds = %if.end76.thread.out1_crit_edge, %if.end76.out1_crit_edge, %if.else70.out1_crit_edge
  %err.0 = phi i32 [ %call78, %if.end76.out1_crit_edge ], [ -22, %if.else70.out1_crit_edge ], [ %call78395, %if.end76.thread.out1_crit_edge ]
  %113 = ptrtoint ptr %le8 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %le8, align 4
  call void @kfree(ptr noundef %114) #9
  %115 = ptrtoint ptr %le8 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %le8, align 4
  %116 = ptrtoint ptr %size64 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %size64, align 4
  br label %out

out:                                              ; preds = %out1, %if.end.i372, %entry.out_crit_edge
  %err.1 = phi i32 [ %err.0, %out1 ], [ 0, %if.end.i372 ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rno) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %le_b) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %arr_move) #9
  ret i32 %err.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_look_free_mft(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mi_insert_attr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_expand_list(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  %mft_new.i = alloca i32, align 4
  %plen.i = alloca i32, align 4
  %mi_new.i = alloca ptr, align 4
  %ins_attr = alloca ptr, align 4
  %ref = alloca %struct.MFT_REF, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ins_attr) #9
  %0 = ptrtoint ptr %ins_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ins_attr, align 4, !annotation !52
  %rno = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %1 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #9
  %3 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %4 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ref, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %3, align 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %8 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mrec.i, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %seq.i, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %4, align 2
  %call77 = tail call ptr @al_enumerate(ptr noundef %ni, ptr noundef null) #9
  %tobool.not78 = icmp eq ptr %call77, null
  br i1 %tobool.not78, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call79 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call77, %entry.while.body_crit_edge ]
  %13 = ptrtoint ptr %call79 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %14)
  %cmp2 = icmp eq i32 %14, 268435456
  br i1 %cmp2, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = tail call ptr @al_enumerate(ptr noundef %ni, ptr noundef nonnull %call79) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %ref3 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call79, i32 0, i32 5
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %ref, ptr noundef dereferenceable(8) %ref3, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp ne i32 %bcmp, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %14)
  %cmp10 = icmp eq i32 %14, -2147483648
  %or.cond = select i1 %cmp, i1 %cmp10, i1 false
  %or.cond65 = select i1 %tobool5.not, i1 true, i1 %or.cond
  br i1 %or.cond65, label %if.end.while.cond.backedge_crit_edge, label %if.end12

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end12:                                         ; preds = %if.end
  %name_off.i.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call79, i32 0, i32 3
  %15 = ptrtoint ptr %name_off.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name_off.i.i, align 1
  %conv.i.i = zext i8 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call79, i32 %conv.i.i
  %name_len.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call79, i32 0, i32 2
  %17 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name_len.i, align 2
  %conv.i = zext i8 %18 to i32
  %id.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call79, i32 0, i32 6
  %call1.i = tail call ptr @mi_find_attr(ptr noundef %ni, ptr noundef null, i32 noundef %14, ptr noundef %add.ptr.i.i, i32 noundef %conv.i, ptr noundef %id.i) #9
  %tobool15.not = icmp eq ptr %call1.i, null
  br i1 %tobool15.not, label %if.end12.out_crit_edge, label %if.end17

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %if.end12
  %size = getelementptr inbounds %struct.ATTRIB, ptr %call1.i, i32 0, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call1.i, align 8
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call1.i, i32 0, i32 4
  %24 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %name_off.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  %conv.i66 = zext i16 %26 to i32
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %conv.i66
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %call1.i, i32 0, i32 3
  %27 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %name_len, align 1
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call1.i, i32 0, i32 2
  %29 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end17.attr_svcn.exit_crit_edge, label %cond.true.i

if.end17.attr_svcn.exit_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %attr_svcn.exit

cond.true.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %31 = getelementptr inbounds %struct.ATTRIB, ptr %call1.i, i32 0, i32 7
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #9
  %extract.t = trunc i64 %34 to i32
  br label %attr_svcn.exit

attr_svcn.exit:                                   ; preds = %cond.true.i, %if.end17.attr_svcn.exit_crit_edge
  %cond.i.off0 = phi i32 [ %extract.t, %cond.true.i ], [ 0, %if.end17.attr_svcn.exit_crit_edge ]
  %call21 = call fastcc i32 @ni_ins_attr_ext(ptr noundef %ni, ptr noundef nonnull %call79, i32 noundef %23, ptr noundef %add.ptr.i, i8 noundef zeroext %28, i32 noundef %21, i32 noundef %cond.i.off0, i16 noundef zeroext %26, i1 noundef zeroext true, ptr noundef nonnull %ins_attr, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %attr_svcn.exit.out_crit_edge

attr_svcn.exit.out_crit_edge:                     ; preds = %attr_svcn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %attr_svcn.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ins_attr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ins_attr, align 4
  %37 = call ptr @memcpy(ptr %36, ptr %call1.i, i32 %21)
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %id.i, align 8
  %40 = load ptr, ptr %ins_attr, align 4
  %id25 = getelementptr inbounds %struct.ATTRIB, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %id25 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %39, ptr %id25, align 2
  %call27 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %ni, ptr noundef nonnull %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp = icmp eq i32 %20, 0
  br label %out

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  br i1 %cmp, label %if.end30, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end30:                                         ; preds = %while.end
  %run1.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mft_new.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen.i) #9
  %42 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %plen.i, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi_new.i) #9
  %43 = ptrtoint ptr %mi_new.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi_new.i, align 4, !annotation !52
  %sbi3.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %44 = ptrtoint ptr %sbi3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sbi3.i, align 4
  %46 = ptrtoint ptr %mft_new.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %mft_new.i, align 4
  %mi_tree.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  %call.i = tail call ptr @rb_first(ptr noundef %mi_tree.i) #9
  %tobool.not142.i = icmp eq ptr %call.i, null
  br i1 %tobool.not142.i, label %if.end30.for.end.i_crit_edge, label %if.end30.for.body.i_crit_edge

if.end30.for.body.i_crit_edge:                    ; preds = %if.end30
  br label %for.body.i

if.end30.for.end.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end30.for.body.i_crit_edge
  %node.0143.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end30.for.body.i_crit_edge ]
  %call4.i = tail call ptr @mi_enum_attr(ptr noundef nonnull %node.0143.i, ptr noundef null) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rno.i67 = getelementptr inbounds %struct.mft_inode, ptr %node.0143.i, i32 0, i32 4
  %47 = ptrtoint ptr %rno.i67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rno.i67, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %call6.i = tail call ptr @rb_next(ptr noundef nonnull %node.0143.i) #9
  %tobool.not.i68 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i68, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i, %if.end30.for.end.i_crit_edge
  %node.0141.i = phi ptr [ %node.0143.i, %if.then.i ], [ null, %if.end30.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ]
  %mft_min.0.i = phi i32 [ %48, %if.then.i ], [ 0, %if.end30.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %call7.i = call i32 @ntfs_look_free_mft(ptr noundef %45, ptr noundef nonnull %mft_new.i, i1 noundef zeroext true, ptr noundef %ni, ptr noundef nonnull %mi_new.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %mft_new.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %mft_new.i, align 4
  br label %if.end13.i

if.else.i:                                        ; preds = %for.end.i
  %50 = ptrtoint ptr %mft_new.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mft_new.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mft_min.0.i, i32 %51)
  %cmp.i = icmp ugt i32 %mft_min.0.i, %51
  br i1 %cmp.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %mi_new.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mi_new.i, align 4
  br label %if.end13.i

if.else11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ntfs_mark_rec_free(ptr noundef %45, i32 noundef %51) #9
  %54 = ptrtoint ptr %mft_new.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %mft_new.i, align 4
  %55 = ptrtoint ptr %mi_new.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mi_new.i, align 4
  call void @rb_erase(ptr noundef %56, ptr noundef %mi_tree.i) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else11.i, %if.then10.i, %if.then9.i
  %mft_min.1.i = phi i32 [ %mft_min.0.i, %if.then9.i ], [ %51, %if.then10.i ], [ %mft_min.0.i, %if.else11.i ]
  %mi_min.1.i = phi ptr [ %node.0141.i, %if.then9.i ], [ %53, %if.then10.i ], [ %node.0141.i, %if.else11.i ]
  %call15.i = call ptr @mi_find_attr(ptr noundef %ni, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end13.i.out.i_crit_edge, label %if.end18.i

if.end13.i.out.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end18.i:                                       ; preds = %if.end13.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call15.i, i32 0, i32 1
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #9
  %evcn19.i = getelementptr inbounds %struct.ATTRIB, ptr %call15.i, i32 0, i32 7, i32 0, i32 1
  %60 = ptrtoint ptr %evcn19.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %evcn19.i, align 8
  %62 = call i64 @llvm.bswap.i64(i64 %61) #9
  %conv.i69 = trunc i64 %62 to i32
  %add.i = add i32 %mft_min.1.i, 1
  %conv20.i = zext i32 %add.i to i64
  %record_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %45, i32 0, i32 11
  %63 = ptrtoint ptr %record_bits.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %record_bits.i, align 1
  %sh_prom.i = zext i8 %64 to i64
  %shl.i = shl i64 %conv20.i, %sh_prom.i
  %cluster_mask.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %45, i32 0, i32 4
  %65 = ptrtoint ptr %cluster_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cluster_mask.i.i, align 4
  %conv.i.i70 = zext i32 %66 to i64
  %add.i.i = add i64 %shl.i, %conv.i.i70
  %cluster_bits.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %45, i32 0, i32 10
  %67 = ptrtoint ptr %cluster_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cluster_bits.i.i, align 8
  %sh_prom.i.i = zext i8 %68 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add23.i = add i32 %conv.i69, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.i, i32 %conv2.i.i)
  %cmp24.not.i = icmp ult i32 %add23.i, %conv2.i.i
  br i1 %cmp24.not.i, label %if.end27.i, label %if.end18.i.out.i_crit_edge

if.end18.i.out.i_crit_edge:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end27.i:                                       ; preds = %if.end18.i
  %add.ptr28.i = getelementptr i8, ptr %call15.i, i32 64
  %sub.i = add i32 %59, -64
  %call29.i = call i32 @run_pack(ptr noundef %run1.i, i32 noundef 0, i32 noundef %conv2.i.i, ptr noundef %add.ptr28.i, i32 noundef %sub.i, ptr noundef nonnull %plen.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end27.i.out.i_crit_edge, label %if.end33.i

if.end27.i.out.i_crit_edge:                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end33.i:                                       ; preds = %if.end27.i
  %69 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %conv2.i.i)
  %cmp35.i = icmp ult i32 %70, %conv2.i.i
  br i1 %cmp35.i, label %if.end33.i.out.i_crit_edge, label %if.end38.i

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end38.i:                                       ; preds = %if.end33.i
  %add34.i = add nuw i32 %call29.i, 7
  %and.i = and i32 %add34.i, -8
  %sub39.i = add i32 %conv2.i.i, -1
  %conv40.i = zext i32 %sub39.i to i64
  %71 = call i64 @llvm.bswap.i64(i64 %conv40.i) #9
  %72 = ptrtoint ptr %evcn19.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %evcn19.i, align 8
  %add42.i = add nuw i32 %and.i, 64
  %73 = call i32 @llvm.bswap.i32(i32 %add42.i) #9
  %74 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %size.i, align 4
  %sub44.i = sub i32 %59, %and.i
  %sub45.i = add i32 %sub44.i, -64
  %75 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mrec.i, align 8
  %used.i = getelementptr inbounds %struct.MFT_REC, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %used.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #9
  %sub.i.i = sub i32 %79, %sub45.i
  %80 = call i32 @llvm.bswap.i32(i32 %sub.i.i) #9
  %81 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %used.i, align 4
  %sub48.i = sub i32 %add23.i, %conv2.i.i
  %record_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %45, i32 0, i32 8
  %82 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %record_size.i, align 8
  %call49.i = call i32 @run_pack(ptr noundef %run1.i, i32 noundef %conv2.i.i, i32 noundef %sub48.i, ptr noundef null, i32 noundef %83, ptr noundef nonnull %plen.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %if.end38.i.out.i_crit_edge, label %if.end53.i

if.end38.i.out.i_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end53.i:                                       ; preds = %if.end38.i
  %add54.i = add nuw i32 %call49.i, 7
  %and55.i = and i32 %add54.i, -8
  %84 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %sub48.i)
  %cmp58.i = icmp ult i32 %85, %sub48.i
  br i1 %cmp58.i, label %if.end53.i.out.i_crit_edge, label %if.end61.i

if.end53.i.out.i_crit_edge:                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end61.i:                                       ; preds = %if.end53.i
  %add62.i = add nuw i32 %and55.i, 64
  %call63.i = call fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef %mi_min.1.i, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add62.i, i16 noundef zeroext 64, i32 noundef %conv2.i.i, ptr noundef null) #9
  %tobool64.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool64.not.i, label %if.end61.i.out.i_crit_edge, label %if.end66.i

if.end61.i.out.i_crit_edge:                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end66.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  %non_res.i72 = getelementptr inbounds %struct.ATTRIB, ptr %call63.i, i32 0, i32 2
  %86 = ptrtoint ptr %non_res.i72 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %non_res.i72, align 8
  %name_off.i73 = getelementptr inbounds %struct.ATTRIB, ptr %call63.i, i32 0, i32 4
  %87 = ptrtoint ptr %name_off.i73 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 16384, ptr %name_off.i73, align 2
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call63.i, i32 0, i32 5
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %call63.i, i32 64
  %call70.i = call i32 @run_pack(ptr noundef %run1.i, i32 noundef %conv2.i.i, i32 noundef %sub48.i, ptr noundef %add.ptr69.i, i32 noundef %and55.i, ptr noundef nonnull %plen.i) #9
  %conv71.i = and i64 %shr.i.i, 4294967295
  %89 = call i64 @llvm.bswap.i64(i64 %conv71.i) #9
  %90 = getelementptr inbounds %struct.ATTRIB, ptr %call63.i, i32 0, i32 7
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %89, ptr %90, align 8
  %conv73.i = and i64 %62, 4294967295
  %92 = call i64 @llvm.bswap.i64(i64 %conv73.i) #9
  %evcn74.i = getelementptr inbounds %struct.ATTRIB, ptr %call63.i, i32 0, i32 7, i32 0, i32 1
  %93 = ptrtoint ptr %evcn74.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %evcn74.i, align 8
  %run_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call63.i, i32 0, i32 7, i32 0, i32 2
  %94 = ptrtoint ptr %run_off.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 16384, ptr %run_off.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.end66.i, %if.end61.i.out.i_crit_edge, %if.end53.i.out.i_crit_edge, %if.end38.i.out.i_crit_edge, %if.end33.i.out.i_crit_edge, %if.end27.i.out.i_crit_edge, %if.end18.i.out.i_crit_edge, %if.end13.i.out.i_crit_edge
  %done.0.i = phi i32 [ 0, %if.end27.i.out.i_crit_edge ], [ %sub45.i, %if.end38.i.out.i_crit_edge ], [ %sub45.i, %if.end66.i ], [ 0, %if.end13.i.out.i_crit_edge ], [ 0, %if.end18.i.out.i_crit_edge ], [ 0, %if.end33.i.out.i_crit_edge ], [ %sub45.i, %if.end53.i.out.i_crit_edge ], [ %sub45.i, %if.end61.i.out.i_crit_edge ]
  %err.0.i = phi i32 [ %call29.i, %if.end27.i.out.i_crit_edge ], [ %call49.i, %if.end38.i.out.i_crit_edge ], [ 0, %if.end66.i ], [ -22, %if.end13.i.out.i_crit_edge ], [ -22, %if.end18.i.out.i_crit_edge ], [ -22, %if.end33.i.out.i_crit_edge ], [ -22, %if.end53.i.out.i_crit_edge ], [ -22, %if.end61.i.out.i_crit_edge ]
  %95 = ptrtoint ptr %mft_new.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mft_new.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool75.not.i = icmp eq i32 %96, 0
  br i1 %tobool75.not.i, label %out.i.ni_expand_mft_list.exit_crit_edge, label %if.then76.i

out.i.ni_expand_mft_list.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_expand_mft_list.exit

if.then76.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ntfs_mark_rec_free(ptr noundef %45, i32 noundef %96) #9
  %97 = ptrtoint ptr %mi_new.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mi_new.i, align 4
  call void @rb_erase(ptr noundef %98, ptr noundef %mi_tree.i) #9
  br label %ni_expand_mft_list.exit

ni_expand_mft_list.exit:                          ; preds = %if.then76.i, %out.i.ni_expand_mft_list.exit_crit_edge
  %99 = or i32 %err.0.i, %done.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %100 = icmp eq i32 %99, 0
  %cond.i74 = select i1 %100, i32 -95, i32 %err.0.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi_new.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mft_new.i) #9
  br label %out

out:                                              ; preds = %ni_expand_mft_list.exit, %while.end.out_crit_edge, %if.end24, %attr_svcn.exit.out_crit_edge, %if.end12.out_crit_edge
  %err.0 = phi i32 [ %call21, %attr_svcn.exit.out_crit_edge ], [ 0, %if.end24 ], [ %cond.i74, %ni_expand_mft_list.exit ], [ -22, %if.end12.out_crit_edge ], [ -27, %while.end.out_crit_edge ]
  %done.0 = phi i1 [ true, %attr_svcn.exit.out_crit_edge ], [ %phi.cmp, %if.end24 ], [ true, %ni_expand_mft_list.exit ], [ true, %if.end12.out_crit_edge ], [ true, %while.end.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool35.not = icmp eq i32 %err.0, 0
  %or.cond64 = select i1 %tobool35.not, i1 %done.0, i1 false
  %cond = select i1 %or.cond64, i32 -95, i32 %err.0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ins_attr) #9
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_ins_attr_ext(ptr noundef %ni, ptr noundef %le, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i32 noundef %svcn, i16 noundef zeroext %name_off, i1 noundef zeroext %force_ext, ptr noundef writeonly %ins_attr, ptr noundef writeonly %ins_mi, ptr noundef %ins_le) unnamed_addr #0 align 64 {
entry:
  %mi = alloca ptr, align 4
  %rno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #9
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rno) #9
  %1 = ptrtoint ptr %rno to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rno, align 4, !annotation !52
  %sbi2 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %2 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi2, align 4
  %rno4 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %4 = ptrtoint ptr %rno4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rno4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %type)
  %cmp6 = icmp eq i32 %type, -2147483648
  %or.cond = and i1 %cmp6, %cmp
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %name_len)
  %tobool7.not = icmp eq i8 %name_len, 0
  %spec.select = and i1 %tobool7.not, %or.cond
  %max_bytes_per_attr = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %max_bytes_per_attr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_bytes_per_attr, align 8
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %asize)
  %cmp9 = icmp ult i32 %conv, %asize
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %type, label %lor.lhs.false15 [
    i32 268435456, label %if.end.cleanup_crit_edge
    i32 536870912, label %if.end.cleanup_crit_edge187
  ]

if.end.cleanup_crit_edge187:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false15:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp18 = icmp eq i32 %5, 2
  br i1 %cmp18, label %lor.lhs.false15.cleanup_crit_edge, label %if.end21

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false15
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  %call = tail call i32 @ni_create_attr_list(ptr noundef %ni)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then23.if.end27_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  br i1 %spec.select, label %cond.true, label %if.end27.cond.end_crit_edge

if.end27.cond.end_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %conv30 = zext i32 %svcn to i64
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %12 to i64
  %shl = shl i64 %conv30, %sh_prom
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end27.cond.end_crit_edge
  %cond = phi i64 [ %shl, %cond.true ], [ 0, %if.end27.cond.end_crit_edge ]
  br i1 %force_ext, label %cond.end.insert_ext_crit_edge, label %if.end34

cond.end.insert_ext_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %insert_ext

if.end34:                                         ; preds = %cond.end
  %call35 = tail call i32 @ni_load_all_mi(ptr noundef %ni)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %mi_tree = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  %call39 = tail call ptr @rb_first(ptr noundef %mi_tree) #9
  %13 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %13)
  %mi.promoted = load ptr, ptr %mi, align 4
  %tobool40.not180 = icmp eq ptr %call39, null
  br i1 %tobool40.not180, label %if.end38.insert_ext.loopexit_crit_edge, label %for.body.lr.ph

if.end38.insert_ext.loopexit_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %insert_ext.loopexit

for.body.lr.ph:                                   ; preds = %if.end38
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %type)
  %cmp63.not = icmp eq i32 %type, 805306368
  %or.cond179 = and i1 %cmp63.not, %tobool7.not
  %conv69 = zext i8 %name_len to i32
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.0181 = phi ptr [ %call39, %for.body.lr.ph ], [ %call88, %for.inc.for.body_crit_edge ]
  br i1 %spec.select, label %land.lhs.true43, label %for.body.if.end55_crit_edge

for.body.if.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true43:                                  ; preds = %for.body
  %call44 = tail call ptr @mi_enum_attr(ptr noundef nonnull %node.0181, ptr noundef null) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %lor.lhs.false46, label %land.lhs.true43.for.inc_crit_edge

land.lhs.true43.for.inc_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false46:                                  ; preds = %land.lhs.true43
  %rno47 = getelementptr inbounds %struct.mft_inode, ptr %node.0181, i32 0, i32 4
  %14 = ptrtoint ptr %rno47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rno47, align 4
  %conv48 = zext i32 %15 to i64
  %16 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %record_bits, align 1
  %sh_prom50 = zext i8 %17 to i64
  %shl51 = shl i64 %conv48, %sh_prom50
  call void @__sanitizer_cov_trace_cmp8(i64 %cond, i64 %shl51)
  %cmp52.not = icmp ugt i64 %cond, %shl51
  br i1 %cmp52.not, label %lor.lhs.false46.if.end55_crit_edge, label %lor.lhs.false46.for.inc_crit_edge

lor.lhs.false46.for.inc_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false46.if.end55_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %lor.lhs.false46.if.end55_crit_edge, %for.body.if.end55_crit_edge
  br i1 %cmp, label %land.lhs.true58, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true58:                                  ; preds = %if.end55
  %call59 = tail call ptr @mi_find_attr(ptr noundef nonnull %node.0181, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %land.lhs.true58.if.end62_crit_edge, label %land.lhs.true58.for.inc_crit_edge

land.lhs.true58.for.inc_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true58.if.end62_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true58.if.end62_crit_edge, %if.end55.if.end62_crit_edge
  br i1 %or.cond179, label %if.end62.if.end73_crit_edge, label %land.lhs.true68

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

land.lhs.true68:                                  ; preds = %if.end62
  %call70 = tail call ptr @mi_find_attr(ptr noundef nonnull %node.0181, ptr noundef null, i32 noundef %type, ptr noundef %name, i32 noundef %conv69, ptr noundef null) #9
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %land.lhs.true68.if.end73_crit_edge, label %land.lhs.true68.for.inc_crit_edge

land.lhs.true68.for.inc_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true68.if.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true68.if.end73_crit_edge, %if.end62.if.end73_crit_edge
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %node.0181, i32 0, i32 2
  %18 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mrec, align 4
  %used = getelementptr inbounds %struct.MFT_REC, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %add = add i32 %22, %asize
  %23 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %record_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp74 = icmp ugt i32 %add, %24
  br i1 %cmp74, label %if.end73.for.inc_crit_edge, label %if.end77

if.end73.for.inc_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end77:                                         ; preds = %if.end73
  %call78 = tail call fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef nonnull %node.0181, ptr noundef %le, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off, i32 noundef %svcn, ptr noundef %ins_le)
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.for.inc_crit_edge, label %if.end81

if.end77.for.inc_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end81:                                         ; preds = %if.end77
  %25 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %node.0181, ptr %mi, align 4
  %tobool82.not = icmp eq ptr %ins_attr, null
  br i1 %tobool82.not, label %if.end81.if.end84_crit_edge, label %if.then83

if.end81.if.end84_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %ins_attr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call78, ptr %ins_attr, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81.if.end84_crit_edge
  %tobool85.not = icmp eq ptr %ins_mi, null
  br i1 %tobool85.not, label %if.end84.cleanup_crit_edge, label %if.then86

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mi, align 4
  %29 = ptrtoint ptr %ins_mi to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %ins_mi, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end77.for.inc_crit_edge, %if.end73.for.inc_crit_edge, %land.lhs.true68.for.inc_crit_edge, %land.lhs.true58.for.inc_crit_edge, %lor.lhs.false46.for.inc_crit_edge, %land.lhs.true43.for.inc_crit_edge
  %call88 = tail call ptr @rb_next(ptr noundef nonnull %node.0181) #9
  %tobool40.not = icmp eq ptr %call88, null
  br i1 %tobool40.not, label %for.inc.insert_ext.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.insert_ext.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %insert_ext.loopexit

insert_ext.loopexit:                              ; preds = %for.inc.insert_ext.loopexit_crit_edge, %if.end38.insert_ext.loopexit_crit_edge
  %.lcssa = phi ptr [ %mi.promoted, %if.end38.insert_ext.loopexit_crit_edge ], [ %node.0181, %for.inc.insert_ext.loopexit_crit_edge ]
  %30 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.lcssa, ptr %mi, align 4
  br label %insert_ext

insert_ext:                                       ; preds = %insert_ext.loopexit, %cond.end.insert_ext_crit_edge
  %call90 = call i32 @ntfs_look_free_mft(ptr noundef %3, ptr noundef nonnull %rno, i1 noundef zeroext %spec.select, ptr noundef %ni, ptr noundef nonnull %mi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %insert_ext.cleanup_crit_edge

insert_ext.cleanup_crit_edge:                     ; preds = %insert_ext
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end93:                                         ; preds = %insert_ext
  br i1 %spec.select, label %land.lhs.true96, label %if.end93.if.end105_crit_edge

if.end93.if.end105_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

land.lhs.true96:                                  ; preds = %if.end93
  %31 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rno, align 4
  %conv97 = zext i32 %32 to i64
  %record_bits98 = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %record_bits98 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %record_bits98, align 1
  %sh_prom100 = zext i8 %34 to i64
  %shl101 = shl i64 %conv97, %sh_prom100
  call void @__sanitizer_cov_trace_cmp8(i64 %cond, i64 %shl101)
  %cmp102.not = icmp ugt i64 %cond, %shl101
  br i1 %cmp102.not, label %land.lhs.true96.if.end105_crit_edge, label %land.lhs.true96.out1_crit_edge

land.lhs.true96.out1_crit_edge:                   ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

land.lhs.true96.if.end105_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.end105:                                        ; preds = %land.lhs.true96.if.end105_crit_edge, %if.end93.if.end105_crit_edge
  %35 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mi, align 4
  %call106 = call fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef %36, ptr noundef %le, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off, i32 noundef %svcn, ptr noundef %ins_le)
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %out2, label %if.end109

if.end109:                                        ; preds = %if.end105
  %tobool110.not = icmp eq ptr %ins_attr, null
  br i1 %tobool110.not, label %if.end109.if.end112_crit_edge, label %if.then111

if.end109.if.end112_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %ins_attr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call106, ptr %ins_attr, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end109.if.end112_crit_edge
  %tobool113.not = icmp eq ptr %ins_mi, null
  br i1 %tobool113.not, label %if.end112.cleanup_crit_edge, label %if.then114

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mi, align 4
  %40 = ptrtoint ptr %ins_mi to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ins_mi, align 4
  br label %cleanup

out2:                                             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mi, align 4
  %mi_tree.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  call void @rb_erase(ptr noundef %42, ptr noundef %mi_tree.i) #9
  %43 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mi, align 4
  call void @mi_put(ptr noundef %44) #9
  br label %out1

out1:                                             ; preds = %out2, %land.lhs.true96.out1_crit_edge
  %45 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rno, align 4
  call void @ntfs_mark_rec_free(ptr noundef %3, i32 noundef %46) #9
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.then114, %if.end112.cleanup_crit_edge, %insert_ext.cleanup_crit_edge, %if.then86, %if.end84.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge187, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then86 ], [ 0, %if.end84.cleanup_crit_edge ], [ 0, %if.then114 ], [ 0, %if.end112.cleanup_crit_edge ], [ %call90, %insert_ext.cleanup_crit_edge ], [ -22, %out1 ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call, %if.then23.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge187 ], [ -22, %lor.lhs.false15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rno) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_insert_nonresident(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %run, i32 noundef %svcn, i32 noundef %len, i16 noundef zeroext %flags, ptr noundef writeonly %new_attr, ptr noundef %mi) local_unnamed_addr #0 align 64 {
entry:
  %plen = alloca i32, align 4
  %attr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen) #9
  %0 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %plen, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #9
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr, align 4, !annotation !52
  %conv = zext i16 %flags to i32
  %and = and i32 %conv, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %svcn)
  %tobool1.not = icmp eq i32 %svcn, 0
  %spec.select = and i1 %tobool1.not, %tobool.not
  %conv2 = zext i8 %name_len to i32
  %mul = shl nuw nsw i32 %conv2, 1
  %add = add nuw nsw i32 %mul, 7
  %and3 = and i32 %add, 1016
  %cond = select i1 %spec.select, i32 72, i32 64
  %add6 = add nuw nsw i32 %cond, %and3
  %sbi8 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %2 = ptrtoint ptr %sbi8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi8, align 4
  %max_bytes_per_attr = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %max_bytes_per_attr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_bytes_per_attr, align 8
  %conv9 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv9, %add6
  %call = call i32 @run_pack(ptr noundef %run, i32 noundef %svcn, i32 noundef %len, ptr noundef null, i32 noundef %sub, ptr noundef nonnull %plen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %add11 = add nuw i32 %call, 7
  %and12 = and i32 %add11, -8
  %6 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %len)
  %cmp13 = icmp ult i32 %7, %len
  br i1 %cmp13, label %if.end.out_crit_edge, label %if.end16

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end
  %add17 = add nuw i32 %and12, %add6
  %8 = ptrtoint ptr %max_bytes_per_attr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_bytes_per_attr, align 8
  %conv19 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %conv19)
  %cmp20 = icmp ugt i32 %add17, %conv19
  br i1 %cmp20, label %if.end16.out_crit_edge, label %if.end23

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end23:                                         ; preds = %if.end16
  %conv24 = trunc i32 %cond to i16
  %call25 = call fastcc i32 @ni_insert_attr(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %add17, i16 noundef zeroext %conv24, i32 noundef %svcn, ptr noundef nonnull %attr, ptr noundef %mi, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end28:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr, align 4
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %non_res to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %non_res, align 8
  %13 = shl nuw nsw i16 %conv24, 8
  %name_off30 = getelementptr inbounds %struct.ATTRIB, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %name_off30 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %name_off30, align 2
  %flags31 = getelementptr inbounds %struct.ATTRIB, ptr %11, i32 0, i32 5
  %15 = ptrtoint ptr %flags31 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %flags, ptr %flags31, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %add6
  %call32 = call i32 @run_pack(ptr noundef %run, i32 noundef %svcn, i32 noundef %len, ptr noundef %add.ptr, i32 noundef %and12, ptr noundef nonnull %plen) #9
  %conv33 = zext i32 %svcn to i64
  %16 = call i64 @llvm.bswap.i64(i64 %conv33)
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr, align 4
  %19 = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %16, ptr %19, align 8
  %conv36 = zext i32 %len to i64
  %add37 = add nsw i64 %conv33, -1
  %sub38 = add nsw i64 %add37, %conv36
  %21 = call i64 @llvm.bswap.i64(i64 %sub38)
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %evcn to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %evcn, align 8
  %tobool39.not = icmp eq ptr %new_attr, null
  br i1 %tobool39.not, label %if.end28.if.end41_crit_edge, label %if.then40

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %new_attr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %new_attr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end28.if.end41_crit_edge
  %conv42 = zext i32 %add6 to i64
  %24 = call i64 @llvm.bswap.i64(i64 %conv42)
  %run_off43 = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 2
  %25 = ptrtoint ptr %run_off43 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %run_off43, align 8
  br i1 %tobool1.not, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_size91 = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 5
  %26 = call ptr @memset(ptr %alloc_size91, i32 0, i32 24)
  br label %out

cond.end:                                         ; preds = %if.end41
  %27 = ptrtoint ptr %sbi8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sbi8, align 4
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %30 to i64
  %shl = shl i64 %conv36, %sh_prom
  %31 = call i64 @llvm.bswap.i64(i64 %shl)
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 5
  %32 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %alloc_size, align 8
  %data_size = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 6
  %33 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %31, ptr %data_size, align 8
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 7
  %34 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %31, ptr %valid_size, align 8
  br i1 %spec.select, label %if.then53, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then53:                                        ; preds = %cond.end
  %and55 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then53.if.end58_crit_edge, label %if.then57

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 3
  %35 = ptrtoint ptr %c_unit to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %c_unit, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.then53.if.end58_crit_edge
  %36 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %alloc_size, align 8
  %total_size = getelementptr inbounds %struct.ATTRIB, ptr %18, i32 0, i32 7, i32 0, i32 8
  %38 = ptrtoint ptr %total_size to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %total_size, align 8
  br label %out

out:                                              ; preds = %if.end58, %cond.end.out_crit_edge, %cond.end.thread, %if.end23.out_crit_edge, %if.end16.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call25, %if.end23.out_crit_edge ], [ 0, %if.end58 ], [ 0, %cond.end.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end16.out_crit_edge ], [ 0, %cond.end.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_pack(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_insert_attr(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off, i32 noundef %svcn, ptr noundef %ins_attr, ptr noundef %ins_mi, ptr noundef %ins_le) unnamed_addr #0 align 64 {
entry:
  %eattr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eattr) #9
  %2 = ptrtoint ptr %eattr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %eattr, align 4, !annotation !52
  %rno = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %3 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %5 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrec, align 8
  %used4 = getelementptr inbounds %struct.MFT_REC, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %used4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %used4, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %record_size, align 8
  %sub = sub i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %type)
  %cmp5.not = icmp ne i32 %type, 536870912
  %12 = and i1 %cmp5.not, %cmp
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %sub, i32 91)
  %free.0 = select i1 %12, i32 %13, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %free.0, i32 %asize)
  %cmp10.not = icmp ult i32 %free.0, %asize
  br i1 %cmp10.not, label %entry.if.end23_crit_edge, label %if.then11

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then11:                                        ; preds = %entry
  %call = tail call fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef %ni, ptr noundef null, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off, i32 noundef %svcn, ptr noundef %ins_le)
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.then11.if.end23_crit_edge, label %if.then14

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then14:                                        ; preds = %if.then11
  %tobool15.not = icmp eq ptr %ins_attr, null
  br i1 %tobool15.not, label %if.then14.if.end17_crit_edge, label %if.then16

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ins_attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %ins_attr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %ins_mi, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %ins_mi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ni, ptr %ins_mi, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.then11.if.end23_crit_edge, %entry.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %type)
  %cmp25.not = icmp eq i32 %type, -2147483648
  %16 = or i32 %4, %svcn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %cmp25.not, %17
  br i1 %18, label %while.cond.preheader, label %if.then28

while.cond.preheader:                             ; preds = %if.end23
  %call32161165 = tail call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef null) #9
  %tobool33.not162166 = icmp eq ptr %call32161165, null
  br i1 %tobool33.not162166, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body.lr.ph_crit_edge

while.cond.preheader.while.body.lr.ph_crit_edge:  ; preds = %while.cond.preheader
  br label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call fastcc i32 @ni_ins_attr_ext(ptr noundef %ni, ptr noundef null, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i32 noundef %svcn, i16 noundef zeroext %name_off, i1 noundef zeroext false, ptr noundef %ins_attr, ptr noundef %ins_mi, ptr noundef %ins_le)
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge.while.body_crit_edge
  %call32163 = phi ptr [ %call32161168, %while.body.lr.ph ], [ %call32, %while.cond.backedge.while.body_crit_edge ]
  %19 = ptrtoint ptr %call32163 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call32163, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %20, label %if.end41 [
    i32 268435456, label %while.body.while.cond.backedge_crit_edge
    i32 536870912, label %while.body.while.cond.backedge_crit_edge191
  ]

while.body.while.cond.backedge_crit_edge191:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge191
  %call32 = tail call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef nonnull %call32163) #9
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end41:                                         ; preds = %while.body
  %size = getelementptr inbounds %struct.ATTRIB, ptr %call32163, i32 0, i32 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add = add i32 %24, %max_free.0.ph167
  %call32161 = tail call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef nonnull %call32163) #9
  %tobool33.not162 = icmp eq ptr %call32161, null
  br i1 %tobool33.not162, label %if.end41.while.end_crit_edge, label %if.end41.while.body.lr.ph_crit_edge

if.end41.while.body.lr.ph_crit_edge:              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end41.while.body.lr.ph_crit_edge, %while.cond.preheader.while.body.lr.ph_crit_edge
  %call32161168 = phi ptr [ %call32161, %if.end41.while.body.lr.ph_crit_edge ], [ %call32161165, %while.cond.preheader.while.body.lr.ph_crit_edge ]
  %max_free.0.ph167 = phi i32 [ %add, %if.end41.while.body.lr.ph_crit_edge ], [ %free.0, %while.cond.preheader.while.body.lr.ph_crit_edge ]
  br label %while.body

while.end:                                        ; preds = %if.end41.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %max_free.0.ph.lcssa = phi i32 [ %free.0, %while.cond.preheader.while.end_crit_edge ], [ %max_free.0.ph167, %while.cond.backedge.while.end_crit_edge ], [ %add, %if.end41.while.end_crit_edge ]
  %add42 = add i32 %asize, 91
  call void @__sanitizer_cov_trace_cmp4(i32 %max_free.0.ph.lcssa, i32 %add42)
  %cmp43 = icmp ult i32 %max_free.0.ph.lcssa, %add42
  br i1 %cmp43, label %while.end.cleanup_crit_edge, label %for.cond.preheader

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %while.end
  %call47170 = call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef null) #9
  %tobool48.not171 = icmp eq ptr %call47170, null
  br i1 %tobool48.not171, label %for.cond.preheader.cleanup_crit_edge, label %if.end50.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50.lr.ph:                                   ; preds = %for.cond.preheader
  %size58 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  br label %if.end50

if.end50:                                         ; preds = %for.cond.backedge.if.end50_crit_edge, %if.end50.lr.ph
  %call47172 = phi ptr [ %call47170, %if.end50.lr.ph ], [ %call47, %for.cond.backedge.if.end50_crit_edge ]
  %25 = ptrtoint ptr %call47172 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call47172, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %26, label %if.end57 [
    i32 268435456, label %if.end50.for.cond.backedge_crit_edge
    i32 536870912, label %if.end50.for.cond.backedge_crit_edge192
  ]

if.end50.for.cond.backedge_crit_edge192:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end50.for.cond.backedge_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end75.for.cond.backedge_crit_edge, %if.end50.for.cond.backedge_crit_edge, %if.end50.for.cond.backedge_crit_edge192
  %call47 = call ptr @mi_enum_attr(ptr noundef %ni, ptr noundef nonnull %call47172) #9
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %for.cond.backedge.cleanup_crit_edge, label %for.cond.backedge.if.end50_crit_edge

for.cond.backedge.if.end50_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %28 = ptrtoint ptr %size58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool59.not = icmp eq i32 %29, 0
  br i1 %tobool59.not, label %if.end57.if.end65_crit_edge, label %if.then60

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then60:                                        ; preds = %if.end57
  %call61 = call ptr @al_find_le(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %call47172) #9
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %if.then60.if.end65_crit_edge

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %if.then60.if.end65_crit_edge, %if.end57.if.end65_crit_edge
  %le.0 = phi ptr [ %call61, %if.then60.if.end65_crit_edge ], [ null, %if.end57.if.end65_crit_edge ]
  %size66 = getelementptr inbounds %struct.ATTRIB, ptr %call47172, i32 0, i32 1
  %30 = ptrtoint ptr %size66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size66, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %name_off67 = getelementptr inbounds %struct.ATTRIB, ptr %call47172, i32 0, i32 4
  %33 = ptrtoint ptr %name_off67 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %name_off67, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %call47172 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call47172, align 8
  %conv = zext i16 %35 to i32
  %add.ptr = getelementptr i8, ptr %call47172, i32 %conv
  %name_len69 = getelementptr inbounds %struct.ATTRIB, ptr %call47172, i32 0, i32 3
  %38 = ptrtoint ptr %name_len69 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %name_len69, align 1
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call47172, i32 0, i32 2
  %40 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.end65.attr_svcn.exit_crit_edge, label %cond.true.i

if.end65.attr_svcn.exit_crit_edge:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %attr_svcn.exit

cond.true.i:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %42 = getelementptr inbounds %struct.ATTRIB, ptr %call47172, i32 0, i32 7
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %42, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44) #9
  %extract.t = trunc i64 %45 to i32
  br label %attr_svcn.exit

attr_svcn.exit:                                   ; preds = %cond.true.i, %if.end65.attr_svcn.exit_crit_edge
  %cond.i.off0 = phi i32 [ %extract.t, %cond.true.i ], [ 0, %if.end65.attr_svcn.exit_crit_edge ]
  %call72 = call fastcc i32 @ni_ins_attr_ext(ptr noundef %ni, ptr noundef %le.0, i32 noundef %37, ptr noundef %add.ptr, i8 noundef zeroext %39, i32 noundef %32, i32 noundef %cond.i.off0, i16 noundef zeroext %35, i1 noundef zeroext false, ptr noundef nonnull %eattr, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %attr_svcn.exit.cleanup_crit_edge

attr_svcn.exit.cleanup_crit_edge:                 ; preds = %attr_svcn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %attr_svcn.exit
  %46 = ptrtoint ptr %eattr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eattr, align 4
  %id76 = getelementptr inbounds %struct.ATTRIB, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %id76 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %id76, align 2
  %50 = call ptr @memcpy(ptr %47, ptr %call47172, i32 %32)
  %51 = load ptr, ptr %eattr, align 4
  %id77 = getelementptr inbounds %struct.ATTRIB, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %id77 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %49, ptr %id77, align 2
  %call79 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %ni, ptr noundef nonnull %call47172) #9
  %53 = ptrtoint ptr %call47172 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call47172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp81 = icmp eq i32 %54, -1
  br i1 %cmp81, label %if.end75.cleanup_crit_edge, label %if.end75.for.cond.backedge_crit_edge

if.end75.for.cond.backedge_crit_edge:             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end75.cleanup_crit_edge, %attr_svcn.exit.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %for.cond.backedge.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then28, %if.then19, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.then28 ], [ 0, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ %call72, %attr_svcn.exit.cleanup_crit_edge ], [ -22, %if.then60.cleanup_crit_edge ], [ -22, %for.cond.backedge.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eattr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_insert_resident(ptr noundef %ni, i32 noundef %data_size, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef writeonly %new_attr, ptr noundef %mi, ptr noundef %le) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %name_len to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 7
  %and = and i32 %add, 1016
  %add1 = add nuw nsw i32 %and, 24
  %add2 = add i32 %data_size, 7
  %and3 = and i32 %add2, -8
  %add4 = add i32 %add1, %and3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #9
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr, align 4, !annotation !52
  %call = call fastcc i32 @ni_insert_attr(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %add4, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %attr, ptr noundef %mi, ptr noundef %le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %non_res to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %non_res, align 8
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %data_size)
  %6 = getelementptr inbounds %struct.ATTRIB, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %6, align 8
  %conv7 = trunc i32 %add1 to i16
  %8 = call i16 @llvm.bswap.i16(i16 %conv7)
  %data_off = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %data_off to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %data_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %type)
  %cmp = icmp eq i32 %type, 805306368
  br i1 %cmp, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags10 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %flags10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %flags10, align 2
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %11 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mrec, align 8
  %hard_links = getelementptr inbounds %struct.MFT_REC, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hard_links to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hard_links, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #9
  %add.i = add i16 %15, 1
  %16 = call i16 @llvm.bswap.i16(i16 %add.i) #9
  %17 = ptrtoint ptr %hard_links to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %hard_links, align 2
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 5
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %dirty, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %res = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %6, i32 0, i32 3
  %19 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %res, align 1
  %tobool14.not = icmp eq ptr %new_attr, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %new_attr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %2, ptr %new_attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_remove_attr_le(ptr noundef %ni, ptr noundef %attr, ptr noundef %mi, ptr noundef %le) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mi_remove_attr(ptr noundef %ni, ptr noundef %mi, ptr noundef %attr) #9
  %tobool.not = icmp eq ptr %le, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef nonnull %le) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_remove_reparse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_objid_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_unpack_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_deallocate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_mark_rec_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ni_fname_name(ptr noundef %ni, ptr noundef %uni, ptr noundef readonly %home_dir, ptr noundef %mi, ptr noundef %le) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %le, align 4
  %call33 = tail call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef %le, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef %mi)
  %tobool.not34 = icmp eq ptr %call33, null
  br i1 %tobool.not34, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %tobool5.not = icmp eq ptr %home_dir, null
  %tobool10.not = icmp eq ptr %uni, null
  br label %if.end

if.end:                                           ; preds = %next.backedge.if.end_crit_edge, %if.end.lr.ph
  %call35 = phi ptr [ %call33, %if.end.lr.ph ], [ %call, %next.backedge.if.end_crit_edge ]
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call35, i32 0, i32 2
  %1 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.next.backedge_crit_edge

if.end.next.backedge_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.backedge

if.end.i:                                         ; preds = %if.end
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call35, i32 0, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %6 = getelementptr inbounds %struct.ATTRIB, ptr %call35, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_off.i, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  %conv.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp.i = icmp ult i32 %5, %add.i
  br i1 %cmp.i, label %if.end.i.next.backedge_crit_edge, label %if.end3.i

if.end.i.next.backedge_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.backedge

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %12)
  %cmp4.i = icmp ult i32 %12, 68
  %add.ptr.i = getelementptr i8, ptr %call35, i32 %conv.i
  %tobool2.not = icmp eq ptr %add.ptr.i, null
  %or.cond40 = select i1 %cmp4.i, i1 true, i1 %tobool2.not
  br i1 %or.cond40, label %if.end3.i.next.backedge_crit_edge, label %if.end4

if.end3.i.next.backedge_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.backedge

next.backedge:                                    ; preds = %if.end16.next.backedge_crit_edge, %if.end12.next.backedge_crit_edge, %if.end9.next.backedge_crit_edge, %land.lhs.true.next.backedge_crit_edge, %if.end3.i.next.backedge_crit_edge, %if.end.i.next.backedge_crit_edge, %if.end.next.backedge_crit_edge
  %call = tail call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call35, ptr noundef %le, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef %mi)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %next.backedge.cleanup_crit_edge, label %next.backedge.if.end_crit_edge

next.backedge.if.end_crit_edge:                   ; preds = %next.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

next.backedge.cleanup_crit_edge:                  ; preds = %next.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end3.i
  br i1 %tobool5.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %home_dir, ptr noundef nonnull dereferenceable(8) %add.ptr.i, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp ne i32 %bcmp, 0
  %or.cond = or i1 %tobool10.not, %tobool7.not
  br i1 %or.cond, label %land.lhs.true.next.backedge_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true.next.backedge_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.backedge

if.end9:                                          ; preds = %if.end4
  br i1 %tobool10.not, label %if.end9.next.backedge_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end9.next.backedge_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.backedge

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge
  %13 = ptrtoint ptr %uni to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %uni, align 2
  %name_len = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr.i, i32 0, i32 2
  %15 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name_len, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp.not = icmp eq i8 %14, %16
  br i1 %cmp.not, label %if.end16, label %if.end12.next.backedge_crit_edge

if.end12.next.backedge_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.backedge

if.end16:                                         ; preds = %if.end12
  %call18 = tail call i32 @ntfs_cmp_names_cpu(ptr noundef nonnull %uni, ptr noundef %name_len, ptr noundef null, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end16.next.backedge_crit_edge

if.end16.next.backedge_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.backedge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %next.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr.i, %if.end16.cleanup_crit_edge ], [ null, %next.backedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cmp_names_cpu(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ni_fname_type(ptr noundef %ni, i8 noundef zeroext %name_type, ptr noundef %mi, ptr noundef %le) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %name_type)
  %cmp = icmp eq i8 %name_type, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call21 = tail call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef %le, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef %mi)
  %tobool.not22 = icmp eq ptr %call21, null
  br i1 %tobool.not22, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.if.end3_crit_edge

for.cond.preheader.if.end3_crit_edge:             ; preds = %for.cond.preheader
  br label %if.end3

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end11.if.end3_crit_edge, %for.cond.preheader.if.end3_crit_edge
  %call23 = phi ptr [ %call, %if.end11.if.end3_crit_edge ], [ %call21, %for.cond.preheader.if.end3_crit_edge ]
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call23, i32 0, i32 2
  %1 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i:                                         ; preds = %if.end3
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call23, i32 0, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %6 = getelementptr inbounds %struct.ATTRIB, ptr %call23, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_off.i, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  %conv.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp.i = icmp ult i32 %5, %add.i
  br i1 %cmp.i, label %if.end.i.if.end11_crit_edge, label %if.end3.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %12)
  %cmp4.i = icmp ult i32 %12, 68
  %add.ptr.i = getelementptr i8, ptr %call23, i32 %conv.i
  %tobool5.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %cmp4.i, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end3.i.if.end11_crit_edge, label %land.lhs.true

if.end3.i.if.end11_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end3.i
  %type = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr.i, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %name_type)
  %cmp8 = icmp eq i8 %14, %name_type
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end3.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %call = tail call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call23, ptr noundef %le, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef %mi)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end11.if.end3_crit_edge

if.end11.if.end3_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ %add.ptr.i, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_new_attr_flags(ptr noundef %ni, i32 noundef %new_fa) local_unnamed_addr #0 align 64 {
entry:
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #9
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !52
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 4
  %3 = and i16 %2, -385
  %and = lshr i32 %new_fa, 10
  %4 = trunc i32 %and to i16
  %5 = and i16 %4, 128
  %and8 = lshr i32 %new_fa, 11
  %6 = trunc i32 %and8 to i16
  %7 = and i16 %6, 256
  %new_aflags.0 = or i16 %7, %5
  %new_aflags.1 = or i16 %new_aflags.0, %3
  %conv19 = zext i16 %new_aflags.1 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %new_aflags.1, i16 %2)
  %cmp = icmp eq i16 %new_aflags.1, %2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %and26 = and i32 %conv19, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 384
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool31.not = icmp eq i8 %9, 0
  br i1 %tobool31.not, label %if.end30.out_crit_edge, label %if.end33

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end33:                                         ; preds = %if.end30
  %data_size = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 6
  %10 = ptrtoint ptr %data_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool34.not = icmp eq i64 %11, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %vfs_inode36 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode36, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool40.not = icmp eq i32 %and26, 0
  %cond = select i1 %tobool40.not, i32 72, i32 80
  %12 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mi, align 4
  %size = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %sub = sub i32 %cond, %16
  %call41 = call zeroext i1 @mi_resize_attr(ptr noundef %13, ptr noundef nonnull %call, i32 noundef %sub) #9
  br i1 %call41, label %if.end43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %and45 = and i32 %conv19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %name_off = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %name_off to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 18432, ptr %name_off, align 2
  br label %if.end66

if.else49:                                        ; preds = %if.end43
  %and51 = and i32 %conv19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %name_off60 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 4
  br i1 %tobool52.not, label %if.else59, label %if.then53

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %name_off60 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 18432, ptr %name_off60, align 2
  br label %if.end66

if.else59:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %name_off60 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16384, ptr %name_off60, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.else59, %if.then53, %if.then47
  %.sink = phi i8 [ 4, %if.then53 ], [ 0, %if.else59 ], [ 0, %if.then47 ]
  %ntfs_aops_cmpr.sink = phi ptr [ @ntfs_aops_cmpr, %if.then53 ], [ @ntfs_aops, %if.else59 ], [ @ntfs_aops, %if.then47 ]
  %c_unit55 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 3
  %20 = ptrtoint ptr %c_unit55 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %c_unit55, align 2
  %i_mapping57 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 9
  %21 = ptrtoint ptr %i_mapping57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping57, align 8
  %a_ops58 = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %a_ops58 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ntfs_aops_cmpr.sink, ptr %a_ops58, align 4
  %name_off67 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %name_off67 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %name_off67, align 2
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 2
  %26 = ptrtoint ptr %run_off to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %run_off, align 8
  br label %out

out:                                              ; preds = %if.end66, %if.end30.out_crit_edge
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %new_aflags.1, ptr %flags, align 4
  %28 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mi, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end37.cleanup_crit_edge, %if.then35, %if.then29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then29 ], [ -95, %if.then35 ], [ 0, %out ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_inode_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mi_resize_attr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_parse_reparse(ptr noundef %ni, ptr noundef readonly %attr, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  %run = alloca %struct.runs_tree, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.i, label %if.else

if.end.i:                                         ; preds = %entry
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_off.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp.i = icmp ult i32 %4, %add.i
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %11)
  %cmp4.i = icmp ult i32 %11, 24
  %add.ptr.i = getelementptr i8, ptr %attr, i32 %conv.i
  br i1 %cmp4.i, label %if.end3.i.cleanup_crit_edge, label %if.end3.i.if.end8_crit_edge

if.end3.i.if.end8_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %data_size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 6
  %12 = ptrtoint ptr %data_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_size, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  call void @__sanitizer_cov_trace_const_cmp8(i64 23, i64 %14)
  %cmp = icmp ugt i64 %14, 23
  br i1 %cmp, label %if.then1, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %run) #9
  %15 = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %16 = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 2
  %17 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %run, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %15, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %16, align 4
  %call2 = call i32 @attr_load_runs_vcn(ptr noundef %ni, i32 noundef -1073741824, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %run, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then1.if.end_crit_edge

if.then1.if.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %20 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sbi, align 4
  %call4 = call i32 @ntfs_read_run_nb(ptr noundef %21, ptr noundef nonnull %run, i64 noundef 0, ptr noundef %buffer, i32 noundef 24, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool5.not, ptr %buffer, ptr null
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then1.if.end_crit_edge
  %rp.0 = phi ptr [ null, %if.then1.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %22 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %run, align 4
  call void @kvfree(ptr noundef %23) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %run) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.end3.i.if.end8_crit_edge
  %rp.1 = phi ptr [ %rp.0, %if.end ], [ %add.ptr.i, %if.end3.i.if.end8_crit_edge ]
  %tobool9.not = icmp eq ptr %rp.1, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %24 = ptrtoint ptr %rp.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rp.1, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %25, label %sw.default29 [
    i32 128, label %if.end11.sw.epilog34_crit_edge
    i32 50331808, label %if.end11.sw.epilog34_crit_edge61
    i32 201326752, label %if.end11.sw.epilog34_crit_edge62
    i32 385876096, label %sw.bb
    i32 318767232, label %sw.bb28
  ]

if.end11.sw.epilog34_crit_edge62:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

if.end11.sw.epilog34_crit_edge61:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

if.end11.sw.epilog34_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

sw.bb:                                            ; preds = %if.end11
  %ReparseDataLength = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 1
  %27 = ptrtoint ptr %ReparseDataLength to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ReparseDataLength, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %29)
  %cmp12 = icmp ult i16 %29, 16
  br i1 %cmp12, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %30 = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %32)
  %cmp14.not = icmp eq i32 %32, 16777216
  br i1 %cmp14.not, label %lor.lhs.false16, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %WofProvider = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %WofProvider to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %WofProvider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %34)
  %cmp17.not = icmp eq i32 %34, 33554432
  br i1 %cmp17.not, label %lor.lhs.false19, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %ProviderVer = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3, i32 0, i32 2
  %35 = ptrtoint ptr %ProviderVer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ProviderVer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %36)
  %cmp20.not = icmp eq i32 %36, 16777216
  br i1 %cmp20.not, label %if.end23, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19
  %CompressionFormat = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3, i32 0, i32 3
  %37 = ptrtoint ptr %CompressionFormat to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %CompressionFormat, align 4
  %39 = call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %switch.lookup, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ni_parse_reparse, i32 0, i32 %39
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end23.sw.epilog_crit_edge
  %bits.0 = phi i32 [ %switch.load, %switch.lookup ], [ 5, %if.end23.sw.epilog_crit_edge ]
  %ni_flags.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %42 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ni_flags.i, align 4
  %or.i = or i32 %43, %bits.0
  store i32 %or.i, ptr %ni_flags.i, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %44 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ni_flags, align 4
  %or = or i32 %45, 16
  store i32 %or, ptr %ni_flags, align 4
  br label %cleanup

sw.default29:                                     ; preds = %if.end11
  %and = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %sw.default29.cleanup_crit_edge, label %sw.default29.sw.epilog34_crit_edge

sw.default29.sw.epilog34_crit_edge:               ; preds = %sw.default29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

sw.default29.cleanup_crit_edge:                   ; preds = %sw.default29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog34:                                      ; preds = %sw.default29.sw.epilog34_crit_edge, %if.end11.sw.epilog34_crit_edge, %if.end11.sw.epilog34_crit_edge61, %if.end11.sw.epilog34_crit_edge62
  %cmp35.not = icmp eq ptr %rp.1, %buffer
  br i1 %cmp35.not, label %sw.epilog34.cleanup_crit_edge, label %if.then37

sw.epilog34.cleanup_crit_edge:                    ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #11
  %46 = call ptr @memcpy(ptr %buffer, ptr %rp.1, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %sw.epilog34.cleanup_crit_edge, %sw.default29.cleanup_crit_edge, %sw.bb28, %sw.epilog, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb28 ], [ 1, %sw.epilog ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %lor.lhs.false19.cleanup_crit_edge ], [ 0, %lor.lhs.false16.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.default29.cleanup_crit_edge ], [ 3, %if.then37 ], [ 3, %sw.epilog34.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_load_runs_vcn(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_run_nb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_fiemap(ptr noundef %ni, ptr noundef %fieinfo, i64 noundef %vbo, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %vcn = alloca i32, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %idx = alloca i32, align 4
  %clst_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #9
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %vbo, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %4 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %vcn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #9
  %5 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lcn, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #9
  %6 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %clen, align 4, !annotation !52
  %i_valid = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %7 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_valid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %idx, align 4
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %10 = ptrtoint ptr %vfs_inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vfs_inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp = icmp eq i16 %12, 16384
  br i1 %cmp, label %if.end15, label %if.else

if.else:                                          ; preds = %entry
  %call8 = tail call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null)
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.else.out_crit_edge, label %if.end

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %if.else
  %run7 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %13 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call8, i32 0, i32 5
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 4
  %16 = and i16 %15, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i.not = icmp eq i16 %16, 0
  br i1 %tobool.i.not, label %if.end.lor.lhs.false_crit_edge, label %if.then11

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode, ptr noundef nonnull @.str.3) #9
  br label %out

if.end15:                                         ; preds = %entry
  %alloc_run = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 1
  %call = tail call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -1610612736, ptr noundef nonnull @I30_NAME, i8 noundef zeroext 4, ptr noundef null, ptr noundef null)
  %run_lock6 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.end15.cond.end_crit_edge, label %if.end15.lor.lhs.false_crit_edge

if.end15.lor.lhs.false_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.end15.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %attr.0268 = phi ptr [ %call, %if.end15.lor.lhs.false_crit_edge ], [ %call8, %if.end.lor.lhs.false_crit_edge ]
  %run_lock.0267 = phi ptr [ %run_lock6, %if.end15.lor.lhs.false_crit_edge ], [ %13, %if.end.lor.lhs.false_crit_edge ]
  %run.0266 = phi ptr [ %alloc_run, %if.end15.lor.lhs.false_crit_edge ], [ %run7, %if.end.lor.lhs.false_crit_edge ]
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr.0268, i32 0, i32 2
  %17 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %cond.true.critedge, label %if.end22

cond.true.critedge:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %19 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0268, i32 0, i32 7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.true.critedge, %if.end15.cond.end_crit_edge
  %cond = phi i32 [ %22, %cond.true.critedge ], [ 0, %if.end15.cond.end_crit_edge ]
  %conv20 = zext i32 %cond to i64
  %call21 = tail call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef 0, i64 noundef 0, i64 noundef %conv20, i32 noundef 4609) #9
  br label %out

if.end22:                                         ; preds = %lor.lhs.false
  %add = add i64 %len, %vbo
  %alloc_size23 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0268, i32 0, i32 7, i32 0, i32 5
  %23 = ptrtoint ptr %alloc_size23 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %alloc_size23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %26 = tail call i64 @llvm.umin.i64(i64 %add, i64 %25)
  tail call void @down_read(ptr noundef %run_lock.0267) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %vbo)
  %cmp28288 = icmp ugt i64 %26, %vbo
  br i1 %cmp28288, label %while.body.lr.ph, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end22
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.0268, i32 0, i32 4
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %attr.0268, i32 0, i32 3
  %flags.i258 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0268, i32 0, i32 5
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %attr.0268, i32 0, i32 7, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %err.0289 = phi i32 [ 0, %while.body.lr.ph ], [ %err.0.be, %while.cond.backedge.while.body_crit_edge ]
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp30 = icmp eq i32 %28, -1
  %29 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vcn, align 4
  br i1 %cmp30, label %if.end43, label %if.else34

if.else34:                                        ; preds = %while.body
  %inc = add nuw i32 %28, 1
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc, ptr %idx, align 4
  %call35 = call zeroext i1 @run_get_entry(ptr noundef %run.0266, i32 noundef %inc, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #9
  br i1 %call35, label %land.end, label %if.else34.if.end43.thread270_crit_edge

if.else34.if.end43.thread270_crit_edge:           ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.thread270

land.end:                                         ; preds = %if.else34
  %32 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %30)
  %cmp37 = icmp eq i32 %33, %30
  br i1 %cmp37, label %land.end.if.end56_crit_edge, label %land.end.if.end43.thread270_crit_edge

land.end.if.end43.thread270_crit_edge:            ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.thread270

land.end.if.end56_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end43.thread270:                               ; preds = %land.end.if.end43.thread270_crit_edge, %if.else34.if.end43.thread270_crit_edge
  %34 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %vcn, align 4
  br label %if.then45

if.end43:                                         ; preds = %while.body
  %call33 = call zeroext i1 @run_lookup_entry(ptr noundef %run.0266, i32 noundef %30, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #9
  br i1 %call33, label %if.end43.if.end56_crit_edge, label %if.end43.if.then45_crit_edge

if.end43.if.then45_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then45:                                        ; preds = %if.end43.if.then45_crit_edge, %if.end43.thread270
  call void @up_read(ptr noundef %run_lock.0267) #9
  call void @down_write(ptr noundef %run_lock.0267) #9
  %35 = ptrtoint ptr %attr.0268 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %attr.0268, align 8
  %37 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %name_off.i, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38) #9
  %conv.i = zext i16 %39 to i32
  %add.ptr.i = getelementptr i8, ptr %attr.0268, i32 %conv.i
  %40 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %name_len, align 1
  %42 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vcn, align 4
  %call47 = call i32 @attr_load_runs_vcn(ptr noundef %ni, i32 noundef %36, ptr noundef %add.ptr.i, i8 noundef zeroext %41, ptr noundef %run.0266, i32 noundef %43) #9
  call void @up_write(ptr noundef %run_lock.0267) #9
  call void @down_read(ptr noundef %run_lock.0267) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then45.while.end_crit_edge

if.then45.while.end_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end50:                                         ; preds = %if.then45
  %44 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vcn, align 4
  %call51 = call zeroext i1 @run_lookup_entry(ptr noundef %run.0266, i32 noundef %45, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #9
  br i1 %call51, label %if.end50.if.end56_crit_edge, label %if.end50.while.end_crit_edge

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end56:                                         ; preds = %if.end50.if.end56_crit_edge, %if.end43.if.end56_crit_edge, %land.end.if.end56_crit_edge
  %err.1 = phi i32 [ %err.0289, %if.end43.if.end56_crit_edge ], [ 0, %if.end50.if.end56_crit_edge ], [ %err.0289, %land.end.if.end56_crit_edge ]
  %46 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool57.not = icmp eq i32 %47, 0
  br i1 %tobool57.not, label %if.end56.while.end_crit_edge, label %if.end59

if.end56.while.end_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end59:                                         ; preds = %if.end56
  %48 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp60 = icmp eq i32 %49, -1
  br i1 %cmp60, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vcn, align 4
  %add63 = add i32 %51, %47
  store i32 %add63, ptr %vcn, align 4
  %conv64 = zext i32 %add63 to i64
  %shl = shl i64 %conv64, %sh_prom
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end153, %if.end133.while.cond.backedge_crit_edge, %if.then62
  %err.0.be = phi i32 [ %err.1, %if.then62 ], [ %call145, %if.end153 ], [ %call125, %if.end133.while.cond.backedge_crit_edge ]
  %vbo.addr.0.be = phi i64 [ %shl, %if.then62 ], [ %add154, %if.end153 ], [ %8, %if.end133.while.cond.backedge_crit_edge ]
  %cmp28 = icmp ult i64 %vbo.addr.0.be, %26
  br i1 %cmp28, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end67:                                         ; preds = %if.end59
  %52 = ptrtoint ptr %vfs_inode to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vfs_inode, align 8
  %54 = and i16 %53, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %54)
  %cmp72 = icmp eq i16 %54, 16384
  br i1 %cmp72, label %if.end67.if.end94_crit_edge, label %if.else75

if.end67.if.end94_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.else75:                                        ; preds = %if.end67
  %55 = ptrtoint ptr %flags.i258 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i258, align 4
  %57 = and i16 %56, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.i259.not = icmp eq i16 %57, 0
  br i1 %tobool.i259.not, label %if.else88, label %if.then77

if.then77:                                        ; preds = %if.else75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clst_data) #9
  %58 = ptrtoint ptr %clst_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %clst_data, align 4, !annotation !52
  %59 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vcn, align 4
  %61 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %c_unit, align 2
  %conv78 = zext i8 %62 to i32
  %shr79 = lshr i32 %60, %conv78
  %call80 = call i32 @attr_is_frame_compressed(ptr noundef %ni, ptr noundef nonnull %attr.0268, i32 noundef %shr79, ptr noundef nonnull %clst_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %clst_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %clst_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %64)
  %cmp84 = icmp ult i32 %64, 16
  %spec.select256 = select i1 %cmp84, i32 4104, i32 4096
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clst_data) #9
  br label %if.end94

cleanup:                                          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clst_data) #9
  br label %while.end

if.else88:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #11
  %65 = and i16 %56, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.i261.not = icmp eq i16 %65, 0
  %spec.select257 = select i1 %tobool.i261.not, i32 4096, i32 4224
  br label %if.end94

if.end94:                                         ; preds = %if.else88, %cleanup.thread, %if.end67.if.end94_crit_edge
  %flags.2 = phi i32 [ 4096, %if.end67.if.end94_crit_edge ], [ %spec.select257, %if.else88 ], [ %spec.select256, %cleanup.thread ]
  %66 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vcn, align 4
  %conv95 = zext i32 %67 to i64
  %shl98 = shl i64 %conv95, %sh_prom
  %68 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clen, align 4
  %conv99 = zext i32 %69 to i64
  %shl102 = shl i64 %conv99, %sh_prom
  %70 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lcn, align 4
  %conv103 = zext i32 %71 to i64
  %shl106 = shl i64 %conv103, %sh_prom
  %add107 = add i32 %69, %67
  store i32 %add107, ptr %vcn, align 4
  %add108 = add i64 %shl102, %shl98
  call void @__sanitizer_cov_trace_cmp8(i64 %add108, i64 %26)
  %cmp109.not = icmp ult i64 %add108, %26
  %sub = sub i64 %26, %shl98
  %bytes.0 = select i1 %cmp109.not, i64 %shl102, i64 %sub
  %not.cmp109.not = xor i1 %cmp109.not, true
  %or112 = zext i1 %not.cmp109.not to i32
  %flags.3 = or i32 %flags.2, %or112
  %add114 = add i64 %bytes.0, %shl98
  call void @__sanitizer_cov_trace_cmp8(i64 %add114, i64 %8)
  %cmp115.not = icmp ugt i64 %add114, %8
  br i1 %cmp115.not, label %if.else118, label %if.end94.if.end144_crit_edge

if.end94.if.end144_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.else118:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %shl98)
  %cmp119.not = icmp ugt i64 %8, %shl98
  br i1 %cmp119.not, label %if.else123, label %if.then121

if.then121:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #11
  %or122 = or i32 %flags.3, 2048
  br label %if.end144

if.else123:                                       ; preds = %if.else118
  %sub124 = sub i64 %8, %shl98
  %call125 = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef %shl98, i64 noundef %shl106, i64 noundef %sub124, i32 noundef %flags.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.else123.while.end_crit_edge, label %if.end129

if.else123.while.end_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end129:                                        ; preds = %if.else123
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call125)
  %cmp130 = icmp eq i32 %call125, 1
  br i1 %cmp130, label %if.end129.while.end_crit_edge, label %if.end133

if.end129.while.end_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end133:                                        ; preds = %if.end129
  %sub134 = sub i64 %bytes.0, %sub124
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub134)
  %tobool135.not = icmp eq i64 %sub134, 0
  br i1 %tobool135.not, label %if.end133.while.cond.backedge_crit_edge, label %cleanup140.thread281

if.end133.while.cond.backedge_crit_edge:          ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

cleanup140.thread281:                             ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %add138 = add i64 %shl106, %sub124
  %or139 = or i32 %flags.3, 2048
  br label %if.end144

if.end144:                                        ; preds = %cleanup140.thread281, %if.then121, %if.end94.if.end144_crit_edge
  %vbo.addr.2 = phi i64 [ %shl98, %if.end94.if.end144_crit_edge ], [ %shl98, %if.then121 ], [ %8, %cleanup140.thread281 ]
  %lbo.1 = phi i64 [ %shl106, %if.end94.if.end144_crit_edge ], [ %shl106, %if.then121 ], [ %add138, %cleanup140.thread281 ]
  %bytes.2 = phi i64 [ %bytes.0, %if.end94.if.end144_crit_edge ], [ %bytes.0, %if.then121 ], [ %sub134, %cleanup140.thread281 ]
  %flags.5 = phi i32 [ %flags.3, %if.end94.if.end144_crit_edge ], [ %or122, %if.then121 ], [ %or139, %cleanup140.thread281 ]
  %call145 = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef %vbo.addr.2, i64 noundef %lbo.1, i64 noundef %bytes.2, i32 noundef %flags.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.end144.while.end_crit_edge, label %if.end149

if.end144.while.end_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end149:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call145)
  %cmp150 = icmp eq i32 %call145, 1
  br i1 %cmp150, label %if.end149.while.end_crit_edge, label %if.end153

if.end149.while.end_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end153:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  %add154 = add i64 %bytes.2, %vbo.addr.2
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end149.while.end_crit_edge, %if.end144.while.end_crit_edge, %if.end129.while.end_crit_edge, %if.else123.while.end_crit_edge, %cleanup, %while.cond.backedge.while.end_crit_edge, %if.end56.while.end_crit_edge, %if.end50.while.end_crit_edge, %if.then45.while.end_crit_edge, %if.end22.while.end_crit_edge
  %err.3 = phi i32 [ %call80, %cleanup ], [ 0, %if.end22.while.end_crit_edge ], [ %err.0.be, %while.cond.backedge.while.end_crit_edge ], [ %call47, %if.then45.while.end_crit_edge ], [ %call145, %if.end144.while.end_crit_edge ], [ -22, %if.end50.while.end_crit_edge ], [ -22, %if.end56.while.end_crit_edge ], [ 0, %if.end149.while.end_crit_edge ], [ %call125, %if.else123.while.end_crit_edge ], [ 0, %if.end129.while.end_crit_edge ]
  call void @up_read(ptr noundef %run_lock.0267) #9
  br label %out

out:                                              ; preds = %while.end, %cond.end, %if.then11, %if.else.out_crit_edge
  %err.4 = phi i32 [ %err.3, %while.end ], [ %call21, %cond.end ], [ -95, %if.then11 ], [ -22, %if.else.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #9
  ret i32 %err.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_fill_next_extent(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_lookup_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_get_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_is_frame_compressed(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_readpage_cmpr(ptr noundef %ni, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %mapping2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping2, align 4
  %index3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index3, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %7)
  %cmp.not = icmp ult i64 %shl, %7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #9
  br label %out

if.end:                                           ; preds = %entry
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %11 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ni_flags, align 4
  %and = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = trunc i32 %and to i8
  %conv6 = add nuw nsw i8 %13, 11
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cluster_bits, align 8
  %add = add i8 %15, 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %frame_bits.0 = phi i8 [ %conv6, %if.then5 ], [ %add, %if.else ]
  %conv10 = zext i8 %frame_bits.0 to i32
  %shl11 = shl nuw i32 1, %conv10
  %sh_prom = zext i8 %frame_bits.0 to i64
  %shr = lshr i64 %shl, %sh_prom
  %conv14 = and i64 %shr, 4294967295
  %shl17 = shl i64 %conv14, %sh_prom
  %sub = sub i64 %shl, %shl17
  %shr18 = lshr i64 %sub, 12
  %conv19 = trunc i64 %shr18 to i32
  %shr20 = lshr i32 %shl11, 12
  %16 = shl nuw nsw i32 %shr20, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3392) #14
  %tobool22.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool22.not, label %if.end9.out_crit_edge, label %if.end24

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %if.end9
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %conv19
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %page, ptr %arrayidx, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gfp_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %frame_bits.0)
  %cmp28120.not = icmp ult i8 %frame_bits.0, 12
  br i1 %cmp28120.not, label %if.end24.out1_crit_edge, label %for.body.preheader

if.end24.out1_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

for.body.preheader:                               ; preds = %if.end24
  %shr25 = lshr i64 %shl17, 12
  %conv26 = trunc i64 %shr25 to i32
  %umax = call i32 @llvm.umax.i32(i32 %shr20, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0123 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %index.0121 = phi i32 [ %inc39, %for.inc.for.body_crit_edge ], [ %conv26, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0123, i32 %conv19)
  %cmp30 = icmp eq i32 %i.0123, %conv19
  br i1 %cmp30, label %for.body.for.inc_crit_edge, label %if.end33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end33:                                         ; preds = %for.body
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef %index.0121, i32 noundef 7, i32 noundef %19) #9
  %tobool35.not = icmp eq ptr %call.i, null
  br i1 %tobool35.not, label %if.end33.if.then42_crit_edge, label %if.end37

if.end33.if.then42_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx38 = getelementptr ptr, ptr %call8.i.i, i32 %i.0123
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %arrayidx38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0123, 1
  %inc39 = add i32 %index.0121, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.out1_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out1_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

out1:                                             ; preds = %for.inc.out1_crit_edge, %if.end24.out1_crit_edge
  %cmp28120.not139 = phi i1 [ true, %if.end24.out1_crit_edge ], [ %cmp28120.not, %for.inc.out1_crit_edge ]
  %call40 = tail call i32 @ni_read_frame(ptr noundef %ni, i64 noundef %shl17, ptr noundef nonnull %call8.i.i, i32 noundef %shr20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %out1.if.then42_crit_edge

out1.if.then42_crit_edge:                         ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %out1.if.then42_crit_edge, %if.end33.if.then42_crit_edge
  %cmp28120.not137 = phi i1 [ %cmp28120.not139, %out1.if.then42_crit_edge ], [ %cmp28120.not, %if.end33.if.then42_crit_edge ]
  %err.0118 = phi i32 [ %call40, %out1.if.then42_crit_edge ], [ -12, %if.end33.if.then42_crit_edge ]
  %21 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.body7.i:                                       ; preds = %if.then42
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %21, align 4
  %and.i31.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i = icmp eq i32 %29, -1
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %21, align 4
  %and.i32.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !44

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !43

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %31, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %32, %if.end.i36.i ]
  %33 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.10) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !43

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %31, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %34, %if.end.i43.i ]
  %35 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %35) #9
  br i1 %cmp28120.not137, label %SetPageError.exit.out_crit_edge, label %SetPageError.exit.for.body47.preheader_crit_edge

SetPageError.exit.for.body47.preheader_crit_edge: ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47.preheader

SetPageError.exit.out_crit_edge:                  ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end43:                                         ; preds = %out1
  br i1 %cmp28120.not139, label %if.end43.out_crit_edge, label %if.end43.for.body47.preheader_crit_edge

if.end43.for.body47.preheader_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47.preheader

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body47.preheader:                             ; preds = %if.end43.for.body47.preheader_crit_edge, %SetPageError.exit.for.body47.preheader_crit_edge
  %err.0119141 = phi i32 [ %err.0118, %SetPageError.exit.for.body47.preheader_crit_edge ], [ 0, %if.end43.for.body47.preheader_crit_edge ]
  %umax128 = call i32 @llvm.umax.i32(i32 %shr20, i32 1)
  br label %for.body47

for.body47:                                       ; preds = %for.inc53.for.body47_crit_edge, %for.body47.preheader
  %i.1126 = phi i32 [ %inc54, %for.inc53.for.body47_crit_edge ], [ 0, %for.body47.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1126, i32 %conv19)
  %cmp49 = icmp eq i32 %i.1126, %conv19
  br i1 %cmp49, label %for.body47.for.inc53_crit_edge, label %if.end52

for.body47.for.inc53_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc53

if.end52:                                         ; preds = %for.body47
  %arrayidx48 = getelementptr ptr, ptr %call8.i.i, i32 %i.1126
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx48, align 4
  tail call void @unlock_page(ptr noundef %37) #9
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i98 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %and.i.i98, 0
  br i1 %tobool.not.i.i99, label %if.end.i.i102, label %if.then.i.i101, !prof !43

if.then.i.i101:                                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i100 = add i32 %40, -1
  br label %_compound_head.exit.i105

if.end.i.i102:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %37 to i32
  br label %_compound_head.exit.i105

_compound_head.exit.i105:                         ; preds = %if.end.i.i102, %if.then.i.i101
  %retval.0.i.i103 = phi i32 [ %sub.i.i100, %if.then.i.i101 ], [ %41, %if.end.i.i102 ]
  %42 = inttoptr i32 %retval.0.i.i103 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i.i104 = icmp eq i32 %44, 0
  br i1 %cmp.i.i.i.i104, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !44

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i105
  call void @__sanitizer_cov_trace_pc() #11
  %45 = inttoptr i32 %retval.0.i.i103 to ptr
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i105
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ni_readpage_cmpr, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !49

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %42, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc53_crit_edge

folio_put_testzero.exit.i.i.for.inc53_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc53

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %42) #9
  br label %for.inc53

for.inc53:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc53_crit_edge, %for.body47.for.inc53_crit_edge
  %inc54 = add nuw nsw i32 %i.1126, 1
  %exitcond129.not = icmp eq i32 %inc54, %umax128
  br i1 %exitcond129.not, label %for.inc53.out_crit_edge, label %for.inc53.for.body47_crit_edge

for.inc53.for.body47_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

for.inc53.out_crit_edge:                          ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc53.out_crit_edge, %if.end43.out_crit_edge, %SetPageError.exit.out_crit_edge, %if.end9.out_crit_edge, %SetPageUptodate.exit
  %err.1 = phi i32 [ 0, %SetPageUptodate.exit ], [ -12, %if.end9.out_crit_edge ], [ 0, %if.end43.out_crit_edge ], [ %err.0118, %SetPageError.exit.out_crit_edge ], [ %err.0119141, %for.inc53.out_crit_edge ]
  %pages.0 = phi ptr [ null, %SetPageUptodate.exit ], [ null, %if.end9.out_crit_edge ], [ %call8.i.i, %if.end43.out_crit_edge ], [ %call8.i.i, %SetPageError.exit.out_crit_edge ], [ %call8.i.i, %for.inc53.out_crit_edge ]
  tail call void @kfree(ptr noundef %pages.0) #9
  tail call void @unlock_page(ptr noundef %page) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_read_frame(ptr noundef %ni, i64 noundef %frame_vbo, ptr noundef %pages, i32 noundef %pages_per_frame) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  %ondisk_size = alloca i32, align 4
  %clst_data = alloca i32, align 4
  %vbo_data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #9
  %4 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %le, align 4
  %5 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  %run3 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %i_valid = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %6 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_valid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ondisk_size) #9
  %8 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ondisk_size, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clst_data) #9
  %9 = ptrtoint ptr %clst_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %clst_data, align 4, !annotation !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_per_frame)
  %cmp480.not = icmp eq i32 %pages_per_frame, 0
  br i1 %cmp480.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %kmap.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0481 = phi i32 [ %inc, %kmap.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0481
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 44) #9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr.i.i = lshr i32 %13, 30
  %14 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i, label %for.body.if.then.i405_crit_edge [
    i32 2, label %for.body.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

for.body.if.else.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

for.body.if.then.i405_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i405

is_highmem_idx.exit.i:                            ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %15 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i.not.i = icmp eq i32 %15, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i405_crit_edge

is_highmem_idx.exit.i.if.then.i405_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i405

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i405:                                     ; preds = %is_highmem_idx.exit.i.if.then.i405_crit_edge, %for.body.if.then.i405_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %11) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %for.body.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %11) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i405
  %inc = add nuw i32 %i.0481, 1
  %exitcond.not = icmp eq i32 %inc, %pages_per_frame
  br i1 %exitcond.not, label %kmap.exit.for.end_crit_edge, label %kmap.exit.for.body_crit_edge

kmap.exit.for.body_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

kmap.exit.for.end_crit_edge:                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %kmap.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %shl = shl i32 %pages_per_frame, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %16 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %16, 512
  %call4 = tail call ptr @vmap(ptr noundef %pages, i32 noundef %pages_per_frame, i32 noundef 4, i32 noundef %or) #9
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.end.out_crit_edge, label %if.end

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %for.end
  %call5 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.out1_crit_edge, label %if.end8

if.end.out1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end8:                                          ; preds = %if.end
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call5, i32 0, i32 2
  %17 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %if.then10, label %if.end21

if.then10:                                        ; preds = %if.end8
  %19 = getelementptr inbounds %struct.ATTRIB, ptr %call5, i32 0, i32 7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = call ptr @memset(ptr %call4, i32 0, i32 %shl)
  %conv = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %frame_vbo)
  %cmp12 = icmp ugt i64 %conv, %frame_vbo
  br i1 %cmp12, label %if.then14, label %if.then10.out1_crit_edge

if.then10.out1_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %24 = trunc i64 %frame_vbo to i32
  %conv16 = sub i32 %22, %24
  %25 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv16, ptr %ondisk_size, align 4
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data_off.i, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27) #9
  %conv.i = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %call5, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %24
  %29 = call i32 @llvm.umin.i32(i32 %conv16, i32 %shl)
  %30 = call ptr @memcpy(ptr %call4, ptr %add.ptr, i32 %29)
  br label %out1

if.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %frame_vbo)
  %cmp22.not = icmp ugt i64 %7, %frame_vbo
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %31 = call ptr @memset(ptr %call4, i32 0, i32 %shl)
  br label %out1

if.end25:                                         ; preds = %if.end21
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %32 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ni_flags, align 4
  %and = and i32 %33, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else106, label %if.then27

if.then27:                                        ; preds = %if.end25
  %add.i = add nuw nsw i32 %and, 11
  %sh_prom = zext i32 %add.i to i64
  %shr = lshr i64 %frame_vbo, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vbo_data) #9
  %34 = ptrtoint ptr %vbo_data to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %vbo_data, align 8, !annotation !52
  %shl29 = shl nuw nsw i32 2048, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl29)
  %cmp30.not = icmp eq i32 %shl, %shl29
  br i1 %cmp30.not, label %if.end33, label %if.then27.cleanup.thread_crit_edge

if.then27.cleanup.thread_crit_edge:               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end33:                                         ; preds = %if.then27
  %35 = add i32 %shl, -4096
  %36 = lshr exact i32 %35, 12
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %36, label %if.end33.cleanup.thread_crit_edge [
    i32 0, label %if.end33.sw.epilog_crit_edge
    i32 1, label %if.end33.sw.epilog_crit_edge551
    i32 3, label %if.end33.sw.epilog_crit_edge552
    i32 7, label %if.end33.sw.epilog_crit_edge553
  ]

if.end33.sw.epilog_crit_edge553:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end33.sw.epilog_crit_edge552:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end33.sw.epilog_crit_edge551:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end33.cleanup.thread_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

sw.epilog:                                        ; preds = %if.end33.sw.epilog_crit_edge, %if.end33.sw.epilog_crit_edge551, %if.end33.sw.epilog_crit_edge552, %if.end33.sw.epilog_crit_edge553
  %call34 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call5, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef nonnull @WOF_NAME, i8 noundef zeroext 17, ptr noundef null, ptr noundef null)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode, ptr noundef nonnull @.str.4) #9
  br label %cleanup.thread

if.end37:                                         ; preds = %sw.epilog
  %non_res38 = getelementptr inbounds %struct.ATTRIB, ptr %call34, i32 0, i32 2
  %38 = ptrtoint ptr %non_res38 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %non_res38, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool39.not = icmp eq i8 %39, 0
  br i1 %tobool39.not, label %if.end37.if.end45_crit_edge, label %if.else

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else:                                          ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3392, i32 noundef 12) #12
  %tobool42.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool42.not, label %if.else.cleanup.thread_crit_edge, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  %run.0 = phi ptr [ %call7.i.i.i, %if.else.if.end45_crit_edge ], [ null, %if.end37.if.end45_crit_edge ]
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %41 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_size, align 8
  %sub47 = add i64 %42, -1
  %shr49 = ashr i64 %sub47, %sh_prom
  %conv50 = trunc i32 %add.i to i8
  %call51 = call i32 @attr_wof_frame_info(ptr noundef %ni, ptr noundef nonnull %call34, ptr noundef %run.0, i64 noundef %shr, i64 noundef %shr49, i8 noundef zeroext %conv50, ptr noundef nonnull %ondisk_size, ptr noundef nonnull %vbo_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end45.cleanup.thread458_crit_edge

if.end45.cleanup.thread458_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread458

if.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %shr49)
  %cmp55 = icmp eq i64 %shr, %shr49
  br i1 %cmp55, label %if.then57, label %if.end54.if.end69_crit_edge

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then57:                                        ; preds = %if.end54
  %43 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_size, align 8
  %sub61 = add i32 %shl, -1
  %45 = trunc i64 %44 to i32
  %46 = add i32 %45, -1
  %47 = and i32 %46, %sub61
  %conv64 = add i32 %47, 1
  %48 = ptrtoint ptr %non_res38 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %non_res38, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i406 = icmp eq i8 %49, 0
  br i1 %tobool.not.i406, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %data_size.i = getelementptr inbounds %struct.ATTRIB, ptr %call34, i32 0, i32 7, i32 0, i32 6
  %50 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %data_size.i, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #9
  br label %attr_size.exit

cond.false.i:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %53 = getelementptr inbounds %struct.ATTRIB, ptr %call34, i32 0, i32 7
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #9
  %conv2.i = zext i32 %56 to i64
  br label %attr_size.exit

attr_size.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %52, %cond.true.i ], [ %conv2.i, %cond.false.i ]
  %57 = ptrtoint ptr %vbo_data to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vbo_data, align 8
  %sub66 = sub i64 %cond.i, %58
  %conv67 = trunc i64 %sub66 to i32
  %59 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv67, ptr %ondisk_size, align 4
  br label %if.end69

if.end69:                                         ; preds = %attr_size.exit, %if.end54.if.end69_crit_edge
  %unc_size.0 = phi i32 [ %conv64, %attr_size.exit ], [ %shl, %if.end54.if.end69_crit_edge ]
  %60 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ondisk_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %shl)
  %cmp70 = icmp ugt i32 %61, %shl
  br i1 %cmp70, label %if.end69.cleanup.thread458_crit_edge, label %if.end73

if.end69.cleanup.thread458_crit_edge:             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread458

if.end73:                                         ; preds = %if.end69
  %62 = ptrtoint ptr %non_res38 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %non_res38, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool75.not = icmp eq i8 %63, 0
  %64 = ptrtoint ptr %vbo_data to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %vbo_data, align 8
  %conv77 = zext i32 %61 to i64
  %add78 = add i64 %65, %conv77
  br i1 %tobool75.not, label %if.then76, label %if.end89

if.then76:                                        ; preds = %if.end73
  %66 = getelementptr inbounds %struct.ATTRIB, ptr %call34, i32 0, i32 7
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %conv80 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add78, i64 %conv80)
  %cmp81 = icmp ugt i64 %add78, %conv80
  br i1 %cmp81, label %if.then76.cleanup.thread_crit_edge, label %if.end84

if.then76.cleanup.thread_crit_edge:               ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end84:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %data_off.i407 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %data_off.i407 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %data_off.i407, align 4
  %72 = call i16 @llvm.bswap.i16(i16 %71) #9
  %conv.i408 = zext i16 %72 to i32
  %add.ptr.i409 = getelementptr i8, ptr %call34, i32 %conv.i408
  %idx.ext86 = trunc i64 %65 to i32
  %add.ptr87 = getelementptr i8, ptr %add.ptr.i409, i32 %idx.ext86
  %call88 = call fastcc i32 @decompress_lzx_xpress(ptr noundef %1, ptr noundef %add.ptr87, i32 noundef %61, ptr noundef nonnull %call4, i32 noundef %unc_size.0, i32 noundef %shl)
  br label %cleanup.thread

if.end89:                                         ; preds = %if.end73
  %call92 = call i32 @attr_load_runs_range(ptr noundef %ni, i32 noundef -2147483648, ptr noundef nonnull @WOF_NAME, i8 noundef zeroext 17, ptr noundef %run.0, i64 noundef %65, i64 noundef %add78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup, label %if.end89.cleanup.thread458_crit_edge

if.end89.cleanup.thread458_crit_edge:             ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread458

cleanup.thread:                                   ; preds = %if.end84, %if.then76.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then36, %if.end33.cleanup.thread_crit_edge, %if.then27.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ -22, %if.then76.cleanup.thread_crit_edge ], [ -12, %if.else.cleanup.thread_crit_edge ], [ -95, %if.end33.cleanup.thread_crit_edge ], [ -22, %if.then27.cleanup.thread_crit_edge ], [ -22, %if.then36 ], [ %call88, %if.end84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vbo_data) #9
  br label %out1

cleanup.thread458:                                ; preds = %if.end89.cleanup.thread458_crit_edge, %if.end69.cleanup.thread458_crit_edge, %if.end45.cleanup.thread458_crit_edge
  %err.0.ph457 = phi i32 [ %call92, %if.end89.cleanup.thread458_crit_edge ], [ -22, %if.end69.cleanup.thread458_crit_edge ], [ %call51, %if.end45.cleanup.thread458_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vbo_data) #9
  br label %out2

cleanup:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ondisk_size, align 4
  %conv96 = zext i32 %74 to i64
  %and97 = and i64 %65, 4095
  %add98 = add nuw nsw i64 %and97, 4095
  %sub100 = add nuw nsw i64 %add98, %conv96
  %shr101 = lshr i64 %sub100, 12
  %conv102 = trunc i64 %shr101 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vbo_data) #9
  br label %if.end8.i.i

if.else106:                                       ; preds = %if.end25
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call5, i32 0, i32 5
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags.i, align 4
  %77 = and i16 %76, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.i = icmp ne i16 %77, 0
  call void @llvm.assume(i1 %tobool.i)
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %79)
  %cmp109 = icmp ugt i32 %79, 4096
  br i1 %cmp109, label %if.else106.out1_crit_edge, label %if.end112

if.else106.out1_crit_edge:                        ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end112:                                        ; preds = %if.else106
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %call5, i32 0, i32 7, i32 0, i32 3
  %80 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %c_unit, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %81)
  %cmp114.not = icmp eq i8 %81, 4
  br i1 %cmp114.not, label %if.end117, label %if.end112.out1_crit_edge

if.end112.out1_crit_edge:                         ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end117:                                        ; preds = %if.end112
  %82 = getelementptr inbounds %struct.ATTRIB, ptr %call5, i32 0, i32 7
  call void @down_write(ptr noundef %5) #9
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %82, align 8
  %85 = call i64 @llvm.bswap.i64(i64 %84)
  %conv118 = trunc i64 %85 to i32
  call void @run_truncate_around(ptr noundef %run3, i32 noundef %conv118) #9
  %conv119 = zext i8 %3 to i32
  %add120 = add nuw nsw i32 %conv119, 4
  %sh_prom121 = zext i32 %add120 to i64
  %shr122 = lshr i64 %frame_vbo, %sh_prom121
  %conv123 = trunc i64 %shr122 to i32
  %call124 = call i32 @attr_is_frame_compressed(ptr noundef %ni, ptr noundef nonnull %call5, i32 noundef %conv123, ptr noundef nonnull %clst_data) #9
  call void @up_write(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool126.not = icmp eq i32 %call124, 0
  br i1 %tobool126.not, label %if.end128, label %if.end117.out1_crit_edge

if.end117.out1_crit_edge:                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end128:                                        ; preds = %if.end117
  %86 = ptrtoint ptr %clst_data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %clst_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool129.not = icmp eq i32 %87, 0
  br i1 %tobool129.not, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %88 = call ptr @memset(ptr %call4, i32 0, i32 %shl)
  br label %out1

if.end131:                                        ; preds = %if.end128
  %89 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cluster_size, align 8
  %shl135 = shl i32 %87, %conv119
  %91 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %shl135, ptr %ondisk_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %87)
  %cmp136 = icmp ugt i32 %87, 15
  br i1 %cmp136, label %if.then138, label %if.end142

if.then138:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  call void @down_read(ptr noundef %5) #9
  %92 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ondisk_size, align 4
  %call140 = call i32 @ntfs_bio_pages(ptr noundef %1, ptr noundef %run3, ptr noundef %pages, i32 noundef %pages_per_frame, i64 noundef %frame_vbo, i32 noundef %93, i32 noundef 0) #9
  call void @up_read(ptr noundef %5) #9
  br label %out1

if.end142:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  %shl133 = shl i32 %90, 4
  %sub144 = add i32 %shl135, 4095
  %shr145 = lshr i32 %sub144, 12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end142, %cleanup
  %run.2 = phi ptr [ %run.0, %cleanup ], [ %run3, %if.end142 ]
  %vbo_disk.1 = phi i64 [ %65, %cleanup ], [ %frame_vbo, %if.end142 ]
  %unc_size.2 = phi i32 [ %unc_size.0, %cleanup ], [ -1, %if.end142 ]
  %frame_size.0 = phi i32 [ %shl, %cleanup ], [ %shl133, %if.end142 ]
  %npages_disk.1 = phi i32 [ %conv102, %cleanup ], [ %shr145, %if.end142 ]
  %mul = shl nuw nsw i32 %npages_disk.1, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3392) #14
  %tobool150.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool150.not, label %if.end8.i.i.out2_crit_edge, label %for.cond153.preheader

if.end8.i.i.out2_crit_edge:                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

for.cond153.preheader:                            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages_disk.1)
  %cmp154482.not = icmp eq i32 %npages_disk.1, 0
  br i1 %cmp154482.not, label %for.cond153.preheader.for.end165_crit_edge, label %for.cond153.preheader.for.body156_crit_edge

for.cond153.preheader.for.body156_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body156

for.cond153.preheader.for.end165_crit_edge:       ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end165

for.body156:                                      ; preds = %kmap.exit431.for.body156_crit_edge, %for.cond153.preheader.for.body156_crit_edge
  %i.1483 = phi i32 [ %inc164, %kmap.exit431.for.body156_crit_edge ], [ 0, %for.cond153.preheader.for.body156_crit_edge ]
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool158.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool158.not, label %for.body156.out3_crit_edge, label %if.end160

for.body156.out3_crit_edge:                       ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end160:                                        ; preds = %for.body156
  %arrayidx161 = getelementptr ptr, ptr %call9.i.i, i32 %i.1483
  %94 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call38.i.i.i, ptr %arrayidx161, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 788) #9
  %95 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  %and.i.i413 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i413)
  %tobool.not.i.i414 = icmp eq i32 %and.i.i413, 0
  br i1 %tobool.not.i.i414, label %if.end.i.i417, label %if.then.i.i416, !prof !43

if.then.i.i416:                                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i415 = add i32 %97, -1
  br label %_compound_head.exit.i421

if.end.i.i417:                                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i421

_compound_head.exit.i421:                         ; preds = %if.end.i.i417, %if.then.i.i416
  %retval.0.i.i418 = phi i32 [ %sub.i.i415, %if.then.i.i416 ], [ %98, %if.end.i.i417 ]
  %99 = inttoptr i32 %retval.0.i.i418 to ptr
  %100 = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %and.i.i.i.i419 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i419)
  %tobool.not.i.i.i420 = icmp eq i32 %and.i.i.i.i419, 0
  br i1 %tobool.not.i.i.i420, label %folio_flags.exit.i.i, label %if.then.i.i.i422, !prof !43

if.then.i.i.i422:                                 ; preds = %_compound_head.exit.i421
  call void @__sanitizer_cov_trace_pc() #11
  %103 = inttoptr i32 %retval.0.i.i418 to ptr
  call void @dump_page(ptr noundef %103, ptr noundef nonnull @.str.7) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i421
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %99, i32 noundef 4) #9
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %99, align 4
  %and.i.i4.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i423_crit_edge

folio_flags.exit.i.i.if.then.i423_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i423

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %99, i32 1, i32 3, i32 1) #9
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %106, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i423_crit_edge

folio_trylock.exit.i.if.then.i423_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i423

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i423:                                     ; preds = %folio_trylock.exit.i.if.then.i423_crit_edge, %folio_flags.exit.i.i.if.then.i423_crit_edge
  call void @__folio_lock(ptr noundef %99) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i423, %folio_trylock.exit.i.lock_page.exit_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 44) #9
  %107 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i424 = lshr i32 %108, 30
  %109 = zext i32 %shr.i.i424 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i424, label %lock_page.exit.if.then.i428_crit_edge [
    i32 2, label %lock_page.exit.if.else.i430_crit_edge
    i32 3, label %is_highmem_idx.exit.i426
  ]

lock_page.exit.if.else.i430_crit_edge:            ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i430

lock_page.exit.if.then.i428_crit_edge:            ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i428

is_highmem_idx.exit.i426:                         ; preds = %lock_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %110 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp2.i.not.i425 = icmp eq i32 %110, 2
  br i1 %cmp2.i.not.i425, label %is_highmem_idx.exit.i426.if.else.i430_crit_edge, label %is_highmem_idx.exit.i426.if.then.i428_crit_edge

is_highmem_idx.exit.i426.if.then.i428_crit_edge:  ; preds = %is_highmem_idx.exit.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i428

is_highmem_idx.exit.i426.if.else.i430_crit_edge:  ; preds = %is_highmem_idx.exit.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i430

if.then.i428:                                     ; preds = %is_highmem_idx.exit.i426.if.then.i428_crit_edge, %lock_page.exit.if.then.i428_crit_edge
  %call5.i427 = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #9
  br label %kmap.exit431

if.else.i430:                                     ; preds = %is_highmem_idx.exit.i426.if.else.i430_crit_edge, %lock_page.exit.if.else.i430_crit_edge
  %call6.i429 = call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i) #9
  br label %kmap.exit431

kmap.exit431:                                     ; preds = %if.else.i430, %if.then.i428
  %inc164 = add nuw nsw i32 %i.1483, 1
  %exitcond497.not = icmp eq i32 %inc164, %npages_disk.1
  br i1 %exitcond497.not, label %kmap.exit431.for.end165_crit_edge, label %kmap.exit431.for.body156_crit_edge

kmap.exit431.for.body156_crit_edge:               ; preds = %kmap.exit431
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body156

kmap.exit431.for.end165_crit_edge:                ; preds = %kmap.exit431
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end165

for.end165:                                       ; preds = %kmap.exit431.for.end165_crit_edge, %for.cond153.preheader.for.end165_crit_edge
  %cmp154482.not508 = phi i1 [ true, %for.cond153.preheader.for.end165_crit_edge ], [ %cmp154482.not, %kmap.exit431.for.end165_crit_edge ]
  call void @down_read(ptr noundef %5) #9
  %111 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ondisk_size, align 4
  %call167 = call i32 @ntfs_bio_pages(ptr noundef %1, ptr noundef %run.2, ptr noundef nonnull %call9.i.i, i32 noundef %npages_disk.1, i64 noundef %vbo_disk.1, i32 noundef %112, i32 noundef 0) #9
  call void @up_read(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool169.not = icmp eq i32 %call167, 0
  br i1 %tobool169.not, label %if.end171, label %for.end165.out3_crit_edge

for.end165.out3_crit_edge:                        ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end171:                                        ; preds = %for.end165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %113 = load i32, ptr @pgprot_kernel, align 4
  %or172 = or i32 %113, 512
  %call173 = call ptr @vmap(ptr noundef nonnull %call9.i.i, i32 noundef %npages_disk.1, i32 noundef 4, i32 noundef %or172) #9
  %tobool174.not = icmp eq ptr %call173, null
  br i1 %tobool174.not, label %if.end171.out3_crit_edge, label %if.end176

if.end171.out3_crit_edge:                         ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %out3

if.end176:                                        ; preds = %if.end171
  %cmp178.not = icmp eq ptr %run.2, %run3
  br i1 %cmp178.not, label %if.else185, label %if.end197

if.else185:                                       ; preds = %if.end176
  %114 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ondisk_size, align 4
  %call186 = call i32 @decompress_lznt(ptr noundef nonnull %call173, i32 noundef %115, ptr noundef nonnull %call4, i32 noundef %frame_size.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.else185.if.end208_crit_edge, label %if.else190

if.else185.if.end208_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.else190:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool191.not = icmp eq i32 %call186, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call186, i32 %frame_size.0)
  %cmp192 = icmp ugt i32 %call186, %frame_size.0
  %or.cond = select i1 %tobool191.not, i1 true, i1 %cmp192
  br i1 %or.cond, label %if.else190.if.end208_crit_edge, label %if.else190.land.lhs.true_crit_edge

if.else190.land.lhs.true_crit_edge:               ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else190.if.end208_crit_edge:                   ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.end197:                                        ; preds = %if.end176
  %116 = trunc i64 %vbo_disk.1 to i32
  %idx.ext182 = and i32 %116, 4095
  %add.ptr183 = getelementptr i8, ptr %call173, i32 %idx.ext182
  %117 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ondisk_size, align 4
  %call184 = call fastcc i32 @decompress_lzx_xpress(ptr noundef %1, ptr noundef %add.ptr183, i32 noundef %118, ptr noundef nonnull %call4, i32 noundef %unc_size.2, i32 noundef %frame_size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool198.not = icmp eq i32 %call184, 0
  br i1 %tobool198.not, label %if.end197.land.lhs.true_crit_edge, label %if.end197.if.end208_crit_edge

if.end197.if.end208_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.end197.land.lhs.true_crit_edge:                ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end197.land.lhs.true_crit_edge, %if.else190.land.lhs.true_crit_edge
  %conv199 = zext i32 %frame_size.0 to i64
  %add200 = add i64 %conv199, %frame_vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %add200)
  %cmp201 = icmp ult i64 %7, %add200
  br i1 %cmp201, label %if.then203, label %land.lhs.true.if.end208_crit_edge

land.lhs.true.if.end208_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then203:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sub204 = sub i64 %7, %frame_vbo
  %conv205 = trunc i64 %sub204 to i32
  %add.ptr206 = getelementptr i8, ptr %call4, i32 %conv205
  %sub207 = sub i32 %frame_size.0, %conv205
  %119 = call ptr @memset(ptr %add.ptr206, i32 0, i32 %sub207)
  br label %if.end208

if.end208:                                        ; preds = %if.then203, %land.lhs.true.if.end208_crit_edge, %if.end197.if.end208_crit_edge, %if.else190.if.end208_crit_edge, %if.else185.if.end208_crit_edge
  %err.1467 = phi i32 [ 0, %if.then203 ], [ 0, %land.lhs.true.if.end208_crit_edge ], [ %call184, %if.end197.if.end208_crit_edge ], [ %call186, %if.else185.if.end208_crit_edge ], [ -22, %if.else190.if.end208_crit_edge ]
  call void @vunmap(ptr noundef nonnull %call173) #9
  br i1 %cmp154482.not508, label %if.end208.for.end219_crit_edge, label %if.end208.for.body212.preheader_crit_edge

if.end208.for.body212.preheader_crit_edge:        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body212.preheader

if.end208.for.end219_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end219

out3:                                             ; preds = %if.end171.out3_crit_edge, %for.end165.out3_crit_edge, %for.body156.out3_crit_edge
  %cmp154482.not507 = phi i1 [ %cmp154482.not508, %for.end165.out3_crit_edge ], [ %cmp154482.not508, %if.end171.out3_crit_edge ], [ %cmp154482.not, %for.body156.out3_crit_edge ]
  %err.2 = phi i32 [ %call167, %for.end165.out3_crit_edge ], [ -12, %if.end171.out3_crit_edge ], [ -12, %for.body156.out3_crit_edge ]
  br i1 %cmp154482.not507, label %out3.for.end219_crit_edge, label %out3.for.body212.preheader_crit_edge

out3.for.body212.preheader_crit_edge:             ; preds = %out3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body212.preheader

out3.for.end219_crit_edge:                        ; preds = %out3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end219

for.body212.preheader:                            ; preds = %out3.for.body212.preheader_crit_edge, %if.end208.for.body212.preheader_crit_edge
  %err.2511 = phi i32 [ %err.1467, %if.end208.for.body212.preheader_crit_edge ], [ %err.2, %out3.for.body212.preheader_crit_edge ]
  br label %for.body212

for.body212:                                      ; preds = %for.inc217.for.body212_crit_edge, %for.body212.preheader
  %i.2485 = phi i32 [ %inc218, %for.inc217.for.body212_crit_edge ], [ 0, %for.body212.preheader ]
  %arrayidx213 = getelementptr ptr, ptr %call9.i.i, i32 %i.2485
  %120 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx213, align 4
  %tobool214.not = icmp eq ptr %121, null
  br i1 %tobool214.not, label %for.body212.for.inc217_crit_edge, label %if.then215

for.body212.for.inc217_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc217

if.then215:                                       ; preds = %for.body212
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 55) #9
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %shr.i.i432 = lshr i32 %123, 30
  %124 = zext i32 %shr.i.i432 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i432, label %if.then215.kunmap.exit_crit_edge [
    i32 2, label %if.then215.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i434
  ]

if.then215.if.end.i_crit_edge:                    ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then215.kunmap.exit_crit_edge:                 ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i434:                         ; preds = %if.then215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %125 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp2.i.not.i433 = icmp eq i32 %125, 2
  br i1 %cmp2.i.not.i433, label %is_highmem_idx.exit.i434.if.end.i_crit_edge, label %is_highmem_idx.exit.i434.kunmap.exit_crit_edge

is_highmem_idx.exit.i434.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i434
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i434.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i434
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i434.if.end.i_crit_edge, %if.then215.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %121) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i434.kunmap.exit_crit_edge, %if.then215.kunmap.exit_crit_edge
  call void @unlock_page(ptr noundef nonnull %121) #9
  %126 = getelementptr inbounds %struct.page, ptr %121, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %126, align 4
  %and.i.i435 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i435)
  %tobool.not.i.i436 = icmp eq i32 %and.i.i435, 0
  br i1 %tobool.not.i.i436, label %if.end.i.i439, label %if.then.i.i438, !prof !43

if.then.i.i438:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i437 = add i32 %128, -1
  br label %_compound_head.exit.i441

if.end.i.i439:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %121 to i32
  br label %_compound_head.exit.i441

_compound_head.exit.i441:                         ; preds = %if.end.i.i439, %if.then.i.i438
  %retval.0.i.i440 = phi i32 [ %sub.i.i437, %if.then.i.i438 ], [ %129, %if.end.i.i439 ]
  %130 = inttoptr i32 %retval.0.i.i440 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %131 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.i.i.i.i = icmp eq i32 %132, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !44

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i441
  call void @__sanitizer_cov_trace_pc() #11
  %133 = inttoptr i32 %retval.0.i.i440 to ptr
  call void @dump_page(ptr noundef %133, ptr noundef nonnull @.str.6) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i441
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %134 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %134, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ni_read_frame, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !49

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %130, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc217_crit_edge

folio_put_testzero.exit.i.i.for.inc217_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc217

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %130) #9
  br label %for.inc217

for.inc217:                                       ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc217_crit_edge, %for.body212.for.inc217_crit_edge
  %inc218 = add nuw nsw i32 %i.2485, 1
  %exitcond498.not = icmp eq i32 %inc218, %npages_disk.1
  br i1 %exitcond498.not, label %for.inc217.for.end219_crit_edge, label %for.inc217.for.body212_crit_edge

for.inc217.for.body212_crit_edge:                 ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body212

for.inc217.for.end219_crit_edge:                  ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end219

for.end219:                                       ; preds = %for.inc217.for.end219_crit_edge, %out3.for.end219_crit_edge, %if.end208.for.end219_crit_edge
  %err.2512 = phi i32 [ %err.1467, %if.end208.for.end219_crit_edge ], [ %err.2, %out3.for.end219_crit_edge ], [ %err.2511, %for.inc217.for.end219_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %out2

out2:                                             ; preds = %for.end219, %if.end8.i.i.out2_crit_edge, %cleanup.thread458
  %run.3 = phi ptr [ %run.2, %for.end219 ], [ %run.2, %if.end8.i.i.out2_crit_edge ], [ %run.0, %cleanup.thread458 ]
  %err.3 = phi i32 [ %err.2512, %for.end219 ], [ -12, %if.end8.i.i.out2_crit_edge ], [ %err.0.ph457, %cleanup.thread458 ]
  %cmp221.not = icmp eq ptr %run.3, %run3
  %tobool.not.i442 = icmp eq ptr %run.3, null
  %or.cond472 = or i1 %cmp221.not, %tobool.not.i442
  br i1 %or.cond472, label %out2.out1_crit_edge, label %if.then.i443

out2.out1_crit_edge:                              ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.then.i443:                                     ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %run.3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %run.3, align 4
  call void @kvfree(ptr noundef %136) #9
  call void @kfree(ptr noundef nonnull %run.3) #9
  br label %out1

out1:                                             ; preds = %if.then.i443, %out2.out1_crit_edge, %if.then138, %if.then130, %if.end117.out1_crit_edge, %if.end112.out1_crit_edge, %if.else106.out1_crit_edge, %cleanup.thread, %if.then24, %if.then14, %if.then10.out1_crit_edge, %if.end.out1_crit_edge
  %err.4 = phi i32 [ 0, %if.then24 ], [ %err.3, %out2.out1_crit_edge ], [ %call124, %if.end117.out1_crit_edge ], [ %call140, %if.then138 ], [ 0, %if.then130 ], [ -2, %if.end.out1_crit_edge ], [ 0, %if.then14 ], [ 0, %if.then10.out1_crit_edge ], [ -95, %if.else106.out1_crit_edge ], [ -95, %if.end112.out1_crit_edge ], [ %err.0.ph, %cleanup.thread ], [ %err.3, %if.then.i443 ]
  call void @vunmap(ptr noundef nonnull %call4) #9
  br label %out

out:                                              ; preds = %out1, %for.end.out_crit_edge
  %err.5 = phi i32 [ %err.4, %out1 ], [ -12, %for.end.out_crit_edge ]
  br i1 %cmp480.not, label %out.cleanup234_crit_edge, label %out.for.body229_crit_edge

out.for.body229_crit_edge:                        ; preds = %out
  br label %for.body229

out.cleanup234_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup234

for.body229:                                      ; preds = %SetPageUptodate.exit.for.body229_crit_edge, %out.for.body229_crit_edge
  %i.3487 = phi i32 [ %inc232, %SetPageUptodate.exit.for.body229_crit_edge ], [ 0, %out.for.body229_crit_edge ]
  %arrayidx230 = getelementptr ptr, ptr %pages, i32 %i.3487
  %137 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx230, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 55) #9
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %shr.i.i445 = lshr i32 %140, 30
  %141 = zext i32 %shr.i.i445 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i445, label %for.body229.kunmap.exit449_crit_edge [
    i32 2, label %for.body229.if.end.i448_crit_edge
    i32 3, label %is_highmem_idx.exit.i447
  ]

for.body229.if.end.i448_crit_edge:                ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i448

for.body229.kunmap.exit449_crit_edge:             ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit449

is_highmem_idx.exit.i447:                         ; preds = %for.body229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %142 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %cmp2.i.not.i446 = icmp eq i32 %142, 2
  br i1 %cmp2.i.not.i446, label %is_highmem_idx.exit.i447.if.end.i448_crit_edge, label %is_highmem_idx.exit.i447.kunmap.exit449_crit_edge

is_highmem_idx.exit.i447.kunmap.exit449_crit_edge: ; preds = %is_highmem_idx.exit.i447
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit449

is_highmem_idx.exit.i447.if.end.i448_crit_edge:   ; preds = %is_highmem_idx.exit.i447
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i448

if.end.i448:                                      ; preds = %is_highmem_idx.exit.i447.if.end.i448_crit_edge, %for.body229.if.end.i448_crit_edge
  call void @kunmap_high(ptr noundef %138) #9
  br label %kunmap.exit449

kunmap.exit449:                                   ; preds = %if.end.i448, %is_highmem_idx.exit.i447.kunmap.exit449_crit_edge, %for.body229.kunmap.exit449_crit_edge
  %143 = getelementptr inbounds %struct.page, ptr %138, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %143, align 4
  %and.i.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !43

if.then.i:                                        ; preds = %kunmap.exit449
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %138, ptr noundef nonnull @.str.9) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !59
  unreachable

do.body7.i:                                       ; preds = %kunmap.exit449
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %143, align 4
  %and.i31.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %147, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %138 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %148, %if.end.i.i ]
  %149 = inttoptr i32 %retval.0.i.i to ptr
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp.i.not.i = icmp eq i32 %151, -1
  %152 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %143, align 4
  %and.i32.i = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !44

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !43

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %153, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %138 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %154, %if.end.i36.i ]
  %155 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %155, ptr noundef nonnull @.str.10) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !43

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %153, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %138 to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %156, %if.end.i43.i ]
  %157 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %157) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %158 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %143, align 4
  %and.i.i.i.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %138, ptr noundef nonnull @.str.7) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

SetPageUptodate.exit:                             ; preds = %ClearPageError.exit
  call void @_set_bit(i32 noundef 2, ptr noundef %138) #9
  %inc232 = add nuw i32 %i.3487, 1
  %exitcond499.not = icmp eq i32 %inc232, %pages_per_frame
  br i1 %exitcond499.not, label %SetPageUptodate.exit.cleanup234_crit_edge, label %SetPageUptodate.exit.for.body229_crit_edge

SetPageUptodate.exit.for.body229_crit_edge:       ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body229

SetPageUptodate.exit.cleanup234_crit_edge:        ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup234

cleanup234:                                       ; preds = %SetPageUptodate.exit.cleanup234_crit_edge, %out.cleanup234_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clst_data) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ondisk_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #9
  ret i32 %err.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_decompress_file(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %mi3 = alloca ptr, align 4
  %new = alloca i8, align 1
  %ref = alloca %struct.MFT_REF, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %i_size2 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %2 = ptrtoint ptr %i_size2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size2, align 8
  %i_mapping = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gfp_mask.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #9
  %8 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #9
  %9 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %lcn, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #9
  %10 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %clen, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi3) #9
  %11 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi3, align 4, !annotation !52
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %13 to i64
  %add.i = add i64 %3, %conv.i
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom.i = zext i8 %15 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.remove_wof_crit_edge, label %if.end

entry.remove_wof_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_wof

if.end:                                           ; preds = %entry
  %total_zeroes.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 28, i32 0, i32 4
  %16 = ptrtoint ptr %total_zeroes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_zeroes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv2.i)
  %cmp = icmp ult i32 %17, %conv2.i
  br i1 %cmp, label %if.end.if.then179_crit_edge, label %if.end7

if.end.if.then179_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then179

if.end7:                                          ; preds = %if.end
  %ni_flags.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %18 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %19, 15
  %shl = shl nuw nsw i32 2048, %and.i
  %shr = lshr i32 %shl, 12
  %20 = shl nuw nsw i32 %shr, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3392) #14
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.if.then179_crit_edge, label %for.body.lr.ph

if.end7.if.then179_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then179

for.body.lr.ph:                                   ; preds = %if.end7
  %conv16 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %shl)
  %cmp42396.not = icmp ult i32 %shl, 4096
  %21 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %cleanup74.for.body_crit_edge, %for.body.lr.ph
  %vbo.0403 = phi i64 [ 0, %for.body.lr.ph ], [ %add26, %cleanup74.for.body_crit_edge ]
  %index.0402 = phi i32 [ 0, %for.body.lr.ph ], [ %index.1.lcssa, %cleanup74.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #9
  %22 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %new, align 1, !annotation !52
  %add = add i64 %vbo.0403, %conv16
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp17 = icmp ugt i64 %add, %3
  %sub = sub i64 %3, %vbo.0403
  %conv20 = trunc i64 %sub to i32
  %sub22 = add i32 %conv20, 4095
  %shr23 = lshr i32 %sub22, 12
  %bytes.0 = select i1 %cmp17, i32 %conv20, i32 %shl
  %nr_pages.0 = select i1 %cmp17, i32 %shr23, i32 %shr
  %conv25 = zext i32 %bytes.0 to i64
  %add26 = add i64 %vbo.0403, %conv25
  %23 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cluster_mask.i, align 4
  %conv.i319 = zext i32 %24 to i64
  %add.i320 = add i64 %add26, %conv.i319
  %25 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom.i322 = zext i8 %26 to i64
  %shr.i323 = lshr i64 %add.i320, %sh_prom.i322
  %conv2.i324 = trunc i64 %shr.i323 to i32
  %shr29 = lshr i64 %vbo.0403, %sh_prom.i322
  %conv30 = trunc i64 %shr29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30, i32 %conv2.i324)
  %cmp32391 = icmp ult i32 %conv30, %conv2.i324
  br i1 %cmp32391, label %for.body.for.body34_crit_edge, label %for.body.for.cond41.preheader_crit_edge

for.body.for.cond41.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond41.preheader

for.body.for.body34_crit_edge:                    ; preds = %for.body
  br label %for.body34

for.cond41.preheader:                             ; preds = %for.inc.for.cond41.preheader_crit_edge, %for.body.for.cond41.preheader_crit_edge
  br i1 %cmp42396.not, label %for.cond41.preheader.for.end54_crit_edge, label %for.cond41.preheader.for.body44_crit_edge

for.cond41.preheader.for.body44_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body44

for.cond41.preheader.for.end54_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54

for.body34:                                       ; preds = %for.inc.for.body34_crit_edge, %for.body.for.body34_crit_edge
  %vcn.0392 = phi i32 [ %add40, %for.inc.for.body34_crit_edge ], [ %conv30, %for.body.for.body34_crit_edge ]
  %sub35 = sub i32 %conv2.i, %vcn.0392
  %call36 = call i32 @attr_data_get_block(ptr noundef %ni, i32 noundef %vcn.0392, i32 noundef %sub35, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %new) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.inc, label %for.body34.cleanup74.thread_crit_edge

for.body34.cleanup74.thread_crit_edge:            ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup74.thread

for.inc:                                          ; preds = %for.body34
  %27 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clen, align 4
  %add40 = add i32 %28, %vcn.0392
  %cmp32 = icmp ult i32 %add40, %conv2.i324
  br i1 %cmp32, label %for.inc.for.body34_crit_edge, label %for.inc.for.cond41.preheader_crit_edge

for.inc.for.cond41.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond41.preheader

for.inc.for.body34_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.body44:                                       ; preds = %for.inc52.for.body44_crit_edge, %for.cond41.preheader.for.body44_crit_edge
  %i.0398 = phi i32 [ %inc, %for.inc52.for.body44_crit_edge ], [ 0, %for.cond41.preheader.for.body44_crit_edge ]
  %index.1397 = phi i32 [ %inc53, %for.inc52.for.body44_crit_edge ], [ %index.0402, %for.cond41.preheader.for.body44_crit_edge ]
  %call.i = call ptr @pagecache_get_page(ptr noundef %5, i32 noundef %index.1397, i32 noundef 7, i32 noundef %7) #9
  %tobool46.not = icmp eq ptr %call.i, null
  br i1 %tobool46.not, label %while.cond.preheader, label %for.inc52

while.cond.preheader:                             ; preds = %for.body44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0398)
  %tobool48.not394 = icmp eq i32 %i.0398, 0
  br i1 %tobool48.not394, label %while.cond.preheader.cleanup74.thread_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup74.thread_crit_edge:  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup74.thread

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec395.in = phi i32 [ %dec395, %put_page.exit.while.body_crit_edge ], [ %i.0398, %while.cond.preheader.while.body_crit_edge ]
  %dec395 = add i32 %dec395.in, -1
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %dec395
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  call void @unlock_page(ptr noundef %30) #9
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i325, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %35, -1
  br label %_compound_head.exit.i

if.end.i.i325:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %32 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i325, %if.then.i.i
  %retval.0.i.i326 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %36, %if.end.i.i325 ]
  %37 = inttoptr i32 %retval.0.i.i326 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %38 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i.i327 = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i.i327, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !44

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = inttoptr i32 %retval.0.i.i326 to ptr
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.6) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ni_decompress_file, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !49

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %37, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %37) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool48.not = icmp eq i32 %dec395, 0
  br i1 %tobool48.not, label %put_page.exit.cleanup74.thread_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

put_page.exit.cleanup74.thread_crit_edge:         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup74.thread

for.inc52:                                        ; preds = %for.body44
  %arrayidx51 = getelementptr ptr, ptr %call8.i.i, i32 %i.0398
  %42 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %arrayidx51, align 4
  %inc = add i32 %i.0398, 1
  %inc53 = add i32 %index.1397, 1
  %cmp42 = icmp ult i32 %inc, %shr
  br i1 %cmp42, label %for.inc52.for.body44_crit_edge, label %for.inc52.for.end54_crit_edge

for.inc52.for.end54_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54

for.inc52.for.body44_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.end54:                                        ; preds = %for.inc52.for.end54_crit_edge, %for.cond41.preheader.for.end54_crit_edge
  %index.1.lcssa = phi i32 [ %index.0402, %for.cond41.preheader.for.end54_crit_edge ], [ %inc53, %for.inc52.for.end54_crit_edge ]
  %call55 = call i32 @ni_read_frame(ptr noundef %ni, i64 noundef %vbo.0403, ptr noundef nonnull %call8.i.i, i32 noundef %shr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %for.end54.if.end60_crit_edge

for.end54.if.end60_crit_edge:                     ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void @down_read(ptr noundef %21) #9
  %call58 = call i32 @ntfs_bio_pages(ptr noundef %1, ptr noundef %run, ptr noundef nonnull %call8.i.i, i32 noundef %nr_pages.0, i64 noundef %vbo.0403, i32 noundef %bytes.0, i32 noundef 1) #9
  call void @up_read(ptr noundef %21) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %for.end54.if.end60_crit_edge
  %err.4 = phi i32 [ %call55, %for.end54.if.end60_crit_edge ], [ %call58, %if.then57 ]
  br i1 %cmp42396.not, label %if.end60.for.end69_crit_edge, label %if.end60.for.body64_crit_edge

if.end60.for.body64_crit_edge:                    ; preds = %if.end60
  br label %for.body64

if.end60.for.end69_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.body64:                                       ; preds = %put_page.exit347.for.body64_crit_edge, %if.end60.for.body64_crit_edge
  %i.3400 = phi i32 [ %inc68, %put_page.exit347.for.body64_crit_edge ], [ 0, %if.end60.for.body64_crit_edge ]
  %arrayidx65 = getelementptr ptr, ptr %call8.i.i, i32 %i.3400
  %43 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx65, align 4
  call void @unlock_page(ptr noundef %44) #9
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx65, align 4
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i328 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i328)
  %tobool.not.i.i329 = icmp eq i32 %and.i.i328, 0
  br i1 %tobool.not.i.i329, label %if.end.i.i332, label %if.then.i.i331, !prof !43

if.then.i.i331:                                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i330 = add i32 %49, -1
  br label %_compound_head.exit.i337

if.end.i.i332:                                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %46 to i32
  br label %_compound_head.exit.i337

_compound_head.exit.i337:                         ; preds = %if.end.i.i332, %if.then.i.i331
  %retval.0.i.i333 = phi i32 [ %sub.i.i330, %if.then.i.i331 ], [ %50, %if.end.i.i332 ]
  %51 = inttoptr i32 %retval.0.i.i333 to ptr
  %_refcount.i.i.i.i.i334 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  %call.i.i.i.i.i.i.i335 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i334, i32 noundef 4) #9
  %52 = ptrtoint ptr %_refcount.i.i.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i.i336 = icmp eq i32 %53, 0
  br i1 %cmp.i.i.i.i336, label %if.then.i.i.i.i338, label %do.end5.i.i.i.i342, !prof !44

if.then.i.i.i.i338:                               ; preds = %_compound_head.exit.i337
  call void @__sanitizer_cov_trace_pc() #11
  %54 = inttoptr i32 %retval.0.i.i333 to ptr
  call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.6) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end5.i.i.i.i342:                               ; preds = %_compound_head.exit.i337
  %call.i.i.i10.i.i.i.i339 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i334, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i334, i32 1, i32 3, i32 1) #9
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i334, ptr %_refcount.i.i.i.i.i334, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i334) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i.i340 = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i340)
  %cmp.i.i.i.i.i.i.i341 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i340, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ni_decompress_file, %if.then.i.i.i.i.i344)) #9
          to label %folio_put_testzero.exit.i.i345 [label %if.then.i.i.i.i.i344], !srcloc !49

if.then.i.i.i.i.i344:                             ; preds = %do.end5.i.i.i.i342
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i343 = zext i1 %cmp.i.i.i.i.i.i.i341 to i32
  call void @__page_ref_mod_and_test(ptr noundef %51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i343) #9
  br label %folio_put_testzero.exit.i.i345

folio_put_testzero.exit.i.i345:                   ; preds = %if.then.i.i.i.i.i344, %do.end5.i.i.i.i342
  br i1 %cmp.i.i.i.i.i.i.i341, label %if.then.i4.i346, label %folio_put_testzero.exit.i.i345.put_page.exit347_crit_edge

folio_put_testzero.exit.i.i345.put_page.exit347_crit_edge: ; preds = %folio_put_testzero.exit.i.i345
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit347

if.then.i4.i346:                                  ; preds = %folio_put_testzero.exit.i.i345
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %51) #9
  br label %put_page.exit347

put_page.exit347:                                 ; preds = %if.then.i4.i346, %folio_put_testzero.exit.i.i345.put_page.exit347_crit_edge
  %inc68 = add nuw nsw i32 %i.3400, 1
  %exitcond.not = icmp eq i32 %inc68, %umax
  br i1 %exitcond.not, label %put_page.exit347.for.end69_crit_edge, label %put_page.exit347.for.body64_crit_edge

put_page.exit347.for.body64_crit_edge:            ; preds = %put_page.exit347
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body64

put_page.exit347.for.end69_crit_edge:             ; preds = %put_page.exit347
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.end69:                                        ; preds = %put_page.exit347.for.end69_crit_edge, %if.end60.for.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool70.not = icmp eq i32 %err.4, 0
  br i1 %tobool70.not, label %cleanup74, label %for.end69.cleanup74.thread_crit_edge

for.end69.cleanup74.thread_crit_edge:             ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup74.thread

cleanup74.thread:                                 ; preds = %for.end69.cleanup74.thread_crit_edge, %put_page.exit.cleanup74.thread_crit_edge, %while.cond.preheader.cleanup74.thread_crit_edge, %for.body34.cleanup74.thread_crit_edge
  %err.5.ph = phi i32 [ -12, %while.cond.preheader.cleanup74.thread_crit_edge ], [ -12, %put_page.exit.cleanup74.thread_crit_edge ], [ %call36, %for.body34.cleanup74.thread_crit_edge ], [ %err.4, %for.end69.cleanup74.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #9
  br label %if.then179

cleanup74:                                        ; preds = %for.end69
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2202, i32 noundef 0) #9
  %call.i348 = call i32 @__cond_resched() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #9
  %cmp14 = icmp ugt i64 %3, %add26
  br i1 %cmp14, label %cleanup74.for.body_crit_edge, label %cleanup74.remove_wof_crit_edge

cleanup74.remove_wof_crit_edge:                   ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_wof

cleanup74.for.body_crit_edge:                     ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

remove_wof:                                       ; preds = %cleanup74.remove_wof_crit_edge, %entry.remove_wof_crit_edge
  %pages.0 = phi ptr [ null, %entry.remove_wof_crit_edge ], [ %call8.i.i, %cleanup74.remove_wof_crit_edge ]
  %56 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %le, align 4
  %call83404 = call ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, ptr noundef null)
  %tobool84.not405 = icmp eq ptr %call83404, null
  br i1 %tobool84.not405, label %remove_wof.while.end129_crit_edge, label %while.body85.lr.ph

remove_wof.while.end129_crit_edge:                ; preds = %remove_wof
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end129

while.body85.lr.ph:                               ; preds = %remove_wof
  %57 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %58 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  br label %while.body85

while.body85:                                     ; preds = %cleanup123.while.body85_crit_edge, %while.body85.lr.ph
  %call83406 = phi ptr [ %call83404, %while.body85.lr.ph ], [ %call83, %cleanup123.while.body85_crit_edge ]
  %59 = ptrtoint ptr %call83406 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call83406, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %60)
  %cmp86 = icmp eq i32 %60, -1073741824
  br i1 %cmp86, label %if.then88, label %while.body85.if.end91_crit_edge

while.body85.if.end91_crit_edge:                  ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then88:                                        ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #9
  %61 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rno.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #9
  %64 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ref, align 4
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %57, align 4
  %66 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mrec.i, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %seq.i, align 8
  %70 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %58, align 2
  %call90 = call i32 @ntfs_remove_reparse(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %ref) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %while.body85.if.end91_crit_edge
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call83406, i32 0, i32 2
  %71 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool92.not = icmp eq i8 %72, 0
  br i1 %tobool92.not, label %if.end91.cleanup123_crit_edge, label %if.end94

if.end91.cleanup123_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup123

if.end94:                                         ; preds = %if.end91
  %73 = ptrtoint ptr %call83406 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call83406, align 8
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %74, label %if.end94.cleanup123_crit_edge [
    i32 -1073741824, label %if.end94.if.end109_crit_edge
    i32 -2147483648, label %lor.lhs.false
  ]

if.end94.if.end109_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end94.cleanup123_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup123

lor.lhs.false:                                    ; preds = %if.end94
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %call83406, i32 0, i32 3
  %76 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %77)
  %cmp102.not = icmp eq i8 %77, 17
  br i1 %cmp102.not, label %lor.lhs.false104, label %lor.lhs.false.cleanup123_crit_edge

lor.lhs.false.cleanup123_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup123

lor.lhs.false104:                                 ; preds = %lor.lhs.false
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call83406, i32 0, i32 4
  %78 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %name_off.i, align 2
  %80 = call i16 @llvm.bswap.i16(i16 %79) #9
  %conv.i349 = zext i16 %80 to i32
  %add.ptr.i = getelementptr i8, ptr %call83406, i32 %conv.i349
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(34) %add.ptr.i, ptr noundef nonnull dereferenceable(34) @WOF_NAME, i32 34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool107.not = icmp eq i32 %bcmp, 0
  br i1 %tobool107.not, label %lor.lhs.false104.if.end109_crit_edge, label %lor.lhs.false104.cleanup123_crit_edge

lor.lhs.false104.cleanup123_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup123

lor.lhs.false104.if.end109_crit_edge:             ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end109:                                        ; preds = %lor.lhs.false104.if.end109_crit_edge, %if.end94.if.end109_crit_edge
  %81 = getelementptr inbounds %struct.ATTRIB, ptr %call83406, i32 0, i32 7
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %81, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83)
  %conv111 = trunc i64 %84 to i32
  %evcn112 = getelementptr inbounds %struct.ATTRIB, ptr %call83406, i32 0, i32 7, i32 0, i32 1
  %85 = ptrtoint ptr %evcn112 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %evcn112, align 8
  %87 = call i64 @llvm.bswap.i64(i64 %86)
  %conv113 = trunc i64 %87 to i32
  %add114 = add i32 %conv113, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add114, i32 %conv111)
  %cmp115.not = icmp ugt i32 %add114, %conv111
  br i1 %cmp115.not, label %if.end118, label %if.end109.cleanup123_crit_edge

if.end109.cleanup123_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup123

if.end118:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.ATTRIB, ptr %call83406, i32 0, i32 1
  %88 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %call83406, i32 0, i32 7, i32 0, i32 2
  %91 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %run_off, align 8
  %93 = call i16 @llvm.bswap.i16(i16 %92)
  %conv119 = zext i16 %93 to i32
  %94 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rno.i, align 8
  %add.ptr = getelementptr i8, ptr %call83406, i32 %conv119
  %sub121 = sub i32 %90, %conv119
  %call122 = call i32 @run_unpack_ex(ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %1, i32 noundef %95, i32 noundef %conv111, i32 noundef %conv113, i32 noundef %conv111, ptr noundef %add.ptr, i32 noundef %sub121) #9
  br label %cleanup123

cleanup123:                                       ; preds = %if.end118, %if.end109.cleanup123_crit_edge, %lor.lhs.false104.cleanup123_crit_edge, %lor.lhs.false.cleanup123_crit_edge, %if.end94.cleanup123_crit_edge, %if.end91.cleanup123_crit_edge
  %call83 = call ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef nonnull %call83406, ptr noundef nonnull %le, ptr noundef null)
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %cleanup123.while.end129_crit_edge, label %cleanup123.while.body85_crit_edge

cleanup123.while.body85_crit_edge:                ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body85

cleanup123.while.end129_crit_edge:                ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end129

while.end129:                                     ; preds = %cleanup123.while.end129_crit_edge, %remove_wof.while.end129_crit_edge
  %call130 = call i32 @ni_remove_attr(ptr noundef %ni, i32 noundef -2147483648, ptr noundef nonnull @WOF_NAME, i32 noundef 17, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %while.end129.if.then179_crit_edge

while.end129.if.then179_crit_edge:                ; preds = %while.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then179

if.end133:                                        ; preds = %while.end129
  %call134 = call i32 @ni_remove_attr(ptr noundef %ni, i32 noundef -1073741824, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.if.then179_crit_edge

if.end133.if.then179_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then179

if.end137:                                        ; preds = %if.end133
  %call138 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi3)
  %tobool139.not = icmp eq ptr %call138, null
  br i1 %tobool139.not, label %if.end137.if.then179_crit_edge, label %if.end141

if.end137.if.then179_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then179

if.end141:                                        ; preds = %if.end137
  %non_res142 = getelementptr inbounds %struct.ATTRIB, ptr %call138, i32 0, i32 2
  %96 = ptrtoint ptr %non_res142 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %non_res142, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool144.not = icmp eq i8 %97, 0
  br i1 %tobool144.not, label %if.end141.if.end171_crit_edge, label %land.lhs.true145

if.end141.if.end171_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

land.lhs.true145:                                 ; preds = %if.end141
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call138, i32 0, i32 5
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %flags.i, align 4
  %100 = and i16 %99, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.i.not = icmp eq i16 %100, 0
  br i1 %tobool.i.not, label %land.lhs.true145.if.end171_crit_edge, label %if.then148

land.lhs.true145.if.end171_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then148:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mi3, align 4
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mrec, align 4
  %used150 = getelementptr inbounds %struct.MFT_REC, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %used150 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %used150, align 8
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %size152 = getelementptr inbounds %struct.ATTRIB, ptr %call138, i32 0, i32 1
  %108 = ptrtoint ptr %size152 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size152, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %run_off154 = getelementptr inbounds %struct.ATTRIB, ptr %call138, i32 0, i32 7, i32 0, i32 2
  %111 = ptrtoint ptr %run_off154 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %run_off154, align 8
  %113 = call i16 @llvm.bswap.i16(i16 %112)
  %conv155 = zext i16 %113 to i32
  %add.ptr156 = getelementptr i8, ptr %call138, i32 %conv155
  %add.ptr157 = getelementptr i8, ptr %add.ptr156, i32 -8
  %114 = ptrtoint ptr %add.ptr156 to i32
  %115 = ptrtoint ptr %104 to i32
  %sub158.neg = add i32 %107, %115
  %sub159 = sub i32 %sub158.neg, %114
  %116 = call ptr @memmove(ptr %add.ptr157, ptr %add.ptr156, i32 %sub159)
  %sub160 = add i32 %110, -8
  %117 = call i32 @llvm.bswap.i32(i32 %sub160)
  %118 = ptrtoint ptr %size152 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %size152, align 4
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %flags.i, align 4
  %121 = and i16 %120, -129
  store i16 %121, ptr %flags.i, align 4
  %sub165 = add i16 %113, -8
  %122 = call i16 @llvm.bswap.i16(i16 %sub165)
  %123 = ptrtoint ptr %run_off154 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %run_off154, align 8
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %call138, i32 0, i32 7, i32 0, i32 3
  %124 = ptrtoint ptr %c_unit to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %c_unit, align 2
  %sub168 = add i32 %107, -8
  %125 = call i32 @llvm.bswap.i32(i32 %sub168)
  %126 = ptrtoint ptr %used150 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %used150, align 8
  %127 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mi3, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %dirty, align 4
  %std_fa = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 4
  %130 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %std_fa, align 4
  %and170 = and i32 %131, -393217
  store i32 %and170, ptr %std_fa, align 4
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #9
  br label %if.end171

if.end171:                                        ; preds = %if.then148, %land.lhs.true145.if.end171_crit_edge, %if.end141.if.end171_crit_edge
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %132 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ni_flags, align 4
  %and172 = and i32 %133, -16
  store i32 %and172, ptr %ni_flags, align 4
  %offs_page = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 3
  %134 = ptrtoint ptr %offs_page to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %offs_page, align 4
  %tobool173.not = icmp eq ptr %135, null
  br i1 %tobool173.not, label %if.end171.out_crit_edge, label %if.then174

if.end171.out_crit_edge:                          ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then174:                                       ; preds = %if.end171
  %136 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %136, align 4
  %and.i.i350 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i350)
  %tobool.not.i.i351 = icmp eq i32 %and.i.i350, 0
  br i1 %tobool.not.i.i351, label %if.end.i.i354, label %if.then.i.i353, !prof !43

if.then.i.i353:                                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i352 = add i32 %138, -1
  br label %_compound_head.exit.i359

if.end.i.i354:                                    ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %135 to i32
  br label %_compound_head.exit.i359

_compound_head.exit.i359:                         ; preds = %if.end.i.i354, %if.then.i.i353
  %retval.0.i.i355 = phi i32 [ %sub.i.i352, %if.then.i.i353 ], [ %139, %if.end.i.i354 ]
  %140 = inttoptr i32 %retval.0.i.i355 to ptr
  %_refcount.i.i.i.i.i356 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 3
  %call.i.i.i.i.i.i.i357 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i356, i32 noundef 4) #9
  %141 = ptrtoint ptr %_refcount.i.i.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %_refcount.i.i.i.i.i356, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.i.i.i.i358 = icmp eq i32 %142, 0
  br i1 %cmp.i.i.i.i358, label %if.then.i.i.i.i360, label %do.end5.i.i.i.i364, !prof !44

if.then.i.i.i.i360:                               ; preds = %_compound_head.exit.i359
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %140, ptr noundef nonnull @.str.6) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end5.i.i.i.i364:                               ; preds = %_compound_head.exit.i359
  %call.i.i.i10.i.i.i.i361 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i356, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i356, i32 1, i32 3, i32 1) #9
  %143 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i356, ptr %_refcount.i.i.i.i.i356, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i356) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i.i362 = extractvalue { i32, i32 } %143, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i362)
  %cmp.i.i.i.i.i.i.i363 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i362, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ni_decompress_file, %if.then.i.i.i.i.i366)) #9
          to label %folio_put_testzero.exit.i.i367 [label %if.then.i.i.i.i.i366], !srcloc !49

if.then.i.i.i.i.i366:                             ; preds = %do.end5.i.i.i.i364
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i365 = zext i1 %cmp.i.i.i.i.i.i.i363 to i32
  call void @__page_ref_mod_and_test(ptr noundef %140, i32 noundef -1, i32 noundef %conv.i.i.i.i.i365) #9
  br label %folio_put_testzero.exit.i.i367

folio_put_testzero.exit.i.i367:                   ; preds = %if.then.i.i.i.i.i366, %do.end5.i.i.i.i364
  br i1 %cmp.i.i.i.i.i.i.i363, label %if.then.i4.i368, label %folio_put_testzero.exit.i.i367.put_page.exit369_crit_edge

folio_put_testzero.exit.i.i367.put_page.exit369_crit_edge: ; preds = %folio_put_testzero.exit.i.i367
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit369

if.then.i4.i368:                                  ; preds = %folio_put_testzero.exit.i.i367
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %140) #9
  br label %put_page.exit369

put_page.exit369:                                 ; preds = %if.then.i4.i368, %folio_put_testzero.exit.i.i367.put_page.exit369_crit_edge
  %144 = ptrtoint ptr %offs_page to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %offs_page, align 4
  br label %out

out:                                              ; preds = %put_page.exit369, %if.end171.out_crit_edge
  %a_ops = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %145 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @ntfs_aops, ptr %a_ops, align 4
  call void @kfree(ptr noundef %pages.0) #9
  br label %cleanup182

if.then179:                                       ; preds = %if.end137.if.then179_crit_edge, %if.end133.if.then179_crit_edge, %while.end129.if.then179_crit_edge, %cleanup74.thread, %if.end7.if.then179_crit_edge, %if.end.if.then179_crit_edge
  %pages.1.ph = phi ptr [ %call8.i.i, %cleanup74.thread ], [ %pages.0, %if.end137.if.then179_crit_edge ], [ null, %if.end7.if.then179_crit_edge ], [ null, %if.end.if.then179_crit_edge ], [ %pages.0, %if.end133.if.then179_crit_edge ], [ %pages.0, %while.end129.if.then179_crit_edge ]
  %err.6.ph = phi i32 [ %err.5.ph, %cleanup74.thread ], [ -22, %if.end137.if.then179_crit_edge ], [ -12, %if.end7.if.then179_crit_edge ], [ -28, %if.end.if.then179_crit_edge ], [ %call134, %if.end133.if.then179_crit_edge ], [ %call130, %while.end129.if.then179_crit_edge ]
  call void @kfree(ptr noundef %pages.1.ph) #9
  call void @make_bad_inode(ptr noundef %vfs_inode) #9
  %call180 = call i32 @ntfs_set_state(ptr noundef %1, i32 noundef 2) #9
  br label %cleanup182

cleanup182:                                       ; preds = %if.then179, %out
  %err.6384 = phi i32 [ 0, %out ], [ %err.6.ph, %if.then179 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #9
  ret i32 %err.6384
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_data_get_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_bio_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_wof_frame_info(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decompress_lzx_xpress(ptr noundef %sbi, ptr noundef %cmpr, i32 noundef %cmpr_size, ptr noundef %unc, i32 noundef %unc_size, i32 noundef %frame_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %cmpr_size, i32 %unc_size)
  %cmp = icmp eq i32 %cmpr_size, %unc_size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memcpy(ptr %unc, ptr %cmpr, i32 %cmpr_size)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %frame_size)
  %cmp1 = icmp eq i32 %frame_size, 32768
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %mtx_lzx = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 33, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mtx_lzx, i32 noundef 0) #9
  %lzx = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 33, i32 5
  %1 = ptrtoint ptr %lzx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lzx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then4, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %if.then2
  %call = tail call ptr @lzx_allocate_decompressor() #9
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then4.out1_crit_edge, label %if.end7

if.then4.out1_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end7:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %lzx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %lzx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %if.then2.if.end10_crit_edge
  %ctx.0 = phi ptr [ %2, %if.then2.if.end10_crit_edge ], [ %call, %if.end7 ]
  %call11 = tail call i32 @lzx_decompress(ptr noundef nonnull %ctx.0, ptr noundef %cmpr, i32 noundef %cmpr_size, ptr noundef %unc, i32 noundef %unc_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i32 0, i32 -22
  br label %out1

out1:                                             ; preds = %if.end10, %if.then4.out1_crit_edge
  %err.0 = phi i32 [ -12, %if.then4.out1_crit_edge ], [ %spec.select, %if.end10 ]
  tail call void @mutex_unlock(ptr noundef %mtx_lzx) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %mtx_xpress = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 33, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx_xpress, i32 noundef 0) #9
  %xpress = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %xpress to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xpress, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.then20, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then20:                                        ; preds = %if.else
  %call21 = tail call ptr @xpress_allocate_decompressor() #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then20.out2_crit_edge, label %if.end24

if.then20.out2_crit_edge:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %xpress to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call21, ptr %xpress, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.else.if.end27_crit_edge
  %ctx.1 = phi ptr [ %5, %if.else.if.end27_crit_edge ], [ %call21, %if.end24 ]
  %call28 = tail call i32 @xpress_decompress(ptr noundef nonnull %ctx.1, ptr noundef %cmpr, i32 noundef %cmpr_size, ptr noundef %unc, i32 noundef %unc_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %spec.select60 = select i1 %tobool29.not, i32 0, i32 -22
  br label %out2

out2:                                             ; preds = %if.end27, %if.then20.out2_crit_edge
  %err.1 = phi i32 [ -12, %if.then20.out2_crit_edge ], [ %spec.select60, %if.end27 ]
  tail call void @mutex_unlock(ptr noundef %mtx_xpress) #9
  br label %cleanup

cleanup:                                          ; preds = %out2, %out1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %out1 ], [ %err.1, %out2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_load_runs_range(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_truncate_around(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decompress_lznt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_write_frame(ptr noundef %ni, ptr noundef %pages, i32 noundef %pages_per_frame) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  %attr = alloca ptr, align 4
  %mi7 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits, align 8
  %add = add i8 %3, 4
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_size, align 8
  %shl = shl i32 %5, 4
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 4
  %index = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %conv3 = zext i32 %9 to i64
  %shl4 = shl nuw nsw i64 %conv3, 12
  %sh_prom = zext i8 %add to i64
  %shr = lshr i64 %shl4, %sh_prom
  %conv6 = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #9
  %10 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %le, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi7) #9
  %11 = ptrtoint ptr %mi7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi7, align 4, !annotation !52
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi7)
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %attr, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 4
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not = icmp eq i16 %15, 0
  br i1 %tobool.i.not, label %do.end, label %if.end33, !prof !44

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2689, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end33:                                         ; preds = %if.end
  %16 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %17)
  %cmp = icmp ugt i32 %17, 4096
  br i1 %cmp, label %if.end33.out_crit_edge, label %if.end37

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end37:                                         ; preds = %if.end33
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool38.not = icmp eq i8 %19, 0
  br i1 %tobool38.not, label %if.then39, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then39:                                        ; preds = %if.end37
  %20 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  call void @down_write(ptr noundef %20) #9
  %21 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %attr, align 4
  %23 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %le, align 4
  %25 = ptrtoint ptr %mi7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mi7, align 4
  %27 = getelementptr inbounds %struct.ATTRIB, ptr %22, i32 0, i32 7
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %conv40 = zext i32 %30 to i64
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %31 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages, align 4
  %call42 = call i32 @attr_make_nonresident(ptr noundef %ni, ptr noundef %22, ptr noundef %24, ptr noundef %26, i64 noundef %conv40, ptr noundef %run, ptr noundef nonnull %attr, ptr noundef %32) #9
  call void @up_write(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %if.then39.if.end47_crit_edge, label %if.then39.out_crit_edge

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end47:                                         ; preds = %if.then39.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %33 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attr, align 4
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %34, i32 0, i32 7, i32 0, i32 3
  %35 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %c_unit, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp49.not = icmp eq i8 %36, 4
  br i1 %cmp49.not, label %if.end52, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end52:                                         ; preds = %if.end47
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %pages_per_frame, i32 4) #9
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %if.end52.out_crit_edge, label %if.end7.i.i, !prof !44

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7.i.i:                                      ; preds = %if.end52
  %39 = extractvalue { i32, i1 } %37, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3392) #14
  %tobool54.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool54.not, label %if.end7.i.i.out_crit_edge, label %for.cond.preheader

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_per_frame)
  %cmp57268.not = icmp eq i32 %pages_per_frame, 0
  br i1 %cmp57268.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %kmap.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0269 = phi i32 [ %inc, %kmap.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool60.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool60.not, label %for.body.out1_crit_edge, label %if.end62

for.body.out1_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

if.end62:                                         ; preds = %for.body
  %arrayidx63 = getelementptr ptr, ptr %call8.i.i, i32 %i.0269
  %40 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call38.i.i.i, ptr %arrayidx63, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 788) #9
  %41 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i233, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %43, -1
  br label %_compound_head.exit.i

if.end.i.i233:                                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i233, %if.then.i.i
  %retval.0.i.i234 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %44, %if.end.i.i233 ]
  %45 = inttoptr i32 %retval.0.i.i234 to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i235, !prof !43

if.then.i.i.i235:                                 ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = inttoptr i32 %retval.0.i.i234 to ptr
  call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.7) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef 4) #9
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %45, align 4
  %and.i.i4.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i236 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i236, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %45, i32 1, i32 3, i32 1) #9
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %45) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 44) #9
  %53 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i = lshr i32 %54, 30
  %55 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i.i, label %lock_page.exit.if.then.i237_crit_edge [
    i32 2, label %lock_page.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

lock_page.exit.if.else.i_crit_edge:               ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

lock_page.exit.if.then.i237_crit_edge:            ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i237

is_highmem_idx.exit.i:                            ; preds = %lock_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %56 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp2.i.not.i = icmp eq i32 %56, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i237_crit_edge

is_highmem_idx.exit.i.if.then.i237_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i237

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i237:                                     ; preds = %is_highmem_idx.exit.i.if.then.i237_crit_edge, %lock_page.exit.if.then.i237_crit_edge
  %call5.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %lock_page.exit.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i237
  %inc = add nuw i32 %i.0269, 1
  %exitcond.not = icmp eq i32 %inc, %pages_per_frame
  br i1 %exitcond.not, label %kmap.exit.for.end_crit_edge, label %kmap.exit.for.body_crit_edge

kmap.exit.for.body_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

kmap.exit.for.end_crit_edge:                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %kmap.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %57 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %57, 512
  %call65 = call ptr @vmap(ptr noundef nonnull %call8.i.i, i32 noundef %pages_per_frame, i32 noundef 4, i32 noundef %or) #9
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %for.end.out1_crit_edge, label %for.cond69.preheader

for.end.out1_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out1

for.cond69.preheader:                             ; preds = %for.end
  br i1 %cmp57268.not, label %for.cond69.preheader.for.end77_crit_edge, label %for.cond69.preheader.for.body72_crit_edge

for.cond69.preheader.for.body72_crit_edge:        ; preds = %for.cond69.preheader
  br label %for.body72

for.cond69.preheader.for.end77_crit_edge:         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.body72:                                       ; preds = %kmap.exit245.for.body72_crit_edge, %for.cond69.preheader.for.body72_crit_edge
  %i.1271 = phi i32 [ %inc76, %kmap.exit245.for.body72_crit_edge ], [ 0, %for.cond69.preheader.for.body72_crit_edge ]
  %arrayidx73 = getelementptr ptr, ptr %pages, i32 %i.1271
  %58 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx73, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 44) #9
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %shr.i.i238 = lshr i32 %61, 30
  %62 = zext i32 %shr.i.i238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i.i238, label %for.body72.if.then.i242_crit_edge [
    i32 2, label %for.body72.if.else.i244_crit_edge
    i32 3, label %is_highmem_idx.exit.i240
  ]

for.body72.if.else.i244_crit_edge:                ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i244

for.body72.if.then.i242_crit_edge:                ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i242

is_highmem_idx.exit.i240:                         ; preds = %for.body72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %63 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp2.i.not.i239 = icmp eq i32 %63, 2
  br i1 %cmp2.i.not.i239, label %is_highmem_idx.exit.i240.if.else.i244_crit_edge, label %is_highmem_idx.exit.i240.if.then.i242_crit_edge

is_highmem_idx.exit.i240.if.then.i242_crit_edge:  ; preds = %is_highmem_idx.exit.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i242

is_highmem_idx.exit.i240.if.else.i244_crit_edge:  ; preds = %is_highmem_idx.exit.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i244

if.then.i242:                                     ; preds = %is_highmem_idx.exit.i240.if.then.i242_crit_edge, %for.body72.if.then.i242_crit_edge
  %call5.i241 = call ptr @page_address(ptr noundef %59) #9
  br label %kmap.exit245

if.else.i244:                                     ; preds = %is_highmem_idx.exit.i240.if.else.i244_crit_edge, %for.body72.if.else.i244_crit_edge
  %call6.i243 = call ptr @kmap_high(ptr noundef %59) #9
  br label %kmap.exit245

kmap.exit245:                                     ; preds = %if.else.i244, %if.then.i242
  %inc76 = add nuw i32 %i.1271, 1
  %exitcond277.not = icmp eq i32 %inc76, %pages_per_frame
  br i1 %exitcond277.not, label %kmap.exit245.for.end77_crit_edge, label %kmap.exit245.for.body72_crit_edge

kmap.exit245.for.body72_crit_edge:                ; preds = %kmap.exit245
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72

kmap.exit245.for.end77_crit_edge:                 ; preds = %kmap.exit245
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.end77:                                        ; preds = %kmap.exit245.for.end77_crit_edge, %for.cond69.preheader.for.end77_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %64 = load i32, ptr @pgprot_kernel, align 4
  %or78 = or i32 %64, 512
  %call79 = call ptr @vmap(ptr noundef %pages, i32 noundef %pages_per_frame, i32 noundef 4, i32 noundef %or78) #9
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %for.end77.out2_crit_edge, label %if.end82

for.end77.out2_crit_edge:                         ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end82:                                         ; preds = %for.end77
  %compress = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 33
  call void @mutex_lock_nested(ptr noundef %compress, i32 noundef 0) #9
  %lznt84 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 33, i32 1
  %65 = ptrtoint ptr %lznt84 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lznt84, align 4
  %tobool85.not = icmp eq ptr %66, null
  br i1 %tobool85.not, label %if.then86, label %if.end82.if.end95_crit_edge

if.end82.if.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then86:                                        ; preds = %if.end82
  %call87 = call ptr @get_lznt_ctx(i32 noundef 0) #9
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %compress) #9
  br label %out3

if.end92:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %lznt84 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call87, ptr %lznt84, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end92, %if.end82.if.end95_crit_edge
  %68 = ptrtoint ptr %lznt84 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lznt84, align 4
  %call98 = call i32 @compress_lznt(ptr noundef nonnull %call79, i32 noundef %shl, ptr noundef nonnull %call65, i32 noundef %shl, ptr noundef %69) #9
  call void @mutex_unlock(ptr noundef %compress) #9
  call void @kfree(ptr noundef null) #9
  %70 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cluster_size, align 8
  %add102 = add i32 %71, %call98
  call void @__sanitizer_cov_trace_cmp4(i32 %add102, i32 %shl)
  %cmp103 = icmp ugt i32 %add102, %shl
  br i1 %cmp103, label %if.end95.if.end113_crit_edge, label %if.else

if.end95.if.end113_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.else:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool106.not = icmp eq i32 %call98, 0
  br i1 %tobool106.not, label %if.else.if.end113_crit_edge, label %if.then107

if.else.if.end113_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv108 = zext i32 %call98 to i64
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %73 to i64
  %add.i = add nuw nsw i64 %conv.i, %conv108
  %cluster_mask_inv.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %cluster_mask_inv.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %cluster_mask_inv.i, align 8
  %and.i = and i64 %add.i, %75
  %conv110 = trunc i64 %and.i to i32
  %add.ptr = getelementptr i8, ptr %call65, i32 %call98
  %sub = sub i32 %conv110, %call98
  %76 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %if.else.if.end113_crit_edge, %if.end95.if.end113_crit_edge
  %compr_size.0 = phi i32 [ %call98, %if.then107 ], [ %shl, %if.end95.if.end113_crit_edge ], [ 0, %if.else.if.end113_crit_edge ]
  %ondisk_size.0 = phi i32 [ %conv110, %if.then107 ], [ %shl, %if.end95.if.end113_crit_edge ], [ 0, %if.else.if.end113_crit_edge ]
  %77 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  call void @down_write(ptr noundef %77) #9
  %run115 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %78 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %attr, align 4
  %80 = getelementptr inbounds %struct.ATTRIB, ptr %79, i32 0, i32 7
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %80, align 8
  %83 = call i64 @llvm.bswap.i64(i64 %82)
  %conv116 = trunc i64 %83 to i32
  call void @run_truncate_around(ptr noundef %run115, i32 noundef %conv116) #9
  %i_valid = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %84 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %i_valid, align 8
  %call117 = call i32 @attr_allocate_frame(ptr noundef %ni, i32 noundef %conv6, i32 noundef %compr_size.0, i64 noundef %85) #9
  call void @up_write(ptr noundef %77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool119.not = icmp eq i32 %call117, 0
  br i1 %tobool119.not, label %if.end121, label %if.end113.out2_crit_edge

if.end113.out2_crit_edge:                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end121:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ondisk_size.0)
  %tobool122.not = icmp eq i32 %ondisk_size.0, 0
  br i1 %tobool122.not, label %if.end121.out2_crit_edge, label %if.end124

if.end121.out2_crit_edge:                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end124:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  call void @down_read(ptr noundef %77) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %ondisk_size.0, i32 %shl)
  %cmp127 = icmp ult i32 %ondisk_size.0, %shl
  %call53.pages = select i1 %cmp127, ptr %call8.i.i, ptr %pages
  %call129 = call i32 @ntfs_bio_pages(ptr noundef %1, ptr noundef %run115, ptr noundef %call53.pages, i32 noundef %pages_per_frame, i64 noundef %shl4, i32 noundef %ondisk_size.0, i32 noundef 1) #9
  call void @up_read(ptr noundef %77) #9
  br label %out3

out3:                                             ; preds = %if.end124, %if.then89
  %err.0 = phi i32 [ %call129, %if.end124 ], [ -12, %if.then89 ]
  call void @vunmap(ptr noundef nonnull %call79) #9
  br label %out2

out2:                                             ; preds = %out3, %if.end121.out2_crit_edge, %if.end113.out2_crit_edge, %for.end77.out2_crit_edge
  %err.1 = phi i32 [ %call117, %if.end113.out2_crit_edge ], [ %err.0, %out3 ], [ 0, %if.end121.out2_crit_edge ], [ -12, %for.end77.out2_crit_edge ]
  br i1 %cmp57268.not, label %out2.for.end138_crit_edge, label %out2.for.body134_crit_edge

out2.for.body134_crit_edge:                       ; preds = %out2
  br label %for.body134

out2.for.end138_crit_edge:                        ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end138

for.body134:                                      ; preds = %kunmap.exit.for.body134_crit_edge, %out2.for.body134_crit_edge
  %i.2273 = phi i32 [ %inc137, %kunmap.exit.for.body134_crit_edge ], [ 0, %out2.for.body134_crit_edge ]
  %arrayidx135 = getelementptr ptr, ptr %pages, i32 %i.2273
  %86 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx135, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 55) #9
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %shr.i.i246 = lshr i32 %89, 30
  %90 = zext i32 %shr.i.i246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %shr.i.i246, label %for.body134.kunmap.exit_crit_edge [
    i32 2, label %for.body134.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i248
  ]

for.body134.if.end.i_crit_edge:                   ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body134.kunmap.exit_crit_edge:                ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i248:                         ; preds = %for.body134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %91 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp2.i.not.i247 = icmp eq i32 %91, 2
  br i1 %cmp2.i.not.i247, label %is_highmem_idx.exit.i248.if.end.i_crit_edge, label %is_highmem_idx.exit.i248.kunmap.exit_crit_edge

is_highmem_idx.exit.i248.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i248.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i248.if.end.i_crit_edge, %for.body134.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %87) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i248.kunmap.exit_crit_edge, %for.body134.kunmap.exit_crit_edge
  %inc137 = add nuw i32 %i.2273, 1
  %exitcond278.not = icmp eq i32 %inc137, %pages_per_frame
  br i1 %exitcond278.not, label %kunmap.exit.for.end138_crit_edge, label %kunmap.exit.for.body134_crit_edge

kunmap.exit.for.body134_crit_edge:                ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body134

kunmap.exit.for.end138_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end138

for.end138:                                       ; preds = %kunmap.exit.for.end138_crit_edge, %out2.for.end138_crit_edge
  call void @vunmap(ptr noundef nonnull %call65) #9
  br label %out1

out1:                                             ; preds = %for.end138, %for.end.out1_crit_edge, %for.body.out1_crit_edge
  %err.2 = phi i32 [ %err.1, %for.end138 ], [ -12, %for.end.out1_crit_edge ], [ -12, %for.body.out1_crit_edge ]
  br i1 %cmp57268.not, label %out1.for.end149_crit_edge, label %out1.for.body142_crit_edge

out1.for.body142_crit_edge:                       ; preds = %out1
  br label %for.body142

out1.for.end149_crit_edge:                        ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end149

for.body142:                                      ; preds = %for.inc147.for.body142_crit_edge, %out1.for.body142_crit_edge
  %i.3275 = phi i32 [ %inc148, %for.inc147.for.body142_crit_edge ], [ 0, %out1.for.body142_crit_edge ]
  %arrayidx143 = getelementptr ptr, ptr %call8.i.i, i32 %i.3275
  %92 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx143, align 4
  %tobool144.not = icmp eq ptr %93, null
  br i1 %tobool144.not, label %for.body142.for.inc147_crit_edge, label %if.then145

for.body142.for.inc147_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc147

if.then145:                                       ; preds = %for.body142
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 55) #9
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %shr.i.i249 = lshr i32 %95, 30
  %96 = zext i32 %shr.i.i249 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i249, label %if.then145.kunmap.exit253_crit_edge [
    i32 2, label %if.then145.if.end.i252_crit_edge
    i32 3, label %is_highmem_idx.exit.i251
  ]

if.then145.if.end.i252_crit_edge:                 ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i252

if.then145.kunmap.exit253_crit_edge:              ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit253

is_highmem_idx.exit.i251:                         ; preds = %if.then145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %97 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp2.i.not.i250 = icmp eq i32 %97, 2
  br i1 %cmp2.i.not.i250, label %is_highmem_idx.exit.i251.if.end.i252_crit_edge, label %is_highmem_idx.exit.i251.kunmap.exit253_crit_edge

is_highmem_idx.exit.i251.kunmap.exit253_crit_edge: ; preds = %is_highmem_idx.exit.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit253

is_highmem_idx.exit.i251.if.end.i252_crit_edge:   ; preds = %is_highmem_idx.exit.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i252

if.end.i252:                                      ; preds = %is_highmem_idx.exit.i251.if.end.i252_crit_edge, %if.then145.if.end.i252_crit_edge
  call void @kunmap_high(ptr noundef nonnull %93) #9
  br label %kunmap.exit253

kunmap.exit253:                                   ; preds = %if.end.i252, %is_highmem_idx.exit.i251.kunmap.exit253_crit_edge, %if.then145.kunmap.exit253_crit_edge
  call void @unlock_page(ptr noundef nonnull %93) #9
  %98 = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %98, align 4
  %and.i.i254 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i254)
  %tobool.not.i.i255 = icmp eq i32 %and.i.i254, 0
  br i1 %tobool.not.i.i255, label %if.end.i.i258, label %if.then.i.i257, !prof !43

if.then.i.i257:                                   ; preds = %kunmap.exit253
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i256 = add i32 %100, -1
  br label %_compound_head.exit.i261

if.end.i.i258:                                    ; preds = %kunmap.exit253
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %93 to i32
  br label %_compound_head.exit.i261

_compound_head.exit.i261:                         ; preds = %if.end.i.i258, %if.then.i.i257
  %retval.0.i.i259 = phi i32 [ %sub.i.i256, %if.then.i.i257 ], [ %101, %if.end.i.i258 ]
  %102 = inttoptr i32 %retval.0.i.i259 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %103 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i.i.i.i260 = icmp eq i32 %104, 0
  br i1 %cmp.i.i.i.i260, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !44

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i261
  call void @__sanitizer_cov_trace_pc() #11
  %105 = inttoptr i32 %retval.0.i.i259 to ptr
  call void @dump_page(ptr noundef %105, ptr noundef nonnull @.str.6) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i261
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %106 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %106, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ni_write_frame, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !49

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %102, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc147_crit_edge

folio_put_testzero.exit.i.i.for.inc147_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc147

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %102) #9
  br label %for.inc147

for.inc147:                                       ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc147_crit_edge, %for.body142.for.inc147_crit_edge
  %inc148 = add nuw i32 %i.3275, 1
  %exitcond279.not = icmp eq i32 %inc148, %pages_per_frame
  br i1 %exitcond279.not, label %for.inc147.for.end149_crit_edge, label %for.inc147.for.body142_crit_edge

for.inc147.for.body142_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body142

for.inc147.for.end149_crit_edge:                  ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end149

for.end149:                                       ; preds = %for.inc147.for.end149_crit_edge, %out1.for.end149_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %out

out:                                              ; preds = %for.end149, %if.end7.i.i.out_crit_edge, %if.end52.out_crit_edge, %if.end47.out_crit_edge, %if.then39.out_crit_edge, %if.end33.out_crit_edge, %do.end, %entry.out_crit_edge
  %err.3 = phi i32 [ -22, %do.end ], [ %err.2, %for.end149 ], [ %call42, %if.then39.out_crit_edge ], [ -2, %entry.out_crit_edge ], [ -95, %if.end33.out_crit_edge ], [ -95, %if.end47.out_crit_edge ], [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %if.end52.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #9
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_make_nonresident(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_lznt_ctx(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compress_lznt(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_allocate_frame(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_remove_name(ptr noundef %dir_ni, ptr noundef %ni, ptr noundef %de, ptr nocapture noundef %de2, ptr nocapture noundef writeonly %undo_step) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  %mi2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %add.ptr = getelementptr %struct.NTFS_DE, ptr %de, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #9
  %2 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi2) #9
  %3 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi2, align 4, !annotation !52
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %de, i32 0, i32 2
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %key_size, align 2
  %6 = ptrtoint ptr %undo_step to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %undo_step, align 4
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %dir_ni, i32 0, i32 4
  %7 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rno.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr, align 4
  %high.i = getelementptr %struct.NTFS_DE, ptr %de, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %high.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %high.i, align 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %dir_ni, i32 0, i32 2
  %12 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mrec.i, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %seq.i, align 8
  %seq1.i = getelementptr %struct.NTFS_DE, ptr %de, i32 1, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %seq1.i, align 2
  %name_len = getelementptr %struct.NTFS_DE, ptr %de, i32 5
  %call = call ptr @ni_fname_name(ptr noundef %ni, ptr noundef %name_len, ptr noundef %add.ptr, ptr noundef nonnull %mi2, ptr noundef nonnull %le)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end:                                           ; preds = %entry
  %17 = call i16 @llvm.bswap.i16(i16 %5)
  %dup = getelementptr %struct.NTFS_DE, ptr %de, i32 1, i32 1
  %dup5 = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %call, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %dup, ptr %dup5, i32 56)
  %type = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %call, i32 0, i32 3
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %switch.selectcmp.i = icmp eq i8 %20, 2
  %switch.select.i = zext i1 %switch.selectcmp.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %switch.selectcmp8.i = icmp eq i8 %20, 1
  %switch.select9.i = select i1 %switch.selectcmp8.i, i8 2, i8 %switch.select.i
  %call7 = call i32 @ntfs_set_state(ptr noundef %1, i32 noundef 1) #9
  %21 = getelementptr inbounds %struct.ntfs_inode, ptr %dir_ni, i32 0, i32 8
  %conv = zext i16 %17 to i32
  %call8 = call i32 @indx_delete_entry(ptr noundef %21, ptr noundef %dir_ni, ptr noundef nonnull %call, i32 noundef %conv, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end11:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 -24
  %22 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mi2, align 4
  %24 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %le, align 4
  %call.i = call zeroext i1 @mi_remove_attr(ptr noundef %ni, ptr noundef %23, ptr noundef %add.ptr.i) #9
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end11.ni_remove_attr_le.exit_crit_edge, label %if.then.i

if.end11.ni_remove_attr_le.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_remove_attr_le.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef nonnull %25) #9
  br label %ni_remove_attr_le.exit

ni_remove_attr_le.exit:                           ; preds = %if.then.i, %if.end11.ni_remove_attr_le.exit_crit_edge
  %26 = ptrtoint ptr %undo_step to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %undo_step, align 4
  %call13 = call ptr @ni_fname_type(ptr noundef %ni, i8 noundef zeroext %switch.select9.i, ptr noundef nonnull %mi2, ptr noundef nonnull %le)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %ni_remove_attr_le.exit.cleanup28_crit_edge, label %if.then15

ni_remove_attr_le.exit.cleanup28_crit_edge:       ; preds = %ni_remove_attr_le.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.then15:                                        ; preds = %ni_remove_attr_le.exit
  %name_len.i = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %name_len.i, align 8
  %conv.i = zext i8 %28 to i16
  %mul.i = shl nuw nsw i16 %conv.i, 1
  %add.i = add nuw nsw i16 %mul.i, 66
  %add.ptr17 = getelementptr i8, ptr %de, i32 1024
  %29 = ptrtoint ptr %de2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr17, ptr %de2, align 4
  %30 = call i16 @llvm.bswap.i16(i16 %add.i)
  %key_size18 = getelementptr i8, ptr %de, i32 1034
  %31 = ptrtoint ptr %key_size18 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %key_size18, align 2
  %32 = ptrtoint ptr %de2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %de2, align 4
  %add.ptr19 = getelementptr %struct.NTFS_DE, ptr %33, i32 1
  %conv20 = zext i16 %add.i to i32
  %34 = call ptr @memcpy(ptr %add.ptr19, ptr %call13, i32 %conv20)
  %call22 = call i32 @indx_delete_entry(ptr noundef %21, ptr noundef %dir_ni, ptr noundef nonnull %call13, i32 noundef %conv20, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then15.cleanup28_crit_edge

if.then15.cleanup28_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end25:                                         ; preds = %if.then15
  %add.ptr.i69 = getelementptr i8, ptr %call13, i32 -24
  %35 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mi2, align 4
  %37 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %le, align 4
  %call.i70 = call zeroext i1 @mi_remove_attr(ptr noundef %ni, ptr noundef %36, ptr noundef %add.ptr.i69) #9
  %tobool.not.i71 = icmp eq ptr %38, null
  br i1 %tobool.not.i71, label %if.end25.ni_remove_attr_le.exit74_crit_edge, label %if.then.i73

if.end25.ni_remove_attr_le.exit74_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_remove_attr_le.exit74

if.then.i73:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i72 = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef nonnull %38) #9
  br label %ni_remove_attr_le.exit74

ni_remove_attr_le.exit74:                         ; preds = %if.then.i73, %if.end25.ni_remove_attr_le.exit74_crit_edge
  %39 = ptrtoint ptr %undo_step to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %undo_step, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %ni_remove_attr_le.exit74, %if.then15.cleanup28_crit_edge, %ni_remove_attr_le.exit.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.1 = phi i32 [ -2, %entry.cleanup28_crit_edge ], [ %call8, %if.end.cleanup28_crit_edge ], [ 0, %ni_remove_attr_le.exit74 ], [ 0, %ni_remove_attr_le.exit.cleanup28_crit_edge ], [ %call22, %if.then15.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_delete_entry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ni_remove_name_undo(ptr noundef %dir_ni, ptr noundef %ni, ptr noundef %de, ptr noundef %de2, i32 noundef %undo_step) local_unnamed_addr #0 align 64 {
entry:
  %attr.i55 = alloca ptr, align 4
  %attr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %tobool.not = icmp eq ptr %de2, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %de2, i32 0, i32 2
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %key_size, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %phi.cast = zext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %5 = zext i32 %undo_step to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %undo_step, label %cond.end.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %cond.end.sw.bb15_crit_edge
  ]

cond.end.sw.bb15_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end
  %add2.i = add nuw nsw i32 %cond, 7
  %and3.i = and i32 %add2.i, 131064
  %add4.i = add nuw nsw i32 %and3.i, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr.i) #9
  %6 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr.i, align 4, !annotation !52
  %rno.i77 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %7 = ptrtoint ptr %rno.i77 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rno.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %mrec.i78 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %9 = ptrtoint ptr %mrec.i78 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mrec.i78, align 8
  %used4.i = getelementptr inbounds %struct.MFT_REC, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %used4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %used4.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %record_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %record_size.i, align 8
  %sub.i = sub i32 %15, %13
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %sub.i, i32 91) #9
  %free.0.i = select i1 %cmp.i, i32 %16, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %free.0.i, i32 %add4.i)
  %cmp10.not.i = icmp ult i32 %free.0.i, %add4.i
  br i1 %cmp10.not.i, label %sw.bb.ni_insert_attr.exit_crit_edge, label %if.then11.i

sw.bb.ni_insert_attr.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_insert_attr.exit

if.then11.i:                                      ; preds = %sw.bb
  %call.i79 = tail call fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef %ni, ptr noundef null, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add4.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #9
  %tobool13.not.i = icmp eq ptr %call.i79, null
  br i1 %tobool13.not.i, label %if.then11.i.ni_insert_attr.exit_crit_edge, label %ni_insert_attr.exit.thread

if.then11.i.ni_insert_attr.exit_crit_edge:        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_insert_attr.exit

ni_insert_attr.exit.thread:                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i79, ptr %attr.i, align 4
  br label %if.end

ni_insert_attr.exit:                              ; preds = %if.then11.i.ni_insert_attr.exit_crit_edge, %sw.bb.ni_insert_attr.exit_crit_edge
  %call29.i = call fastcc i32 @ni_ins_attr_ext(ptr noundef %ni, ptr noundef null, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add4.i, i32 noundef 0, i16 noundef zeroext 24, i1 noundef zeroext false, ptr noundef nonnull %attr.i, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool.not.i, label %ni_insert_attr.exit.if.end_crit_edge, label %ni_insert_resident.exit

ni_insert_attr.exit.if.end_crit_edge:             ; preds = %ni_insert_attr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ni_insert_resident.exit:                          ; preds = %ni_insert_attr.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr.i) #9
  br label %cleanup

if.end:                                           ; preds = %ni_insert_attr.exit.if.end_crit_edge, %ni_insert_attr.exit.thread
  %18 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attr.i, align 4
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %non_res.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %non_res.i, align 8
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %19, i32 0, i32 5
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %cond) #9
  %23 = getelementptr inbounds %struct.ATTRIB, ptr %19, i32 0, i32 7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %23, align 8
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %data_off.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 6144, ptr %data_off.i, align 4
  %flags10.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %flags10.i, align 2
  %27 = ptrtoint ptr %mrec.i78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mrec.i78, align 8
  %hard_links.i = getelementptr inbounds %struct.MFT_REC, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %hard_links.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hard_links.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #9
  %add.i.i = add i16 %31, 1
  %32 = call i16 @llvm.bswap.i16(i16 %add.i.i) #9
  %33 = ptrtoint ptr %hard_links.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %hard_links.i, align 2
  %dirty.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 5
  %34 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %dirty.i, align 4
  %res.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %23, i32 0, i32 3
  %35 = ptrtoint ptr %res.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %res.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr.i) #9
  %add.ptr = getelementptr i8, ptr %19, i32 24
  %add.ptr5 = getelementptr %struct.NTFS_DE, ptr %de2, i32 1
  %36 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr5, i32 %cond)
  %37 = ptrtoint ptr %rno.i77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rno.i77, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = ptrtoint ptr %de2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %de2, align 4
  %high.i = getelementptr inbounds %struct.MFT_REF, ptr %de2, i32 0, i32 1
  %41 = ptrtoint ptr %high.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %high.i, align 4
  %42 = ptrtoint ptr %mrec.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mrec.i78, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %seq.i, align 8
  %seq1.i = getelementptr inbounds %struct.MFT_REF, ptr %de2, i32 0, i32 2
  %46 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %seq1.i, align 2
  %47 = trunc i32 %cond to i16
  %48 = add i16 %47, 23
  %conv10 = and i16 %48, -8
  %49 = call i16 @llvm.bswap.i16(i16 %conv10)
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %de2, i32 0, i32 1
  %50 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %size, align 4
  %flags = getelementptr inbounds %struct.NTFS_DE, ptr %de2, i32 0, i32 3
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags, align 4
  %res = getelementptr inbounds %struct.NTFS_DE, ptr %de2, i32 0, i32 4
  %52 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %res, align 2
  %53 = getelementptr inbounds %struct.ntfs_inode, ptr %dir_ni, i32 0, i32 8
  %call11 = call i32 @indx_insert_entry(ptr noundef %53, ptr noundef %dir_ni, ptr noundef %de2, ptr noundef %1, ptr noundef null, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end.sw.bb15_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %cond.end.sw.bb15_crit_edge
  %key_size16 = getelementptr inbounds %struct.NTFS_DE, ptr %de, i32 0, i32 2
  %54 = ptrtoint ptr %key_size16 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %key_size16, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55)
  %conv17 = zext i16 %56 to i32
  %add2.i56 = add nuw nsw i32 %conv17, 7
  %and3.i57 = and i32 %add2.i56, 131064
  %add4.i58 = add nuw nsw i32 %and3.i57, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr.i55) #9
  %57 = ptrtoint ptr %attr.i55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr.i55, align 4, !annotation !52
  %58 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sbi1, align 4
  %rno.i82 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %60 = ptrtoint ptr %rno.i82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rno.i82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i83 = icmp eq i32 %61, 0
  %mrec.i84 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %62 = ptrtoint ptr %mrec.i84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mrec.i84, align 8
  %used4.i85 = getelementptr inbounds %struct.MFT_REC, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %used4.i85 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %used4.i85, align 8
  %66 = call i32 @llvm.bswap.i32(i32 %65) #9
  %record_size.i86 = getelementptr inbounds %struct.ntfs_sb_info, ptr %59, i32 0, i32 8
  %67 = ptrtoint ptr %record_size.i86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %record_size.i86, align 8
  %sub.i87 = sub i32 %68, %66
  %69 = call i32 @llvm.usub.sat.i32(i32 %sub.i87, i32 91) #9
  %free.0.i88 = select i1 %cmp.i83, i32 %69, i32 %sub.i87
  call void @__sanitizer_cov_trace_cmp4(i32 %free.0.i88, i32 %add4.i58)
  %cmp10.not.i89 = icmp ult i32 %free.0.i88, %add4.i58
  br i1 %cmp10.not.i89, label %sw.bb15.ni_insert_attr.exit96_crit_edge, label %if.then11.i91

sw.bb15.ni_insert_attr.exit96_crit_edge:          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_insert_attr.exit96

if.then11.i91:                                    ; preds = %sw.bb15
  %call.i = call fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef %ni, ptr noundef null, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add4.i58, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #9
  %tobool13.not.i90 = icmp eq ptr %call.i, null
  br i1 %tobool13.not.i90, label %if.then11.i91.ni_insert_attr.exit96_crit_edge, label %ni_insert_attr.exit96.thread

if.then11.i91.ni_insert_attr.exit96_crit_edge:    ; preds = %if.then11.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_insert_attr.exit96

ni_insert_attr.exit96.thread:                     ; preds = %if.then11.i91
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %attr.i55 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i, ptr %attr.i55, align 4
  br label %if.end21

ni_insert_attr.exit96:                            ; preds = %if.then11.i91.ni_insert_attr.exit96_crit_edge, %sw.bb15.ni_insert_attr.exit96_crit_edge
  %call29.i94 = call fastcc i32 @ni_ins_attr_ext(ptr noundef %ni, ptr noundef null, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add4.i58, i32 noundef 0, i16 noundef zeroext 24, i1 noundef zeroext false, ptr noundef nonnull %attr.i55, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i94)
  %tobool.not.i60 = icmp eq i32 %call29.i94, 0
  br i1 %tobool.not.i60, label %ni_insert_attr.exit96.if.end21_crit_edge, label %ni_insert_resident.exit71

ni_insert_attr.exit96.if.end21_crit_edge:         ; preds = %ni_insert_attr.exit96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

ni_insert_resident.exit71:                        ; preds = %ni_insert_attr.exit96
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr.i55) #9
  br label %cleanup

if.end21:                                         ; preds = %ni_insert_attr.exit96.if.end21_crit_edge, %ni_insert_attr.exit96.thread
  %71 = ptrtoint ptr %attr.i55 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %attr.i55, align 4
  %non_res.i61 = getelementptr inbounds %struct.ATTRIB, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %non_res.i61 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %non_res.i61, align 8
  %flags.i62 = getelementptr inbounds %struct.ATTRIB, ptr %72, i32 0, i32 5
  %74 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i62, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %conv17) #9
  %76 = getelementptr inbounds %struct.ATTRIB, ptr %72, i32 0, i32 7
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %76, align 8
  %data_off.i63 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %data_off.i63 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 6144, ptr %data_off.i63, align 4
  %flags10.i65 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %76, i32 0, i32 2
  %79 = ptrtoint ptr %flags10.i65 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %flags10.i65, align 2
  %80 = ptrtoint ptr %mrec.i84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mrec.i84, align 8
  %hard_links.i67 = getelementptr inbounds %struct.MFT_REC, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %hard_links.i67 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hard_links.i67, align 2
  %84 = call i16 @llvm.bswap.i16(i16 %83) #9
  %add.i.i68 = add i16 %84, 1
  %85 = call i16 @llvm.bswap.i16(i16 %add.i.i68) #9
  %86 = ptrtoint ptr %hard_links.i67 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %hard_links.i67, align 2
  %dirty.i69 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 5
  %87 = ptrtoint ptr %dirty.i69 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %dirty.i69, align 4
  %res.i70 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %76, i32 0, i32 3
  %88 = ptrtoint ptr %res.i70 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %res.i70, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr.i55) #9
  %add.ptr22 = getelementptr i8, ptr %72, i32 24
  %add.ptr23 = getelementptr %struct.NTFS_DE, ptr %de, i32 1
  %89 = call ptr @memcpy(ptr %add.ptr22, ptr %add.ptr23, i32 %conv17)
  %90 = ptrtoint ptr %rno.i82 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rno.i82, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #9
  %93 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %de, align 4
  %high.i73 = getelementptr inbounds %struct.MFT_REF, ptr %de, i32 0, i32 1
  %94 = ptrtoint ptr %high.i73 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %high.i73, align 4
  %95 = ptrtoint ptr %mrec.i84 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mrec.i84, align 4
  %seq.i75 = getelementptr inbounds %struct.MFT_REC, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %seq.i75 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %seq.i75, align 8
  %seq1.i76 = getelementptr inbounds %struct.MFT_REF, ptr %de, i32 0, i32 2
  %99 = ptrtoint ptr %seq1.i76 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %seq1.i76, align 2
  %100 = getelementptr inbounds %struct.ntfs_inode, ptr %dir_ni, i32 0, i32 8
  %call26 = call i32 @indx_insert_entry(ptr noundef %100, ptr noundef %dir_ni, ptr noundef %de, ptr noundef %1, ptr noundef null, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end21.sw.epilog_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end21.sw.epilog_crit_edge, %cond.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end21.cleanup_crit_edge, %ni_insert_resident.exit71, %if.end.cleanup_crit_edge, %ni_insert_resident.exit
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %ni_insert_resident.exit ], [ false, %if.end.cleanup_crit_edge ], [ false, %ni_insert_resident.exit71 ], [ false, %if.end21.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_insert_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_add_name(ptr noundef %dir_ni, ptr noundef %ni, ptr noundef %de) local_unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca ptr, align 4
  %le = alloca ptr, align 4
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #9
  %0 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #9
  %1 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !52
  %add.ptr = getelementptr %struct.NTFS_DE, ptr %de, i32 1
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %de, i32 0, i32 2
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %key_size, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %5 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rno.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %8 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %de, align 4
  %high.i = getelementptr inbounds %struct.MFT_REF, ptr %de, i32 0, i32 1
  %9 = ptrtoint ptr %high.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %high.i, align 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %10 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrec.i, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %seq.i, align 8
  %seq1.i = getelementptr inbounds %struct.MFT_REF, ptr %de, i32 0, i32 2
  %14 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %seq1.i, align 2
  %rno.i28 = getelementptr inbounds %struct.mft_inode, ptr %dir_ni, i32 0, i32 4
  %15 = ptrtoint ptr %rno.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rno.i28, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr, align 4
  %high.i29 = getelementptr %struct.NTFS_DE, ptr %de, i32 1, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %high.i29 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %high.i29, align 4
  %mrec.i30 = getelementptr inbounds %struct.mft_inode, ptr %dir_ni, i32 0, i32 2
  %20 = ptrtoint ptr %mrec.i30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mrec.i30, align 4
  %seq.i31 = getelementptr inbounds %struct.MFT_REC, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %seq.i31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq.i31, align 8
  %seq1.i32 = getelementptr %struct.NTFS_DE, ptr %de, i32 1, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %seq1.i32 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %seq1.i32, align 2
  %conv = zext i16 %4 to i32
  %add2.i = add nuw nsw i32 %conv, 7
  %and3.i = and i32 %add2.i, 131064
  %add4.i = add nuw nsw i32 %and3.i, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr.i) #9
  %25 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr.i, align 4, !annotation !52
  %sbi1.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %26 = ptrtoint ptr %sbi1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sbi1.i, align 4
  %28 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mrec.i, align 8
  %used4.i = getelementptr inbounds %struct.MFT_REC, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %used4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %used4.i, align 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %record_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %27, i32 0, i32 8
  %35 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %record_size.i, align 8
  %sub.i = sub i32 %36, %34
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %sub.i, i32 91) #9
  %free.0.i = select i1 %cmp.i, i32 %37, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %free.0.i, i32 %add4.i)
  %cmp10.not.i = icmp ult i32 %free.0.i, %add4.i
  br i1 %cmp10.not.i, label %entry.ni_insert_attr.exit_crit_edge, label %if.then11.i

entry.ni_insert_attr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_insert_attr.exit

if.then11.i:                                      ; preds = %entry
  %call.i39 = call fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef %ni, ptr noundef null, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add4.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %le) #9
  %tobool13.not.i = icmp eq ptr %call.i39, null
  br i1 %tobool13.not.i, label %if.then11.i.ni_insert_attr.exit_crit_edge, label %ni_insert_attr.exit.thread

if.then11.i.ni_insert_attr.exit_crit_edge:        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_insert_attr.exit

ni_insert_attr.exit.thread:                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i39, ptr %attr.i, align 4
  %39 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ni, ptr %mi, align 4
  br label %if.end

ni_insert_attr.exit:                              ; preds = %if.then11.i.ni_insert_attr.exit_crit_edge, %entry.ni_insert_attr.exit_crit_edge
  %call29.i = call fastcc i32 @ni_ins_attr_ext(ptr noundef %ni, ptr noundef null, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, i32 noundef %add4.i, i32 noundef 0, i16 noundef zeroext 24, i1 noundef zeroext false, ptr noundef nonnull %attr.i, ptr noundef nonnull %mi, ptr noundef nonnull %le) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool.not.i, label %ni_insert_attr.exit.if.end_crit_edge, label %ni_insert_resident.exit

ni_insert_attr.exit.if.end_crit_edge:             ; preds = %ni_insert_attr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ni_insert_resident.exit:                          ; preds = %ni_insert_attr.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr.i) #9
  br label %cleanup

if.end:                                           ; preds = %ni_insert_attr.exit.if.end_crit_edge, %ni_insert_attr.exit.thread
  %40 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %attr.i, align 4
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %non_res.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %non_res.i, align 8
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %41, i32 0, i32 5
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %conv) #9
  %45 = getelementptr inbounds %struct.ATTRIB, ptr %41, i32 0, i32 7
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %45, align 8
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %data_off.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 6144, ptr %data_off.i, align 4
  %flags10.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %flags10.i, align 2
  %49 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mrec.i, align 8
  %hard_links.i = getelementptr inbounds %struct.MFT_REC, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %hard_links.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hard_links.i, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52) #9
  %add.i.i = add i16 %53, 1
  %54 = call i16 @llvm.bswap.i16(i16 %add.i.i) #9
  %55 = ptrtoint ptr %hard_links.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %hard_links.i, align 2
  %dirty.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 5
  %56 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %dirty.i, align 4
  %res.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %45, i32 0, i32 3
  %57 = ptrtoint ptr %res.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %res.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr.i) #9
  %add.ptr3 = getelementptr i8, ptr %41, i32 24
  %58 = call ptr @memcpy(ptr %add.ptr3, ptr %add.ptr, i32 %conv)
  %59 = getelementptr inbounds %struct.ntfs_inode, ptr %dir_ni, i32 0, i32 8
  %60 = ptrtoint ptr %sbi1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sbi1.i, align 4
  %call6 = call i32 @indx_insert_entry(ptr noundef %59, ptr noundef %dir_ni, ptr noundef %de, ptr noundef %61, ptr noundef null, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %62 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mi, align 4
  %64 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %le, align 4
  %call.i34 = call zeroext i1 @mi_remove_attr(ptr noundef %ni, ptr noundef %63, ptr noundef %41) #9
  %tobool.not.i35 = icmp eq ptr %65, null
  br i1 %tobool.not.i35, label %if.then8.cleanup_crit_edge, label %if.then.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef nonnull %65) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ni_insert_resident.exit
  %retval.0 = phi i32 [ %call29.i, %ni_insert_resident.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.then8.cleanup_crit_edge ], [ %call6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_rename(ptr noundef %dir_ni, ptr noundef %new_dir_ni, ptr noundef %ni, ptr noundef %de, ptr noundef %new_de, ptr nocapture noundef writeonly %is_bad) local_unnamed_addr #0 align 64 {
entry:
  %de2 = alloca ptr, align 4
  %undo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de2) #9
  %0 = ptrtoint ptr %de2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %de2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %undo) #9
  %call = tail call i32 @ni_add_name(ptr noundef %new_dir_ni, ptr noundef %ni, ptr noundef %new_de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call i32 @ni_remove_name(ptr noundef %dir_ni, ptr noundef %ni, ptr noundef %de, ptr noundef nonnull %de2, ptr noundef nonnull %undo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %land.lhs.true

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then
  %call3 = call i32 @ni_remove_name(ptr noundef %new_dir_ni, ptr noundef %ni, ptr noundef %new_de, ptr noundef nonnull %de2, ptr noundef nonnull %undo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %is_bad to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %is_bad, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end6_crit_edge ], [ %call1, %if.then5 ], [ %call1, %land.lhs.true.if.end6_crit_edge ], [ 0, %if.then.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %undo) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de2) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ni_is_dirty(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty = getelementptr i8, ptr %inode, i32 -292
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dirty, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dirty1 = getelementptr i8, ptr %inode, i32 -8
  %2 = ptrtoint ptr %dirty1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dirty1, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ni_flags = getelementptr i8, ptr %inode, i32 -4
  %4 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ni_flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %mi_tree = getelementptr i8, ptr %inode, i32 -164
  %call5 = tail call ptr @rb_first(ptr noundef %mi_tree) #9
  %tobool6.not18 = icmp eq ptr %call5, null
  br i1 %tobool6.not18, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.019 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call5, %if.end.for.body_crit_edge ]
  %dirty7 = getelementptr inbounds %struct.mft_inode, ptr %node.019, i32 0, i32 5
  %6 = ptrtoint ptr %dirty7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dirty7, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %for.inc, label %for.body.cleanup.loopexit_crit_edge

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

for.inc:                                          ; preds = %for.body
  %call11 = tail call ptr @rb_next(ptr noundef nonnull %node.019) #9
  %tobool6.not = icmp eq ptr %call11, null
  br i1 %tobool6.not, label %for.inc.cleanup.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.inc.cleanup.loopexit_crit_edge, %for.body.cleanup.loopexit_crit_edge
  %8 = xor i1 %tobool8.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %lor.lhs.false3.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %8, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_write_inode(ptr noundef %inode, i32 noundef %sync, ptr noundef %hint) local_unnamed_addr #0 align 64 {
entry:
  %dup = alloca %struct.NTFS_DUP_INFO, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dup) #9
  %4 = call ptr @memset(ptr %dup, i32 255, i32 56)
  %call1 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #9
  br i1 %call1, label %entry.cleanup140_crit_edge, label %lor.lhs.false

entry.cleanup140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup140

lor.lhs.false:                                    ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup140_crit_edge

lor.lhs.false.cleanup140_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup140

if.end:                                           ; preds = %lor.lhs.false
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  %call.i = tail call i32 @mutex_trylock(ptr noundef %ni_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #9
  br label %cleanup140

if.end5:                                          ; preds = %if.end
  %mrec = getelementptr i8, ptr %inode, i32 -344
  %7 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrec, align 8
  %flags.i = getelementptr inbounds %struct.MFT_REC, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 2
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i226.not = icmp eq i16 %11, 0
  br i1 %tobool.i226.not, label %if.end5.if.end89_crit_edge, label %land.lhs.true

if.end5.if.end89_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end5
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end89_crit_edge, label %if.then10

land.lhs.true8.if.end89_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then10:                                        ; preds = %land.lhs.true8
  %call.i227 = tail call ptr @mi_find_attr(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 268435456, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i227, null
  br i1 %tobool.not.i, label %if.then10.out.thread_crit_edge, label %cond.true.i

if.then10.out.thread_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

cond.true.i:                                      ; preds = %if.then10
  %non_res.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i227, i32 0, i32 2
  %17 = ptrtoint ptr %non_res.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %non_res.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.i.out.thread_crit_edge

cond.true.i.out.thread_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end.i.i:                                       ; preds = %cond.true.i
  %size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i227, i32 0, i32 1
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = getelementptr inbounds %struct.ATTRIB, ptr %call.i227, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data_off.i.i, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  %conv.i.i = zext i16 %25 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %21, %add.i.i
  br i1 %cmp.i.i, label %if.end.i.i.out.thread_crit_edge, label %if.end3.i.i

if.end.i.i.out.thread_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %22, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %28)
  %cmp4.i.i = icmp ult i32 %28, 48
  %add.ptr.i.i = getelementptr i8, ptr %call.i227, i32 %conv.i.i
  %tobool12.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond253 = select i1 %cmp4.i.i, i1 true, i1 %tobool12.not
  br i1 %or.cond253, label %if.end3.i.i.out.thread_crit_edge, label %if.end14

if.end3.i.i.out.thread_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end14:                                         ; preds = %if.end3.i.i
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %29 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_mtime, align 8
  %31 = mul i64 %30, 10000000
  %mul.i = add i64 %31, 116444736000000000
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %32 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %33, 100
  %conv.i = sext i32 %div.i to i64
  %add1.i = add i64 %mul.i, %conv.i
  %34 = tail call i64 @llvm.bswap.i64(i64 %add1.i) #9
  %m_time = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 1
  %35 = ptrtoint ptr %m_time to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %m_time, align 8
  %m_time16 = getelementptr inbounds %struct.ATTR_STD_INFO, ptr %add.ptr.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %m_time16 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_time16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %34)
  %cmp.not = icmp eq i64 %37, %34
  br i1 %cmp.not, label %if.end14.if.end21_crit_edge, label %if.then18

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %m_time16 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %34, ptr %m_time16, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14.if.end21_crit_edge
  %39 = xor i1 %cmp.not, true
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %40 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_ctime, align 8
  %42 = mul i64 %41, 10000000
  %mul.i228 = add i64 %42, 116444736000000000
  %tv_nsec.i229 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %43 = ptrtoint ptr %tv_nsec.i229 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tv_nsec.i229, align 8
  %div.i230 = sdiv i32 %44, 100
  %conv.i231 = sext i32 %div.i230 to i64
  %add1.i232 = add i64 %mul.i228, %conv.i231
  %45 = tail call i64 @llvm.bswap.i64(i64 %add1.i232) #9
  %c_time = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 2
  %46 = ptrtoint ptr %c_time to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %c_time, align 8
  %c_time23 = getelementptr inbounds %struct.ATTR_STD_INFO, ptr %add.ptr.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %c_time23 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %c_time23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %45)
  %cmp25.not = icmp eq i64 %48, %45
  br i1 %cmp25.not, label %if.end21.if.end29_crit_edge, label %if.then26

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %c_time23 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %45, ptr %c_time23, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end21.if.end29_crit_edge
  %modified.1.off0 = phi i1 [ true, %if.then26 ], [ %39, %if.end21.if.end29_crit_edge ]
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %50 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_atime, align 8
  %52 = mul i64 %51, 10000000
  %mul.i233 = add i64 %52, 116444736000000000
  %tv_nsec.i234 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %53 = ptrtoint ptr %tv_nsec.i234 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tv_nsec.i234, align 8
  %div.i235 = sdiv i32 %54, 100
  %conv.i236 = sext i32 %div.i235 to i64
  %add1.i237 = add i64 %mul.i233, %conv.i236
  %55 = tail call i64 @llvm.bswap.i64(i64 %add1.i237) #9
  %a_time = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 3
  %56 = ptrtoint ptr %a_time to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %a_time, align 8
  %a_time31 = getelementptr inbounds %struct.ATTR_STD_INFO, ptr %add.ptr.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %a_time31 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %a_time31, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %55)
  %cmp33.not = icmp eq i64 %58, %55
  br i1 %cmp33.not, label %if.end37, label %if.end37.thread

if.end37:                                         ; preds = %if.end29
  %std_fa = getelementptr i8, ptr %inode, i32 -172
  %59 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %std_fa, align 4
  %fa = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 6
  %61 = ptrtoint ptr %fa to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %fa, align 8
  %fa38 = getelementptr inbounds %struct.ATTR_STD_INFO, ptr %add.ptr.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %fa38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fa38, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %60)
  %cmp40.not = icmp eq i32 %63, %60
  br i1 %cmp40.not, label %if.end44, label %if.end37.if.end44.thread_crit_edge

if.end37.if.end44.thread_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.thread

if.end37.thread:                                  ; preds = %if.end29
  %64 = ptrtoint ptr %a_time31 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %55, ptr %a_time31, align 8
  %std_fa259 = getelementptr i8, ptr %inode, i32 -172
  %65 = ptrtoint ptr %std_fa259 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %std_fa259, align 4
  %fa260 = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 6
  %67 = ptrtoint ptr %fa260 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %fa260, align 8
  %fa38261 = getelementptr inbounds %struct.ATTR_STD_INFO, ptr %add.ptr.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %fa38261 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fa38261, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %66)
  %cmp40.not262 = icmp eq i32 %69, %66
  br i1 %cmp40.not262, label %if.end37.thread.if.then46_crit_edge, label %if.end37.thread.if.end44.thread_crit_edge

if.end37.thread.if.end44.thread_crit_edge:        ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.thread

if.end37.thread.if.then46_crit_edge:              ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end44.thread:                                  ; preds = %if.end37.thread.if.end44.thread_crit_edge, %if.end37.if.end44.thread_crit_edge
  %fa38264 = phi ptr [ %fa38261, %if.end37.thread.if.end44.thread_crit_edge ], [ %fa38, %if.end37.if.end44.thread_crit_edge ]
  %70 = phi i32 [ %66, %if.end37.thread.if.end44.thread_crit_edge ], [ %60, %if.end37.if.end44.thread_crit_edge ]
  %71 = ptrtoint ptr %fa38264 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %fa38264, align 8
  br label %if.then46

if.end44:                                         ; preds = %if.end37
  br i1 %modified.1.off0, label %if.end44.if.then46_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.end44.thread, %if.end37.thread.if.then46_crit_edge
  %dirty = getelementptr i8, ptr %inode, i32 -292
  %72 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %dirty, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44.if.end48_crit_edge
  %modified.3.off0243 = phi i1 [ true, %if.then46 ], [ false, %if.end44.if.end48_crit_edge ]
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %73 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %74)
  %cmp.i = icmp ult i32 %74, 16
  br i1 %cmp.i, label %if.end48.if.end67_crit_edge, label %lor.lhs.false.i

if.end48.if.end67_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

lor.lhs.false.i:                                  ; preds = %if.end48
  %objid_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 18
  %75 = ptrtoint ptr %objid_no.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %objid_no.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %74)
  %cmp1.i = icmp eq i32 %76, %74
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end67_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end67_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %quota_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 19
  %77 = ptrtoint ptr %quota_no.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %quota_no.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %74)
  %cmp3.i = icmp eq i32 %78, %74
  br i1 %cmp3.i, label %lor.lhs.false2.i.if.end67_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.if.end67_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %reparse_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 20
  %79 = ptrtoint ptr %reparse_no.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reparse_no.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %74)
  %cmp5.i = icmp eq i32 %80, %74
  br i1 %cmp5.i, label %lor.lhs.false4.i.if.end67_crit_edge, label %ntfs_is_meta_file.exit

lor.lhs.false4.i.if.end67_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

ntfs_is_meta_file.exit:                           ; preds = %lor.lhs.false4.i
  %usn_jrnl_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 21
  %81 = ptrtoint ptr %usn_jrnl_no.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %usn_jrnl_no.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %74)
  %cmp6.i = icmp eq i32 %82, %74
  br i1 %cmp6.i, label %ntfs_is_meta_file.exit.if.end67_crit_edge, label %land.lhs.true50

ntfs_is_meta_file.exit.if.end67_crit_edge:        ; preds = %ntfs_is_meta_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

land.lhs.true50:                                  ; preds = %ntfs_is_meta_file.exit
  br i1 %modified.3.off0243, label %land.lhs.true50.land.lhs.true55_crit_edge, label %lor.lhs.false52

land.lhs.true50.land.lhs.true55_crit_edge:        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true55

lor.lhs.false52:                                  ; preds = %land.lhs.true50
  %ni_flags = getelementptr i8, ptr %inode, i32 -4
  %83 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ni_flags, align 4
  %and53 = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %lor.lhs.false52.if.end67_crit_edge, label %lor.lhs.false52.land.lhs.true55_crit_edge

lor.lhs.false52.land.lhs.true55_crit_edge:        ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true55

lor.lhs.false52.if.end67_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

land.lhs.true55:                                  ; preds = %lor.lhs.false52.land.lhs.true55_crit_edge, %land.lhs.true50.land.lhs.true55_crit_edge
  %85 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s_flags.i, align 4
  %and56 = and i32 %86, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %land.lhs.true55.if.end67_crit_edge, label %if.then58

land.lhs.true55.if.end67_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %add.ptr.i.i, align 8
  %89 = ptrtoint ptr %dup to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %dup, align 8
  %call60 = call fastcc zeroext i1 @ni_update_parent(ptr noundef %add.ptr.i, ptr noundef nonnull %dup, i32 noundef %sync)
  %ni_flags63 = getelementptr i8, ptr %inode, i32 -4
  %90 = ptrtoint ptr %ni_flags63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ni_flags63, align 4
  %and65 = and i32 %91, -257
  %masksel = select i1 %call60, i32 256, i32 0
  %or.sink = or i32 %and65, %masksel
  store i32 %or.sink, ptr %ni_flags63, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %land.lhs.true55.if.end67_crit_edge, %lor.lhs.false52.if.end67_crit_edge, %ntfs_is_meta_file.exit.if.end67_crit_edge, %lor.lhs.false4.i.if.end67_crit_edge, %lor.lhs.false2.i.if.end67_crit_edge, %lor.lhs.false.i.if.end67_crit_edge, %if.end48.if.end67_crit_edge
  %re_dirty.0.shrunk = phi i1 [ false, %ntfs_is_meta_file.exit.if.end67_crit_edge ], [ false, %land.lhs.true55.if.end67_crit_edge ], [ false, %lor.lhs.false52.if.end67_crit_edge ], [ false, %lor.lhs.false4.i.if.end67_crit_edge ], [ false, %lor.lhs.false2.i.if.end67_crit_edge ], [ false, %lor.lhs.false.i.if.end67_crit_edge ], [ false, %if.end48.if.end67_crit_edge ], [ %call60, %if.then58 ]
  %size = getelementptr i8, ptr %inode, i32 -12
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool68.not = icmp eq i32 %93, 0
  br i1 %tobool68.not, label %if.end67.if.end89_crit_edge, label %land.lhs.true69

if.end67.if.end89_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.lhs.true69:                                  ; preds = %if.end67
  %dirty71 = getelementptr i8, ptr %inode, i32 -8
  %94 = ptrtoint ptr %dirty71 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dirty71, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool72.not = icmp eq i8 %95, 0
  br i1 %tobool72.not, label %land.lhs.true69.if.end89_crit_edge, label %if.then73

land.lhs.true69.if.end89_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then73:                                        ; preds = %land.lhs.true69
  %96 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_ino, align 8
  %98 = or i32 %97, %sync
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %if.then73.if.end83_crit_edge, label %if.then78

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then78:                                        ; preds = %if.then73
  %call79 = call fastcc i32 @ni_try_remove_attr_list(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.if.end83_crit_edge, label %if.then78.out.thread_crit_edge

if.then78.out.thread_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.end83:                                         ; preds = %if.then78.if.end83_crit_edge, %if.then73.if.end83_crit_edge
  %call84 = call i32 @al_update(ptr noundef %add.ptr.i, i32 noundef %sync) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end83.if.end89_crit_edge, label %if.end83.out.thread_crit_edge

if.end83.out.thread_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.end89:                                         ; preds = %if.end83.if.end89_crit_edge, %land.lhs.true69.if.end89_crit_edge, %if.end67.if.end89_crit_edge, %land.lhs.true8.if.end89_crit_edge, %land.lhs.true.if.end89_crit_edge, %if.end5.if.end89_crit_edge
  %re_dirty.2.off0 = phi i1 [ false, %land.lhs.true.if.end89_crit_edge ], [ false, %land.lhs.true8.if.end89_crit_edge ], [ false, %if.end5.if.end89_crit_edge ], [ %re_dirty.0.shrunk, %if.end67.if.end89_crit_edge ], [ %re_dirty.0.shrunk, %land.lhs.true69.if.end89_crit_edge ], [ %re_dirty.0.shrunk, %if.end83.if.end89_crit_edge ]
  %mi_tree = getelementptr i8, ptr %inode, i32 -164
  %call90 = call ptr @rb_first(ptr noundef %mi_tree) #9
  %tobool91.not254 = icmp eq ptr %call90, null
  br i1 %tobool91.not254, label %if.end89.for.end_crit_edge, label %if.end89.for.body_crit_edge

if.end89.for.body_crit_edge:                      ; preds = %if.end89
  br label %for.body

if.end89.for.end_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup116.for.body_crit_edge, %if.end89.for.body_crit_edge
  %err.3257 = phi i32 [ %err.5, %cleanup116.for.body_crit_edge ], [ 0, %if.end89.for.body_crit_edge ]
  %node.0255 = phi ptr [ %call93, %cleanup116.for.body_crit_edge ], [ %call90, %if.end89.for.body_crit_edge ]
  %call93 = call ptr @rb_next(ptr noundef nonnull %node.0255) #9
  %dirty94 = getelementptr inbounds %struct.mft_inode, ptr %node.0255, i32 0, i32 5
  %100 = ptrtoint ptr %dirty94 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dirty94, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool95.not = icmp eq i8 %101, 0
  br i1 %tobool95.not, label %for.body.cleanup116_crit_edge, label %if.end97

for.body.cleanup116_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.end97:                                         ; preds = %for.body
  %call98 = call ptr @mi_enum_attr(ptr noundef nonnull %node.0255, ptr noundef null) #9
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.then113, label %if.end105

if.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = call i32 @mi_write(ptr noundef nonnull %node.0255, i32 noundef %sync) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3257)
  %tobool107.not = icmp eq i32 %err.3257, 0
  %err.4 = select i1 %tobool107.not, i32 %call106, i32 %err.3257
  br label %cleanup116

if.then113:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %mrec103 = getelementptr inbounds %struct.mft_inode, ptr %node.0255, i32 0, i32 2
  %102 = ptrtoint ptr %mrec103 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mrec103, align 4
  %flags.i238 = getelementptr inbounds %struct.MFT_REC, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %flags.i238 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %flags.i238, align 2
  %106 = and i16 %105, -257
  store i16 %106, ptr %flags.i238, align 2
  %call106267 = call i32 @mi_write(ptr noundef nonnull %node.0255, i32 noundef %sync) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3257)
  %tobool107.not268 = icmp eq i32 %err.3257, 0
  %err.4269 = select i1 %tobool107.not268, i32 %call106267, i32 %err.3257
  %rno = getelementptr inbounds %struct.mft_inode, ptr %node.0255, i32 0, i32 4
  %107 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rno, align 4
  call void @ntfs_mark_rec_free(ptr noundef %3, i32 noundef %108) #9
  call void @rb_erase(ptr noundef nonnull %node.0255, ptr noundef %mi_tree) #9
  call void @mi_put(ptr noundef nonnull %node.0255) #9
  br label %cleanup116

cleanup116:                                       ; preds = %if.then113, %if.end105, %for.body.cleanup116_crit_edge
  %err.5 = phi i32 [ %err.3257, %for.body.cleanup116_crit_edge ], [ %err.4269, %if.then113 ], [ %err.4, %if.end105 ]
  %tobool91.not = icmp eq ptr %call93, null
  br i1 %tobool91.not, label %cleanup116.for.end_crit_edge, label %cleanup116.for.body_crit_edge

cleanup116.for.body_crit_edge:                    ; preds = %cleanup116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup116.for.end_crit_edge:                     ; preds = %cleanup116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup116.for.end_crit_edge, %if.end89.for.end_crit_edge
  %err.3.lcssa = phi i32 [ 0, %if.end89.for.end_crit_edge ], [ %err.5, %cleanup116.for.end_crit_edge ]
  %dirty121 = getelementptr i8, ptr %inode, i32 -292
  %109 = ptrtoint ptr %dirty121 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %dirty121, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool122.not = icmp eq i8 %110, 0
  br i1 %tobool122.not, label %for.end.out_crit_edge, label %if.then123

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then123:                                       ; preds = %for.end
  %call125 = call i32 @mi_write(ptr noundef %add.ptr.i, i32 noundef %sync) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.lcssa)
  %tobool126.not = icmp eq i32 %err.3.lcssa, 0
  br i1 %tobool126.not, label %if.then123.out_crit_edge, label %if.then123.out.thread_crit_edge

if.then123.out.thread_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.then123.out_crit_edge:                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out.thread:                                       ; preds = %if.then123.out.thread_crit_edge, %if.end83.out.thread_crit_edge, %if.then78.out.thread_crit_edge, %if.end3.i.i.out.thread_crit_edge, %if.end.i.i.out.thread_crit_edge, %cond.true.i.out.thread_crit_edge, %if.then10.out.thread_crit_edge
  %err.6.ph = phi i32 [ %err.3.lcssa, %if.then123.out.thread_crit_edge ], [ %call84, %if.end83.out.thread_crit_edge ], [ %call79, %if.then78.out.thread_crit_edge ], [ -22, %if.then10.out.thread_crit_edge ], [ -22, %cond.true.i.out.thread_crit_edge ], [ -22, %if.end.i.i.out.thread_crit_edge ], [ -22, %if.end3.i.i.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %ni_lock.i) #9
  br label %if.then133

out:                                              ; preds = %if.then123.out_crit_edge, %for.end.out_crit_edge
  %err.6 = phi i32 [ %err.3.lcssa, %for.end.out_crit_edge ], [ %call125, %if.then123.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %ni_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.6)
  %tobool132.not = icmp eq i32 %err.6, 0
  br i1 %tobool132.not, label %if.end136, label %out.if.then133_crit_edge

out.if.then133_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

if.then133:                                       ; preds = %out.if.then133_crit_edge, %out.thread
  %err.6252 = phi i32 [ %err.6.ph, %out.thread ], [ %err.6, %out.if.then133_crit_edge ]
  %i_ino134 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %111 = ptrtoint ptr %i_ino134 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i_ino134, align 8
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %hint, i32 noundef %112, i32 noundef %err.6252) #9
  %call135 = call i32 @ntfs_set_state(ptr noundef %3, i32 noundef 2) #9
  br label %cleanup140

if.end136:                                        ; preds = %out
  br i1 %re_dirty.2.off0, label %if.then138, label %if.end136.cleanup140_crit_edge

if.end136.cleanup140_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup140

if.then138:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #9
  br label %cleanup140

cleanup140:                                       ; preds = %if.then138, %if.end136.cleanup140_crit_edge, %if.then133, %if.then4, %lor.lhs.false.cleanup140_crit_edge, %entry.cleanup140_crit_edge
  %retval.0 = phi i32 [ %err.6252, %if.then133 ], [ 0, %if.then4 ], [ 0, %lor.lhs.false.cleanup140_crit_edge ], [ 0, %entry.cleanup140_crit_edge ], [ 0, %if.then138 ], [ 0, %if.end136.cleanup140_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dup) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ni_update_parent(ptr noundef %ni, ptr noundef %dup, i32 noundef %sync) unnamed_addr #0 align 64 {
entry:
  %mi = alloca ptr, align 4
  %le = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #9
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #9
  %1 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %le, align 4
  %sbi2 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %2 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %6 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrec, align 8
  %flags = getelementptr inbounds %struct.MFT_REC, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %fa5 = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 6
  %11 = ptrtoint ptr %fa5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fa5, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %12, 16
  %13 = ptrtoint ptr %fa5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %fa5, align 8
  %alloc_size = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 4
  %14 = call ptr @memset(ptr %alloc_size, i32 0, i32 16)
  br label %if.end39

if.else:                                          ; preds = %entry
  %and6 = and i32 %12, -17
  %15 = ptrtoint ptr %fa5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and6, ptr %fa5, align 8
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi)
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_size10 = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 4
  %16 = call ptr @memset(ptr %alloc_size10, i32 0, i32 16)
  br label %if.end39

if.else11:                                        ; preds = %if.else
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %if.then13, label %if.else21

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  %19 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %add = add i32 %22, 7
  %and16 = and i32 %add, -8
  %conv17 = zext i32 %and16 to i64
  %23 = call i64 @llvm.bswap.i64(i64 %conv17)
  %alloc_size18 = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 4
  %24 = ptrtoint ptr %alloc_size18 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %alloc_size18, align 8
  %conv19 = zext i32 %22 to i64
  %25 = call i64 @llvm.bswap.i64(i64 %conv19)
  %data_size20 = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 5
  %26 = ptrtoint ptr %data_size20 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %data_size20, align 8
  br label %if.end39

if.else21:                                        ; preds = %if.else11
  %i_valid = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %27 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_valid, align 8
  %data_size23 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 6
  %29 = ptrtoint ptr %data_size23 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %data_size23, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 5
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i, align 4
  %34 = and i16 %33, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.i.not = icmp eq i16 %34, 0
  %total_size = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 8
  %alloc_size26 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 5
  %cond.in = select i1 %tobool.i.not, ptr %alloc_size26, ptr %total_size
  %35 = ptrtoint ptr %cond.in to i32
  call void @__asan_load8_noabort(i32 %35)
  %cond = load i64, ptr %cond.in, align 8
  %alloc_size27 = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 4
  %36 = ptrtoint ptr %alloc_size27 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %cond, ptr %alloc_size27, align 8
  %37 = ptrtoint ptr %data_size23 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %data_size23, align 8
  %data_size29 = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 5
  %39 = ptrtoint ptr %data_size29 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %data_size29, align 8
  %40 = call i64 @llvm.umin.i64(i64 %28, i64 %31)
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 7
  %42 = ptrtoint ptr %valid_size to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %valid_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp32.not = icmp eq i64 %41, %43
  br i1 %cmp32.not, label %if.else21.if.end39_crit_edge, label %if.then34

if.else21.if.end39_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then34:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %41, ptr %valid_size, align 8
  %45 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mi, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %dirty, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.else21.if.end39_crit_edge, %if.then13, %if.then8, %if.then
  %attr.0 = phi ptr [ null, %if.then ], [ %call, %if.then13 ], [ null, %if.then8 ], [ %call, %if.then34 ], [ %call, %if.else21.if.end39_crit_edge ]
  %reparse = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 8
  %48 = ptrtoint ptr %reparse to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %reparse, align 2
  %ea_size = getelementptr inbounds %struct.NTFS_DUP_INFO, ptr %dup, i32 0, i32 7
  %49 = ptrtoint ptr %ea_size to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %ea_size, align 4
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %50 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ni_flags, align 4
  %and40 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end52_crit_edge, label %if.then42

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then42:                                        ; preds = %if.end39
  %call43 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef %attr.0, ptr noundef nonnull %le, i32 noundef -805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null)
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.then42.if.end52_crit_edge, label %if.then45

if.then42.if.end52_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then45:                                        ; preds = %if.then42
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call43, i32 0, i32 2
  %52 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then45.if.end52_crit_edge

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end.i:                                         ; preds = %if.then45
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call43, i32 0, i32 1
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #9
  %57 = getelementptr inbounds %struct.ATTRIB, ptr %call43, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %data_off.i, align 4
  %60 = call i16 @llvm.bswap.i16(i16 %59) #9
  %conv.i = zext i16 %60 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add.i)
  %cmp.i = icmp ult i32 %56, %add.i
  br i1 %cmp.i, label %if.end.i.if.end52_crit_edge, label %if.end3.i

if.end.i.if.end52_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end3.i:                                        ; preds = %if.end.i
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %57, align 8
  %63 = call i32 @llvm.bswap.i32(i32 %62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp4.i = icmp ult i32 %63, 8
  %add.ptr.i = getelementptr i8, ptr %call43, i32 %conv.i
  %tobool47.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %cmp4.i, i1 true, i1 %tobool47.not
  br i1 %or.cond, label %if.end3.i.if.end52_crit_edge, label %if.then48

if.end3.i.if.end52_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then48:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i, align 4
  %66 = ptrtoint ptr %ea_size to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %ea_size, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end3.i.if.end52_crit_edge, %if.end.i.if.end52_crit_edge, %if.then45.if.end52_crit_edge, %if.then42.if.end52_crit_edge, %if.end39.if.end52_crit_edge
  %67 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %le, align 4
  %call53171 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi)
  %tobool54.not172 = icmp eq ptr %call53171, null
  br i1 %tobool54.not172, label %if.end52.while.end_crit_edge, label %while.body.lr.ph

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end52
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call53174 = phi ptr [ %call53171, %while.body.lr.ph ], [ %call53, %cleanup.while.body_crit_edge ]
  %re_dirty.0.off0173 = phi i1 [ false, %while.body.lr.ph ], [ %re_dirty.3.off0, %cleanup.while.body_crit_edge ]
  %non_res.i148 = getelementptr inbounds %struct.ATTRIB, ptr %call53174, i32 0, i32 2
  %68 = ptrtoint ptr %non_res.i148 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %non_res.i148, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i149 = icmp eq i8 %69, 0
  br i1 %tobool.not.i149, label %if.end.i155, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i155:                                      ; preds = %while.body
  %size.i150 = getelementptr inbounds %struct.ATTRIB, ptr %call53174, i32 0, i32 1
  %70 = ptrtoint ptr %size.i150 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i150, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #9
  %73 = getelementptr inbounds %struct.ATTRIB, ptr %call53174, i32 0, i32 7
  %data_off.i151 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %data_off.i151 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %data_off.i151, align 4
  %76 = call i16 @llvm.bswap.i16(i16 %75) #9
  %conv.i152 = zext i16 %76 to i32
  %add.i153 = add nuw nsw i32 %conv.i152, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %add.i153)
  %cmp.i154 = icmp ult i32 %72, %add.i153
  br i1 %cmp.i154, label %if.end.i155.cleanup_crit_edge, label %if.end3.i159

if.end.i155.cleanup_crit_edge:                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i159:                                     ; preds = %if.end.i155
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %73, align 8
  %79 = call i32 @llvm.bswap.i32(i32 %78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %79)
  %cmp4.i156 = icmp ult i32 %79, 68
  %add.ptr.i157 = getelementptr i8, ptr %call53174, i32 %conv.i152
  %tobool56.not = icmp eq ptr %add.ptr.i157, null
  %or.cond170 = select i1 %cmp4.i156, i1 true, i1 %tobool56.not
  br i1 %or.cond170, label %if.end3.i159.cleanup_crit_edge, label %lor.lhs.false

if.end3.i159.cleanup_crit_edge:                   ; preds = %if.end3.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3.i159
  %dup57 = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr.i157, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(56) %dup57, ptr noundef dereferenceable(56) %dup, i32 56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool59.not = icmp eq i32 %bcmp, 0
  br i1 %tobool59.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end61

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false
  %call62 = call ptr @ntfs_iget5(ptr noundef %5, ptr noundef nonnull %add.ptr.i157, ptr noundef null) #9
  %cmp.i162 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %add.ptr.i157 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i157, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #9
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode, ptr noundef nonnull @.str.14, i32 noundef %82) #9
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %call68 = call zeroext i1 @is_bad_inode(ptr noundef %call62) #9
  br i1 %call68, label %if.end67.if.end79_crit_edge, label %if.then69

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then69:                                        ; preds = %if.end67
  %ni_lock.i = getelementptr i8, ptr %call62, i32 -264
  %call.i = call i32 @mutex_trylock(ptr noundef %ni_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool72.not = icmp eq i32 %call.i, 0
  br i1 %tobool72.not, label %if.then69.if.end79_crit_edge, label %if.else74

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.else74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i163 = getelementptr i8, ptr %call62, i32 -360
  %call75 = call i32 @indx_update_dup(ptr noundef %add.ptr.i163, ptr noundef %3, ptr noundef nonnull %add.ptr.i157, ptr noundef %dup, i32 noundef %sync) #9
  call void @mutex_unlock(ptr noundef %ni_lock.i) #9
  %83 = call ptr @memcpy(ptr %dup57, ptr %dup, i32 56)
  %84 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mi, align 4
  %dirty77 = getelementptr inbounds %struct.mft_inode, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %dirty77 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %dirty77, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else74, %if.then69.if.end79_crit_edge, %if.end67.if.end79_crit_edge
  %re_dirty.2.off0 = phi i1 [ %re_dirty.0.off0173, %if.end67.if.end79_crit_edge ], [ %re_dirty.0.off0173, %if.else74 ], [ true, %if.then69.if.end79_crit_edge ]
  call void @iput(ptr noundef %call62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then64, %lor.lhs.false.cleanup_crit_edge, %if.end3.i159.cleanup_crit_edge, %if.end.i155.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %re_dirty.3.off0 = phi i1 [ %re_dirty.0.off0173, %if.then64 ], [ %re_dirty.2.off0, %if.end79 ], [ %re_dirty.0.off0173, %lor.lhs.false.cleanup_crit_edge ], [ %re_dirty.0.off0173, %while.body.cleanup_crit_edge ], [ %re_dirty.0.off0173, %if.end.i155.cleanup_crit_edge ], [ %re_dirty.0.off0173, %if.end3.i159.cleanup_crit_edge ]
  %call53 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call53174, ptr noundef nonnull %le, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi)
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end52.while.end_crit_edge
  %re_dirty.0.off0.lcssa = phi i1 [ false, %if.end52.while.end_crit_edge ], [ %re_dirty.3.off0, %cleanup.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #9
  ret i1 %re_dirty.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_try_remove_attr_list(ptr noundef %ni) unnamed_addr #0 align 64 {
entry:
  %mi2.i = alloca ptr, align 4
  %le.i = alloca ptr, align 4
  %run.i = alloca %struct.runs_tree, align 4
  %ref = alloca %struct.MFT_REF, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #9
  %2 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %3 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %attr_list3 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ref, align 8
  %5 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dirty, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi2.i) #9
  %7 = ptrtoint ptr %mi2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi2.i, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #9
  %8 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %le.i, align 4
  %cluster_bits3.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %cluster_bits3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cluster_bits3.i, align 8
  %record_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %record_size.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %run.i) #9
  %13 = getelementptr inbounds %struct.runs_tree, ptr %run.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.runs_tree, ptr %run.i, i32 0, i32 2
  %15 = ptrtoint ptr %run.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %run.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %13, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %14, align 4
  %sh_prom.i = zext i8 %10 to i64
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  br label %while.cond.outer.outer.i.outer

while.cond.outer.outer.i.outer:                   ; preds = %while.cond.outer.outer.i.outer.backedge, %if.end
  %mi_p.0.ph.ph.i.ph = phi ptr [ null, %if.end ], [ %mi_p.0.ph.ph.i.ph.be, %while.cond.outer.outer.i.outer.backedge ]
  %attr.0.ph.ph.i.ph = phi ptr [ null, %if.end ], [ %call.i, %while.cond.outer.outer.i.outer.backedge ]
  %attr_p.0.ph.ph.i.ph = phi ptr [ inttoptr (i32 -1 to ptr), %if.end ], [ %call.i, %while.cond.outer.outer.i.outer.backedge ]
  %le_p.0.ph.ph.i.ph = phi ptr [ inttoptr (i32 -1 to ptr), %if.end ], [ %25, %while.cond.outer.outer.i.outer.backedge ]
  %alloc.0.ph.ph.i.ph = phi i32 [ 0, %if.end ], [ %alloc.1.i, %while.cond.outer.outer.i.outer.backedge ]
  %evcn.0.ph.ph.i.ph = phi i32 [ 0, %if.end ], [ %evcn_p.0.ph.ph.i.ph.be, %while.cond.outer.outer.i.outer.backedge ]
  %svcn_p.0.ph.ph.i.ph = phi i32 [ -1, %if.end ], [ %svcn_p.0.ph.ph.i.ph.be, %while.cond.outer.outer.i.outer.backedge ]
  %evcn_p.0.ph.ph.i.ph = phi i32 [ -1, %if.end ], [ %evcn_p.0.ph.ph.i.ph.be, %while.cond.outer.outer.i.outer.backedge ]
  %evcn55.i = getelementptr inbounds %struct.ATTRIB, ptr %attr_p.0.ph.ph.i.ph, i32 0, i32 7, i32 0, i32 1
  br label %while.cond.outer.outer.i

while.cond.outer.outer.i:                         ; preds = %if.then72.i.while.cond.outer.outer.i_crit_edge, %while.cond.outer.outer.i.outer
  %mi_p.0.ph.ph.i = phi ptr [ null, %if.then72.i.while.cond.outer.outer.i_crit_edge ], [ %mi_p.0.ph.ph.i.ph, %while.cond.outer.outer.i.outer ]
  %attr.0.ph.ph.i = phi ptr [ %call.i, %if.then72.i.while.cond.outer.outer.i_crit_edge ], [ %attr.0.ph.ph.i.ph, %while.cond.outer.outer.i.outer ]
  %alloc.0.ph.ph.i = phi i32 [ %alloc.1.i, %if.then72.i.while.cond.outer.outer.i_crit_edge ], [ %alloc.0.ph.ph.i.ph, %while.cond.outer.outer.i.outer ]
  %evcn.0.ph.ph.i = phi i32 [ %conv20.i.le, %if.then72.i.while.cond.outer.outer.i_crit_edge ], [ %evcn.0.ph.ph.i.ph, %while.cond.outer.outer.i.outer ]
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %while.cond.outer.i.backedge, %while.cond.outer.outer.i
  %mi_p.0.ph.i = phi ptr [ %mi_p.0.ph.ph.i, %while.cond.outer.outer.i ], [ %mi_p.1.i, %while.cond.outer.i.backedge ]
  %attr.0.ph.i = phi ptr [ %attr.0.ph.ph.i, %while.cond.outer.outer.i ], [ %call.i, %while.cond.outer.i.backedge ]
  %alloc.0.ph.i = phi i32 [ %alloc.0.ph.ph.i, %while.cond.outer.outer.i ], [ %alloc.1.i, %while.cond.outer.i.backedge ]
  %evcn.0.ph.i = phi i32 [ %evcn.0.ph.ph.i, %while.cond.outer.outer.i ], [ %conv20.i, %while.cond.outer.i.backedge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %attr.0.i = phi ptr [ %call.i, %while.body.i.while.cond.i_crit_edge ], [ %attr.0.ph.i, %while.cond.outer.i ]
  %call.i = call ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef %attr.0.i, ptr noundef nonnull %le.i, ptr noundef nonnull %mi2.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end6, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %non_res.i, align 8
  %tobool4.not.i = icmp eq i8 %19, 0
  br i1 %tobool4.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end.i:                                         ; preds = %while.body.i
  %20 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22) #9
  %conv.i = trunc i64 %23 to i32
  %conv6.i = and i64 %23, 4294967295
  %24 = ptrtoint ptr %le.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %le.i, align 4
  %vcn.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %vcn.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vcn.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %conv6.i, i64 %28)
  %cmp.not.i = icmp eq i64 %conv6.i, %28
  br i1 %cmp.not.i, label %if.end9.i, label %if.end.i.if.then82.i_crit_edge

if.end.i.if.then82.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool10.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_size.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 5
  %29 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %alloc_size.i, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30) #9
  %shr.i = lshr i64 %31, %sh_prom.i
  %conv13.i = trunc i64 %shr.i to i32
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end9.i
  %add.i = add i32 %evcn.0.ph.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp14.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp14.not.i, label %if.else.i.if.end18.i_crit_edge, label %if.else.i.if.then82.i_crit_edge

if.else.i.if.then82.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i.if.end18.i_crit_edge, %if.then11.i
  %mi_p.1.i = phi ptr [ %mi_p.0.ph.i, %if.else.i.if.end18.i_crit_edge ], [ null, %if.then11.i ]
  %alloc.1.i = phi i32 [ %alloc.0.ph.i, %if.else.i.if.end18.i_crit_edge ], [ %conv13.i, %if.then11.i ]
  %evcn19.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %evcn19.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %evcn19.i, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33) #9
  %conv20.i = trunc i64 %34 to i32
  %add21.i = add i32 %conv20.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %conv.i)
  %cmp22.i = icmp ult i32 %add21.i, %conv.i
  br i1 %cmp22.i, label %if.end18.i.if.then82.i_crit_edge, label %if.end25.i

if.end18.i.if.then82.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i

if.end25.i:                                       ; preds = %if.end18.i
  %tobool26.not.i = icmp eq ptr %mi_p.1.i, null
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end25.i.if.end38.i_crit_edge

if.end25.i.if.end38.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then27.i:                                      ; preds = %if.end25.i
  %35 = ptrtoint ptr %mi2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mi2.i, align 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mrec.i, align 4
  %used.i = getelementptr inbounds %struct.MFT_REC, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %used.i, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40) #9
  %add28.i = add i32 %41, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i, i32 %12)
  %cmp29.not.i = icmp uge i32 %add28.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %alloc.1.i)
  %cmp34.i = icmp eq i32 %add21.i, %alloc.1.i
  %or.cond.i = select i1 %cmp29.not.i, i1 true, i1 %cmp34.i
  br i1 %or.cond.i, label %if.then27.i.while.cond.outer.i.backedge_crit_edge, label %if.end37.i

if.then27.i.while.cond.outer.i.backedge_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.i.backedge

if.end37.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %run.i, align 4
  call void @kvfree(ptr noundef %43) #9
  %44 = call ptr @memset(ptr %run.i, i32 0, i32 12)
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end37.i, %if.end25.i.if.end38.i_crit_edge
  %run_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %45 = ptrtoint ptr %run_off.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %run_off.i, align 8
  %47 = call i16 @llvm.bswap.i16(i16 %46) #9
  %conv39.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rno.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %conv39.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #9
  %sub.i = sub i32 %52, %conv39.i
  %call41.i = call i32 @run_unpack(ptr noundef nonnull %run.i, ptr noundef %1, i32 noundef %49, i32 noundef %conv.i, i32 noundef %conv20.i, i32 noundef %conv.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.end38.i.if.then82.i_crit_edge, label %if.end45.i

if.end38.i.if.then82.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i

if.end45.i:                                       ; preds = %if.end38.i
  br i1 %tobool26.not.i, label %if.then47.i, label %if.end48.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.le = trunc i64 %23 to i32
  %conv20.i.le313 = trunc i64 %34 to i32
  %53 = ptrtoint ptr %mi2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mi2.i, align 4
  br label %while.cond.outer.outer.i.outer.backedge

while.cond.outer.outer.i.outer.backedge:          ; preds = %if.else79.i, %if.then47.i
  %mi_p.0.ph.ph.i.ph.be = phi ptr [ %66, %if.else79.i ], [ %54, %if.then47.i ]
  %svcn_p.0.ph.ph.i.ph.be = phi i32 [ %conv57.i, %if.else79.i ], [ %conv.i.le, %if.then47.i ]
  %evcn_p.0.ph.ph.i.ph.be = phi i32 [ %conv20.i.le.le, %if.else79.i ], [ %conv20.i.le313, %if.then47.i ]
  br label %while.cond.outer.outer.i.outer

if.end48.i:                                       ; preds = %if.end45.i
  %sub50.i = sub i32 %add21.i, %svcn_p.0.ph.ph.i.ph
  %call51.i = call i32 @mi_pack_runs(ptr noundef nonnull %mi_p.1.i, ptr noundef nonnull %attr_p.0.ph.ph.i.ph, ptr noundef nonnull %run.i, i32 noundef %sub50.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end48.i.if.then82.i_crit_edge

if.end48.i.if.then82.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i

if.end54.i:                                       ; preds = %if.end48.i
  %55 = ptrtoint ptr %evcn55.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %evcn55.i, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56) #9
  %58 = trunc i64 %57 to i32
  %conv57.i = add i32 %58, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %conv57.i)
  %cmp59.not.i = icmp ugt i32 %add21.i, %conv57.i
  br i1 %cmp59.not.i, label %if.end64.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %call62.i = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef %25) #9
  %59 = ptrtoint ptr %mi2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mi2.i, align 4
  %call63.i = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %60, ptr noundef nonnull %call.i) #9
  %61 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %le_p.0.ph.ph.i.ph, ptr %le.i, align 4
  br label %while.cond.outer.i.backedge

while.cond.outer.i.backedge:                      ; preds = %if.then61.i, %if.then27.i.while.cond.outer.i.backedge_crit_edge
  br label %while.cond.outer.i

if.end64.i:                                       ; preds = %if.end54.i
  %conv20.i.le = trunc i64 %34 to i32
  %conv65.i = zext i32 %conv57.i to i64
  %62 = call i64 @llvm.bswap.i64(i64 %conv65.i) #9
  %63 = ptrtoint ptr %vcn.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %vcn.i, align 8
  %64 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %62, ptr %20, align 8
  %65 = ptrtoint ptr %mi2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mi2.i, align 4
  %dirty.i = getelementptr inbounds %struct.mft_inode, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %dirty.i, align 4
  %68 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %alloc.1.i)
  %cmp70.i = icmp eq i32 %add21.i, %alloc.1.i
  br i1 %cmp70.i, label %if.then72.i, label %if.else79.i

if.then72.i:                                      ; preds = %if.end64.i
  %sub74.i = sub i32 %alloc.1.i, %conv57.i
  %call75.i = call i32 @mi_pack_runs(ptr noundef %66, ptr noundef nonnull %call.i, ptr noundef nonnull %run.i, i32 noundef %sub74.i) #9
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.then72.i.while.cond.outer.outer.i_crit_edge, label %if.then72.i.if.then82.i_crit_edge

if.then72.i.if.then82.i_crit_edge:                ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i

if.then72.i.while.cond.outer.outer.i_crit_edge:   ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.outer.i

if.else79.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i.le.le = trunc i64 %34 to i32
  call void @run_truncate_head(ptr noundef nonnull %run.i, i32 noundef %conv57.i) #9
  br label %while.cond.outer.outer.i.outer.backedge

if.then82.i:                                      ; preds = %if.then72.i.if.then82.i_crit_edge, %if.end48.i.if.then82.i_crit_edge, %if.end38.i.if.then82.i_crit_edge, %if.end18.i.if.then82.i_crit_edge, %if.else.i.if.then82.i_crit_edge, %if.end.i.if.then82.i_crit_edge
  %err.2.ph.i = phi i32 [ -22, %if.end18.i.if.then82.i_crit_edge ], [ -22, %if.else.i.if.then82.i_crit_edge ], [ -22, %if.end.i.if.then82.i_crit_edge ], [ %call51.i, %if.end48.i.if.then82.i_crit_edge ], [ %call41.i, %if.end38.i.if.then82.i_crit_edge ], [ %call75.i, %if.then72.i.if.then82.i_crit_edge ]
  %mi_p.3.ph.i = phi ptr [ %mi_p.1.i, %if.end18.i.if.then82.i_crit_edge ], [ %mi_p.0.ph.i, %if.else.i.if.then82.i_crit_edge ], [ %mi_p.0.ph.i, %if.end.i.if.then82.i_crit_edge ], [ %mi_p.1.i, %if.end48.i.if.then82.i_crit_edge ], [ %mi_p.1.i, %if.end38.i.if.then82.i_crit_edge ], [ %mi_p.1.i, %if.then72.i.if.then82.i_crit_edge ]
  %vfs_inode.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode.i, ptr noundef nonnull @.str.16) #9
  %call83.i = call i32 @ntfs_set_state(ptr noundef %1, i32 noundef 2) #9
  %tobool84.not.i = icmp eq ptr %mi_p.3.ph.i, null
  br i1 %tobool84.not.i, label %if.then82.i.ni_repack.exit.thread_crit_edge, label %if.then85.i

if.then82.i.ni_repack.exit.thread_crit_edge:      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_repack.exit.thread

if.then85.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  %add86.i = sub i32 1, %svcn_p.0.ph.ph.i.ph
  %sub87.i = add i32 %add86.i, %evcn_p.0.ph.ph.i.ph
  %call88.i = call i32 @mi_pack_runs(ptr noundef nonnull %mi_p.3.ph.i, ptr noundef nonnull %attr_p.0.ph.ph.i.ph, ptr noundef nonnull %run.i, i32 noundef %sub87.i) #9
  br label %ni_repack.exit.thread

ni_repack.exit.thread:                            ; preds = %if.then85.i, %if.then82.i.ni_repack.exit.thread_crit_edge
  %69 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %run.i, align 4
  call void @kvfree(ptr noundef %70) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %run.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2.i) #9
  br label %cleanup

if.end6:                                          ; preds = %while.cond.i
  %71 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %run.i, align 4
  call void @kvfree(ptr noundef %72) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %run.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2.i) #9
  %call8 = call ptr @mi_find_attr(ptr noundef %ni, ptr noundef null, i32 noundef 536870912, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %size = getelementptr inbounds %struct.ATTRIB, ptr %call8, i32 0, i32 1
  %73 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %record_size.i, align 8
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %78 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mrec, align 8
  %used = getelementptr inbounds %struct.MFT_REC, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %used, align 8
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %sub = add i32 %75, %77
  %add = sub i32 %sub, %82
  %83 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rno.i, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  %86 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %ref, align 8
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %2, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %79, i32 0, i32 1
  %88 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %seq.i, align 8
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %3, align 2
  %mi_tree.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 6
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end35.while.cond.outer_crit_edge, %if.end11
  %le.0.ph = phi ptr [ %call14, %if.end35.while.cond.outer_crit_edge ], [ null, %if.end11 ]
  %free.0.ph = phi i32 [ %sub40, %if.end35.while.cond.outer_crit_edge ], [ %add, %if.end11 ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %le.0 = phi ptr [ %call14, %while.body.while.cond_crit_edge ], [ %le.0.ph, %while.cond.outer ]
  %call14 = call ptr @al_enumerate(ptr noundef %ni, ptr noundef %le.0) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %ref16 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call14, i32 0, i32 5
  %bcmp161 = call i32 @bcmp(ptr noundef dereferenceable(8) %ref16, ptr noundef nonnull dereferenceable(8) %ref, i32 8) #13
  %tobool18.not = icmp eq i32 %bcmp161, 0
  br i1 %tobool18.not, label %while.body.while.cond_crit_edge, label %if.end20

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end20:                                         ; preds = %while.body
  %vcn = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call14, i32 0, i32 4
  %91 = ptrtoint ptr %vcn to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %vcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %tobool21.not = icmp eq i64 %92, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %93 = ptrtoint ptr %ref16 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ref16, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #9
  %96 = ptrtoint ptr %mi_tree.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mi_tree.i, align 4
  %tobool.not7.i.i = icmp eq ptr %97, null
  br i1 %tobool.not7.i.i, label %if.end23.cleanup_crit_edge, label %if.end23.while.body.i.i_crit_edge

if.end23.while.body.i.i_crit_edge:                ; preds = %if.end23
  br label %while.body.i.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end23.while.body.i.i_crit_edge
  %98 = phi ptr [ %102, %cleanup.i.i.while.body.i.i_crit_edge ], [ %97, %if.end23.while.body.i.i_crit_edge ]
  %rno.i.i = getelementptr inbounds %struct.mft_inode, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %rno.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rno.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %95)
  %cmp.i.i = icmp ugt i32 %100, %95
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %95)
  %cmp2.i.i = icmp ult i32 %100, %95
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end29

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %p.2.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %101 = ptrtoint ptr %p.2.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %p.2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.cleanup_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

cleanup.i.i.cleanup_crit_edge:                    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.else.i.i
  %103 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call14, align 8
  %name_off.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call14, i32 0, i32 3
  %105 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %name_off.i, align 1
  %conv.i164 = zext i8 %106 to i32
  %add.ptr.i165 = getelementptr i8, ptr %call14, i32 %conv.i164
  %name_len = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call14, i32 0, i32 2
  %107 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %name_len, align 2
  %conv = zext i8 %108 to i32
  %id31 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call14, i32 0, i32 6
  %call32 = call ptr @mi_find_attr(ptr noundef nonnull %98, ptr noundef null, i32 noundef %104, ptr noundef %add.ptr.i165, i32 noundef %conv, ptr noundef %id31) #9
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %size36 = getelementptr inbounds %struct.ATTRIB, ptr %call32, i32 0, i32 1
  %109 = ptrtoint ptr %size36 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %size36, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %cmp = icmp ult i32 %free.0.ph, %111
  %sub40 = sub i32 %free.0.ph, %111
  br i1 %cmp, label %if.end35.cleanup_crit_edge, label %if.end35.while.cond.outer_crit_edge

if.end35.while.cond.outer_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call42 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %ni, ptr noundef nonnull %call8) #9
  %call44235 = call ptr @al_enumerate(ptr noundef %ni, ptr noundef null) #9
  %tobool45.not236 = icmp eq ptr %call44235, null
  br i1 %tobool45.not236, label %while.end.while.end79_crit_edge, label %while.end.while.body46_crit_edge

while.end.while.body46_crit_edge:                 ; preds = %while.end
  br label %while.body46

while.end.while.end79_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end79

while.body46:                                     ; preds = %while.cond43.backedge.while.body46_crit_edge, %while.end.while.body46_crit_edge
  %call44237 = phi ptr [ %call44, %while.cond43.backedge.while.body46_crit_edge ], [ %call44235, %while.end.while.body46_crit_edge ]
  %ref47 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call44237, i32 0, i32 5
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %ref47, ptr noundef nonnull dereferenceable(8) %ref, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool49.not = icmp eq i32 %bcmp, 0
  br i1 %tobool49.not, label %while.body46.while.cond43.backedge_crit_edge, label %if.end51

while.body46.while.cond43.backedge_crit_edge:     ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond43.backedge

if.end51:                                         ; preds = %while.body46
  %112 = ptrtoint ptr %ref47 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ref47, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #9
  %115 = ptrtoint ptr %mi_tree.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mi_tree.i, align 4
  %tobool.not7.i.i167 = icmp eq ptr %116, null
  br i1 %tobool.not7.i.i167, label %if.end51.bad_crit_edge, label %if.end51.while.body.i.i170_crit_edge

if.end51.while.body.i.i170_crit_edge:             ; preds = %if.end51
  br label %while.body.i.i170

if.end51.bad_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

while.body.i.i170:                                ; preds = %cleanup.i.i179.while.body.i.i170_crit_edge, %if.end51.while.body.i.i170_crit_edge
  %117 = phi ptr [ %121, %cleanup.i.i179.while.body.i.i170_crit_edge ], [ %116, %if.end51.while.body.i.i170_crit_edge ]
  %rno.i.i168 = getelementptr inbounds %struct.mft_inode, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %rno.i.i168 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rno.i.i168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %114)
  %cmp.i.i169 = icmp ugt i32 %119, %114
  br i1 %cmp.i.i169, label %if.then.i.i172, label %if.else.i.i174

if.then.i.i172:                                   ; preds = %while.body.i.i170
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i171 = getelementptr inbounds %struct.rb_node, ptr %117, i32 0, i32 2
  br label %cleanup.i.i179

if.else.i.i174:                                   ; preds = %while.body.i.i170
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %114)
  %cmp2.i.i173 = icmp ult i32 %119, %114
  br i1 %cmp2.i.i173, label %if.then3.i.i176, label %if.end57

if.then3.i.i176:                                  ; preds = %if.else.i.i174
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i175 = getelementptr inbounds %struct.rb_node, ptr %117, i32 0, i32 1
  br label %cleanup.i.i179

cleanup.i.i179:                                   ; preds = %if.then3.i.i176, %if.then.i.i172
  %p.2.i.i177 = phi ptr [ %rb_left.i.i171, %if.then.i.i172 ], [ %rb_right.i.i175, %if.then3.i.i176 ]
  %120 = ptrtoint ptr %p.2.i.i177 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %p.2.i.i177, align 4
  %tobool.not.i.i178 = icmp eq ptr %121, null
  br i1 %tobool.not.i.i178, label %cleanup.i.i179.bad_crit_edge, label %cleanup.i.i179.while.body.i.i170_crit_edge

cleanup.i.i179.while.body.i.i170_crit_edge:       ; preds = %cleanup.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i170

cleanup.i.i179.bad_crit_edge:                     ; preds = %cleanup.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end57:                                         ; preds = %if.else.i.i174
  %122 = ptrtoint ptr %call44237 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %call44237, align 8
  %name_off.i182 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call44237, i32 0, i32 3
  %124 = ptrtoint ptr %name_off.i182 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %name_off.i182, align 1
  %conv.i183 = zext i8 %125 to i32
  %add.ptr.i184 = getelementptr i8, ptr %call44237, i32 %conv.i183
  %name_len60 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call44237, i32 0, i32 2
  %126 = ptrtoint ptr %name_len60 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %name_len60, align 2
  %conv61 = zext i8 %127 to i32
  %id62 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %call44237, i32 0, i32 6
  %call63 = call ptr @mi_find_attr(ptr noundef nonnull %117, ptr noundef null, i32 noundef %123, ptr noundef %add.ptr.i184, i32 noundef %conv61, ptr noundef %id62) #9
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end57.bad_crit_edge, label %if.end66

if.end57.bad_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end66:                                         ; preds = %if.end57
  %size67 = getelementptr inbounds %struct.ATTRIB, ptr %call63, i32 0, i32 1
  %128 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size67, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  %131 = ptrtoint ptr %call44237 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %call44237, align 8
  %133 = ptrtoint ptr %name_off.i182 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %name_off.i182, align 1
  %conv.i186 = zext i8 %134 to i32
  %add.ptr.i187 = getelementptr i8, ptr %call44237, i32 %conv.i186
  %135 = ptrtoint ptr %name_len60 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %name_len60, align 2
  %name_off = getelementptr inbounds %struct.ATTRIB, ptr %call63, i32 0, i32 4
  %137 = ptrtoint ptr %name_off to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %name_off, align 2
  %139 = call i16 @llvm.bswap.i16(i16 %138)
  %call72 = call ptr @mi_insert_attr(ptr noundef %ni, i32 noundef %132, ptr noundef %add.ptr.i187, i8 noundef zeroext %136, i32 noundef %130, i16 noundef zeroext %139) #9
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end66.bad_crit_edge, label %if.end75

if.end66.bad_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad

if.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %id76 = getelementptr inbounds %struct.ATTRIB, ptr %call72, i32 0, i32 6
  %140 = ptrtoint ptr %id76 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %id76, align 2
  %142 = call ptr @memcpy(ptr %call72, ptr %call63, i32 %130)
  store i16 %141, ptr %id76, align 2
  %call78 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef nonnull %117, ptr noundef nonnull %call63) #9
  br label %while.cond43.backedge

while.cond43.backedge:                            ; preds = %if.end75, %while.body46.while.cond43.backedge_crit_edge
  %call44 = call ptr @al_enumerate(ptr noundef %ni, ptr noundef %call44237) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %while.cond43.backedge.while.end79_crit_edge, label %while.cond43.backedge.while.body46_crit_edge

while.cond43.backedge.while.body46_crit_edge:     ; preds = %while.cond43.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body46

while.cond43.backedge.while.end79_crit_edge:      ; preds = %while.cond43.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end79

while.end79:                                      ; preds = %while.cond43.backedge.while.end79_crit_edge, %while.end.while.end79_crit_edge
  %call81 = call i32 @run_deallocate(ptr noundef %1, ptr noundef %attr_list3, i1 noundef zeroext true) #9
  %143 = ptrtoint ptr %attr_list3 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %attr_list3, align 4
  call void @kvfree(ptr noundef %144) #9
  %145 = call ptr @memset(ptr %attr_list3, i32 0, i32 12)
  %size85 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %146 = ptrtoint ptr %size85 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %size85, align 4
  %le87 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 1
  %147 = ptrtoint ptr %le87 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %le87, align 4
  call void @kfree(ptr noundef %148) #9
  %149 = ptrtoint ptr %le87 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %le87, align 4
  %150 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %dirty, align 4
  br label %cleanup

bad:                                              ; preds = %if.end66.bad_crit_edge, %if.end57.bad_crit_edge, %cleanup.i.i179.bad_crit_edge, %if.end51.bad_crit_edge
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode, ptr noundef nonnull @.str.15) #9
  call void @make_bad_inode(ptr noundef %vfs_inode) #9
  br label %cleanup

cleanup:                                          ; preds = %bad, %while.end79, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %cleanup.i.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %ni_repack.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %bad ], [ 0, %while.end79 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %err.2.ph.i, %ni_repack.exit.thread ], [ 0, %cleanup.i.i.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @al_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ni_ins_new_attr(ptr noundef %ni, ptr noundef %mi, ptr noundef %le, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off, i32 noundef %svcn, ptr noundef writeonly %ins_le) unnamed_addr #0 align 64 {
entry:
  %le.addr = alloca ptr, align 4
  %ref = alloca %struct.MFT_REF, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %le.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %le, ptr %le.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #9
  %1 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %2 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 4
  %3 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rno.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ref, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %1, align 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %8 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mrec.i, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %seq.i, align 8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %type)
  %cmp.not = icmp eq i32 %type, 536870912
  br i1 %cmp.not, label %if.end6.thread52, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %tobool.not = icmp eq ptr %le, null
  br i1 %tobool.not, label %land.lhs.true1, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true1:                                   ; preds = %land.lhs.true
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %land.lhs.true1.if.end6_crit_edge, label %if.then

land.lhs.true1.if.end6_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true1
  %call = call i32 @al_add_le(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %svcn, i16 noundef zeroext -1, ptr noundef nonnull %ref, ptr noundef nonnull %le.addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6.thread, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true1.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge
  %call7 = tail call ptr @mi_insert_attr(ptr noundef %mi, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.thread52:                                 ; preds = %entry
  %call753 = tail call ptr @mi_insert_attr(ptr noundef %mi, i32 noundef 536870912, ptr noundef %name, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off) #9
  %tobool8.not54 = icmp eq ptr %call753, null
  br i1 %tobool8.not54, label %if.end6.thread52.cleanup_crit_edge, label %if.end6.thread52.out_crit_edge

if.end6.thread52.out_crit_edge:                   ; preds = %if.end6.thread52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6.thread52.cleanup_crit_edge:               ; preds = %if.end6.thread52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.thread:                                   ; preds = %if.then
  %15 = ptrtoint ptr %le.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %le.addr, align 4
  %name5 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %16, i32 0, i32 7
  %call744 = call ptr @mi_insert_attr(ptr noundef %mi, i32 noundef %type, ptr noundef %name5, i8 noundef zeroext %name_len, i32 noundef %asize, i16 noundef zeroext %name_off) #9
  %tobool8.not45 = icmp eq ptr %call744, null
  br i1 %tobool8.not45, label %if.then11, label %if.end6.thread.if.end17_crit_edge

if.end6.thread.if.end17_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then11:                                        ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %le.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %le.addr, align 4
  %call12 = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef %18) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end6.thread.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %call74751 = phi ptr [ %call744, %if.end6.thread.if.end17_crit_edge ], [ %call7, %if.end6.if.end17_crit_edge ]
  %19 = ptrtoint ptr %le.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %le.addr, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.end17.out_crit_edge, label %if.end20

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.ATTRIB, ptr %call74751, i32 0, i32 6
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id, align 2
  %id21 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %id21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %id21, align 8
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %24 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %dirty, align 4
  %ref23 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %ref to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ref, align 8
  %27 = ptrtoint ptr %ref23 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %ref23, align 8
  br label %out

out:                                              ; preds = %if.end20, %if.end17.out_crit_edge, %if.end6.thread52.out_crit_edge
  %call748 = phi ptr [ %call74751, %if.end17.out_crit_edge ], [ %call74751, %if.end20 ], [ %call753, %if.end6.thread52.out_crit_edge ]
  %tobool24.not = icmp eq ptr %ins_le, null
  br i1 %tobool24.not, label %out.cleanup_crit_edge, label %if.then25

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %le.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %le.addr, align 4
  %30 = ptrtoint ptr %ins_le to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %ins_le, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %out.cleanup_crit_edge, %if.then11, %if.end6.thread52.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %if.then11 ], [ %call748, %if.then25 ], [ %call748, %out.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ null, %if.end6.thread52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @al_add_le(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @al_find_le(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lzx_allocate_decompressor() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzx_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xpress_allocate_decompressor() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpress_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget5(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_update_dup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_unpack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_pack_runs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_truncate_head(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/frecord.c", i32 854, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/frecord.c", i32 1684, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/frecord.c", i32 1693, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs3/frecord.c", i32 1876, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs3/frecord.c", i32 2464, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs3/frecord.c", i32 3275, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ntfs3/frecord.c", i32 3126, i32 4}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ntfs3/frecord.c", i32 753, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ntfs3/frecord.c", i32 625, i32 3}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2153335317, i64 2153335800, i64 2153335354, i64 2153335410, i64 2153335444, i64 2153335468, i64 2153335509, i64 2153335530, i64 2153335558, i64 2153335592}
!46 = !{i64 2148815430}
!47 = !{i64 2148730139, i64 2148730171, i64 2148730200, i64 2148730234, i64 2148730265, i64 2148730288}
!48 = !{i64 2148815659}
!49 = !{i64 2148551552, i64 2148551557, i64 2148551570, i64 2148551614, i64 2148551648, i64 2148551669}
!50 = !{i64 2154554001}
!51 = !{i64 2148729419, i64 2148729445, i64 2148729474, i64 2148729508, i64 2148729539, i64 2148729562}
!52 = !{!"auto-init"}
!53 = !{i64 2151386662}
!54 = !{i64 2150635699, i64 2150636190, i64 2150635736, i64 2150635792, i64 2150635826, i64 2150635850, i64 2150635891, i64 2150635912, i64 2150635940, i64 2150635974}
!55 = !{i64 2150697289, i64 2150697462, i64 2150697477, i64 2150697529, i64 2150697588, i64 2150697612, i64 2150697653, i64 2150697674, i64 2150697702, i64 2150697734}
!56 = !{i64 2150698164, i64 2150698337, i64 2150698352, i64 2150698404, i64 2150698463, i64 2150698487, i64 2150698528, i64 2150698549, i64 2150698577, i64 2150698609}
!57 = !{i64 2148735812, i64 2148735844, i64 2148735873, i64 2148735907, i64 2148735938, i64 2148735961}
!58 = !{i64 2148824917}
!59 = !{i64 2150706091, i64 2150706264, i64 2150706279, i64 2150706331, i64 2150706390, i64 2150706414, i64 2150706455, i64 2150706476, i64 2150706504, i64 2150706536}
!60 = !{i64 2150706966, i64 2150707139, i64 2150707154, i64 2150707206, i64 2150707265, i64 2150707289, i64 2150707330, i64 2150707351, i64 2150707379, i64 2150707411}
!61 = !{i8 0, i8 2}
