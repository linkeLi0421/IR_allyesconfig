; ModuleID = '/llk/IR_all_yes/fs/ntfs/lcnalloc.c_pt.bc'
source_filename = "../fs/ntfs/lcnalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.61 }
%struct.atomic_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runlist_element = type { i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.73, %struct.mutex, i32, %union.anon.76 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ntfs/lcnalloc.c\00", [45 x i8] zeroinitializer }, align 32
@__func__.ntfs_cluster_free_from_rl_nolock = private unnamed_addr constant [33 x i8] c"ntfs_cluster_free_from_rl_nolock\00", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@__func__.ntfs_cluster_alloc = private unnamed_addr constant [19 x i8] c"ntfs_cluster_alloc\00", align 1
@.str.3 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Entering for start_vcn 0x%llx, count 0x%llx, start_lcn 0x%llx, zone %s_ZONE.\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MFT\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DATA\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [166 x i8], [58 x i8] } { [166 x i8] c"Start of outer while loop: done_zones 0x%x, search_zone %i, pass %i, zone_start 0x%llx, zone_end 0x%llx, bmp_initial_pos 0x%llx, bmp_pos 0x%llx, rlpos %i, rlsize %i.\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"last_read_pos 0x%llx.\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"End of attribute reached.  Skipping to zone_pass_done.\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Marking page dirty.\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to map page.\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Before inner while loop: buf_size %i, lcn 0x%llx, bmp_pos 0x%llx, need_writeback %i.\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"In inner while loop: buf_size %i, lcn 0x%llx, bmp_pos 0x%llx, need_writeback %i, byte ofs 0x%x, *byte 0x%x.\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Continuing while loop 1.\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bit 0x%x.\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Continuing while loop 2.\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reallocating memory.\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"First free bit is at LCN 0x%llx.\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate memory.\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Reallocated memory, rlsize 0x%x.\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*byte 0x%x, need_writeback is set.\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"Adding run (lcn 0x%llx, len 0x%llx), prev_lcn 0x%llx, lcn 0x%llx, bmp_pos 0x%llx, prev_run_len 0x%llx, rlpos %i.\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Coalescing to run (lcn 0x%llx, len 0x%llx).\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Run now (lcn 0x%llx, len 0x%llx), prev_run_len 0x%llx.\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Adding new run, (previous run lcn 0x%llx, len 0x%llx).\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Adding new run, is first run.\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Done. Updating current zone position, tc 0x%llx, search_zone %i.\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Before checks, vol->mft_zone_pos 0x%llx.\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"After checks, vol->mft_zone_pos 0x%llx.\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Before checks, vol->data1_zone_pos 0x%llx.\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"After checks, vol->data1_zone_pos 0x%llx.\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Before checks, vol->data2_zone_pos 0x%llx.\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"After checks, vol->data2_zone_pos 0x%llx.\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Finished.  Going to out.\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"After inner while loop: buf_size 0x%x, lcn 0x%llx, bmp_pos 0x%llx, need_writeback %i.\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Continuing outer while loop, bmp_pos 0x%llx, zone_end 0x%llx.\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"At zone_pass_done, pass %i.\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Continuing outer while loop, pass 2, zone_start 0x%llx, zone_end 0x%llx, bmp_pos 0x%llx.\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"At done_zones_check, search_zone %i, done_zones before 0x%x, done_zones after 0x%x.\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Switching zone.\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Switching from mft zone to data1 zone.\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Switching from data1 zone to data2 zone.\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Switching from data2 zone to data1 zone.\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"After zone switch, search_zone %i, pass %i, bmp_initial_pos 0x%llx, zone_start 0x%llx, zone_end 0x%llx.\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Empty zone, going to done_zones_check.\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Continuing outer while loop.\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"All zones are finished.\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"vol->mft_zone_start 0x%llx, vol->mft_zone_end 0x%llx, mft_zone_size 0x%llx.\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No free clusters left, going to out.\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Shrinking mft zone.\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [262 x i8], [90 x i8] } { [262 x i8] c"After shrinking mft zone, mft_zone_size 0x%llx, vol->mft_zone_start 0x%llx, vol->mft_zone_end 0x%llx, vol->mft_zone_pos 0x%llx, search_zone 2, pass 2, dones_zones 0x%x, zone_start 0x%llx, zone_end 0x%llx, vol->data1_zone_pos 0x%llx, continuing outer while loop.\00", [90 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"At out.\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to allocate clusters, aborting (error %i).\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Not enough space to complete allocation, err -ENOSPC, first free lcn 0x%llx, could allocate up to 0x%llx clusters.\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Attempting rollback...\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Failed to rollback (error %i).  Leaving inconsistent metadata!  Unmount and run chkdsk.\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"No space left at all, err = -ENOSPC, first free lcn = 0x%llx.\00", [34 x i8] zeroinitializer }, align 32
@__func__.__ntfs_cluster_free = private unnamed_addr constant [20 x i8] c"__ntfs_cluster_free\00", align 1
@.str.57 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Entering for i_ino 0x%lx, start_vcn 0x%llx, count 0x%llx.%s\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (rollback)\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to find first runlist element (error %li), aborting.\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"First runlist element has invalid lcn, aborting.\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to clear first run (error %i), aborting.\00", [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Failed to map runlist fragment or failed to find subsequent runlist element.\00", [51 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Runlist element has invalid lcn (0x%llx).\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to clear subsequent run.\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Aborting (error %i).\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.69 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 42, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 54, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 149, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 244, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 255, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 258, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 264, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 275, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 286, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 292, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 304, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 308, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 312, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 323, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 325, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 332, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 340, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 347, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 353, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 364, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 371, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 381, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 391, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 408, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 415, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 430, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 437, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 450, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 457, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 468, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 477, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 483, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 488, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 495, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 520, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 529, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 535, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 540, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 583, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 624, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 654, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 663, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 668, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 671, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 677, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 683, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 688, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 706, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 723, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 744, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 750, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 757, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 760, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 768, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 845, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 869, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 877, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 896, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 924, i32 6 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 933, i32 6 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 953, i32 6 }
@___asan_gen_.274 = private constant [22 x i8] c"../fs/ntfs/lcnalloc.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 996, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 55, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 717, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 416, i32 1 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 262, i32 352, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_cluster_free_from_rl_nolock(ptr nocapture noundef readonly %vol, ptr noundef readonly %rl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lcnbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 40
  %0 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcnbmp_ino, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @__func__.ntfs_cluster_free_from_rl_nolock, ptr noundef nonnull @.str.1) #8
  %tobool.not = icmp eq ptr %rl, null
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %for.cond.preheader

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

for.cond.preheader:                               ; preds = %entry
  %length28 = getelementptr inbounds %struct.runlist_element, ptr %rl, i32 0, i32 2
  %2 = ptrtoint ptr %length28 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %length28, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not29 = icmp eq i64 %3, 0
  br i1 %tobool1.not29, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %4 = phi i64 [ %9, %cleanup.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %ret.031 = phi i32 [ %ret.2, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rl.addr.030 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %rl, %for.cond.preheader.for.body_crit_edge ]
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %rl.addr.030, i32 0, i32 1
  %5 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %call.i.i = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef %1, i64 noundef %6, i64 noundef %4, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %land.lhs.true

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %7 = zext i32 %ret.031 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.031, label %land.lhs.true.cleanup_crit_edge [
    i32 0, label %land.lhs.true.land.rhs_crit_edge
    i32 -12, label %land.lhs.true.land.rhs_crit_edge32
  ]

land.lhs.true.land.rhs_crit_edge32:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true.land.rhs_crit_edge, %land.lhs.true.land.rhs_crit_edge32
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.031, i32 %call.i.i)
  %cmp9.not = icmp eq i32 %ret.031, %call.i.i
  br i1 %cmp9.not, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !147

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %land.rhs.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.031, %for.body.cleanup_crit_edge ], [ %call.i.i, %if.then12 ], [ %ret.031, %land.rhs.cleanup_crit_edge ], [ %ret.031, %if.end3.cleanup_crit_edge ], [ %ret.031, %land.lhs.true.cleanup_crit_edge ]
  %incdec.ptr = getelementptr %struct.runlist_element, ptr %rl.addr.030, i32 1
  %length = getelementptr %struct.runlist_element, ptr %rl.addr.030, i32 1, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  %tobool1.not = icmp eq i64 %9, 0
  br i1 %tobool1.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ret.2, %cleanup.for.end_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__func__.ntfs_cluster_free_from_rl_nolock, ptr noundef nonnull @.str.2) #8
  br label %cleanup14

cleanup14:                                        ; preds = %for.end, %entry.cleanup14_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end ], [ 0, %entry.cleanup14_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_cluster_alloc(ptr noundef %vol, i64 noundef %start_vcn, i64 noundef %count, i64 noundef %start_lcn, i32 noundef %zone, i1 noundef zeroext %is_extension) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone)
  %cmp = icmp eq i32 %zone, 0
  %cond = select i1 %cmp, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 153, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.3, i64 noundef %start_vcn, i64 noundef %count, i64 noundef %start_lcn, ptr noundef nonnull %cond) #8
  %tobool.not = icmp eq ptr %vol, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !148

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #8, !srcloc !149
  unreachable

do.end9:                                          ; preds = %entry
  %lcnbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 40
  %0 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcnbmp_ino, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !148

do.body21:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #8, !srcloc !150
  unreachable

do.body30:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start_vcn)
  %cmp31 = icmp slt i64 %start_vcn, 0
  br i1 %cmp31, label %do.body39, label %do.body48, !prof !148

do.body39:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #8, !srcloc !151
  unreachable

do.body48:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count)
  %cmp49 = icmp slt i64 %count, 0
  br i1 %cmp49, label %do.body57, label %do.body66, !prof !148

do.body57:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 158, 0\0A.popsection", ""() #8, !srcloc !152
  unreachable

do.body66:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start_lcn)
  %cmp67 = icmp slt i64 %start_lcn, -1
  br i1 %cmp67, label %do.body75, label %do.body102, !prof !148

do.body75:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #8, !srcloc !153
  unreachable

do.body102:                                       ; preds = %do.body66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %zone)
  %cmp103 = icmp ugt i32 %zone, 1
  br i1 %cmp103, label %do.body111, label %do.end119, !prof !148

do.body111:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #8, !srcloc !154
  unreachable

do.end119:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count)
  %tobool120.not = icmp eq i64 %count, 0
  br i1 %tobool120.not, label %do.end119.cleanup732_crit_edge, label %if.end122

do.end119.cleanup732_crit_edge:                   ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup732

if.end122:                                        ; preds = %do.end119
  %lcnbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 41
  tail call void @down_write(ptr noundef %lcnbmp_lock) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start_lcn)
  %cmp123 = icmp slt i64 %start_lcn, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %zone)
  %cmp125 = icmp eq i32 %zone, 1
  br i1 %cmp123, label %if.then124, label %if.else131

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %data1_zone_pos = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 32
  %mft_zone_pos = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 31
  %zone_start.0.in = select i1 %cmp125, ptr %data1_zone_pos, ptr %mft_zone_pos
  %2 = ptrtoint ptr %zone_start.0.in to i32
  call void @__asan_load8_noabort(i32 %2)
  %zone_start.0 = load i64, ptr %zone_start.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zone_start.0)
  %tobool128.not = icmp eq i64 %zone_start.0, 0
  %spec.select1145 = select i1 %tobool128.not, i8 2, i8 1
  br label %if.end152

if.else131:                                       ; preds = %if.end122
  br i1 %cmp125, label %land.lhs.true, label %if.else131.if.else138_crit_edge

if.else131.if.else138_crit_edge:                  ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else138

land.lhs.true:                                    ; preds = %if.else131
  %mft_zone_start = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 29
  %3 = ptrtoint ptr %mft_zone_start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mft_zone_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %start_lcn)
  %cmp133.not = icmp sgt i64 %4, %start_lcn
  br i1 %cmp133.not, label %land.lhs.true.if.else138_crit_edge, label %land.lhs.true134

land.lhs.true.if.else138_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else138

land.lhs.true134:                                 ; preds = %land.lhs.true
  %mft_zone_end = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 30
  %5 = ptrtoint ptr %mft_zone_end to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %mft_zone_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %start_lcn)
  %cmp135 = icmp sgt i64 %6, %start_lcn
  %cmp.not = xor i1 %cmp, true
  %brmerge = or i1 %cmp135, %cmp.not
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 %start_lcn)
  %.mux1131 = select i1 %cmp135, i8 2, i8 1
  br i1 %brmerge, label %land.lhs.true134.if.end152_crit_edge, label %land.lhs.true134.land.lhs.true140_crit_edge

land.lhs.true134.land.lhs.true140_crit_edge:      ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true140

land.lhs.true134.if.end152_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.else138:                                       ; preds = %land.lhs.true.if.else138_crit_edge, %if.else131.if.else138_crit_edge
  br i1 %cmp, label %if.else138.land.lhs.true140_crit_edge, label %if.else138.if.else156_crit_edge

if.else138.if.else156_crit_edge:                  ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else156

if.else138.land.lhs.true140_crit_edge:            ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true140

land.lhs.true140:                                 ; preds = %if.else138.land.lhs.true140_crit_edge, %land.lhs.true134.land.lhs.true140_crit_edge
  %mft_zone_start141 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 29
  %8 = ptrtoint ptr %mft_zone_start141 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mft_zone_start141, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %start_lcn)
  %cmp142 = icmp sgt i64 %9, %start_lcn
  br i1 %cmp142, label %land.lhs.true140.if.then145_crit_edge, label %lor.lhs.false

land.lhs.true140.if.then145_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then145

lor.lhs.false:                                    ; preds = %land.lhs.true140
  %mft_zone_end143 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 30
  %10 = ptrtoint ptr %mft_zone_end143 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mft_zone_end143, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %start_lcn)
  %cmp144.not = icmp sgt i64 %11, %start_lcn
  br i1 %cmp144.not, label %lor.lhs.false.if.end152_crit_edge, label %lor.lhs.false.if.then145_crit_edge

lor.lhs.false.if.then145_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then145

lor.lhs.false.if.end152_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then145:                                       ; preds = %lor.lhs.false.if.then145_crit_edge, %land.lhs.true140.if.then145_crit_edge
  %mft_lcn = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 21
  %12 = ptrtoint ptr %mft_lcn to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mft_lcn, align 8
  %mft_zone_end146 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 30
  %14 = ptrtoint ptr %mft_zone_end146 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mft_zone_end146, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool147.not = icmp eq i64 %15, 0
  %spec.store.select = select i1 %tobool147.not, i64 0, i64 %13
  br label %if.end152

if.end152:                                        ; preds = %if.then145, %lor.lhs.false.if.end152_crit_edge, %land.lhs.true134.if.end152_crit_edge, %if.then124
  %zone_start.1 = phi i64 [ %spec.store.select, %if.then145 ], [ %start_lcn, %lor.lhs.false.if.end152_crit_edge ], [ %7, %land.lhs.true134.if.end152_crit_edge ], [ %zone_start.0, %if.then124 ]
  %pass.0 = phi i8 [ 2, %if.then145 ], [ 1, %lor.lhs.false.if.end152_crit_edge ], [ %.mux1131, %land.lhs.true134.if.end152_crit_edge ], [ %spec.select1145, %if.then124 ]
  br i1 %cmp, label %if.then154, label %if.end152.if.else156_crit_edge

if.end152.if.else156_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else156

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %mft_zone_end155 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 30
  br label %if.end165

if.else156:                                       ; preds = %if.end152.if.else156_crit_edge, %if.else138.if.else156_crit_edge
  %pass.01156 = phi i8 [ %pass.0, %if.end152.if.else156_crit_edge ], [ 1, %if.else138.if.else156_crit_edge ]
  %zone_start.11154 = phi i64 [ %zone_start.1, %if.end152.if.else156_crit_edge ], [ %start_lcn, %if.else138.if.else156_crit_edge ]
  %mft_zone_end158 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 30
  %16 = ptrtoint ptr %mft_zone_end158 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mft_zone_end158, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %zone_start.11154, i64 %17)
  %cmp159.not = icmp slt i64 %zone_start.11154, %17
  br i1 %cmp159.not, label %if.else162, label %if.then161

if.then161:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #10
  %nr_clusters = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 20
  br label %if.end165

if.else162:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #10
  %mft_zone_start163 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 29
  br label %if.end165

if.end165:                                        ; preds = %if.else162, %if.then161, %if.then154
  %pass.01155 = phi i8 [ %pass.0, %if.then154 ], [ %pass.01156, %if.then161 ], [ %pass.01156, %if.else162 ]
  %zone_start.11153 = phi i64 [ %zone_start.1, %if.then154 ], [ %zone_start.11154, %if.then161 ], [ %zone_start.11154, %if.else162 ]
  %zone_end.0.in = phi ptr [ %mft_zone_end155, %if.then154 ], [ %nr_clusters, %if.then161 ], [ %mft_zone_start163, %if.else162 ]
  %done_zones.0 = phi i8 [ 0, %if.then154 ], [ 1, %if.then161 ], [ 1, %if.else162 ]
  %search_zone.0 = phi i8 [ 1, %if.then154 ], [ 2, %if.then161 ], [ 4, %if.else162 ]
  %18 = ptrtoint ptr %zone_end.0.in to i32
  call void @__asan_load8_noabort(i32 %18)
  %zone_end.0 = load i64, ptr %zone_end.0.in, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end165
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !155
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %22 = tail call ptr @llvm.returnaddress(i32 0) #8
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %23) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %23) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %25) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %25) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !156
  %and.i.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !148

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #8, !srcloc !157
  %27 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !159
  %29 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %30, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %28, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %30, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !160
  %31 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !161
  %33 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %34, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %while.cond.preheader, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

while.cond.preheader:                             ; preds = %while.end.i
  %mft_zone_end428 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 30
  %mft_zone_start426 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 29
  %data2_zone_pos561 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 33
  %data1_zone_pos515 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 32
  %nr_clusters523 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 20
  %mft_zone_pos461 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 31
  %mft_lcn473 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 21
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %while.cond.outer.outer.backedge, %while.cond.preheader
  %zone_start.2.ph.ph = phi i64 [ %zone_start.11153, %while.cond.preheader ], [ %zone_start.2.ph.ph.be, %while.cond.outer.outer.backedge ]
  %zone_end.1.ph.ph = phi i64 [ %zone_end.0, %while.cond.preheader ], [ %zone_end.1.ph.ph.be, %while.cond.outer.outer.backedge ]
  %bmp_initial_pos.0.ph.ph = phi i64 [ %zone_start.11153, %while.cond.preheader ], [ %bmp_initial_pos.0.ph.ph.be, %while.cond.outer.outer.backedge ]
  %prev_lcn.0.ph.ph = phi i64 [ 0, %while.cond.preheader ], [ %prev_lcn.3, %while.cond.outer.outer.backedge ]
  %prev_run_len.0.ph.ph = phi i64 [ 0, %while.cond.preheader ], [ %prev_run_len.3, %while.cond.outer.outer.backedge ]
  %clusters.0.ph.ph = phi i64 [ %count, %while.cond.preheader ], [ %clusters.2, %while.cond.outer.outer.backedge ]
  %rl.0.ph.ph = phi ptr [ null, %while.cond.preheader ], [ %rl.4, %while.cond.outer.outer.backedge ]
  %page.0.ph.ph = phi ptr [ null, %while.cond.preheader ], [ %page.1, %while.cond.outer.outer.backedge ]
  %rlpos.0.ph.ph = phi i32 [ 0, %while.cond.preheader ], [ %rlpos.3, %while.cond.outer.outer.backedge ]
  %rlsize.0.ph.ph = phi i32 [ 0, %while.cond.preheader ], [ %rlsize.4, %while.cond.outer.outer.backedge ]
  %pass.1.ph.ph = phi i8 [ %pass.01155, %while.cond.preheader ], [ %pass.1.ph.ph.be, %while.cond.outer.outer.backedge ]
  %done_zones.1.ph.ph = phi i8 [ %done_zones.0, %while.cond.preheader ], [ %done_zones.1.ph.ph.be, %while.cond.outer.outer.backedge ]
  %search_zone.1.ph.ph = phi i8 [ %search_zone.0, %while.cond.preheader ], [ %search_zone.1.ph.ph.be, %while.cond.outer.outer.backedge ]
  %need_writeback.0.ph.ph = phi i8 [ 0, %while.cond.preheader ], [ %need_writeback.4, %while.cond.outer.outer.backedge ]
  %conv166 = zext i8 %done_zones.1.ph.ph to i32
  %conv167 = zext i8 %search_zone.1.ph.ph to i32
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.epilog437, %while.cond.outer.outer
  %zone_start.2.ph = phi i64 [ %zone_start.3, %sw.epilog437 ], [ %zone_start.2.ph.ph, %while.cond.outer.outer ]
  %zone_end.1.ph = phi i64 [ %133, %sw.epilog437 ], [ %zone_end.1.ph.ph, %while.cond.outer.outer ]
  %prev_lcn.0.ph = phi i64 [ %prev_lcn.3, %sw.epilog437 ], [ %prev_lcn.0.ph.ph, %while.cond.outer.outer ]
  %prev_run_len.0.ph = phi i64 [ %prev_run_len.3, %sw.epilog437 ], [ %prev_run_len.0.ph.ph, %while.cond.outer.outer ]
  %clusters.0.ph = phi i64 [ %clusters.2, %sw.epilog437 ], [ %clusters.0.ph.ph, %while.cond.outer.outer ]
  %rl.0.ph = phi ptr [ %rl.4, %sw.epilog437 ], [ %rl.0.ph.ph, %while.cond.outer.outer ]
  %page.0.ph = phi ptr [ %page.1, %sw.epilog437 ], [ %page.0.ph.ph, %while.cond.outer.outer ]
  %rlpos.0.ph = phi i32 [ %rlpos.3, %sw.epilog437 ], [ %rlpos.0.ph.ph, %while.cond.outer.outer ]
  %rlsize.0.ph = phi i32 [ %rlsize.4, %sw.epilog437 ], [ %rlsize.0.ph.ph, %while.cond.outer.outer ]
  %pass.1.ph = phi i8 [ 2, %sw.epilog437 ], [ %pass.1.ph.ph, %while.cond.outer.outer ]
  %need_writeback.0.ph = phi i8 [ %need_writeback.4, %sw.epilog437 ], [ %need_writeback.0.ph.ph, %while.cond.outer.outer ]
  %conv168 = zext i8 %pass.1.ph to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.6, i32 noundef %conv166, i32 noundef %conv167, i32 noundef %conv168, i64 noundef %zone_start.2.ph, i64 noundef %zone_end.1.ph, i64 noundef %bmp_initial_pos.0.ph.ph, i64 noundef %zone_start.2.ph, i32 noundef %rlpos.0.ph, i32 noundef %rlsize.0.ph) #8
  %shr1363 = ashr i64 %zone_start.2.ph, 3
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 256, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.7, i64 noundef %shr1363) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %shr1363)
  %cmp1691364 = icmp slt i64 %32, %shr1363
  br i1 %cmp1691364, label %while.cond.outer.if.then171_crit_edge, label %while.cond.outer.if.end172_crit_edge

while.cond.outer.if.end172_crit_edge:             ; preds = %while.cond.outer
  br label %if.end172

while.cond.outer.if.then171_crit_edge:            ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then171

if.then171:                                       ; preds = %if.then417.if.then171_crit_edge, %while.cond.outer.if.then171_crit_edge
  %prev_lcn.0.lcssa = phi i64 [ %prev_lcn.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %prev_lcn.1.ph.lcssa, %if.then417.if.then171_crit_edge ]
  %prev_run_len.0.lcssa = phi i64 [ %prev_run_len.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %prev_run_len.1.ph.lcssa, %if.then417.if.then171_crit_edge ]
  %clusters.0.lcssa = phi i64 [ %clusters.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %clusters.1.ph.lcssa, %if.then417.if.then171_crit_edge ]
  %rl.0.lcssa = phi ptr [ %rl.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %rl.1.ph.lcssa, %if.then417.if.then171_crit_edge ]
  %page.0.lcssa = phi ptr [ %page.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %call.i.i, %if.then417.if.then171_crit_edge ]
  %rlpos.0.lcssa = phi i32 [ %rlpos.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %rlpos.1.ph.lcssa, %if.then417.if.then171_crit_edge ]
  %rlsize.0.lcssa = phi i32 [ %rlsize.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %rlsize.1.ph.lcssa, %if.then417.if.then171_crit_edge ]
  %need_writeback.0.lcssa = phi i8 [ %need_writeback.0.ph, %while.cond.outer.if.then171_crit_edge ], [ %need_writeback.3.ph.lcssa, %if.then417.if.then171_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 259, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.8) #8
  br label %zone_pass_done

if.end172:                                        ; preds = %if.then417.if.end172_crit_edge, %while.cond.outer.if.end172_crit_edge
  %shr1375 = phi i64 [ %shr, %if.then417.if.end172_crit_edge ], [ %shr1363, %while.cond.outer.if.end172_crit_edge ]
  %need_writeback.01374 = phi i8 [ %need_writeback.3.ph.lcssa, %if.then417.if.end172_crit_edge ], [ %need_writeback.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %rlsize.01373 = phi i32 [ %rlsize.1.ph.lcssa, %if.then417.if.end172_crit_edge ], [ %rlsize.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %rlpos.01372 = phi i32 [ %rlpos.1.ph.lcssa, %if.then417.if.end172_crit_edge ], [ %rlpos.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %page.01370 = phi ptr [ %call.i.i, %if.then417.if.end172_crit_edge ], [ %page.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %rl.01369 = phi ptr [ %rl.1.ph.lcssa, %if.then417.if.end172_crit_edge ], [ %rl.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %clusters.01368 = phi i64 [ %clusters.1.ph.lcssa, %if.then417.if.end172_crit_edge ], [ %clusters.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %prev_run_len.01367 = phi i64 [ %prev_run_len.1.ph.lcssa, %if.then417.if.end172_crit_edge ], [ %prev_run_len.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %prev_lcn.01366 = phi i64 [ %prev_lcn.1.ph.lcssa, %if.then417.if.end172_crit_edge ], [ %prev_lcn.0.ph, %while.cond.outer.if.end172_crit_edge ]
  %bmp_pos.01365 = phi i64 [ %add413, %if.then417.if.end172_crit_edge ], [ %zone_start.2.ph, %while.cond.outer.if.end172_crit_edge ]
  %tobool173.not = icmp eq ptr %page.01370, null
  br i1 %tobool173.not, label %if.end172.if.end185_crit_edge, label %if.then180, !prof !148

if.end172.if.end185_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then180:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %need_writeback.01374)
  %tobool181.not = icmp eq i8 %need_writeback.01374, 0
  br i1 %tobool181.not, label %if.then180.if.end184_crit_edge, label %if.then182

if.then180.if.end184_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

if.then182:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 264, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.9) #8
  tail call void @flush_dcache_page(ptr noundef nonnull %page.01370) #8
  %call183 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %page.01370) #8
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.then180.if.end184_crit_edge
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %page.01370)
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end172.if.end185_crit_edge
  %need_writeback.2 = phi i8 [ 0, %if.end184 ], [ %need_writeback.01374, %if.end172.if.end185_crit_edge ]
  %35 = lshr i64 %bmp_pos.01365, 15
  %conv187 = trunc i64 %35 to i32
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %20, i32 noundef %conv187, ptr noundef null, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end185.if.then190_crit_edge, label %if.then.i

if.end185.if.then190_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then190

if.then.i:                                        ; preds = %if.end185
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 44) #8
  %36 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i.i, align 4
  %shr.i.i12.i = lshr i32 %37, 30
  %38 = zext i32 %shr.i.i12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %shr.i.i12.i, label %if.then.i.if.then.i13.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.if.then.i13.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i13.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %39 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp2.i.not.i.i = icmp eq i32 %39, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge:  ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i13.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i13.i:                                    ; preds = %is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge, %if.then.i.if.then.i13.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #8
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #8
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i13.i
  %40 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i.i.i1146 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1146)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i1146, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !147

if.then.i.i.i:                                    ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %42, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %43, %if.end.i.i.i ]
  %44 = inttoptr i32 %retval.0.i.i.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not.i.i = icmp eq i32 %46, -1
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %40, align 4
  %and.i16.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i1147, label %do.end10.i.i, !prof !148

if.then.i.i1147:                                  ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !147

if.then.i19.i.i:                                  ; preds = %if.then.i.i1147
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i.i = add i32 %48, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i1147
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %49, %if.end.i20.i.i ]
  %50 = inttoptr i32 %retval.0.i21.i.i to ptr
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.69) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !147

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i.i = add i32 %48, -1
  br label %PageError.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call.i.i to i32
  br label %PageError.exit.i

PageError.exit.i:                                 ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %51, %if.end.i27.i.i ]
  %52 = inttoptr i32 %retval.0.i28.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %55 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i1148 = icmp eq i32 %55, 0
  br i1 %tobool.not.i1148, label %if.end192, label %ntfs_map_page.exit.thread

ntfs_map_page.exit.thread:                        ; preds = %PageError.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i.i) #8
  br label %if.then190

if.then190:                                       ; preds = %ntfs_map_page.exit.thread, %if.end185.if.then190_crit_edge
  %retval.0.i1159 = phi ptr [ inttoptr (i32 -5 to ptr), %ntfs_map_page.exit.thread ], [ %call.i.i, %if.end185.if.then190_crit_edge ]
  %56 = ptrtoint ptr %retval.0.i1159 to i32
  %57 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef %58, ptr noundef nonnull @.str.10) #8
  br label %out

if.end192:                                        ; preds = %PageError.exit.i
  %59 = trunc i64 %shr1375 to i32
  %conv193 = and i32 %59, 4095
  %call194 = tail call ptr @page_address(ptr noundef %call.i.i) #8
  %add.ptr = getelementptr i8, ptr %call194, i32 %conv193
  %sub = sub nuw nsw i32 4096, %conv193
  %60 = zext i32 %sub to i64
  %add = add nsw i64 %shr1375, %60
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %32)
  %cmp196 = icmp sgt i64 %add, %32
  br i1 %cmp196, label %if.then204, label %if.end192.if.end207_crit_edge, !prof !148

if.end192.if.end207_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end207

if.then204:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  %sub205 = sub i64 %32, %shr1375
  %conv206 = trunc i64 %sub205 to i32
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %if.end192.if.end207_crit_edge
  %buf_size.0 = phi i32 [ %conv206, %if.then204 ], [ %sub, %if.end192.if.end207_crit_edge ]
  %shl = shl i32 %buf_size.0, 3
  %and208 = and i64 %bmp_pos.01365, 7
  %and209 = and i64 %bmp_pos.01365, -8
  %conv210 = zext i8 %need_writeback.2 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.11, i32 noundef %shl, i64 noundef %and208, i64 noundef %and209, i32 noundef %conv210) #8
  %conv212 = sext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and208, i64 %conv212)
  %cmp21313151343 = icmp slt i64 %and208, %conv212
  br i1 %cmp21313151343, label %if.end207.land.rhs.lr.ph_crit_edge, label %if.end207.while.end_crit_edge

if.end207.while.end_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end207.land.rhs.lr.ph_crit_edge:               ; preds = %if.end207
  br label %land.rhs.lr.ph

while.cond211.outer:                              ; preds = %if.end323
  %inc411 = add nsw i64 %lcn.01316, 1
  %cmp2131315 = icmp slt i64 %inc411, %conv212
  br i1 %cmp2131315, label %while.cond211.outer.land.rhs.lr.ph_crit_edge, label %while.cond211.outer.while.end_crit_edge

while.cond211.outer.while.end_crit_edge:          ; preds = %while.cond211.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond211.outer.land.rhs.lr.ph_crit_edge:     ; preds = %while.cond211.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond211.outer.land.rhs.lr.ph_crit_edge, %if.end207.land.rhs.lr.ph_crit_edge
  %need_writeback.3.ph1353 = phi i8 [ 1, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %need_writeback.2, %if.end207.land.rhs.lr.ph_crit_edge ]
  %rlsize.1.ph1352 = phi i32 [ %rlsize.3, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %rlsize.01373, %if.end207.land.rhs.lr.ph_crit_edge ]
  %rlpos.1.ph1350 = phi i32 [ %rlpos.2, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %rlpos.01372, %if.end207.land.rhs.lr.ph_crit_edge ]
  %rl.1.ph1349 = phi ptr [ %rl.3, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %rl.01369, %if.end207.land.rhs.lr.ph_crit_edge ]
  %clusters.1.ph1347 = phi i64 [ %dec, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %clusters.01368, %if.end207.land.rhs.lr.ph_crit_edge ]
  %prev_run_len.1.ph1346 = phi i64 [ %prev_run_len.2, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %prev_run_len.01367, %if.end207.land.rhs.lr.ph_crit_edge ]
  %prev_lcn.1.ph1345 = phi i64 [ %prev_lcn.2, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %prev_lcn.01366, %if.end207.land.rhs.lr.ph_crit_edge ]
  %lcn.0.ph1344 = phi i64 [ %inc411, %while.cond211.outer.land.rhs.lr.ph_crit_edge ], [ %and208, %if.end207.land.rhs.lr.ph_crit_edge ]
  %conv221 = zext i8 %need_writeback.3.ph1353 to i32
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond211.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %lcn.01316 = phi i64 [ %lcn.0.ph1344, %land.rhs.lr.ph ], [ %lcn.0.be, %while.cond211.backedge.land.rhs_crit_edge ]
  %add215 = add i64 %lcn.01316, %and209
  call void @__sanitizer_cov_trace_cmp8(i64 %add215, i64 %zone_end.1.ph)
  %cmp216 = icmp slt i64 %add215, %zone_end.1.ph
  br i1 %cmp216, label %while.body218, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body218:                                    ; preds = %land.rhs
  %61 = lshr i64 %lcn.01316, 3
  %idx.ext = trunc i64 %61 to i32
  %add.ptr220 = getelementptr i8, ptr %add.ptr, i32 %idx.ext
  %62 = ptrtoint ptr %add.ptr220 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr220, align 1
  %conv224 = zext i8 %63 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 300, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.12, i32 noundef %shl, i64 noundef %lcn.01316, i64 noundef %and209, i32 noundef %conv221, i32 noundef %idx.ext, i32 noundef %conv224) #8
  %64 = ptrtoint ptr %add.ptr220 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp226 = icmp eq i8 %65, -1
  br i1 %cmp226, label %if.then228, label %if.end231

if.then228:                                       ; preds = %while.body218
  call void @__sanitizer_cov_trace_pc() #10
  %add229 = add i64 %lcn.01316, 8
  %and230 = and i64 %add229, -8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.13) #8
  br label %while.cond211.backedge

while.cond211.backedge:                           ; preds = %if.then240, %if.then228
  %lcn.0.be = phi i64 [ %and230, %if.then228 ], [ %inc, %if.then240 ]
  %cmp213 = icmp slt i64 %lcn.0.be, %conv212
  br i1 %cmp213, label %while.cond211.backedge.land.rhs_crit_edge, label %while.cond211.backedge.while.end_crit_edge

while.cond211.backedge.while.end_crit_edge:       ; preds = %while.cond211.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond211.backedge.land.rhs_crit_edge:        ; preds = %while.cond211.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end231:                                        ; preds = %while.body218
  %66 = trunc i64 %lcn.01316 to i8
  %sh_prom = and i8 %66, 7
  %shl233 = shl nuw i8 1, %sh_prom
  %conv235 = zext i8 %shl233 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.14, i32 noundef %conv235) #8
  %67 = ptrtoint ptr %add.ptr220 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr220, align 1
  %and2381129 = and i8 %68, %shl233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2381129)
  %tobool239.not = icmp eq i8 %and2381129, 0
  br i1 %tobool239.not, label %if.end241, label %if.then240

if.then240:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i64 %lcn.01316, 1
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.15) #8
  br label %while.cond211.backedge

if.end241:                                        ; preds = %if.end231
  %69 = mul i32 %rlpos.1.ph1350, 24
  %mul = add i32 %69, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rlsize.1.ph1352)
  %cmp243 = icmp ugt i32 %mul, %rlsize.1.ph1352
  br i1 %cmp243, label %if.then245, label %if.end241.if.end265_crit_edge

if.end241.if.end265_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end265

if.then245:                                       ; preds = %if.end241
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 323, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.16) #8
  %tobool246.not = icmp eq ptr %rl.1.ph1349, null
  br i1 %tobool246.not, label %if.then247, label %if.then245.if.end249_crit_edge

if.then245.if.end249_crit_edge:                   ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end249

if.then247:                                       ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 328, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.17, i64 noundef %add215) #8
  br label %if.end249

if.end249:                                        ; preds = %if.then247, %if.then245.if.end249_crit_edge
  %add250 = add i32 %rlsize.1.ph1352, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add250)
  %cmp.i.i1149 = icmp ult i32 %add250, 4097
  br i1 %cmp.i.i1149, label %do.body.i.i, label %if.end16.i.i, !prof !147

do.body.i.i:                                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add250)
  %tobool2.not.i.i = icmp eq i32 %add250, 0
  br i1 %tobool2.not.i.i, label %do.body12.i.i, label %do.end15.i.i, !prof !148

do.body12.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #8, !srcloc !163
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3136, i32 noundef 4096) #11
  br label %ntfs_malloc_nofs.exit

if.end16.i.i:                                     ; preds = %if.end249
  %shr.i.i = lshr i32 %add250, 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %71 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %71)
  %cmp18.i.i = icmp ult i32 %shr.i.i, %71
  br i1 %cmp18.i.i, label %if.then25.i.i, label %if.end16.i.i.cleanup_crit_edge, !prof !147

if.end16.i.i.cleanup_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i.i = tail call noalias ptr @__vmalloc(i32 noundef %add250, i32 noundef 3138) #12
  br label %ntfs_malloc_nofs.exit

ntfs_malloc_nofs.exit:                            ; preds = %if.then25.i.i, %do.end15.i.i
  %retval.0.i.i = phi ptr [ %call7.i.i.i, %do.end15.i.i ], [ %call26.i.i, %if.then25.i.i ]
  %tobool252.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool252.not, label %ntfs_malloc_nofs.exit.cleanup_crit_edge, label %cleanup.thread, !prof !148

ntfs_malloc_nofs.exit.cleanup_crit_edge:          ; preds = %ntfs_malloc_nofs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.thread:                                   ; preds = %ntfs_malloc_nofs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %72 = call ptr @memcpy(ptr %retval.0.i.i, ptr %rl.1.ph1349, i32 %rlsize.1.ph1352)
  tail call void @kvfree(ptr noundef %rl.1.ph1349) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.19, i32 noundef %add250) #8
  br label %if.end265

cleanup:                                          ; preds = %ntfs_malloc_nofs.exit.cleanup_crit_edge, %if.end16.i.i.cleanup_crit_edge
  %73 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef %74, ptr noundef nonnull @.str.18) #8
  br label %out

if.end265:                                        ; preds = %cleanup.thread, %if.end241.if.end265_crit_edge
  %rl.3 = phi ptr [ %rl.1.ph1349, %if.end241.if.end265_crit_edge ], [ %retval.0.i.i, %cleanup.thread ]
  %rlsize.3 = phi i32 [ %rlsize.1.ph1352, %if.end241.if.end265_crit_edge ], [ %add250, %cleanup.thread ]
  %75 = ptrtoint ptr %add.ptr220 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr220, align 1
  %or2681130 = or i8 %76, %shl233
  store i8 %or2681130, ptr %add.ptr220, align 1
  %conv270 = zext i8 %or2681130 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 348, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.20, i32 noundef %conv270) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 362, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.21, i64 noundef %add215, i64 noundef 1, i64 noundef %prev_lcn.1.ph1345, i64 noundef %lcn.01316, i64 noundef %and209, i64 noundef %prev_run_len.1.ph1346, i32 noundef %rlpos.1.ph1350) #8
  %sub273 = sub i64 %add215, %prev_run_len.1.ph1346
  call void @__sanitizer_cov_trace_cmp8(i64 %prev_lcn.1.ph1345, i64 %sub273)
  %cmp274 = icmp ne i64 %prev_lcn.1.ph1345, %sub273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlpos.1.ph1350)
  %tobool277.not = icmp eq i32 %rlpos.1.ph1350, 0
  %or.cond = select i1 %cmp274, i1 true, i1 %tobool277.not
  br i1 %or.cond, label %if.else293, label %if.then278

if.then278:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  %sub279 = add i32 %rlpos.1.ph1350, -1
  %lcn280 = getelementptr %struct.runlist_element, ptr %rl.3, i32 %sub279, i32 1
  %77 = ptrtoint ptr %lcn280 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %lcn280, align 8
  %length = getelementptr %struct.runlist_element, ptr %rl.3, i32 %sub279, i32 2
  %79 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %length, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.22, i64 noundef %78, i64 noundef %80) #8
  %inc283 = add i64 %prev_run_len.1.ph1346, 1
  %81 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %inc283, ptr %length, align 8
  %82 = ptrtoint ptr %lcn280 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %lcn280, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.23, i64 noundef %83, i64 noundef %inc283, i64 noundef %inc283) #8
  br label %if.end323

if.else293:                                       ; preds = %if.end265
  br i1 %tobool277.not, label %if.else313, label %if.then301, !prof !148

if.then301:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #10
  %sub302 = add i32 %rlpos.1.ph1350, -1
  %arrayidx303 = getelementptr %struct.runlist_element, ptr %rl.3, i32 %sub302
  %lcn304 = getelementptr %struct.runlist_element, ptr %rl.3, i32 %sub302, i32 1
  %84 = ptrtoint ptr %lcn304 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %lcn304, align 8
  %length307 = getelementptr %struct.runlist_element, ptr %rl.3, i32 %sub302, i32 2
  %86 = ptrtoint ptr %length307 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %length307, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.24, i64 noundef %85, i64 noundef %87) #8
  %88 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx303, align 8
  %add310 = add i64 %89, %prev_run_len.1.ph1346
  %arrayidx311 = getelementptr %struct.runlist_element, ptr %rl.3, i32 %rlpos.1.ph1350
  %90 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add310, ptr %arrayidx311, align 8
  br label %if.end316

if.else313:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.25) #8
  %91 = ptrtoint ptr %rl.3 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %start_vcn, ptr %rl.3, align 8
  br label %if.end316

if.end316:                                        ; preds = %if.else313, %if.then301
  %lcn319 = getelementptr %struct.runlist_element, ptr %rl.3, i32 %rlpos.1.ph1350, i32 1
  %92 = ptrtoint ptr %lcn319 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add215, ptr %lcn319, align 8
  %length321 = getelementptr %struct.runlist_element, ptr %rl.3, i32 %rlpos.1.ph1350, i32 2
  %93 = ptrtoint ptr %length321 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 1, ptr %length321, align 8
  %inc322 = add i32 %rlpos.1.ph1350, 1
  br label %if.end323

if.end323:                                        ; preds = %if.end316, %if.then278
  %prev_lcn.2 = phi i64 [ %prev_lcn.1.ph1345, %if.then278 ], [ %add215, %if.end316 ]
  %prev_run_len.2 = phi i64 [ %inc283, %if.then278 ], [ 1, %if.end316 ]
  %rlpos.2 = phi i32 [ %rlpos.1.ph1350, %if.then278 ], [ %inc322, %if.end316 ]
  %dec = add i64 %clusters.1.ph1347, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool324.not = icmp eq i64 %dec, 0
  br i1 %tobool324.not, label %if.then325, label %while.cond211.outer

if.then325:                                       ; preds = %if.end323
  %add327 = add nsw i64 %add215, 1
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 412, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.26, i64 noundef %add327, i32 noundef %conv167) #8
  %94 = zext i8 %search_zone.1.ph.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %search_zone.1.ph.ph, label %do.body403 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb359
    i8 4, label %sw.bb384
  ]

sw.bb:                                            ; preds = %if.then325
  %95 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %mft_zone_pos461, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 419, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.27, i64 noundef %96) #8
  %97 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %mft_zone_end428, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add327, i64 %98)
  %cmp332.not = icmp slt i64 %add327, %98
  br i1 %cmp332.not, label %if.else342, label %if.then334

if.then334:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %mft_lcn473 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %mft_lcn473, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool338.not = icmp eq i64 %98, 0
  %spec.store.select1132 = select i1 %tobool338.not, i64 0, i64 %100
  br label %if.end357.sink.split

if.else342:                                       ; preds = %sw.bb
  %101 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %mft_zone_pos461, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %bmp_initial_pos.0.ph.ph, i64 %102)
  %cmp344.not = icmp sge i64 %bmp_initial_pos.0.ph.ph, %102
  call void @__sanitizer_cov_trace_cmp8(i64 %add215, i64 %102)
  %cmp348 = icmp sge i64 %add215, %102
  %or.cond1133 = or i1 %cmp344.not, %cmp348
  br i1 %or.cond1133, label %land.lhs.true350, label %if.else342.if.end357_crit_edge

if.else342.if.end357_crit_edge:                   ; preds = %if.else342
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end357

land.lhs.true350:                                 ; preds = %if.else342
  %103 = ptrtoint ptr %mft_lcn473 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %mft_lcn473, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add327, i64 %104)
  %cmp352.not = icmp slt i64 %add327, %104
  br i1 %cmp352.not, label %land.lhs.true350.if.end357_crit_edge, label %land.lhs.true350.if.end357.sink.split_crit_edge

land.lhs.true350.if.end357.sink.split_crit_edge:  ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end357.sink.split

land.lhs.true350.if.end357_crit_edge:             ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end357

if.end357.sink.split:                             ; preds = %land.lhs.true350.if.end357.sink.split_crit_edge, %if.then334
  %spec.store.select1132.sink = phi i64 [ %spec.store.select1132, %if.then334 ], [ %add327, %land.lhs.true350.if.end357.sink.split_crit_edge ]
  %105 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %spec.store.select1132.sink, ptr %mft_zone_pos461, align 8
  br label %if.end357

if.end357:                                        ; preds = %if.end357.sink.split, %land.lhs.true350.if.end357_crit_edge, %if.else342.if.end357_crit_edge
  %106 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %mft_zone_pos461, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 434, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.28, i64 noundef %107) #8
  br label %sw.epilog

sw.bb359:                                         ; preds = %if.then325
  %108 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %data1_zone_pos515, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 441, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.29, i64 noundef %109) #8
  %110 = ptrtoint ptr %nr_clusters523 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %nr_clusters523, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add327, i64 %111)
  %cmp362.not = icmp slt i64 %add327, %111
  br i1 %cmp362.not, label %if.else367, label %if.then364

if.then364:                                       ; preds = %sw.bb359
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %mft_zone_end428, align 8
  br label %if.end382.sink.split

if.else367:                                       ; preds = %sw.bb359
  %114 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %data1_zone_pos515, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %bmp_initial_pos.0.ph.ph, i64 %115)
  %cmp369.not = icmp sge i64 %bmp_initial_pos.0.ph.ph, %115
  call void @__sanitizer_cov_trace_cmp8(i64 %add215, i64 %115)
  %cmp373 = icmp sge i64 %add215, %115
  %or.cond1134 = or i1 %cmp369.not, %cmp373
  br i1 %or.cond1134, label %land.lhs.true375, label %if.else367.if.end382_crit_edge

if.else367.if.end382_crit_edge:                   ; preds = %if.else367
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end382

land.lhs.true375:                                 ; preds = %if.else367
  %116 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %mft_zone_end428, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add327, i64 %117)
  %cmp377.not = icmp slt i64 %add327, %117
  br i1 %cmp377.not, label %land.lhs.true375.if.end382_crit_edge, label %land.lhs.true375.if.end382.sink.split_crit_edge

land.lhs.true375.if.end382.sink.split_crit_edge:  ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end382.sink.split

land.lhs.true375.if.end382_crit_edge:             ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end382

if.end382.sink.split:                             ; preds = %land.lhs.true375.if.end382.sink.split_crit_edge, %if.then364
  %add327.sink = phi i64 [ %113, %if.then364 ], [ %add327, %land.lhs.true375.if.end382.sink.split_crit_edge ]
  %118 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %add327.sink, ptr %data1_zone_pos515, align 8
  br label %if.end382

if.end382:                                        ; preds = %if.end382.sink.split, %land.lhs.true375.if.end382_crit_edge, %if.else367.if.end382_crit_edge
  %119 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %data1_zone_pos515, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 454, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.30, i64 noundef %120) #8
  br label %sw.epilog

sw.bb384:                                         ; preds = %if.then325
  %121 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %data2_zone_pos561, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 461, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.31, i64 noundef %122) #8
  %123 = ptrtoint ptr %mft_zone_start426 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %mft_zone_start426, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add327, i64 %124)
  %cmp386.not = icmp slt i64 %add327, %124
  br i1 %cmp386.not, label %if.else390, label %sw.bb384.if.end401.sink.split_crit_edge

sw.bb384.if.end401.sink.split_crit_edge:          ; preds = %sw.bb384
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end401.sink.split

if.else390:                                       ; preds = %sw.bb384
  %125 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %data2_zone_pos561, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %bmp_initial_pos.0.ph.ph, i64 %126)
  %cmp392.not = icmp sge i64 %bmp_initial_pos.0.ph.ph, %126
  call void @__sanitizer_cov_trace_cmp8(i64 %add215, i64 %126)
  %cmp396 = icmp sge i64 %add215, %126
  %or.cond1135 = or i1 %cmp392.not, %cmp396
  br i1 %or.cond1135, label %if.else390.if.end401.sink.split_crit_edge, label %if.else390.if.end401_crit_edge

if.else390.if.end401_crit_edge:                   ; preds = %if.else390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end401

if.else390.if.end401.sink.split_crit_edge:        ; preds = %if.else390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end401.sink.split

if.end401.sink.split:                             ; preds = %if.else390.if.end401.sink.split_crit_edge, %sw.bb384.if.end401.sink.split_crit_edge
  %add327.sink1685 = phi i64 [ 0, %sw.bb384.if.end401.sink.split_crit_edge ], [ %add327, %if.else390.if.end401.sink.split_crit_edge ]
  %127 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %add327.sink1685, ptr %data2_zone_pos561, align 8
  br label %if.end401

if.end401:                                        ; preds = %if.end401.sink.split, %if.else390.if.end401_crit_edge
  %128 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %data2_zone_pos561, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.32, i64 noundef %129) #8
  br label %sw.epilog

do.body403:                                       ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 475, 0\0A.popsection", ""() #8, !srcloc !164
  unreachable

sw.epilog:                                        ; preds = %if.end401, %if.end382, %if.end357
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 477, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.33) #8
  br label %out

while.end:                                        ; preds = %while.cond211.backedge.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond211.outer.while.end_crit_edge, %if.end207.while.end_crit_edge
  %prev_lcn.1.ph.lcssa = phi i64 [ %prev_lcn.01366, %if.end207.while.end_crit_edge ], [ %prev_lcn.1.ph1345, %while.cond211.backedge.while.end_crit_edge ], [ %prev_lcn.1.ph1345, %land.rhs.while.end_crit_edge ], [ %prev_lcn.2, %while.cond211.outer.while.end_crit_edge ]
  %prev_run_len.1.ph.lcssa = phi i64 [ %prev_run_len.01367, %if.end207.while.end_crit_edge ], [ %prev_run_len.1.ph1346, %while.cond211.backedge.while.end_crit_edge ], [ %prev_run_len.1.ph1346, %land.rhs.while.end_crit_edge ], [ %prev_run_len.2, %while.cond211.outer.while.end_crit_edge ]
  %clusters.1.ph.lcssa = phi i64 [ %clusters.01368, %if.end207.while.end_crit_edge ], [ %clusters.1.ph1347, %while.cond211.backedge.while.end_crit_edge ], [ %clusters.1.ph1347, %land.rhs.while.end_crit_edge ], [ %dec, %while.cond211.outer.while.end_crit_edge ]
  %rl.1.ph.lcssa = phi ptr [ %rl.01369, %if.end207.while.end_crit_edge ], [ %rl.1.ph1349, %while.cond211.backedge.while.end_crit_edge ], [ %rl.1.ph1349, %land.rhs.while.end_crit_edge ], [ %rl.3, %while.cond211.outer.while.end_crit_edge ]
  %rlpos.1.ph.lcssa = phi i32 [ %rlpos.01372, %if.end207.while.end_crit_edge ], [ %rlpos.1.ph1350, %while.cond211.backedge.while.end_crit_edge ], [ %rlpos.1.ph1350, %land.rhs.while.end_crit_edge ], [ %rlpos.2, %while.cond211.outer.while.end_crit_edge ]
  %rlsize.1.ph.lcssa = phi i32 [ %rlsize.01373, %if.end207.while.end_crit_edge ], [ %rlsize.1.ph1352, %while.cond211.backedge.while.end_crit_edge ], [ %rlsize.1.ph1352, %land.rhs.while.end_crit_edge ], [ %rlsize.3, %while.cond211.outer.while.end_crit_edge ]
  %need_writeback.3.ph.lcssa = phi i8 [ %need_writeback.2, %if.end207.while.end_crit_edge ], [ %need_writeback.3.ph1353, %while.cond211.backedge.while.end_crit_edge ], [ %need_writeback.3.ph1353, %land.rhs.while.end_crit_edge ], [ 1, %while.cond211.outer.while.end_crit_edge ]
  %lcn.0.lcssa = phi i64 [ %and208, %if.end207.while.end_crit_edge ], [ %lcn.01316, %land.rhs.while.end_crit_edge ], [ %lcn.0.be, %while.cond211.backedge.while.end_crit_edge ], [ %inc411, %while.cond211.outer.while.end_crit_edge ]
  %add413 = add i64 %and209, %conv212
  %conv414 = zext i8 %need_writeback.3.ph.lcssa to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 486, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.34, i32 noundef %shl, i64 noundef %lcn.0.lcssa, i64 noundef %add413, i32 noundef %conv414) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add413, i64 %zone_end.1.ph)
  %cmp415 = icmp slt i64 %add413, %zone_end.1.ph
  br i1 %cmp415, label %if.then417, label %while.end.zone_pass_done_crit_edge

while.end.zone_pass_done_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %zone_pass_done

if.then417:                                       ; preds = %while.end
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 491, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.35, i64 noundef %add413, i64 noundef %zone_end.1.ph) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.6, i32 noundef %conv166, i32 noundef %conv167, i32 noundef %conv168, i64 noundef %zone_start.2.ph, i64 noundef %zone_end.1.ph, i64 noundef %bmp_initial_pos.0.ph.ph, i64 noundef %add413, i32 noundef %rlpos.1.ph.lcssa, i32 noundef %rlsize.1.ph.lcssa) #8
  %shr = ashr exact i64 %add413, 3
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 256, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.7, i64 noundef %shr) #8
  %cmp169 = icmp slt i64 %32, %shr
  br i1 %cmp169, label %if.then417.if.then171_crit_edge, label %if.then417.if.end172_crit_edge

if.then417.if.end172_crit_edge:                   ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then417.if.then171_crit_edge:                  ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then171

zone_pass_done:                                   ; preds = %while.end.zone_pass_done_crit_edge, %if.then171
  %prev_lcn.3 = phi i64 [ %prev_lcn.0.lcssa, %if.then171 ], [ %prev_lcn.1.ph.lcssa, %while.end.zone_pass_done_crit_edge ]
  %prev_run_len.3 = phi i64 [ %prev_run_len.0.lcssa, %if.then171 ], [ %prev_run_len.1.ph.lcssa, %while.end.zone_pass_done_crit_edge ]
  %clusters.2 = phi i64 [ %clusters.0.lcssa, %if.then171 ], [ %clusters.1.ph.lcssa, %while.end.zone_pass_done_crit_edge ]
  %rl.4 = phi ptr [ %rl.0.lcssa, %if.then171 ], [ %rl.1.ph.lcssa, %while.end.zone_pass_done_crit_edge ]
  %page.1 = phi ptr [ %page.0.lcssa, %if.then171 ], [ %call.i.i, %while.end.zone_pass_done_crit_edge ]
  %rlpos.3 = phi i32 [ %rlpos.0.lcssa, %if.then171 ], [ %rlpos.1.ph.lcssa, %while.end.zone_pass_done_crit_edge ]
  %rlsize.4 = phi i32 [ %rlsize.0.lcssa, %if.then171 ], [ %rlsize.1.ph.lcssa, %while.end.zone_pass_done_crit_edge ]
  %need_writeback.4 = phi i8 [ %need_writeback.0.lcssa, %if.then171 ], [ %need_writeback.3.ph.lcssa, %while.end.zone_pass_done_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 495, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.36, i32 noundef %conv168) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pass.1.ph)
  %cmp421 = icmp eq i8 %pass.1.ph, 1
  br i1 %cmp421, label %if.then423, label %done_zones_check.preheader

done_zones_check.preheader:                       ; preds = %zone_pass_done
  %or44711281387 = or i8 %search_zone.1.ph.ph, %done_zones.1.ph.ph
  %or4471388 = zext i8 %or44711281387 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.38, i32 noundef %conv167, i32 noundef %conv166, i32 noundef %or4471388) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %or44711281387)
  %cmp4531389 = icmp ult i8 %or44711281387, 7
  br i1 %cmp4531389, label %if.then455.lr.ph, label %done_zones_check.preheader.if.end602_crit_edge

done_zones_check.preheader.if.end602_crit_edge:   ; preds = %done_zones_check.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end602

if.then455.lr.ph:                                 ; preds = %done_zones_check.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlpos.3)
  %tobool558.not = icmp eq i32 %rlpos.3, 0
  %sub562 = add i32 %rlpos.3, -1
  %lcn564 = getelementptr %struct.runlist_element, ptr %rl.4, i32 %sub562, i32 1
  %length567 = getelementptr %struct.runlist_element, ptr %rl.4, i32 %sub562, i32 2
  br label %if.then455

if.then423:                                       ; preds = %zone_pass_done
  %130 = zext i8 %search_zone.1.ph.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %search_zone.1.ph.ph, label %do.body431 [
    i8 1, label %if.then423.sw.epilog437.sink.split_crit_edge
    i8 2, label %sw.bb427
    i8 4, label %if.then423.sw.epilog437_crit_edge
  ]

if.then423.sw.epilog437_crit_edge:                ; preds = %if.then423
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog437

if.then423.sw.epilog437.sink.split_crit_edge:     ; preds = %if.then423
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog437.sink.split

sw.bb427:                                         ; preds = %if.then423
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog437.sink.split

do.body431:                                       ; preds = %if.then423
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 514, 0\0A.popsection", ""() #8, !srcloc !165
  unreachable

sw.epilog437.sink.split:                          ; preds = %sw.bb427, %if.then423.sw.epilog437.sink.split_crit_edge
  %mft_zone_end428.sink = phi ptr [ %mft_zone_end428, %sw.bb427 ], [ %mft_zone_start426, %if.then423.sw.epilog437.sink.split_crit_edge ]
  %131 = ptrtoint ptr %mft_zone_end428.sink to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %mft_zone_end428.sink, align 8
  br label %sw.epilog437

sw.epilog437:                                     ; preds = %sw.epilog437.sink.split, %if.then423.sw.epilog437_crit_edge
  %zone_start.3 = phi i64 [ 0, %if.then423.sw.epilog437_crit_edge ], [ %132, %sw.epilog437.sink.split ]
  %133 = tail call i64 @llvm.smax.i64(i64 %zone_start.2.ph, i64 %zone_start.3)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 525, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.37, i64 noundef %zone_start.3, i64 noundef %133, i64 noundef %zone_start.3) #8
  br label %while.cond.outer

if.then455:                                       ; preds = %if.then600.if.then455_crit_edge, %if.then455.lr.ph
  %or44711281392 = phi i8 [ %or44711281387, %if.then455.lr.ph ], [ %or4471128, %if.then600.if.then455_crit_edge ]
  %search_zone.21391 = phi i8 [ %search_zone.1.ph.ph, %if.then455.lr.ph ], [ %search_zone.3, %if.then600.if.then455_crit_edge ]
  %bmp_initial_pos.11390 = phi i64 [ %bmp_initial_pos.0.ph.ph, %if.then455.lr.ph ], [ %bmp_initial_pos.2, %if.then600.if.then455_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.39) #8
  %134 = zext i8 %search_zone.21391 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %search_zone.21391, label %do.body589 [
    i8 1, label %sw.bb457
    i8 2, label %sw.bb511
    i8 4, label %sw.bb557
  ]

sw.bb457:                                         ; preds = %if.then455
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 541, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.40) #8
  br i1 %tobool558.not, label %sw.bb457.switch_to_data1_zone_crit_edge, label %if.then459

sw.bb457.switch_to_data1_zone_crit_edge:          ; preds = %sw.bb457
  call void @__sanitizer_cov_trace_pc() #10
  br label %switch_to_data1_zone

if.then459:                                       ; preds = %sw.bb457
  %135 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %mft_zone_pos461, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 550, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.27, i64 noundef %136) #8
  %137 = ptrtoint ptr %lcn564 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %lcn564, align 8
  %139 = ptrtoint ptr %length567 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %length567, align 8
  %add468 = add i64 %140, %138
  %141 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %mft_zone_end428, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add468, i64 %142)
  %cmp470.not = icmp slt i64 %add468, %142
  br i1 %cmp470.not, label %if.else480, label %if.then472

if.then472:                                       ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %mft_lcn473 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %mft_lcn473, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %142)
  %tobool476.not = icmp eq i64 %142, 0
  %spec.store.select1136 = select i1 %tobool476.not, i64 0, i64 %144
  br label %if.end495.sink.split

if.else480:                                       ; preds = %if.then459
  %145 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %mft_zone_pos461, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %bmp_initial_pos.11390, i64 %146)
  %cmp482.not = icmp sge i64 %bmp_initial_pos.11390, %146
  call void @__sanitizer_cov_trace_cmp8(i64 %add468, i64 %146)
  %cmp486 = icmp sgt i64 %add468, %146
  %or.cond1137 = select i1 %cmp482.not, i1 true, i1 %cmp486
  br i1 %or.cond1137, label %land.lhs.true488, label %if.else480.if.end495_crit_edge

if.else480.if.end495_crit_edge:                   ; preds = %if.else480
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end495

land.lhs.true488:                                 ; preds = %if.else480
  %147 = ptrtoint ptr %mft_lcn473 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %mft_lcn473, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add468, i64 %148)
  %cmp490.not = icmp slt i64 %add468, %148
  br i1 %cmp490.not, label %land.lhs.true488.if.end495_crit_edge, label %land.lhs.true488.if.end495.sink.split_crit_edge

land.lhs.true488.if.end495.sink.split_crit_edge:  ; preds = %land.lhs.true488
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end495.sink.split

land.lhs.true488.if.end495_crit_edge:             ; preds = %land.lhs.true488
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end495

if.end495.sink.split:                             ; preds = %land.lhs.true488.if.end495.sink.split_crit_edge, %if.then472
  %spec.store.select1136.sink = phi i64 [ %spec.store.select1136, %if.then472 ], [ %add468, %land.lhs.true488.if.end495.sink.split_crit_edge ]
  %149 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %spec.store.select1136.sink, ptr %mft_zone_pos461, align 8
  br label %if.end495

if.end495:                                        ; preds = %if.end495.sink.split, %land.lhs.true488.if.end495_crit_edge, %if.else480.if.end495_crit_edge
  %150 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %mft_zone_pos461, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 567, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.28, i64 noundef %151) #8
  br label %switch_to_data1_zone

switch_to_data1_zone:                             ; preds = %if.end585, %sw.bb557.switch_to_data1_zone_crit_edge, %if.end495, %sw.bb457.switch_to_data1_zone_crit_edge
  %152 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %data1_zone_pos515, align 8
  %154 = ptrtoint ptr %nr_clusters523 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %nr_clusters523, align 8
  %156 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %mft_zone_end428, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %153, i64 %157)
  %cmp501 = icmp eq i64 %153, %157
  %spec.select1138 = select i1 %cmp501, i8 2, i8 1
  call void @__sanitizer_cov_trace_cmp8(i64 %153, i64 %155)
  %cmp505.not = icmp slt i64 %153, %155
  br i1 %cmp505.not, label %switch_to_data1_zone.sw.epilog595_crit_edge, label %if.then507

switch_to_data1_zone.sw.epilog595_crit_edge:      ; preds = %switch_to_data1_zone
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog595

if.then507:                                       ; preds = %switch_to_data1_zone
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %data1_zone_pos515, align 8
  br label %sw.epilog595

sw.bb511:                                         ; preds = %if.then455
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 584, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.41) #8
  br i1 %tobool558.not, label %sw.bb511.if.end546_crit_edge, label %if.then513

sw.bb511.if.end546_crit_edge:                     ; preds = %sw.bb511
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end546

if.then513:                                       ; preds = %sw.bb511
  %159 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %data1_zone_pos515, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 593, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.29, i64 noundef %160) #8
  %161 = ptrtoint ptr %lcn564 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %lcn564, align 8
  %163 = ptrtoint ptr %length567 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %length567, align 8
  %add522 = add i64 %164, %162
  %165 = ptrtoint ptr %nr_clusters523 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %nr_clusters523, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add522, i64 %166)
  %cmp524.not = icmp slt i64 %add522, %166
  br i1 %cmp524.not, label %if.else529, label %if.then526

if.then526:                                       ; preds = %if.then513
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %mft_zone_end428, align 8
  br label %if.end544.sink.split

if.else529:                                       ; preds = %if.then513
  %169 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %data1_zone_pos515, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %bmp_initial_pos.11390, i64 %170)
  %cmp531.not = icmp sge i64 %bmp_initial_pos.11390, %170
  call void @__sanitizer_cov_trace_cmp8(i64 %add522, i64 %170)
  %cmp535 = icmp sgt i64 %add522, %170
  %or.cond1139 = select i1 %cmp531.not, i1 true, i1 %cmp535
  br i1 %or.cond1139, label %land.lhs.true537, label %if.else529.if.end544_crit_edge

if.else529.if.end544_crit_edge:                   ; preds = %if.else529
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

land.lhs.true537:                                 ; preds = %if.else529
  %171 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %mft_zone_end428, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add522, i64 %172)
  %cmp539.not = icmp slt i64 %add522, %172
  br i1 %cmp539.not, label %land.lhs.true537.if.end544_crit_edge, label %land.lhs.true537.if.end544.sink.split_crit_edge

land.lhs.true537.if.end544.sink.split_crit_edge:  ; preds = %land.lhs.true537
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544.sink.split

land.lhs.true537.if.end544_crit_edge:             ; preds = %land.lhs.true537
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

if.end544.sink.split:                             ; preds = %land.lhs.true537.if.end544.sink.split_crit_edge, %if.then526
  %add522.sink = phi i64 [ %168, %if.then526 ], [ %add522, %land.lhs.true537.if.end544.sink.split_crit_edge ]
  %173 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %add522.sink, ptr %data1_zone_pos515, align 8
  br label %if.end544

if.end544:                                        ; preds = %if.end544.sink.split, %land.lhs.true537.if.end544_crit_edge, %if.else529.if.end544_crit_edge
  %174 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %data1_zone_pos515, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 608, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.30, i64 noundef %175) #8
  br label %if.end546

if.end546:                                        ; preds = %if.end544, %sw.bb511.if.end546_crit_edge
  %176 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %data2_zone_pos561, align 8
  %178 = ptrtoint ptr %mft_zone_start426 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %mft_zone_start426, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %177)
  %tobool549.not = icmp eq i64 %177, 0
  %spec.select1140 = select i1 %tobool549.not, i8 2, i8 1
  call void @__sanitizer_cov_trace_cmp8(i64 %177, i64 %179)
  %cmp552.not = icmp slt i64 %177, %179
  br i1 %cmp552.not, label %if.end546.sw.epilog595_crit_edge, label %if.then554

if.end546.sw.epilog595_crit_edge:                 ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog595

if.then554:                                       ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 0, ptr %data2_zone_pos561, align 8
  br label %sw.epilog595

sw.bb557:                                         ; preds = %if.then455
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 625, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.42) #8
  br i1 %tobool558.not, label %sw.bb557.switch_to_data1_zone_crit_edge, label %if.then559

sw.bb557.switch_to_data1_zone_crit_edge:          ; preds = %sw.bb557
  call void @__sanitizer_cov_trace_pc() #10
  br label %switch_to_data1_zone

if.then559:                                       ; preds = %sw.bb557
  %181 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %data2_zone_pos561, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 634, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.31, i64 noundef %182) #8
  %183 = ptrtoint ptr %lcn564 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %lcn564, align 8
  %185 = ptrtoint ptr %length567 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %length567, align 8
  %add568 = add i64 %186, %184
  %187 = ptrtoint ptr %mft_zone_start426 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %mft_zone_start426, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add568, i64 %188)
  %cmp570.not = icmp slt i64 %add568, %188
  br i1 %cmp570.not, label %if.else574, label %if.then559.if.end585.sink.split_crit_edge

if.then559.if.end585.sink.split_crit_edge:        ; preds = %if.then559
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end585.sink.split

if.else574:                                       ; preds = %if.then559
  %189 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %data2_zone_pos561, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %bmp_initial_pos.11390, i64 %190)
  %cmp576.not = icmp sge i64 %bmp_initial_pos.11390, %190
  call void @__sanitizer_cov_trace_cmp8(i64 %add568, i64 %190)
  %cmp580 = icmp sgt i64 %add568, %190
  %or.cond1141 = select i1 %cmp576.not, i1 true, i1 %cmp580
  br i1 %or.cond1141, label %if.else574.if.end585.sink.split_crit_edge, label %if.else574.if.end585_crit_edge

if.else574.if.end585_crit_edge:                   ; preds = %if.else574
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end585

if.else574.if.end585.sink.split_crit_edge:        ; preds = %if.else574
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end585.sink.split

if.end585.sink.split:                             ; preds = %if.else574.if.end585.sink.split_crit_edge, %if.then559.if.end585.sink.split_crit_edge
  %add568.sink = phi i64 [ 0, %if.then559.if.end585.sink.split_crit_edge ], [ %add568, %if.else574.if.end585.sink.split_crit_edge ]
  %191 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %add568.sink, ptr %data2_zone_pos561, align 8
  br label %if.end585

if.end585:                                        ; preds = %if.end585.sink.split, %if.else574.if.end585_crit_edge
  %192 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %data2_zone_pos561, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 647, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.32, i64 noundef %193) #8
  br label %switch_to_data1_zone

do.body589:                                       ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 652, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

sw.epilog595:                                     ; preds = %if.then554, %if.end546.sw.epilog595_crit_edge, %if.then507, %switch_to_data1_zone.sw.epilog595_crit_edge
  %zone_start.4 = phi i64 [ %157, %if.then507 ], [ %153, %switch_to_data1_zone.sw.epilog595_crit_edge ], [ 0, %if.then554 ], [ %177, %if.end546.sw.epilog595_crit_edge ]
  %zone_end.3 = phi i64 [ %155, %if.then507 ], [ %155, %switch_to_data1_zone.sw.epilog595_crit_edge ], [ %179, %if.then554 ], [ %179, %if.end546.sw.epilog595_crit_edge ]
  %bmp_initial_pos.2 = phi i64 [ %153, %if.then507 ], [ %153, %switch_to_data1_zone.sw.epilog595_crit_edge ], [ 0, %if.then554 ], [ %177, %if.end546.sw.epilog595_crit_edge ]
  %pass.4 = phi i8 [ 2, %if.then507 ], [ %spec.select1138, %switch_to_data1_zone.sw.epilog595_crit_edge ], [ 2, %if.then554 ], [ %spec.select1140, %if.end546.sw.epilog595_crit_edge ]
  %search_zone.3 = phi i8 [ 2, %if.then507 ], [ 2, %switch_to_data1_zone.sw.epilog595_crit_edge ], [ 4, %if.then554 ], [ 4, %if.end546.sw.epilog595_crit_edge ]
  %conv596 = zext i8 %search_zone.3 to i32
  %conv597 = zext i8 %pass.4 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 660, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.43, i32 noundef %conv596, i32 noundef %conv597, i64 noundef %bmp_initial_pos.2, i64 noundef %zone_start.4, i64 noundef %zone_end.3) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %zone_start.4, i64 %zone_end.3)
  %cmp598 = icmp eq i64 %zone_start.4, %zone_end.3
  br i1 %cmp598, label %if.then600, label %if.end601

if.then600:                                       ; preds = %sw.epilog595
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 664, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.44) #8
  %conv444 = zext i8 %or44711281392 to i32
  %or4471128 = or i8 %search_zone.3, %or44711281392
  %or447 = zext i8 %or4471128 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.38, i32 noundef %conv596, i32 noundef %conv444, i32 noundef %or447) #8
  %cmp453 = icmp ult i8 %or4471128, 7
  br i1 %cmp453, label %if.then600.if.then455_crit_edge, label %if.then600.if.end602_crit_edge

if.then600.if.end602_crit_edge:                   ; preds = %if.then600
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end602

if.then600.if.then455_crit_edge:                  ; preds = %if.then600
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then455

if.end601:                                        ; preds = %sw.epilog595
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 668, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.45) #8
  br label %while.cond.outer.outer.backedge

if.end602:                                        ; preds = %if.then600.if.end602_crit_edge, %done_zones_check.preheader.if.end602_crit_edge
  %or4471128.lcssa = phi i8 [ %or44711281387, %done_zones_check.preheader.if.end602_crit_edge ], [ %or4471128, %if.then600.if.end602_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.46) #8
  %194 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %mft_zone_end428, align 8
  %196 = ptrtoint ptr %mft_zone_start426 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %mft_zone_start426, align 8
  %sub605 = sub i64 %195, %197
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 681, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.47, i64 noundef %197, i64 noundef %195, i64 noundef %sub605) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub605)
  %cmp611 = icmp slt i64 %sub605, 1
  %or.cond1142 = or i1 %cmp, %cmp611
  br i1 %or.cond1142, label %if.then613, label %if.end614

if.then613:                                       ; preds = %if.end602
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.48) #8
  br label %out

if.end614:                                        ; preds = %if.end602
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 688, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.49) #8
  %198 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %mft_zone_end428, align 8
  %shr6161166 = lshr i64 %sub605, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub605)
  %cmp617.not = icmp eq i64 %sub605, 1
  br i1 %cmp617.not, label %if.else623, label %if.then619

if.then619:                                       ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %mft_zone_start426 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %mft_zone_start426, align 8
  %add621 = add i64 %201, %shr6161166
  %202 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %add621, ptr %mft_zone_end428, align 8
  br label %if.end627

if.else623:                                       ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %data2_zone_pos561 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 0, ptr %data2_zone_pos561, align 8
  %204 = call ptr @memset(ptr %mft_zone_start426, i32 0, i32 16)
  br label %if.end627

if.end627:                                        ; preds = %if.else623, %if.then619
  %205 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %mft_zone_pos461, align 8
  %207 = ptrtoint ptr %mft_zone_end428 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %mft_zone_end428, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %206, i64 %208)
  %cmp630.not = icmp slt i64 %206, %208
  br i1 %cmp630.not, label %if.end627.if.end640_crit_edge, label %if.then632

if.end627.if.end640_crit_edge:                    ; preds = %if.end627
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end640

if.then632:                                       ; preds = %if.end627
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %mft_lcn473 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %mft_lcn473, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %208)
  %tobool636.not = icmp eq i64 %208, 0
  %spec.store.select1143 = select i1 %tobool636.not, i64 0, i64 %210
  %211 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %spec.store.select1143, ptr %mft_zone_pos461, align 8
  br label %if.end640

if.end640:                                        ; preds = %if.then632, %if.end627.if.end640_crit_edge
  %212 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %208, ptr %data1_zone_pos515, align 8
  %213 = and i8 %or4471128.lcssa, -3
  %214 = ptrtoint ptr %mft_zone_start426 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %mft_zone_start426, align 8
  %216 = ptrtoint ptr %mft_zone_pos461 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %mft_zone_pos461, align 8
  %conv649 = zext i8 %213 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 719, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.50, i64 noundef %shr6161166, i64 noundef %215, i64 noundef %208, i64 noundef %217, i32 noundef %conv649, i64 noundef %208, i64 noundef %199, i64 noundef %208) #8
  br label %while.cond.outer.outer.backedge

while.cond.outer.outer.backedge:                  ; preds = %if.end640, %if.end601
  %zone_start.2.ph.ph.be = phi i64 [ %zone_start.4, %if.end601 ], [ %208, %if.end640 ]
  %zone_end.1.ph.ph.be = phi i64 [ %zone_end.3, %if.end601 ], [ %199, %if.end640 ]
  %bmp_initial_pos.0.ph.ph.be = phi i64 [ %bmp_initial_pos.2, %if.end601 ], [ %208, %if.end640 ]
  %pass.1.ph.ph.be = phi i8 [ %pass.4, %if.end601 ], [ 2, %if.end640 ]
  %done_zones.1.ph.ph.be = phi i8 [ %or44711281392, %if.end601 ], [ %213, %if.end640 ]
  %search_zone.1.ph.ph.be = phi i8 [ %search_zone.3, %if.end601 ], [ 2, %if.end640 ]
  br label %while.cond.outer.outer

out:                                              ; preds = %if.then613, %sw.epilog, %cleanup, %if.then190
  %clusters.3 = phi i64 [ %clusters.2, %if.then613 ], [ %clusters.01368, %if.then190 ], [ %clusters.1.ph1347, %cleanup ], [ 0, %sw.epilog ]
  %rl.5 = phi ptr [ %rl.4, %if.then613 ], [ %rl.01369, %if.then190 ], [ %rl.1.ph1349, %cleanup ], [ %rl.3, %sw.epilog ]
  %page.2 = phi ptr [ %page.1, %if.then613 ], [ %retval.0.i1159, %if.then190 ], [ %call.i.i, %cleanup ], [ %call.i.i, %sw.epilog ]
  %err.5 = phi i32 [ -28, %if.then613 ], [ %56, %if.then190 ], [ -12, %cleanup ], [ 0, %sw.epilog ]
  %rlpos.4 = phi i32 [ %rlpos.3, %if.then613 ], [ %rlpos.01372, %if.then190 ], [ %rlpos.1.ph1350, %cleanup ], [ %rlpos.2, %sw.epilog ]
  %need_writeback.5 = phi i8 [ %need_writeback.4, %if.then613 ], [ %need_writeback.2, %if.then190 ], [ %need_writeback.3.ph1353, %cleanup ], [ 1, %sw.epilog ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 723, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.51) #8
  %tobool652.not = icmp eq ptr %rl.5, null
  br i1 %tobool652.not, label %out.if.end677_crit_edge, label %if.then659, !prof !148

out.if.end677_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end677

if.then659:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %sub660 = add i32 %rlpos.4, -1
  %arrayidx661 = getelementptr %struct.runlist_element, ptr %rl.5, i32 %sub660
  %218 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %arrayidx661, align 8
  %length665 = getelementptr %struct.runlist_element, ptr %rl.5, i32 %sub660, i32 2
  %220 = ptrtoint ptr %length665 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %length665, align 8
  %add666 = add i64 %221, %219
  %arrayidx667 = getelementptr %struct.runlist_element, ptr %rl.5, i32 %rlpos.4
  %222 = ptrtoint ptr %arrayidx667 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %add666, ptr %arrayidx667, align 8
  %conv672 = select i1 %is_extension, i64 -3, i64 -2
  %lcn674 = getelementptr %struct.runlist_element, ptr %rl.5, i32 %rlpos.4, i32 1
  %223 = ptrtoint ptr %lcn674 to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %conv672, ptr %lcn674, align 8
  %length676 = getelementptr %struct.runlist_element, ptr %rl.5, i32 %rlpos.4, i32 2
  %224 = ptrtoint ptr %length676 to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 0, ptr %length676, align 8
  br label %if.end677

if.end677:                                        ; preds = %if.then659, %out.if.end677_crit_edge
  %tobool678.not = icmp ne ptr %page.2, null
  %cmp.i1150 = icmp ule ptr %page.2, inttoptr (i32 -4096 to ptr)
  %or.cond1167 = and i1 %tobool678.not, %cmp.i1150
  br i1 %or.cond1167, label %if.then690, label %if.end677.if.end695_crit_edge, !prof !167

if.end677.if.end695_crit_edge:                    ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end695

if.then690:                                       ; preds = %if.end677
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %need_writeback.5)
  %tobool691.not = icmp eq i8 %need_writeback.5, 0
  br i1 %tobool691.not, label %if.then690.if.end694_crit_edge, label %if.then692

if.then690.if.end694_crit_edge:                   ; preds = %if.then690
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end694

if.then692:                                       ; preds = %if.then690
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 732, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.9) #8
  tail call void @flush_dcache_page(ptr noundef nonnull %page.2) #8
  %call693 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %page.2) #8
  br label %if.end694

if.end694:                                        ; preds = %if.then692, %if.then690.if.end694_crit_edge
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %page.2)
  br label %if.end695

if.end695:                                        ; preds = %if.end694, %if.end677.if.end695_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool696.not = icmp eq i32 %err.5, 0
  br i1 %tobool696.not, label %if.then705, label %if.end707, !prof !147

if.then705:                                       ; preds = %if.end695
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef %lcnbmp_lock) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 741, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.2) #8
  br label %cleanup732

if.end707:                                        ; preds = %if.end695
  %225 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef %226, ptr noundef nonnull @.str.52, i32 noundef %err.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %err.5)
  %cmp724 = icmp eq i32 %err.5, -28
  br i1 %tobool652.not, label %if.else723, label %if.then710

if.then710:                                       ; preds = %if.end707
  br i1 %cmp724, label %if.then713, label %if.then710.if.end717_crit_edge

if.then710.if.end717_crit_edge:                   ; preds = %if.then710
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end717

if.then713:                                       ; preds = %if.then710
  call void @__sanitizer_cov_trace_pc() #10
  %lcn715 = getelementptr inbounds %struct.runlist_element, ptr %rl.5, i32 0, i32 1
  %227 = ptrtoint ptr %lcn715 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %lcn715, align 8
  %sub716 = sub i64 %count, %clusters.3
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 755, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.53, i64 noundef %228, i64 noundef %sub716) #8
  br label %if.end717

if.end717:                                        ; preds = %if.then713, %if.then710.if.end717_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 757, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.54) #8
  %call718 = tail call i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef nonnull %vol, ptr noundef nonnull %rl.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call718)
  %tobool719.not = icmp eq i32 %call718, 0
  br i1 %tobool719.not, label %if.end717.if.end722_crit_edge, label %if.then720

if.end717.if.end722_crit_edge:                    ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end722

if.then720:                                       ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef %230, ptr noundef nonnull @.str.55, i32 noundef %call718) #8
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %if.end722

if.end722:                                        ; preds = %if.then720, %if.end717.if.end722_crit_edge
  tail call void @kvfree(ptr noundef nonnull %rl.5) #8
  br label %if.end729

if.else723:                                       ; preds = %if.end707
  br i1 %cmp724, label %if.then726, label %if.else723.if.end729_crit_edge

if.else723.if.end729_crit_edge:                   ; preds = %if.else723
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end729

if.then726:                                       ; preds = %if.else723
  call void @__sanitizer_cov_trace_pc() #10
  %231 = ptrtoint ptr %data1_zone_pos515 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %data1_zone_pos515, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 770, ptr noundef nonnull @__func__.ntfs_cluster_alloc, ptr noundef nonnull @.str.56, i64 noundef %232) #8
  br label %if.end729

if.end729:                                        ; preds = %if.then726, %if.else723.if.end729_crit_edge, %if.end722
  tail call void @up_write(ptr noundef %lcnbmp_lock) #8
  %233 = inttoptr i32 %err.5 to ptr
  br label %cleanup732

cleanup732:                                       ; preds = %if.end729, %if.then705, %do.end119.cleanup732_crit_edge
  %retval.0 = phi ptr [ %rl.5, %if.then705 ], [ %233, %if.end729 ], [ null, %do.end119.cleanup732_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.67, i32 noundef 55) #8
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !147

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !148

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.68) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !168
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !172

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %8) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__ntfs_cluster_free(ptr noundef %ni, i64 noundef %start_vcn, i64 noundef %count, ptr noundef %ctx, i1 noundef zeroext %is_rollback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ni, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !148

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 844, 0\0A.popsection", ""() #8, !srcloc !173
  unreachable

do.end9:                                          ; preds = %entry
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no, align 4
  %cond = select i1 %is_rollback, ptr @.str.58, ptr @.str.59
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 848, ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef nonnull @.str.57, i32 noundef %1, i64 noundef %start_vcn, i64 noundef %count, ptr noundef nonnull %cond) #8
  %vol11 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %2 = ptrtoint ptr %vol11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol11, align 8
  %lcnbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %lcnbmp_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcnbmp_ino, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.body23, label %do.body32, !prof !148

do.body23:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 851, 0\0A.popsection", ""() #8, !srcloc !174
  unreachable

do.body32:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start_vcn)
  %cmp = icmp slt i64 %start_vcn, 0
  br i1 %cmp, label %do.body40, label %do.body49, !prof !148

do.body40:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 852, 0\0A.popsection", ""() #8, !srcloc !175
  unreachable

do.body49:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %count)
  %cmp50 = icmp slt i64 %count, -1
  br i1 %cmp50, label %do.body58, label %do.end66, !prof !148

do.body58:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 853, 0\0A.popsection", ""() #8, !srcloc !176
  unreachable

do.end66:                                         ; preds = %do.body49
  br i1 %is_rollback, label %if.end77, label %if.end77.thread, !prof !148

if.end77:                                         ; preds = %do.end66
  %call = tail call ptr @ntfs_attr_find_vcn_nolock(ptr noundef nonnull %ni, i64 noundef %start_vcn, ptr noundef %ctx) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err_out.thread, label %if.end85

err_out.thread:                                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = ptrtoint ptr %call to i32
  br label %if.then271

if.end77.thread:                                  ; preds = %do.end66
  %lcnbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 41
  tail call void @down_write(ptr noundef %lcnbmp_lock) #8
  %call395 = tail call ptr @ntfs_attr_find_vcn_nolock(ptr noundef nonnull %ni, i64 noundef %start_vcn, ptr noundef %ctx) #8
  %cmp.i396 = icmp ugt ptr %call395, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i396, label %if.end273.thread, label %if.end85.thread

if.end273.thread:                                 ; preds = %if.end77.thread
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %8 = ptrtoint ptr %call395 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef %7, ptr noundef nonnull @.str.60, i32 noundef %8) #8
  br label %if.then275

if.end85:                                         ; preds = %if.end77
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp86 = icmp slt i64 %10, -1
  br i1 %cmp86, label %if.end85.if.then271_crit_edge, label %if.end85.if.end98_crit_edge, !prof !148

if.end85.if.end98_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.end85.if.then271_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then271

if.end85.thread:                                  ; preds = %if.end77.thread
  %lcn403 = getelementptr inbounds %struct.runlist_element, ptr %call395, i32 0, i32 1
  %11 = ptrtoint ptr %lcn403 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %lcn403, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %12)
  %cmp86404 = icmp slt i64 %12, -1
  br i1 %cmp86404, label %if.then95, label %if.end85.thread.if.end98_crit_edge, !prof !148

if.end85.thread.if.end98_crit_edge:               ; preds = %if.end85.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then95:                                        ; preds = %if.end85.thread
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef %14, ptr noundef nonnull @.str.61) #8
  br label %if.then275

if.end98:                                         ; preds = %if.end85.thread.if.end98_crit_edge, %if.end85.if.end98_crit_edge
  %15 = phi i64 [ %12, %if.end85.thread.if.end98_crit_edge ], [ %10, %if.end85.if.end98_crit_edge ]
  %call397405 = phi ptr [ %call395, %if.end85.thread.if.end98_crit_edge ], [ %call, %if.end85.if.end98_crit_edge ]
  %16 = ptrtoint ptr %call397405 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %call397405, align 8
  %sub = sub i64 %start_vcn, %17
  %length = getelementptr inbounds %struct.runlist_element, ptr %call397405, i32 0, i32 2
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %length, align 8
  %sub99 = sub i64 %19, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %count)
  %cmp100 = icmp sgt i64 %count, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub99, i64 %count)
  %cmp101 = icmp sgt i64 %sub99, %count
  %or.cond = select i1 %cmp100, i1 %cmp101, i1 false
  %to_free.0 = select i1 %or.cond, i64 %count, i64 %sub99
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %cmp105 = icmp sgt i64 %15, -1
  br i1 %cmp105, label %if.then112, label %if.end98.if.end138_crit_edge, !prof !147

if.end98.if.end138_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then112:                                       ; preds = %if.end98
  %add = add i64 %sub, %15
  %conv = zext i1 %is_rollback to i8
  %call.i = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef nonnull %5, i64 noundef %add, i64 noundef %to_free.0, i8 noundef zeroext %conv, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool125.not = icmp eq i32 %call.i, 0
  br i1 %tobool125.not, label %if.then112.if.end138_crit_edge, label %if.then132, !prof !147

if.then112.if.end138_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then132:                                       ; preds = %if.then112
  br i1 %is_rollback, label %if.then132.if.then271_crit_edge, label %if.then134

if.then132.if.then271_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then271

if.then134:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef %21, ptr noundef nonnull @.str.62, i32 noundef %call.i) #8
  br label %if.then275

if.end138:                                        ; preds = %if.then112.if.end138_crit_edge, %if.end98.if.end138_crit_edge
  %real_freed.0 = phi i64 [ 0, %if.end98.if.end138_crit_edge ], [ %to_free.0, %if.then112.if.end138_crit_edge ]
  %sub142 = sub i64 %count, %to_free.0
  %spec.select = select i1 %cmp100, i64 %sub142, i64 -1
  %length144450 = getelementptr %struct.runlist_element, ptr %call397405, i32 1, i32 2
  %22 = ptrtoint ptr %length144450 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length144450, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool145.not451 = icmp eq i64 %23, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %cmp146.not452 = icmp eq i64 %spec.select, 0
  %or.cond390453 = select i1 %tobool145.not451, i1 true, i1 %cmp146.not452
  br i1 %or.cond390453, label %if.end138.for.end_crit_edge, label %for.body.lr.ph

if.end138.for.end_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end138
  %conv215 = zext i1 %is_rollback to i8
  br label %for.body

for.body:                                         ; preds = %if.end231.for.body_crit_edge, %for.body.lr.ph
  %call.pn458 = phi ptr [ %call397405, %for.body.lr.ph ], [ %rl.1, %if.end231.for.body_crit_edge ]
  %real_freed.1457 = phi i64 [ %real_freed.0, %for.body.lr.ph ], [ %real_freed.2, %if.end231.for.body_crit_edge ]
  %total_freed.0455 = phi i64 [ %to_free.0, %for.body.lr.ph ], [ %add237, %if.end231.for.body_crit_edge ]
  %count.addr.1454 = phi i64 [ %spec.select, %for.body.lr.ph ], [ %spec.select392, %if.end231.for.body_crit_edge ]
  %rl.0460 = getelementptr %struct.runlist_element, ptr %call.pn458, i32 1
  %lcn148 = getelementptr %struct.runlist_element, ptr %call.pn458, i32 1, i32 1
  %24 = ptrtoint ptr %lcn148 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lcn148, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp149 = icmp slt i64 %25, -1
  br i1 %cmp149, label %if.then157, label %for.body.if.end185_crit_edge, !prof !148

for.body.if.end185_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then157:                                       ; preds = %for.body
  %26 = ptrtoint ptr %rl.0460 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rl.0460, align 8
  %call160 = tail call ptr @ntfs_attr_find_vcn_nolock(ptr noundef nonnull %ni, i64 noundef %27, ptr noundef %ctx) #8
  %cmp.i393 = icmp ugt ptr %call160, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i393, label %if.then162, label %if.end168

if.then162:                                       ; preds = %if.then157
  %28 = ptrtoint ptr %call160 to i32
  br i1 %is_rollback, label %if.then162.if.then271_crit_edge, label %if.then162.if.end273.sink.split_crit_edge

if.then162.if.end273.sink.split_crit_edge:        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273.sink.split

if.then162.if.then271_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then271

if.end168:                                        ; preds = %if.then157
  %lcn169 = getelementptr inbounds %struct.runlist_element, ptr %call160, i32 0, i32 1
  %29 = ptrtoint ptr %lcn169 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %lcn169, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %30)
  %cmp170 = icmp sgt i64 %30, -2
  %brmerge = or i1 %cmp170, %is_rollback
  br i1 %brmerge, label %cleanup, label %if.then180, !prof !177

if.then180:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef %32, ptr noundef nonnull @.str.64, i64 noundef %30) #8
  br label %err_out

cleanup:                                          ; preds = %if.end168
  br i1 %cmp170, label %cleanup.if.end185_crit_edge, label %cleanup.err_out_crit_edge

cleanup.err_out_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

cleanup.if.end185_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.end185:                                        ; preds = %cleanup.if.end185_crit_edge, %for.body.if.end185_crit_edge
  %rl.1 = phi ptr [ %call160, %cleanup.if.end185_crit_edge ], [ %rl.0460, %for.body.if.end185_crit_edge ]
  %length186 = getelementptr inbounds %struct.runlist_element, ptr %rl.1, i32 0, i32 2
  %33 = ptrtoint ptr %length186 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %length186, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %count.addr.1454)
  %cmp187 = icmp sgt i64 %count.addr.1454, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %count.addr.1454)
  %cmp190 = icmp sgt i64 %34, %count.addr.1454
  %or.cond391 = select i1 %cmp187, i1 %cmp190, i1 false
  %to_free.1 = select i1 %or.cond391, i64 %count.addr.1454, i64 %34
  %lcn194 = getelementptr inbounds %struct.runlist_element, ptr %rl.1, i32 0, i32 1
  %35 = ptrtoint ptr %lcn194 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lcn194, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %36)
  %cmp195 = icmp sgt i64 %36, -1
  br i1 %cmp195, label %if.then203, label %if.end185.if.end231_crit_edge, !prof !147

if.end185.if.end231_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then203:                                       ; preds = %if.end185
  %call.i394 = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef nonnull %5, i64 noundef %36, i64 noundef %to_free.1, i8 noundef zeroext %conv215, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i394)
  %tobool217.not = icmp eq i32 %call.i394, 0
  br i1 %tobool217.not, label %if.end229, label %if.then224, !prof !147

if.then224:                                       ; preds = %if.then203
  br i1 %is_rollback, label %if.then224.if.then271_crit_edge, label %if.then224.if.end273.sink.split_crit_edge

if.then224.if.end273.sink.split_crit_edge:        ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273.sink.split

if.then224.if.then271_crit_edge:                  ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then271

if.end229:                                        ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  %add230 = add i64 %to_free.1, %real_freed.1457
  br label %if.end231

if.end231:                                        ; preds = %if.end229, %if.end185.if.end231_crit_edge
  %real_freed.2 = phi i64 [ %add230, %if.end229 ], [ %real_freed.1457, %if.end185.if.end231_crit_edge ]
  %sub235 = select i1 %cmp187, i64 %to_free.1, i64 0
  %spec.select392 = sub i64 %count.addr.1454, %sub235
  %add237 = add i64 %to_free.1, %total_freed.0455
  %length144 = getelementptr %struct.runlist_element, ptr %rl.1, i32 1, i32 2
  %37 = ptrtoint ptr %length144 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %length144, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool145.not = icmp eq i64 %38, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select392)
  %cmp146.not = icmp eq i64 %spec.select392, 0
  %or.cond390 = select i1 %tobool145.not, i1 true, i1 %cmp146.not
  br i1 %or.cond390, label %if.end231.for.end_crit_edge, label %if.end231.for.body_crit_edge

if.end231.for.body_crit_edge:                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end231.for.end_crit_edge:                      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end231.for.end_crit_edge, %if.end138.for.end_crit_edge
  %count.addr.1.lcssa = phi i64 [ %spec.select, %if.end138.for.end_crit_edge ], [ %spec.select392, %if.end231.for.end_crit_edge ]
  %real_freed.1.lcssa = phi i64 [ %real_freed.0, %if.end138.for.end_crit_edge ], [ %real_freed.2, %if.end231.for.end_crit_edge ]
  br i1 %is_rollback, label %for.end.do.body251_crit_edge, label %if.then248, !prof !148

for.end.do.body251_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body251

if.then248:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %lcnbmp_lock249 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 41
  tail call void @up_write(ptr noundef %lcnbmp_lock249) #8
  br label %do.body251

do.body251:                                       ; preds = %if.then248, %for.end.do.body251_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count.addr.1.lcssa)
  %cmp252 = icmp sgt i64 %count.addr.1.lcssa, 0
  br i1 %cmp252, label %do.body261, label %do.end269, !prof !148

do.body261:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/lcnalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 970, 0\0A.popsection", ""() #8, !srcloc !178
  unreachable

do.end269:                                        ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 973, ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef nonnull @.str.2) #8
  br label %cleanup289

err_out:                                          ; preds = %cleanup.err_out_crit_edge, %if.then180
  br i1 %is_rollback, label %err_out.if.then271_crit_edge, label %err_out.if.end273_crit_edge

err_out.if.end273_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

err_out.if.then271_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then271

if.then271:                                       ; preds = %err_out.if.then271_crit_edge, %if.then224.if.then271_crit_edge, %if.then162.if.then271_crit_edge, %if.then132.if.then271_crit_edge, %if.end85.if.then271_crit_edge, %err_out.thread
  %err.5411 = phi i32 [ -5, %err_out.if.then271_crit_edge ], [ %call.i394, %if.then224.if.then271_crit_edge ], [ %call.i, %if.then132.if.then271_crit_edge ], [ %28, %if.then162.if.then271_crit_edge ], [ -5, %if.end85.if.then271_crit_edge ], [ %.pre, %err_out.thread ]
  %conv272 = sext i32 %err.5411 to i64
  br label %cleanup289

if.end273.sink.split:                             ; preds = %if.then224.if.end273.sink.split_crit_edge, %if.then162.if.end273.sink.split_crit_edge
  %.str.63.sink = phi ptr [ @.str.63, %if.then162.if.end273.sink.split_crit_edge ], [ @.str.65, %if.then224.if.end273.sink.split_crit_edge ]
  %err.5420.ph = phi i32 [ %28, %if.then162.if.end273.sink.split_crit_edge ], [ %call.i394, %if.then224.if.end273.sink.split_crit_edge ]
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef %40, ptr noundef nonnull %.str.63.sink) #8
  br label %if.end273

if.end273:                                        ; preds = %if.end273.sink.split, %err_out.if.end273_crit_edge
  %err.5420 = phi i32 [ -5, %err_out.if.end273_crit_edge ], [ %err.5420.ph, %if.end273.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %real_freed.1457)
  %tobool274.not = icmp eq i64 %real_freed.1457, 0
  br i1 %tobool274.not, label %if.end273.if.then275_crit_edge, label %if.end278

if.end273.if.then275_crit_edge:                   ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then275

if.then275:                                       ; preds = %if.end273.if.then275_crit_edge, %if.then134, %if.then95, %if.end273.thread
  %err.5420433 = phi i32 [ %err.5420, %if.end273.if.then275_crit_edge ], [ %call.i, %if.then134 ], [ -5, %if.then95 ], [ %8, %if.end273.thread ]
  %lcnbmp_lock276 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 41
  tail call void @up_write(ptr noundef %lcnbmp_lock276) #8
  %conv277 = sext i32 %err.5420433 to i64
  br label %cleanup289

if.end278:                                        ; preds = %if.end273
  %call279 = tail call i64 @__ntfs_cluster_free(ptr noundef nonnull %ni, i64 noundef %start_vcn, i64 noundef %total_freed.0455, ptr noundef %ctx, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call279)
  %cmp280 = icmp slt i64 %call279, 0
  br i1 %cmp280, label %if.then282, label %if.end278.if.end285_crit_edge

if.end278.if.end285_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end285

if.then282:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 8
  %conv284 = trunc i64 %call279 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef %42, ptr noundef nonnull @.str.55, i32 noundef %conv284) #8
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %if.end285

if.end285:                                        ; preds = %if.then282, %if.end278.if.end285_crit_edge
  %lcnbmp_lock286 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 41
  tail call void @up_write(ptr noundef %lcnbmp_lock286) #8
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_cluster_free, ptr noundef %44, ptr noundef nonnull @.str.66, i32 noundef %err.5420) #8
  %conv288 = sext i32 %err.5420 to i64
  br label %cleanup289

cleanup289:                                       ; preds = %if.end285, %if.then275, %if.then271, %do.end269
  %retval.0 = phi i64 [ %conv272, %if.then271 ], [ %conv288, %if.end285 ], [ %conv277, %if.then275 ], [ %real_freed.1.lcssa, %do.end269 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_find_vcn_nolock(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/lcnalloc.c", i32 42, i32 2}
!2 = !{ptr @__func__.ntfs_cluster_free_from_rl_nolock, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/lcnalloc.c", i32 54, i32 2}
!6 = !{ptr @__func__.ntfs_cluster_alloc, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/lcnalloc.c", i32 149, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ntfs/lcnalloc.c", i32 244, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ntfs/lcnalloc.c", i32 255, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ntfs/lcnalloc.c", i32 258, i32 4}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ntfs/lcnalloc.c", i32 264, i32 5}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ntfs/lcnalloc.c", i32 275, i32 4}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ntfs/lcnalloc.c", i32 286, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ntfs/lcnalloc.c", i32 292, i32 4}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ntfs/lcnalloc.c", i32 304, i32 5}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ntfs/lcnalloc.c", i32 308, i32 4}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ntfs/lcnalloc.c", i32 312, i32 5}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ntfs/lcnalloc.c", i32 323, i32 5}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ntfs/lcnalloc.c", i32 325, i32 6}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ntfs/lcnalloc.c", i32 332, i32 6}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs/lcnalloc.c", i32 340, i32 5}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ntfs/lcnalloc.c", i32 347, i32 4}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ntfs/lcnalloc.c", i32 353, i32 4}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ntfs/lcnalloc.c", i32 364, i32 5}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ntfs/lcnalloc.c", i32 371, i32 5}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ntfs/lcnalloc.c", i32 381, i32 6}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ntfs/lcnalloc.c", i32 391, i32 6}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ntfs/lcnalloc.c", i32 408, i32 5}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ntfs/lcnalloc.c", i32 415, i32 6}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ntfs/lcnalloc.c", i32 430, i32 6}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ntfs/lcnalloc.c", i32 437, i32 6}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ntfs/lcnalloc.c", i32 450, i32 6}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ntfs/lcnalloc.c", i32 457, i32 6}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ntfs/lcnalloc.c", i32 468, i32 6}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ntfs/lcnalloc.c", i32 477, i32 5}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ntfs/lcnalloc.c", i32 483, i32 3}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ntfs/lcnalloc.c", i32 488, i32 4}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ntfs/lcnalloc.c", i32 495, i32 3}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ntfs/lcnalloc.c", i32 520, i32 4}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ntfs/lcnalloc.c", i32 529, i32 3}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ntfs/lcnalloc.c", i32 535, i32 4}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ntfs/lcnalloc.c", i32 540, i32 5}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ntfs/lcnalloc.c", i32 583, i32 5}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ntfs/lcnalloc.c", i32 624, i32 5}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ntfs/lcnalloc.c", i32 654, i32 4}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ntfs/lcnalloc.c", i32 663, i32 5}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ntfs/lcnalloc.c", i32 668, i32 4}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ntfs/lcnalloc.c", i32 671, i32 3}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ntfs/lcnalloc.c", i32 677, i32 3}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ntfs/lcnalloc.c", i32 683, i32 4}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ntfs/lcnalloc.c", i32 688, i32 3}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ntfs/lcnalloc.c", i32 706, i32 3}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ntfs/lcnalloc.c", i32 723, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ntfs/lcnalloc.c", i32 744, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ntfs/lcnalloc.c", i32 750, i32 4}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ntfs/lcnalloc.c", i32 757, i32 3}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ntfs/lcnalloc.c", i32 760, i32 4}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ntfs/lcnalloc.c", i32 768, i32 3}
!113 = !{ptr @__func__.__ntfs_cluster_free, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ntfs/lcnalloc.c", i32 845, i32 2}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ntfs/lcnalloc.c", i32 869, i32 4}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ntfs/lcnalloc.c", i32 877, i32 4}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ntfs/lcnalloc.c", i32 896, i32 5}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ntfs/lcnalloc.c", i32 924, i32 6}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ntfs/lcnalloc.c", i32 933, i32 6}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ntfs/lcnalloc.c", i32 953, i32 6}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ntfs/lcnalloc.c", i32 996, i32 2}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/mm.h", i32 717, i32 2}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2154131893, i64 2154132376, i64 2154131930, i64 2154131986, i64 2154132020, i64 2154132044, i64 2154132085, i64 2154132106, i64 2154132134, i64 2154132168}
!150 = !{i64 2154133466, i64 2154133949, i64 2154133503, i64 2154133559, i64 2154133593, i64 2154133617, i64 2154133658, i64 2154133679, i64 2154133707, i64 2154133741}
!151 = !{i64 2154135045, i64 2154135528, i64 2154135082, i64 2154135138, i64 2154135172, i64 2154135196, i64 2154135237, i64 2154135258, i64 2154135286, i64 2154135320}
!152 = !{i64 2154136616, i64 2154137099, i64 2154136653, i64 2154136709, i64 2154136743, i64 2154136767, i64 2154136808, i64 2154136829, i64 2154136857, i64 2154136891}
!153 = !{i64 2154138197, i64 2154138680, i64 2154138234, i64 2154138290, i64 2154138324, i64 2154138348, i64 2154138389, i64 2154138410, i64 2154138438, i64 2154138472}
!154 = !{i64 2154141369, i64 2154141852, i64 2154141406, i64 2154141462, i64 2154141496, i64 2154141520, i64 2154141561, i64 2154141582, i64 2154141610, i64 2154141644}
!155 = !{i64 1139165, i64 1139226}
!156 = !{i64 1141897}
!157 = !{i64 1142182}
!158 = !{i64 2153125067}
!159 = !{i64 2153124909}
!160 = !{i64 2153125237}
!161 = !{i64 2149912346}
!162 = !{i64 2150346576, i64 2150347067, i64 2150346613, i64 2150346669, i64 2150346703, i64 2150346727, i64 2150346768, i64 2150346789, i64 2150346817, i64 2150346851}
!163 = !{i64 2153994414, i64 2153994894, i64 2153994451, i64 2153994507, i64 2153994541, i64 2153994565, i64 2153994606, i64 2153994627, i64 2153994655, i64 2153994689}
!164 = !{i64 2154152311, i64 2154152794, i64 2154152348, i64 2154152404, i64 2154152438, i64 2154152462, i64 2154152503, i64 2154152524, i64 2154152552, i64 2154152586}
!165 = !{i64 2154154465, i64 2154154948, i64 2154154502, i64 2154154558, i64 2154154592, i64 2154154616, i64 2154154657, i64 2154154678, i64 2154154706, i64 2154154740}
!166 = !{i64 2154158041, i64 2154158524, i64 2154158078, i64 2154158134, i64 2154158168, i64 2154158192, i64 2154158233, i64 2154158254, i64 2154158282, i64 2154158316}
!167 = !{!"branch_weights", i32 4000000, i32 4001}
!168 = !{i64 2153180481, i64 2153180964, i64 2153180518, i64 2153180574, i64 2153180608, i64 2153180632, i64 2153180673, i64 2153180694, i64 2153180722, i64 2153180756}
!169 = !{i64 2148822961}
!170 = !{i64 2148737670, i64 2148737702, i64 2148737731, i64 2148737765, i64 2148737796, i64 2148737819}
!171 = !{i64 2148823190}
!172 = !{i64 2148335162, i64 2148335167, i64 2148335180, i64 2148335224, i64 2148335258, i64 2148335279}
!173 = !{i64 2154162735, i64 2154163218, i64 2154162772, i64 2154162828, i64 2154162862, i64 2154162886, i64 2154162927, i64 2154162948, i64 2154162976, i64 2154163010}
!174 = !{i64 2154164558, i64 2154165041, i64 2154164595, i64 2154164651, i64 2154164685, i64 2154164709, i64 2154164750, i64 2154164771, i64 2154164799, i64 2154164833}
!175 = !{i64 2154166137, i64 2154166620, i64 2154166174, i64 2154166230, i64 2154166264, i64 2154166288, i64 2154166329, i64 2154166350, i64 2154166378, i64 2154166412}
!176 = !{i64 2154167710, i64 2154168193, i64 2154167747, i64 2154167803, i64 2154167837, i64 2154167861, i64 2154167902, i64 2154167923, i64 2154167951, i64 2154167985}
!177 = !{!"branch_weights", i32 4001, i32 1}
!178 = !{i64 2154170450, i64 2154170933, i64 2154170487, i64 2154170543, i64 2154170577, i64 2154170601, i64 2154170642, i64 2154170663, i64 2154170691, i64 2154170725}
