; ModuleID = '/llk/IR_all_yes/fs/ntfs/mft.c_pt.bc'
source_filename = "../fs/ntfs/mft.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.84, %struct.mutex, i32, %union.anon.87 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.87 = type { ptr }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.MFT_RECORD = type { i32, i16, i16, i64, i16, i16, i16, i16, i32, i32, i64, i16, i16, i32 }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
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
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.runlist_element = type { i64, i64, i64 }
%struct.anon.67 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.ntfs_attr = type { i32, ptr, i32, i32 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.anon.90 }
%struct.anon.90 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ntfs/mft.c\00", [18 x i8] zeroinitializer }, align 32
@__func__.map_mft_record = private unnamed_addr constant [15 x i8] c"map_mft_record\00", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Entering for mft_no 0x%lx.\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed with error code %lu.\00", [36 x i8] zeroinitializer }, align 32
@__func__.unmap_mft_record = private unnamed_addr constant [17 x i8] c"unmap_mft_record\00", align 1
@__func__.map_extent_mft_record = private unnamed_addr constant [22 x i8] c"map_extent_mft_record\00", align 1
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Mapping extent mft record 0x%lx (base mft record 0x%lx).\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Done 1.\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Found stale extent mft reference! Corrupt filesystem. Run chkdsk.\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to map extent mft record, error code %ld.\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate internal buffer.\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Done 2.\00", [24 x i8] zeroinitializer }, align 32
@__func__.__mark_mft_record_dirty = private unnamed_addr constant [24 x i8] c"__mark_mft_record_dirty\00", align 1
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering for inode 0x%lx.\00", [38 x i8] zeroinitializer }, align 32
@__func__.ntfs_sync_mft_mirror = private unnamed_addr constant [21 x i8] c"ntfs_sync_mft_mirror\00", align 1
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to map mft mirror page.\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"Cannot write mft mirror record 0x%lx because its location on disk could not be determined (error code %lli).\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"I/O error while writing mft mirror record 0x%lx!\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [156 x i8], [36 x i8] } { [156 x i8] c"Failed to synchronize $MFTMirr (error code %i).  Volume will be left marked dirty on umount.  Run ntfsfix on the partition after umounting to correct this.\00", [36 x i8] zeroinitializer }, align 32
@__func__.write_mft_record_nolock = private unnamed_addr constant [24 x i8] c"write_mft_record_nolock\00", align 1
@.str.15 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Cannot write mft record 0x%lx because its location on disk could not be determined (error code %lli).\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to apply mst fixups!\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"I/O error while writing mft record 0x%lx!  Marking base inode as bad.  You should unmount the volume and run chkdsk.\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Not enough memory to write mft record.  Redirtying so the write is retried later.\00", [46 x i8] zeroinitializer }, align 32
@__func__.ntfs_may_write_mft_record = private unnamed_addr constant [26 x i8] c"ntfs_may_write_mft_record\00", align 1
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Looking for inode 0x%lx in icache.\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Base inode 0x%lx is in icache.\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Inode 0x%lx is dirty, do not write it.\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Inode 0x%lx is not dirty.\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Mft record 0x%lx is already locked, do not write it.\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Managed to lock mft record 0x%lx, write it.\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Inode 0x%lx is not in icache.\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Mft record 0x%lx is not a FILE record, write it.\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Mft record 0x%lx is a base record, write it.\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Mft record 0x%lx is an extent record.  Looking for base inode 0x%lx in icache.\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Base inode 0x%lx is not in icache, write the extent record.\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Base inode 0x%lx has no attached extent inodes, write the extent record.\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Extent inode 0x%lx is not attached to its base inode 0x%lx, write the extent record.\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Extent inode 0x%lx is attached to its base inode 0x%lx.\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Extent mft record 0x%lx is already locked, do not write it.\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Managed to lock extent mft record 0x%lx, write it.\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Extent inode 0x%lx is dirty, marking it clean.\00", [49 x i8] zeroinitializer }, align 32
@__func__.ntfs_mft_record_alloc = private unnamed_addr constant [22 x i8] c"ntfs_mft_record_alloc\00", align 1
@.str.36 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Entering (allocating an extent mft record for base mft record 0x%llx).\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Entering (allocating a base mft record).\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Found and allocated free record (#1), bit 0x%llx.\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Found free record (#2), bit 0x%llx.\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"Status of mftbmp before extension: allocated_size 0x%llx, data_size 0x%llx, initialized_size 0x%llx.\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mftbmp: initialized_size + 8 > allocated_size.\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"Status of mftbmp after allocation extension: allocated_size 0x%llx, data_size 0x%llx, initialized_size 0x%llx.\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"Status of mftbmp after initialized extension: allocated_size 0x%llx, data_size 0x%llx, initialized_size 0x%llx.\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Found free record (#3), bit 0x%llx.\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"At found_free_rec.\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate bit in mft bitmap.\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set bit 0x%llx in mft bitmap.\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Allocated mft record already initialized.\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Initializing allocated mft record.\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Status of mft data before extension: allocated_size 0x%llx, data_size 0x%llx, initialized_size 0x%llx.\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to extend mft data allocation.\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"Status of mft data after allocation extension: allocated_size 0x%llx, data_size 0x%llx, initialized_size 0x%llx.\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initializing mft record 0x%llx.\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to format mft record.\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to map mft record.\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get search context.\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to find first attribute extent of mft data attribute.\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"Status of mft data after mft record initialization: allocated_size 0x%llx, data_size 0x%llx, initialized_size 0x%llx.\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to map page containing allocated mft record 0x%llx.\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"Mft record 0x%llx was marked free in mft bitmap but is marked used itself.  Corrupt filesystem.  Unmount and run chkdsk.\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to layout allocated mft record 0x%llx.\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to map allocated extent mft record 0x%llx.\00", [46 x i8] zeroinitializer }, align 32
@I30 = external dso_local global [5 x i16], align 2
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Returning opened, allocated %sinode 0x%llx.\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extent \00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to clear bit in mft bitmap.%s\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Cannot allocate mft record because the maximum number of inodes (2^32) has already been reached.\00", [63 x i8] zeroinitializer }, align 32
@__func__.ntfs_extent_mft_record_free = private unnamed_addr constant [28 x i8] c"ntfs_extent_mft_record_free\00", align 1
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Entering for extent inode 0x%lx, base inode 0x%lx.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Tried to free busy extent inode 0x%lx, not freeing.\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Extent inode 0x%lx is not attached to its base inode 0x%lx.\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to write mft record 0x%lx, not freeing.\00", [49 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to allocate internal buffer during rollback.%s\00", [42 x i8] zeroinitializer }, align 32
@__func__.map_mft_record_page = private unnamed_addr constant [20 x i8] c"map_mft_record_page\00", align 1
@.str.73 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"Attempt to read mft record 0x%lx, which is beyond the end of the mft.  This is probably a bug in the ntfs driver.\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Mft record 0x%lx is corrupt.  Run chkdsk.\00", [54 x i8] zeroinitializer }, align 32
@__func__.ntfs_sync_mft_mirror_umount = private unnamed_addr constant [28 x i8] c"ntfs_sync_mft_mirror_umount\00", align 1
@.str.75 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Umount time mft mirror syncing is not implemented yet.  %s\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Please email linux-ntfs-dev@lists.sourceforge.net and say that you saw this message.  Thank you.\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.78 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock = private unnamed_addr constant [47 x i8] c"ntfs_mft_bitmap_find_and_alloc_free_rec_nolock\00", align 1
@.str.87 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Searching for free mft record in the currently initialized mft bitmap.\00", [57 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Starting bitmap search: pass %u, pass_start 0x%llx, pass_end 0x%llx, data_pos 0x%llx.\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read mft bitmap, aborting.\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Before inner for loop: size 0x%x, data_pos 0x%llx, bit 0x%llx\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Done.  (Found and allocated mft record 0x%llx.)\00", [48 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"After inner for loop: size 0x%x, data_pos 0x%llx, bit 0x%llx\00", [35 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pass %i, pass_start 0x%llx, pass_end 0x%llx.\00", [51 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Done.  (No free mft records left in currently initialized mft bitmap.)\00", [57 x i8] zeroinitializer }, align 32
@__func__.ntfs_mft_bitmap_extend_allocation_nolock = private unnamed_addr constant [41 x i8] c"ntfs_mft_bitmap_extend_allocation_nolock\00", align 1
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Extending mft bitmap allocation.\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to determine last allocated cluster of mft bitmap attribute.\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Last lcn of mft bitmap attribute is 0x%llx.\00", [52 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read from lcn bitmap.\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Appending one cluster to mft bitmap.\00", [59 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to allocate a cluster for the mft bitmap.\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to merge runlists for mft bitmap.\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to deallocate allocated cluster.%s\00", [54 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Adding one run to mft bitmap.\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failed to find last attribute extent of mft bitmap attribute.\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Get size for mapping pairs failed for mft bitmap attribute extent.\00", [61 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to resize attribute record for mft bitmap attribute.\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"Not enough space in this mft record to accommodate extended mft bitmap attribute extent.  Cannot handle this yet.\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failed to build mapping pairs array for mft bitmap attribute.\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to find first attribute extent of mft bitmap attribute.\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to find last attribute extent of mft bitmap attribute.%s\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to free allocated cluster.%s\00", [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to restore mapping pairs array.%s\00", [55 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to restore attribute record.%s\00", [58 x i8] zeroinitializer }, align 32
@__func__.ntfs_mft_bitmap_extend_initialized_nolock = private unnamed_addr constant [42 x i8] c"ntfs_mft_bitmap_extend_initialized_nolock\00", align 1
@.str.114 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Extending mft bitmap initiailized (and data) size.\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Done.  (Wrote eight initialized bytes to mft bitmap.\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write to mft bitmap.\00", [33 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to map mft record.%s\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get search context.%s\00", [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Failed to find first attribute extent of mft bitmap attribute.%s\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Restored status of mftbmp: allocated_size 0x%llx, data_size 0x%llx, initialized_size 0x%llx.\00", [35 x i8] zeroinitializer }, align 32
@__func__.ntfs_mft_data_extend_allocation_nolock = private unnamed_addr constant [39 x i8] c"ntfs_mft_data_extend_allocation_nolock\00", align 1
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Extending mft data allocation.\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failed to determine last allocated cluster of mft data attribute.\00", [62 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Last lcn of mft data attribute is 0x%llx.\00", [54 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Trying mft data allocation with %s cluster count %lli.\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"minimal\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Failed to allocate the minimal number of clusters (%lli) for the mft data attribute.\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Retrying mft data allocation with minimal cluster count %lli.\00", [34 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to merge runlists for mft data attribute.\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to deallocate clusters from the mft data attribute.%s\00", [35 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Allocated %lli clusters.\00", [39 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to find last attribute extent of mft data attribute.\00", [36 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Get size for mapping pairs failed for mft data attribute extent.\00", [63 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to resize attribute record for mft data attribute.\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"Not enough space in this mft record to accommodate extended mft data attribute extent.  Cannot handle this yet.\00", [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to build mapping pairs array of mft data attribute.\00", [37 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failed to find last attribute extent of mft data attribute.%s\00", [34 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to free clusters from mft data attribute.%s\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to truncate mft data attribute runlist.%s\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to restore attribute search context.%s\00", [50 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ntfs_mft_record_format = private unnamed_addr constant [23 x i8] c"ntfs_mft_record_format\00", align 1
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Entering for mft record 0x%llx.\00", [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Tried to format non-existing mft record 0x%llx.\00", [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to map page containing mft record to format 0x%llx.\00", [37 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to layout mft record 0x%llx.\00", [60 x i8] zeroinitializer }, align 32
@__func__.ntfs_mft_record_layout = private unnamed_addr constant [23 x i8] c"ntfs_mft_record_layout\00", align 1
@.str.146 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Mft record number 0x%llx exceeds maximum of 2^32.\00", [46 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [258 x i8], [94 x i8] } { [258 x i8] c"Sector size is bigger than mft record size.  Setting usa_count to 1.  If chkdsk reports this as corruption, please email linux-ntfs-dev@lists.sourceforge.net stating that you saw this message and that the modified filesystem created was corrupt.  Thank you.\00", [94 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs/inode.h\00", [16 x i8] zeroinitializer }, align 32
@__func__.ntfs_init_big_inode = private unnamed_addr constant [20 x i8] c"ntfs_init_big_inode\00", align 1
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"  Leaving inconsistent metadata.  Unmount and run chkdsk.\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 148, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 162, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 246, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 277, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 282, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 288, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 326, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 343, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 388, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 483, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 558, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 615, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 617, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 620, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 746, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 769, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 811, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 832, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 940, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 964, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 971, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 977, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 980, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 986, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 995, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 999, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1005, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1015, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1029, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1047, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1070, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1075, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1087, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1091, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1094, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2256, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2262, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2276, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2304, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2318, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2326, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2334, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2355, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2363, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2366, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2369, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2373, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2388, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2391, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2399, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2409, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2414, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2441, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2445, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2456, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2462, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2470, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2489, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2518, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2532, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2555, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2590, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2725, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2739, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2746, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2792, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2799, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2822, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2853, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2885, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 65, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 82, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 431, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 401, i32 40 }
@___asan_gen_.389 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 44, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 416, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 788, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 260, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 678, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 452, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1160, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 354, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 717, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1137, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1168, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1190, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1197, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1216, i32 6 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1223, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1243, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1251, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1293, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1308, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1317, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1329, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1346, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1355, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1362, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1365, i32 5 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1374, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1399, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1417, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1430, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1439, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1451, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1473, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1497, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1528, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1538, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1543, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1583, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1634, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1638, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1642, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1648, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1654, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1679, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1724, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1739, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1748, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1773, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1782, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1794, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1800, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1803, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1811, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1831, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1849, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1862, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1876, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1888, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1935, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1954, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1960, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1982, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 271, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2096, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2109, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2117, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2127, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2014, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2038, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant [19 x i8] c"../fs/ntfs/inode.h\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 274, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.605 = private constant [17 x i8] c"../fs/ntfs/mft.c\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1104, i32 25 }
@llvm.compiler.used = appending global [150 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 258, i32 352, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @map_mft_record(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @__func__.map_mft_record, ptr noundef nonnull @.str.1, i32 noundef %1) #9
  %count = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !334
  %mrec_lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mrec_lock, i32 noundef 0) #9
  %vol1.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %3 = ptrtoint ptr %vol1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vol1.i, align 8
  %mft_ino.i = getelementptr inbounds %struct.ntfs_volume, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %mft_ino.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mft_ino.i, align 8
  %page2.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %7 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page2.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.end10.i, label %do.body5.i, !prof !335

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #9, !srcloc !336
  unreachable

do.end10.i:                                       ; preds = %entry
  %9 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mft_no, align 4
  %conv.i = zext i32 %10 to i64
  %mft_record_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %4, i32 0, i32 16
  %11 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mft_record_size_bits.i, align 4
  %conv11.i = zext i8 %12 to i32
  %sh_prom.i = zext i8 %12 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %shr.i = lshr i64 %shl.i, 12
  %conv12.i = trunc i64 %shr.i to i32
  %shl16.i = shl i32 %10, %conv11.i
  %and.i = and i32 %shl16.i, 4095
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %6) #9
  %13 = lshr i64 %call.i, 12
  %conv18.i = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %conv18.i)
  %cmp.not.i = icmp ult i32 %conv12.i, %conv18.i
  br i1 %cmp.not.i, label %do.end10.i.if.end37.i_crit_edge, label %if.then26.i, !prof !335

do.end10.i.if.end37.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then26.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %conv18.i)
  %cmp27.i = icmp ugt i32 %conv12.i, %conv18.i
  br i1 %cmp27.i, label %if.then26.i.if.then33.i_crit_edge, label %lor.lhs.false.i

if.then26.i.if.then33.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i

lor.lhs.false.i:                                  ; preds = %if.then26.i
  %and29.i = and i64 %call.i, 4095
  %mft_record_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %4, i32 0, i32 14
  %14 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mft_record_size.i, align 4
  %add.i = add i32 %15, %and.i
  %conv30.i = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and29.i, i64 %conv30.i)
  %cmp31.i = icmp ult i64 %and29.i, %conv30.i
  br i1 %cmp31.i, label %lor.lhs.false.i.if.then33.i_crit_edge, label %lor.lhs.false.i.if.end37.i_crit_edge

lor.lhs.false.i.if.end37.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

lor.lhs.false.i.if.then33.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i

if.then33.i:                                      ; preds = %lor.lhs.false.i.if.then33.i_crit_edge, %if.then26.i.if.then33.i_crit_edge
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 8
  %18 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_mft_record_page, ptr noundef %17, ptr noundef nonnull @.str.73, i32 noundef %19) #9
  br label %err_out.i

if.end37.i:                                       ; preds = %lor.lhs.false.i.if.end37.i_crit_edge, %do.end10.i.if.end37.i_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %20 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_mapping.i, align 8
  %call38.i = tail call fastcc ptr @ntfs_map_page(ptr noundef %21, i32 noundef %conv12.i) #9
  %cmp.i.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end37.i.err_out.i_crit_edge, label %if.then40.i

if.end37.i.err_out.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.i

if.then40.i:                                      ; preds = %if.end37.i
  %call41.i = tail call ptr @page_address(ptr noundef %call38.i) #9
  %add.ptr.i = getelementptr i8, ptr %call41.i, i32 %and.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179208773, i32 %23)
  %cmp.i94.i = icmp eq i32 %23, 1179208773
  br i1 %cmp.i94.i, label %if.then49.i, label %if.end53.i, !prof !335

if.then49.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %page2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i, ptr %page2.i, align 8
  %page_ofs.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 14
  %25 = ptrtoint ptr %page_ofs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %page_ofs.i, align 4
  %call51.i = tail call ptr @page_address(ptr noundef %call38.i) #9
  %add.ptr52.i = getelementptr i8, ptr %call51.i, i32 %and.i
  br label %map_mft_record_page.exit

if.end53.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %4, align 8
  %28 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_mft_record_page, ptr noundef %27, ptr noundef nonnull @.str.74, i32 noundef %29) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call38.i) #9
  %flags.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %4, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #9
  br label %err_out.i

err_out.i:                                        ; preds = %if.end53.i, %if.end37.i.err_out.i_crit_edge, %if.then33.i
  %page.0.i = phi ptr [ inttoptr (i32 -2 to ptr), %if.then33.i ], [ %call38.i, %if.end37.i.err_out.i_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end53.i ]
  %30 = ptrtoint ptr %page2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %page2.i, align 8
  %page_ofs59.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 14
  %31 = ptrtoint ptr %page_ofs59.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %page_ofs59.i, align 4
  br label %map_mft_record_page.exit

map_mft_record_page.exit:                         ; preds = %err_out.i, %if.then49.i
  %retval.0.i = phi ptr [ %page.0.i, %err_out.i ], [ %add.ptr52.i, %if.then49.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %map_mft_record_page.exit.cleanup_crit_edge

map_mft_record_page.exit.cleanup_crit_edge:       ; preds = %map_mft_record_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %map_mft_record_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mrec_lock) #9
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  %33 = ptrtoint ptr %vol1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vol1.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %37 = ptrtoint ptr %retval.0.i to i32
  %sub = sub i32 0, %37
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_mft_record, ptr noundef %36, ptr noundef nonnull @.str.2, i32 noundef %sub) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %map_mft_record_page.exit.cleanup_crit_edge
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unmap_mft_record(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !338

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10:                                         ; preds = %entry
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %2 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mft_no, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %3) #9
  %4 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page1, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body4.i, label %unmap_mft_record_page.exit, !prof !338

do.body4.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

unmap_mft_record_page.exit:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %5) #9
  %6 = ptrtoint ptr %page1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %page1, align 8
  %page_ofs.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 14
  %7 = ptrtoint ptr %page_ofs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %page_ofs.i, align 4
  %mrec_lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %mrec_lock) #9
  %count = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @map_extent_mft_record(ptr noundef %base_ni, i64 noundef %mref, ptr nocapture noundef writeonly %ntfs_ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %mref to i32
  %shr = lshr i64 %mref, 48
  %conv2 = trunc i64 %shr to i16
  %mft_no3 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no3, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 247, ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %1) #9
  %count = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !334
  %extent_lock = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %extent_lock, i32 noundef 0) #9
  %nr_extents = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 20
  %3 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then:                                          ; preds = %entry
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 21
  %5 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ext, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0238, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond.if.end41_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end41_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then
  %i.0238 = phi i32 [ 0, %if.then ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.0238
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %mft_no8 = getelementptr inbounds %struct._ntfs_inode, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %mft_no8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mft_no8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp9.not = icmp eq i32 %10, %conv
  br i1 %cmp9.not, label %if.end14, label %for.cond

if.end14:                                         ; preds = %for.body
  %count13 = getelementptr inbounds %struct._ntfs_inode, ptr %8, i32 0, i32 6
  %call.i.i217 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count13, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count13, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count13, ptr %count13, i32 1, ptr elementtype(i32) %count13) #9, !srcloc !334
  %cmp15.not = icmp eq ptr %8, null
  br i1 %cmp15.not, label %if.end14.if.end41_crit_edge, label %if.then18, !prof !338

if.end14.if.end41_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then18:                                        ; preds = %if.end14
  tail call void @mutex_unlock(ptr noundef %extent_lock) #9
  %call.i.i218 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  %call = tail call ptr @map_mft_record(ptr noundef nonnull %8)
  %call.i.i219 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count13, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count13, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count13, ptr %count13, i32 1, ptr elementtype(i32) %count13) #9, !srcloc !337
  %cmp.i224 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then18.map_err_out_crit_edge, label %if.then23

if.then18.map_err_out_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_err_out

if.then23:                                        ; preds = %if.then18
  %sequence_number = getelementptr inbounds %struct.MFT_RECORD, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %sequence_number to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %sequence_number, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv24 = zext i16 %16 to i32
  %17 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %17)
  %cmp26 = icmp eq i32 %conv24, %17
  br i1 %cmp26, label %if.then34, label %if.end35, !prof !335

if.then34:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 277, ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef nonnull @.str.4) #9
  %18 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %ntfs_ino, align 4
  br label %cleanup141

if.end35:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unmap_mft_record(ptr noundef nonnull %8)
  %vol = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 7
  %19 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vol, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef %22, ptr noundef nonnull @.str.5) #9
  br label %cleanup141

map_err_out:                                      ; preds = %if.then66, %if.then18.map_err_out_crit_edge
  %m.0 = phi ptr [ %call, %if.then18.map_err_out_crit_edge ], [ %call64, %if.then66 ]
  %vol38 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 7
  %23 = ptrtoint ptr %vol38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vol38, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %m.0 to i32
  %sub = sub i32 0, %27
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %sub) #9
  br label %cleanup141

if.end41:                                         ; preds = %if.end14.if.end41_crit_edge, %for.cond.if.end41_crit_edge, %entry.if.end41_crit_edge
  %vol42 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 7
  %28 = ptrtoint ptr %vol42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vol42, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %call44 = tail call ptr @ntfs_new_extent_inode(ptr noundef %31, i32 noundef %conv) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then54, label %if.end58, !prof !338

if.then54:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %extent_lock) #9
  %call.i.i220 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  br label %cleanup141

if.end58:                                         ; preds = %if.end41
  %33 = ptrtoint ptr %vol42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vol42, align 8
  %vol60 = getelementptr inbounds %struct._ntfs_inode, ptr %call44, i32 0, i32 7
  %35 = ptrtoint ptr %vol60 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %vol60, align 8
  %seq_no61 = getelementptr inbounds %struct._ntfs_inode, ptr %call44, i32 0, i32 5
  %36 = ptrtoint ptr %seq_no61 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv2, ptr %seq_no61, align 8
  %nr_extents62 = getelementptr inbounds %struct._ntfs_inode, ptr %call44, i32 0, i32 20
  %37 = ptrtoint ptr %nr_extents62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %nr_extents62, align 4
  %ext63 = getelementptr inbounds %struct._ntfs_inode, ptr %call44, i32 0, i32 21
  %38 = ptrtoint ptr %ext63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %base_ni, ptr %ext63, align 8
  %call64 = tail call ptr @map_mft_record(ptr noundef nonnull %call44)
  %cmp.i225 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %extent_lock) #9
  %call.i.i221 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  tail call void @ntfs_clear_extent_inode(ptr noundef nonnull %call44) #9
  br label %map_err_out

if.end69:                                         ; preds = %if.end58
  %40 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool71.not = icmp eq i32 %40, 0
  br i1 %tobool71.not, label %if.end69.if.end81_crit_edge, label %land.lhs.true

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end69
  %sequence_number72 = getelementptr inbounds %struct.MFT_RECORD, ptr %call64, i32 0, i32 4
  %41 = ptrtoint ptr %sequence_number72 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %sequence_number72, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv73 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv73, i32 %40)
  %cmp75.not = icmp eq i32 %conv73, %40
  br i1 %cmp75.not, label %land.lhs.true.if.end81_crit_edge, label %land.lhs.true.if.then139_crit_edge

land.lhs.true.if.then139_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then139

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true.if.end81_crit_edge, %if.end69.if.end81_crit_edge
  %44 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_extents, align 4
  %and83 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then85, label %if.end81.if.end129_crit_edge

if.end81.if.end129_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then85:                                        ; preds = %if.end81
  %add = shl i32 %45, 2
  %mul = add i32 %add, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3136) #12
  %tobool88.not = icmp eq ptr %call9.i, null
  br i1 %tobool88.not, label %if.then85.if.then139_crit_edge, label %if.end101, !prof !338

if.then85.if.then139_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then139

if.end101:                                        ; preds = %if.then85
  %46 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool103.not = icmp eq i32 %47, 0
  br i1 %tobool103.not, label %if.end101.cleanup.thread_crit_edge, label %do.body

if.end101.cleanup.thread_crit_edge:               ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

do.body:                                          ; preds = %if.end101
  %ext105 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 21
  %48 = ptrtoint ptr %ext105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ext105, align 8
  %tobool106.not = icmp eq ptr %49, null
  br i1 %tobool106.not, label %do.body116, label %do.end122, !prof !338

do.body116:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #9, !srcloc !341
  unreachable

do.end122:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %50 = call ptr @memcpy(ptr %call9.i, ptr %49, i32 %add)
  %51 = ptrtoint ptr %ext105 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ext105, align 8
  tail call void @kfree(ptr noundef %52) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end122, %if.end101.cleanup.thread_crit_edge
  %ext127 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 21
  %53 = ptrtoint ptr %ext127 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call9.i, ptr %ext127, align 8
  br label %if.end129

if.end129:                                        ; preds = %cleanup.thread, %if.end81.if.end129_crit_edge
  %ext130 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 21
  %54 = ptrtoint ptr %ext130 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ext130, align 8
  %56 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_extents, align 4
  %inc132 = add i32 %57, 1
  store i32 %inc132, ptr %nr_extents, align 4
  %arrayidx133 = getelementptr ptr, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call44, ptr %arrayidx133, align 4
  tail call void @mutex_unlock(ptr noundef %extent_lock) #9
  %call.i.i222 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef nonnull @.str.8) #9
  %60 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call44, ptr %ntfs_ino, align 4
  br label %cleanup141

if.then139:                                       ; preds = %if.then85.if.then139_crit_edge, %land.lhs.true.if.then139_crit_edge
  %.str.5.sink = phi ptr [ @.str.5, %land.lhs.true.if.then139_crit_edge ], [ @.str.7, %if.then85.if.then139_crit_edge ]
  %m.3 = phi ptr [ inttoptr (i32 -5 to ptr), %land.lhs.true.if.then139_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then85.if.then139_crit_edge ]
  %61 = ptrtoint ptr %vol42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vol42, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef %64, ptr noundef nonnull %.str.5.sink) #9
  tail call void @unmap_mft_record(ptr noundef nonnull %call44)
  tail call void @mutex_unlock(ptr noundef %extent_lock) #9
  %call.i.i223 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  tail call void @ntfs_clear_extent_inode(ptr noundef nonnull %call44) #9
  br label %cleanup141

cleanup141:                                       ; preds = %if.then139, %if.end129, %if.then54, %map_err_out, %if.end35, %if.then34
  %retval.0 = phi ptr [ %m.0, %map_err_out ], [ %call, %if.then34 ], [ inttoptr (i32 -5 to ptr), %if.end35 ], [ inttoptr (i32 -12 to ptr), %if.then54 ], [ %call64, %if.end129 ], [ %m.3, %if.then139 ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_new_extent_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_clear_extent_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mark_mft_record_dirty(ptr noundef %ni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 388, ptr noundef nonnull @__func__.__mark_mft_record_dirty, ptr noundef nonnull @.str.9, i32 noundef %1) #9
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !335

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 389, 0\0A.popsection", ""() #9, !srcloc !342
  unreachable

do.end8:                                          ; preds = %entry
  %page = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page, align 8
  %page_ofs = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 14
  %7 = ptrtoint ptr %page_ofs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_ofs, align 4
  tail call void @mark_ntfs_record_dirty(ptr noundef %6, i32 noundef %8) #9
  %extent_lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %extent_lock, i32 noundef 0) #9
  %nr_extents = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 20
  %9 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp sgt i32 %10, -1
  br i1 %cmp, label %do.end8.if.end16_crit_edge, label %if.else, !prof !335

do.end8.if.end16_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %11 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ext, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %do.end8.if.end16_crit_edge
  %base_ni.0 = phi ptr [ %12, %if.else ], [ %ni, %do.end8.if.end16_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %extent_lock) #9
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1
  tail call void @__mark_inode_dirty(ptr noundef %vfs_inode.i, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_ntfs_record_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_sync_mft_mirror(ptr noundef %vol, i32 noundef %mft_no, ptr nocapture noundef readonly %m, i32 %sync) local_unnamed_addr #0 align 64 {
entry:
  %bhs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 14
  %4 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mft_record_size, align 4
  %div = udiv i32 %5, %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs) #9
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %6 = call ptr @memset(ptr %bhs, i32 255, i32 32)
  %7 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_blocksize_bits, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 468, ptr noundef nonnull @__func__.ntfs_sync_mft_mirror, ptr noundef nonnull @.str.9, i32 noundef %mft_no) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %tobool.not = icmp ugt i32 %3, %5
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !338

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 469, 0\0A.popsection", ""() #9, !srcloc !343
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div)
  %cmp = icmp ugt i32 %div, 8
  br i1 %cmp, label %do.end26, label %if.end41, !prof !338

do.end26:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end41:                                         ; preds = %do.end10
  %mftmirr_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 37
  %9 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mftmirr_ino, align 8
  %tobool42.not = icmp eq ptr %10, null
  br i1 %tobool42.not, label %ntfs_sync_mft_mirror_umount.exit, label %if.end63, !prof !338

ntfs_sync_mft_mirror_umount.exit:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_sync_mft_mirror_umount, ptr noundef %12, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #9
  br label %err_out

if.end63:                                         ; preds = %if.end41
  %i_mapping = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping, align 8
  %mft_record_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 16
  %15 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mft_record_size_bits, align 4
  %conv = zext i8 %16 to i32
  %sub = sub nsw i32 12, %conv
  %shr = lshr i32 %mft_no, %sub
  %call65 = tail call fastcc ptr @ntfs_map_page(ptr noundef %14, i32 noundef %shr)
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_sync_mft_mirror, ptr noundef %18, ptr noundef nonnull @.str.10) #9
  %19 = ptrtoint ptr %call65 to i32
  br label %err_out

if.end70:                                         ; preds = %if.end63
  tail call void @__might_sleep(ptr noundef nonnull @.str.79, i32 noundef 788) #9
  %20 = getelementptr inbounds %struct.page, ptr %call65, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i602 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i602)
  %tobool.not.i.i603 = icmp eq i32 %and.i.i602, 0
  br i1 %tobool.not.i.i603, label %if.end.i.i606, label %if.then.i.i605, !prof !335

if.then.i.i605:                                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i604 = add i32 %22, -1
  br label %_compound_head.exit.i610

if.end.i.i606:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call65 to i32
  br label %_compound_head.exit.i610

_compound_head.exit.i610:                         ; preds = %if.end.i.i606, %if.then.i.i605
  %retval.0.i.i607 = phi i32 [ %sub.i.i604, %if.then.i.i605 ], [ %23, %if.end.i.i606 ]
  %24 = inttoptr i32 %retval.0.i.i607 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i608 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i608)
  %tobool.not.i.i.i609 = icmp eq i32 %and.i.i.i.i608, 0
  br i1 %tobool.not.i.i.i609, label %folio_flags.exit.i.i, label %if.then.i.i.i611, !prof !335

if.then.i.i.i611:                                 ; preds = %_compound_head.exit.i610
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i610
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef 4) #9
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and.i.i4.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i612_crit_edge

folio_flags.exit.i.i.if.then.i612_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i612

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %24, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #9, !srcloc !345
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  %31 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %phi.cmp.i.i.i = icmp eq i32 %31, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i612_crit_edge

folio_trylock.exit.i.if.then.i612_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i612

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i612:                                     ; preds = %folio_trylock.exit.i.if.then.i612_crit_edge, %folio_flags.exit.i.i.if.then.i612_crit_edge
  tail call void @__folio_lock(ptr noundef %24) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i612, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %20, align 4
  %and.i.i613 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i613)
  %tobool.not.i.i614 = icmp eq i32 %and.i.i613, 0
  br i1 %tobool.not.i.i614, label %if.end.i.i617, label %if.then.i.i616, !prof !335

if.then.i.i616:                                   ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i615 = add i32 %33, -1
  br label %_compound_head.exit.i621

if.end.i.i617:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call65 to i32
  br label %_compound_head.exit.i621

_compound_head.exit.i621:                         ; preds = %if.end.i.i617, %if.then.i.i616
  %retval.0.i.i618 = phi i32 [ %sub.i.i615, %if.then.i.i616 ], [ %34, %if.end.i.i617 ]
  %35 = inttoptr i32 %retval.0.i.i618 to ptr
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i.i.i619 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i619)
  %tobool.not.i.i.i620 = icmp eq i32 %and.i.i.i.i619, 0
  br i1 %tobool.not.i.i.i620, label %folio_flags.exit.i.i623, label %if.then.i.i.i622, !prof !335

if.then.i.i.i622:                                 ; preds = %_compound_head.exit.i621
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i.i623:                          ; preds = %_compound_head.exit.i621
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %35, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %do.body83, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  %42 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !335

do.body83:                                        ; preds = %folio_flags.exit.i.i623
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #9, !srcloc !348
  unreachable

if.then.i:                                        ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call65, ptr noundef nonnull @.str.82) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !349
  unreachable

do.body7.i:                                       ; preds = %PageUptodate.exit
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %20, align 4
  %and.i31.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !335

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %45, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call65 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %46, %if.end.i.i ]
  %47 = inttoptr i32 %retval.0.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.not.i = icmp eq i32 %49, -1
  %50 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %20, align 4
  %and.i32.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !338

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !335

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %51, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call65 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %52, %if.end.i36.i ]
  %53 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.78) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !350
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !335

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %51, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %call65 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %54, %if.end.i43.i ]
  %55 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %55) #9
  %56 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mft_record_size_bits, align 4
  %conv93 = zext i8 %57 to i32
  %shl = shl i32 %mft_no, %conv93
  %and = and i32 %shl, 4095
  %call94 = tail call ptr @page_address(ptr noundef %call65) #9
  %add.ptr = getelementptr i8, ptr %call94, i32 %and
  %58 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mft_record_size, align 4
  %60 = call ptr @memcpy(ptr %add.ptr, ptr %m, i32 %59)
  %61 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %call65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i.not.i580 = icmp eq i32 %62, -1
  br i1 %cmp.i.not.i580, label %if.then.i581, label %PagePrivate.exit, !prof !338

if.then.i581:                                     ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call65, ptr noundef nonnull @.str.83) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !351
  unreachable

PagePrivate.exit:                                 ; preds = %ClearPageUptodate.exit
  %63 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %call65, align 4
  %65 = and i32 %64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool97.not = icmp eq i32 %65, 0
  br i1 %tobool97.not, label %if.then106, label %PagePrivate.exit.do.body114_crit_edge, !prof !338

PagePrivate.exit.do.body114_crit_edge:            ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body114

if.then106:                                       ; preds = %PagePrivate.exit
  %call107 = tail call ptr @alloc_page_buffers(ptr noundef %call65, i32 noundef %3, i1 noundef zeroext true) #9
  br label %do.body108

do.body108:                                       ; preds = %set_buffer_uptodate.exit.do.body108_crit_edge, %if.then106
  %bh.0 = phi ptr [ %call107, %if.then106 ], [ %69, %set_buffer_uptodate.exit.do.body108_crit_edge ]
  %66 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i582 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i582)
  %tobool.not.i583 = icmp eq i32 %and1.i.i582, 0
  br i1 %tobool.not.i583, label %if.then.i584, label %do.body108.set_buffer_uptodate.exit_crit_edge

do.body108.set_buffer_uptodate.exit_crit_edge:    ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit

if.then.i584:                                     ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #9
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i584, %do.body108.set_buffer_uptodate.exit_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %68 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_this_page, align 4
  %tobool110.not = icmp eq ptr %69, null
  br i1 %tobool110.not, label %do.end111, label %set_buffer_uptodate.exit.do.body108_crit_edge

set_buffer_uptodate.exit.do.body108_crit_edge:    ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body108

do.end111:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %b_this_page.le = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %70 = ptrtoint ptr %b_this_page.le to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call107, ptr %b_this_page.le, align 4
  tail call fastcc void @attach_page_private(ptr noundef %call65, ptr noundef %call107)
  br label %do.body114

do.body114:                                       ; preds = %do.end111, %PagePrivate.exit.do.body114_crit_edge
  %71 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %call65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i585 = icmp eq i32 %72, -1
  br i1 %cmp.i.not.i585, label %if.then.i586, label %PagePrivate.exit589, !prof !338

if.then.i586:                                     ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call65, ptr noundef nonnull @.str.83) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !351
  unreachable

PagePrivate.exit589:                              ; preds = %do.body114
  %73 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %call65, align 4
  %75 = and i32 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool116.not = icmp eq i32 %75, 0
  br i1 %tobool116.not, label %do.body126, label %do.end134, !prof !338

do.body126:                                       ; preds = %PagePrivate.exit589
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #9, !srcloc !352
  unreachable

do.end134:                                        ; preds = %PagePrivate.exit589
  %private = getelementptr inbounds %struct.page, ptr %call65, i32 0, i32 1, i32 0, i32 3
  %76 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %private, align 4
  %78 = inttoptr i32 %77 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool137.not = icmp eq i32 %77, 0
  br i1 %tobool137.not, label %do.body147, label %do.end155, !prof !338

do.body147:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 510, 0\0A.popsection", ""() #9, !srcloc !353
  unreachable

do.end155:                                        ; preds = %do.end134
  %call156 = tail call ptr @page_address(ptr noundef %call65) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call156 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %79 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mft_record_size, align 4
  %add = add i32 %sub.ptr.sub, %80
  %conv186 = zext i32 %mft_no to i64
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 12
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 13
  %sh_prom249 = zext i8 %8 to i64
  br label %do.body158

do.body158:                                       ; preds = %do.cond341.do.body158_crit_edge, %do.end155
  %bh.1 = phi ptr [ %78, %do.end155 ], [ %119, %do.cond341.do.body158_crit_edge ]
  %rl.0 = phi ptr [ null, %do.end155 ], [ %rl.4, %do.cond341.do.body158_crit_edge ]
  %block_start.0 = phi i32 [ 0, %do.end155 ], [ %add159, %do.cond341.do.body158_crit_edge ]
  %nr_bhs.0 = phi i32 [ 0, %do.end155 ], [ %nr_bhs.1, %do.cond341.do.body158_crit_edge ]
  %err.0 = phi i32 [ 0, %do.end155 ], [ %err.3, %do.cond341.do.body158_crit_edge ]
  %add159 = add i32 %block_start.0, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %sub.ptr.sub)
  %cmp160.not = icmp ugt i32 %add159, %sub.ptr.sub
  br i1 %cmp160.not, label %if.end163, label %do.body158.do.cond341_crit_edge

do.body158.do.cond341_crit_edge:                  ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond341

if.end163:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0, i32 %add)
  %cmp164.not = icmp ult i32 %block_start.0, %add
  br i1 %cmp164.not, label %if.end173, label %if.end163.do.end345_crit_edge, !prof !335

if.end163.do.end345_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end345

if.end173:                                        ; preds = %if.end163
  %81 = ptrtoint ptr %bh.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %bh.1, align 4
  %83 = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool175.not = icmp eq i32 %83, 0
  br i1 %tobool175.not, label %if.then184, label %if.end173.do.body255_crit_edge, !prof !338

if.end173.do.body255_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body255

if.then184:                                       ; preds = %if.end173
  %84 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vol, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 26
  %86 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 6
  %88 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %b_bdev, align 8
  %89 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %mft_record_size_bits, align 4
  %sh_prom = zext i8 %90 to i64
  %shl189 = shl i64 %conv186, %sh_prom
  %sub190 = sub i32 %block_start.0, %sub.ptr.sub
  %conv191 = zext i32 %sub190 to i64
  %add192 = add i64 %shl189, %conv191
  %91 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cluster_size_mask, align 4
  %93 = trunc i64 %add192 to i32
  %conv195 = and i32 %92, %93
  %94 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom197 = zext i8 %95 to i64
  %shr198 = ashr i64 %add192, %sh_prom197
  %tobool199.not = icmp eq ptr %rl.0, null
  br i1 %tobool199.not, label %if.then200, label %if.then184.while.cond.preheader_crit_edge

if.then184.while.cond.preheader_crit_edge:        ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then200.while.cond.preheader_crit_edge, %if.then184.while.cond.preheader_crit_edge
  %rl.2.ph = phi ptr [ %101, %if.then200.while.cond.preheader_crit_edge ], [ %rl.0, %if.then184.while.cond.preheader_crit_edge ]
  br label %while.cond

if.then200:                                       ; preds = %if.then184
  %96 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mftmirr_ino, align 8
  %lock = getelementptr i8, ptr %97, i32 -428
  tail call void @down_read(ptr noundef %lock) #9
  %98 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mftmirr_ino, align 8
  %runlist205 = getelementptr i8, ptr %99, i32 -432
  %100 = ptrtoint ptr %runlist205 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %runlist205, align 8
  %tobool208.not = icmp eq ptr %101, null
  br i1 %tobool208.not, label %do.body218, label %if.then200.while.cond.preheader_crit_edge, !prof !338

if.then200.while.cond.preheader_crit_edge:        ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

do.body218:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 543, 0\0A.popsection", ""() #9, !srcloc !354
  unreachable

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %rl.2 = phi ptr [ %arrayidx, %land.rhs.while.cond_crit_edge ], [ %rl.2.ph, %while.cond.preheader ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 2
  %102 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %103)
  %tobool228.not = icmp eq i64 %103, 0
  br i1 %tobool228.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx, align 8
  %cmp230.not = icmp sgt i64 %105, %shr198
  br i1 %cmp230.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call232 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.2, i64 noundef %shr198) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call232)
  %cmp233 = icmp sgt i64 %call232, -1
  br i1 %cmp233, label %if.then241, label %if.else, !prof !335

if.then241:                                       ; preds = %while.end
  %106 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom244 = zext i8 %107 to i64
  %shl245 = shl i64 %call232, %sh_prom244
  %conv246 = zext i32 %conv195 to i64
  %add247 = add i64 %shl245, %conv246
  %shr250 = ashr i64 %add247, %sh_prom249
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 3
  %108 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %shr250, ptr %b_blocknr, align 8
  %109 = ptrtoint ptr %bh.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %bh.1, align 4
  %111 = and i32 %110, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i592 = icmp eq i32 %111, 0
  br i1 %tobool.not.i592, label %if.then.i593, label %if.then241.do.body255_crit_edge

if.then241.do.body255_crit_edge:                  ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body255

if.then.i593:                                     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh.1) #9
  br label %do.body255

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %b_blocknr251 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 3
  %112 = ptrtoint ptr %b_blocknr251 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 -1, ptr %b_blocknr251, align 8
  %113 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_sync_mft_mirror, ptr noundef %114, ptr noundef nonnull @.str.11, i32 noundef %mft_no, i64 noundef %call232) #9
  br label %do.body255

do.body255:                                       ; preds = %if.else, %if.then.i593, %if.then241.do.body255_crit_edge, %if.end173.do.body255_crit_edge
  %rl.3 = phi ptr [ %rl.0, %if.end173.do.body255_crit_edge ], [ %rl.2, %if.else ], [ %rl.2, %if.then241.do.body255_crit_edge ], [ %rl.2, %if.then.i593 ]
  %err.2 = phi i32 [ %err.0, %if.end173.do.body255_crit_edge ], [ -5, %if.else ], [ %err.0, %if.then241.do.body255_crit_edge ], [ %err.0, %if.then.i593 ]
  %115 = ptrtoint ptr %bh.1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %bh.1, align 4
  %and1.i.i594 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i594)
  %tobool257.not = icmp eq i32 %and1.i.i594, 0
  br i1 %tobool257.not, label %do.body267, label %do.body276, !prof !338

do.body267:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #9, !srcloc !355
  unreachable

do.body276:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.0)
  %tobool277.not = icmp eq i32 %nr_bhs.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0, i32 %sub.ptr.sub)
  %cmp279 = icmp ne i32 %block_start.0, %sub.ptr.sub
  %spec.select = select i1 %tobool277.not, i1 %cmp279, i1 false
  br i1 %spec.select, label %do.body289, label %do.body298, !prof !338

do.body289:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 568, 0\0A.popsection", ""() #9, !srcloc !356
  unreachable

do.body298:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_bhs.0, i32 %div)
  %cmp299.not = icmp slt i32 %nr_bhs.0, %div
  br i1 %cmp299.not, label %do.end316, label %do.body308, !prof !335

do.body308:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #9, !srcloc !357
  unreachable

do.end316:                                        ; preds = %do.body298
  %inc = add nsw i32 %nr_bhs.0, 1
  %arrayidx317 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %nr_bhs.0
  %117 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %bh.1, ptr %arrayidx317, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div)
  %cmp319.not = icmp sge i32 %inc, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add159)
  %cmp322 = icmp ne i32 %add, %add159
  %spec.select579 = select i1 %cmp319.not, i1 %cmp322, i1 false
  br i1 %spec.select579, label %do.body332, label %do.end316.do.cond341_crit_edge, !prof !338

do.end316.do.cond341_crit_edge:                   ; preds = %do.end316
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond341

do.body332:                                       ; preds = %do.end316
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 571, 0\0A.popsection", ""() #9, !srcloc !358
  unreachable

do.cond341:                                       ; preds = %do.end316.do.cond341_crit_edge, %do.body158.do.cond341_crit_edge
  %rl.4 = phi ptr [ %rl.0, %do.body158.do.cond341_crit_edge ], [ %rl.3, %do.end316.do.cond341_crit_edge ]
  %nr_bhs.1 = phi i32 [ %nr_bhs.0, %do.body158.do.cond341_crit_edge ], [ %inc, %do.end316.do.cond341_crit_edge ]
  %err.3 = phi i32 [ %err.0, %do.body158.do.cond341_crit_edge ], [ %err.2, %do.end316.do.cond341_crit_edge ]
  %b_this_page342 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %118 = ptrtoint ptr %b_this_page342 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %b_this_page342, align 4
  %cmp343.not = icmp eq ptr %119, %78
  br i1 %cmp343.not, label %do.cond341.do.end345_crit_edge, label %do.cond341.do.body158_crit_edge

do.cond341.do.body158_crit_edge:                  ; preds = %do.cond341
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body158

do.cond341.do.end345_crit_edge:                   ; preds = %do.cond341
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end345

do.end345:                                        ; preds = %do.cond341.do.end345_crit_edge, %if.end163.do.end345_crit_edge
  %rl.5 = phi ptr [ %rl.4, %do.cond341.do.end345_crit_edge ], [ %rl.0, %if.end163.do.end345_crit_edge ]
  %nr_bhs.2 = phi i32 [ %nr_bhs.1, %do.cond341.do.end345_crit_edge ], [ %nr_bhs.0, %if.end163.do.end345_crit_edge ]
  %err.4 = phi i32 [ %err.3, %do.cond341.do.end345_crit_edge ], [ %err.0, %if.end163.do.end345_crit_edge ]
  %tobool346.not = icmp eq ptr %rl.5, null
  br i1 %tobool346.not, label %do.end345.if.end358_crit_edge, label %if.then353, !prof !335

do.end345.if.end358_crit_edge:                    ; preds = %do.end345
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end358

if.then353:                                       ; preds = %do.end345
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %mftmirr_ino to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mftmirr_ino, align 8
  %lock357 = getelementptr i8, ptr %121, i32 -428
  tail call void @up_read(ptr noundef %lock357) #9
  br label %if.end358

if.end358:                                        ; preds = %if.then353, %do.end345.if.end358_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool359.not = icmp eq i32 %err.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.2)
  %cmp369638 = icmp sgt i32 %nr_bhs.2, 0
  br i1 %tobool359.not, label %for.cond.preheader, label %for.cond427.preheader, !prof !335

for.cond427.preheader:                            ; preds = %if.end358
  br i1 %cmp369638, label %for.cond427.preheader.for.body430_crit_edge, label %for.cond427.preheader.if.end435_crit_edge

for.cond427.preheader.if.end435_crit_edge:        ; preds = %for.cond427.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end435

for.cond427.preheader.for.body430_crit_edge:      ; preds = %for.cond427.preheader
  br label %for.body430

for.cond.preheader:                               ; preds = %if.end358
  br i1 %cmp369638, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end435_crit_edge

for.cond.preheader.if.end435_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end435

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond405.preheader:                            ; preds = %do.end402
  br i1 %cmp369638, label %for.cond405.preheader.for.body408_crit_edge, label %for.cond405.preheader.if.end435_crit_edge

for.cond405.preheader.if.end435_crit_edge:        ; preds = %for.cond405.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end435

for.cond405.preheader.for.body408_crit_edge:      ; preds = %for.cond405.preheader
  br label %for.body408

for.body:                                         ; preds = %do.end402.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i_bhs.0639 = phi i32 [ %inc404, %do.end402.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx371 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i_bhs.0639
  %122 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx371, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %123, i32 noundef 4) #9
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %123, align 4
  %and.i.i.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i626 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i626, label %trylock_buffer.exit, label %for.body.do.body375_crit_edge

for.body.do.body375_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body375

trylock_buffer.exit:                              ; preds = %for.body
  tail call void @llvm.prefetch.p0(ptr %123, i32 1, i32 3, i32 1) #9
  %126 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %123, ptr %123, i32 4, ptr elementtype(i32) %123) #9, !srcloc !345
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %126, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  %127 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool373.not.not = icmp eq i32 %127, 0
  br i1 %tobool373.not.not, label %do.body382, label %trylock_buffer.exit.do.body375_crit_edge

trylock_buffer.exit.do.body375_crit_edge:         ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body375

do.body375:                                       ; preds = %trylock_buffer.exit.do.body375_crit_edge, %for.body.do.body375_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #9, !srcloc !359
  unreachable

do.body382:                                       ; preds = %trylock_buffer.exit
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %123, align 4
  %and1.i.i595 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i595)
  %tobool384.not = icmp eq i32 %and1.i.i595, 0
  br i1 %tobool384.not, label %do.body394, label %do.end402, !prof !338

do.body394:                                       ; preds = %do.body382
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #9, !srcloc !360
  unreachable

do.end402:                                        ; preds = %do.body382
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %123) #9
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 11
  %call.i.i.i628 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !334
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 7
  %131 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @end_buffer_write_sync, ptr %b_end_io, align 4
  %call403 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %123) #9
  %inc404 = add nuw nsw i32 %i_bhs.0639, 1
  %exitcond644.not = icmp eq i32 %inc404, %nr_bhs.2
  br i1 %exitcond644.not, label %for.cond405.preheader, label %do.end402.for.body_crit_edge

do.end402.for.body_crit_edge:                     ; preds = %do.end402
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body408:                                      ; preds = %if.end422.for.body408_crit_edge, %for.cond405.preheader.for.body408_crit_edge
  %err.5642 = phi i32 [ %err.6, %if.end422.for.body408_crit_edge ], [ 0, %for.cond405.preheader.for.body408_crit_edge ]
  %i_bhs.1641 = phi i32 [ %inc424, %if.end422.for.body408_crit_edge ], [ 0, %for.cond405.preheader.for.body408_crit_edge ]
  %arrayidx410 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i_bhs.1641
  %132 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx410, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.85, i32 noundef 354) #9
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %133, align 4
  %136 = and i32 %135, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i629 = icmp eq i32 %136, 0
  br i1 %tobool.not.i629, label %for.body408.wait_on_buffer.exit_crit_edge, label %if.then.i630

for.body408.wait_on_buffer.exit_crit_edge:        ; preds = %for.body408
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_on_buffer.exit

if.then.i630:                                     ; preds = %for.body408
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wait_on_buffer(ptr noundef %133) #9
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i630, %for.body408.wait_on_buffer.exit_crit_edge
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %133, align 4
  %and1.i.i596 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i596)
  %tobool412.not = icmp eq i32 %and1.i.i596, 0
  br i1 %tobool412.not, label %if.then421, label %wait_on_buffer.exit.if.end422_crit_edge, !prof !338

wait_on_buffer.exit.if.end422_crit_edge:          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end422

if.then421:                                       ; preds = %wait_on_buffer.exit
  %139 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %133, align 4
  %and1.i.i597 = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i597)
  %tobool.not.i598 = icmp eq i32 %and1.i.i597, 0
  br i1 %tobool.not.i598, label %if.then.i599, label %if.then421.if.end422_crit_edge

if.then421.if.end422_crit_edge:                   ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end422

if.then.i599:                                     ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %133) #9
  br label %if.end422

if.end422:                                        ; preds = %if.then.i599, %if.then421.if.end422_crit_edge, %wait_on_buffer.exit.if.end422_crit_edge
  %err.6 = phi i32 [ %err.5642, %wait_on_buffer.exit.if.end422_crit_edge ], [ -5, %if.then421.if.end422_crit_edge ], [ -5, %if.then.i599 ]
  %inc424 = add nuw nsw i32 %i_bhs.1641, 1
  %exitcond645.not = icmp eq i32 %inc424, %nr_bhs.2
  br i1 %exitcond645.not, label %if.end422.if.end435_crit_edge, label %if.end422.for.body408_crit_edge

if.end422.for.body408_crit_edge:                  ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body408

if.end422.if.end435_crit_edge:                    ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end435

for.body430:                                      ; preds = %for.body430.for.body430_crit_edge, %for.cond427.preheader.for.body430_crit_edge
  %i_bhs.2637 = phi i32 [ %inc433, %for.body430.for.body430_crit_edge ], [ 0, %for.cond427.preheader.for.body430_crit_edge ]
  %arrayidx431 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i_bhs.2637
  %141 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx431, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %142) #9
  %inc433 = add nuw nsw i32 %i_bhs.2637, 1
  %exitcond.not = icmp eq i32 %inc433, %nr_bhs.2
  br i1 %exitcond.not, label %for.body430.if.end435_crit_edge, label %for.body430.for.body430_crit_edge

for.body430.for.body430_crit_edge:                ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body430

for.body430.if.end435_crit_edge:                  ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end435

if.end435:                                        ; preds = %for.body430.if.end435_crit_edge, %if.end422.if.end435_crit_edge, %for.cond405.preheader.if.end435_crit_edge, %for.cond.preheader.if.end435_crit_edge, %for.cond427.preheader.if.end435_crit_edge
  %err.7 = phi i32 [ 0, %for.cond405.preheader.if.end435_crit_edge ], [ %err.4, %for.cond427.preheader.if.end435_crit_edge ], [ 0, %for.cond.preheader.if.end435_crit_edge ], [ %err.6, %if.end422.if.end435_crit_edge ], [ %err.4, %for.body430.if.end435_crit_edge ]
  tail call void @post_write_mst_fixup(ptr noundef %add.ptr) #9
  tail call void @flush_dcache_page(ptr noundef %call65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !361
  %143 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !335

if.then.i.i.i:                                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call65, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end435
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call65) #9
  tail call void @unlock_page(ptr noundef %call65) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.7)
  %tobool436.not = icmp eq i32 %err.7, 0
  br i1 %tobool436.not, label %if.then445, label %if.else446, !prof !335

if.then445:                                       ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 615, ptr noundef nonnull @__func__.ntfs_sync_mft_mirror, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.else446:                                       ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_sync_mft_mirror, ptr noundef %146, ptr noundef nonnull @.str.13, i32 noundef %mft_no) #9
  br label %err_out

err_out:                                          ; preds = %if.else446, %if.then67, %ntfs_sync_mft_mirror_umount.exit
  %err.8 = phi i32 [ -95, %ntfs_sync_mft_mirror_umount.exit ], [ %19, %if.then67 ], [ %err.7, %if.else446 ]
  %147 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %vol, align 8
  %sub449 = sub i32 0, %err.8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_sync_mft_mirror, ptr noundef %148, ptr noundef nonnull @.str.14, i32 noundef %sub449) #9
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then445, %do.end26
  %retval.0 = phi i32 [ -22, %do.end26 ], [ %err.8, %err_out ], [ 0, %if.then445 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_map_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %index, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.77, i32 noundef 44) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %shr.i.i12 = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !335

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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !338

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !335

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
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.78) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !362
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !335

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !335

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !335

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge, label %do.end.i

folio_flags.exit.i.folio_test_uptodate.exit_crit_edge: ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_page_buffers(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !335

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !338

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.84) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !363
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !334
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #9
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !364

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #9
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.67, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !335

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_write_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @post_write_mst_fixup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.77, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.151)
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !335

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
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !338

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.86) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !365
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !367
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !364

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @write_mft_record_nolock(ptr noundef %ni, ptr noundef %m, i32 noundef %sync) local_unnamed_addr #0 align 64 {
entry:
  %bhs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vol1 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %0 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol1, align 8
  %page2 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %2 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits, align 4
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mft_record_size, align 4
  %div = udiv i32 %11, %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs) #9
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %12 = call ptr @memset(ptr %bhs, i32 255, i32 32)
  %13 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mft_no, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 673, ptr noundef nonnull @__func__.write_mft_record_nolock, ptr noundef nonnull @.str.9, i32 noundef %14) #9
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.body12, label %do.body6, !prof !335

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 674, 0\0A.popsection", ""() #9, !srcloc !369
  unreachable

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %tobool13.not = icmp ugt i32 %7, %11
  br i1 %tobool13.not, label %do.body23, label %do.body32, !prof !338

do.body23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 675, 0\0A.popsection", ""() #9, !srcloc !370
  unreachable

do.body32:                                        ; preds = %do.body12
  %18 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !335

if.then.i.i:                                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i = icmp eq i32 %24, -1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %18, align 4
  %and.i16.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !338

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !335

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %26, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %27, %if.end.i20.i ]
  %28 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.78) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !371
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !335

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %26, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %3 to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %29, %if.end.i27.i ]
  %30 = inttoptr i32 %retval.0.i28.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and1.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool34.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool34.not, label %do.body44, label %do.end52, !prof !338

do.body44:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 676, 0\0A.popsection", ""() #9, !srcloc !372
  unreachable

do.end52:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div)
  %cmp = icmp ugt i32 %div, 8
  br i1 %cmp, label %err_out.thread, label %if.end83, !prof !338

err_out.thread:                                   ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 677, i32 noundef 9, ptr noundef null) #9
  br label %if.else469

if.end83:                                         ; preds = %do.end52
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool85.not = icmp eq i32 %call.i, 0
  br i1 %tobool85.not, label %if.end83.done_crit_edge, label %do.body88

if.end83.done_crit_edge:                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body88:                                        ; preds = %if.end83
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.not.i598 = icmp eq i32 %34, -1
  br i1 %cmp.i.not.i598, label %if.then.i599, label %PagePrivate.exit, !prof !338

if.then.i599:                                     ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.83) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !351
  unreachable

PagePrivate.exit:                                 ; preds = %do.body88
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %3, align 4
  %37 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool90.not = icmp eq i32 %37, 0
  br i1 %tobool90.not, label %do.body100, label %do.end108, !prof !338

do.body100:                                       ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 689, 0\0A.popsection", ""() #9, !srcloc !373
  unreachable

do.end108:                                        ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %private, align 4
  %40 = inttoptr i32 %39 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool111.not = icmp eq i32 %39, 0
  br i1 %tobool111.not, label %do.body121, label %do.end129, !prof !338

do.body121:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 690, 0\0A.popsection", ""() #9, !srcloc !374
  unreachable

do.end129:                                        ; preds = %do.end108
  %page_ofs = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 14
  %41 = ptrtoint ptr %page_ofs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_ofs, align 4
  %43 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mft_record_size, align 4
  %add = add i32 %44, %42
  %mft_record_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 16
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 12
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 34
  %sh_prom239 = zext i8 %9 to i64
  br label %do.body131

do.body131:                                       ; preds = %do.cond332.do.body131_crit_edge, %do.end129
  %bh.0 = phi ptr [ %40, %do.end129 ], [ %90, %do.cond332.do.body131_crit_edge ]
  %rl.0 = phi ptr [ null, %do.end129 ], [ %rl.4, %do.cond332.do.body131_crit_edge ]
  %block_start.0 = phi i32 [ 0, %do.end129 ], [ %add132, %do.cond332.do.body131_crit_edge ]
  %nr_bhs.0 = phi i32 [ 0, %do.end129 ], [ %nr_bhs.1, %do.cond332.do.body131_crit_edge ]
  %err.0 = phi i32 [ 0, %do.end129 ], [ %err.3, %do.cond332.do.body131_crit_edge ]
  %add132 = add i32 %block_start.0, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add132, i32 %42)
  %cmp133.not = icmp ugt i32 %add132, %42
  br i1 %cmp133.not, label %if.end135, label %do.body131.do.cond332_crit_edge

do.body131.do.cond332_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond332

if.end135:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0, i32 %add)
  %cmp136.not = icmp ult i32 %block_start.0, %add
  br i1 %cmp136.not, label %if.end144, label %if.end135.do.end335_crit_edge, !prof !335

if.end135.do.end335_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end335

if.end144:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0, i32 %42)
  %cmp145 = icmp eq i32 %block_start.0, %42
  br i1 %cmp145, label %if.then146, label %if.end144.if.end169_crit_edge

if.end144.if.end169_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.then146:                                       ; preds = %if.end144
  %45 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %bh.0, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool148.not = icmp eq i32 %47, 0
  br i1 %tobool148.not, label %do.body150, label %if.then146.if.end169_crit_edge

if.then146.if.end169_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

do.body150:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.0)
  %tobool151.not = icmp eq i32 %nr_bhs.0, 0
  br i1 %tobool151.not, label %do.body150.do.end335_crit_edge, label %do.body159, !prof !335

do.body150.do.end335_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end335

do.body159:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 711, 0\0A.popsection", ""() #9, !srcloc !375
  unreachable

if.end169:                                        ; preds = %if.then146.if.end169_crit_edge, %if.end144.if.end169_crit_edge
  %48 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %bh.0, align 4
  %50 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool171.not = icmp eq i32 %50, 0
  br i1 %tobool171.not, label %if.then180, label %if.end169.do.body246_crit_edge, !prof !338

if.end169.do.body246_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body246

if.then180:                                       ; preds = %if.end169
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 26
  %53 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %55 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %b_bdev, align 8
  %56 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mft_no, align 4
  %conv = zext i32 %57 to i64
  %58 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mft_record_size_bits, align 4
  %sh_prom = zext i8 %59 to i64
  %shl = shl i64 %conv, %sh_prom
  %sub = sub i32 %block_start.0, %42
  %conv184 = zext i32 %sub to i64
  %add185 = add i64 %shl, %conv184
  %60 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cluster_size_mask, align 4
  %62 = trunc i64 %add185 to i32
  %conv187 = and i32 %61, %62
  %63 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom189 = zext i8 %64 to i64
  %shr = ashr i64 %add185, %sh_prom189
  %tobool190.not = icmp eq ptr %rl.0, null
  br i1 %tobool190.not, label %if.then191, label %if.then180.while.cond.preheader_crit_edge

if.then180.while.cond.preheader_crit_edge:        ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then191.while.cond.preheader_crit_edge, %if.then180.while.cond.preheader_crit_edge
  %rl.2.ph = phi ptr [ %70, %if.then191.while.cond.preheader_crit_edge ], [ %rl.0, %if.then180.while.cond.preheader_crit_edge ]
  br label %while.cond

if.then191:                                       ; preds = %if.then180
  %65 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mft_ino, align 8
  %lock = getelementptr i8, ptr %66, i32 -428
  tail call void @down_read(ptr noundef %lock) #9
  %67 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mft_ino, align 8
  %runlist195 = getelementptr i8, ptr %68, i32 -432
  %69 = ptrtoint ptr %runlist195 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %runlist195, align 8
  %tobool198.not = icmp eq ptr %70, null
  br i1 %tobool198.not, label %do.body208, label %if.then191.while.cond.preheader_crit_edge, !prof !338

if.then191.while.cond.preheader_crit_edge:        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

do.body208:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 731, 0\0A.popsection", ""() #9, !srcloc !376
  unreachable

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %rl.2 = phi ptr [ %arrayidx, %land.rhs.while.cond_crit_edge ], [ %rl.2.ph, %while.cond.preheader ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 2
  %71 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %tobool218.not = icmp eq i64 %72, 0
  br i1 %tobool218.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx, align 8
  %cmp220.not = icmp sgt i64 %74, %shr
  br i1 %cmp220.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call222 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.2, i64 noundef %shr) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call222)
  %cmp223 = icmp sgt i64 %call222, -1
  br i1 %cmp223, label %if.then231, label %if.else, !prof !335

if.then231:                                       ; preds = %while.end
  %75 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom234 = zext i8 %76 to i64
  %shl235 = shl i64 %call222, %sh_prom234
  %conv236 = zext i32 %conv187 to i64
  %add237 = add i64 %shl235, %conv236
  %shr240 = ashr i64 %add237, %sh_prom239
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %77 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %shr240, ptr %b_blocknr, align 8
  %78 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %bh.0, align 4
  %80 = and i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i, label %if.then.i605, label %if.then231.do.body246_crit_edge

if.then231.do.body246_crit_edge:                  ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body246

if.then.i605:                                     ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh.0) #9
  br label %do.body246

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %b_blocknr241 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %81 = ptrtoint ptr %b_blocknr241 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 -1, ptr %b_blocknr241, align 8
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %84 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.write_mft_record_nolock, ptr noundef %83, ptr noundef nonnull @.str.15, i32 noundef %85, i64 noundef %call222) #9
  br label %do.body246

do.body246:                                       ; preds = %if.else, %if.then.i605, %if.then231.do.body246_crit_edge, %if.end169.do.body246_crit_edge
  %rl.3 = phi ptr [ %rl.0, %if.end169.do.body246_crit_edge ], [ %rl.2, %if.else ], [ %rl.2, %if.then231.do.body246_crit_edge ], [ %rl.2, %if.then.i605 ]
  %err.2 = phi i32 [ %err.0, %if.end169.do.body246_crit_edge ], [ -5, %if.else ], [ %err.0, %if.then231.do.body246_crit_edge ], [ %err.0, %if.then.i605 ]
  %86 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i606 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i606)
  %tobool248.not = icmp eq i32 %and1.i.i606, 0
  br i1 %tobool248.not, label %do.body258, label %do.body267, !prof !338

do.body258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 754, 0\0A.popsection", ""() #9, !srcloc !377
  unreachable

do.body267:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.0)
  %tobool268.not = icmp eq i32 %nr_bhs.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0, i32 %42)
  %cmp270 = icmp ne i32 %block_start.0, %42
  %spec.select = select i1 %tobool268.not, i1 %cmp270, i1 false
  br i1 %spec.select, label %do.body280, label %do.body289, !prof !338

do.body280:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #9, !srcloc !378
  unreachable

do.body289:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_bhs.0, i32 %div)
  %cmp290.not = icmp slt i32 %nr_bhs.0, %div
  br i1 %cmp290.not, label %do.end307, label %do.body299, !prof !335

do.body299:                                       ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 756, 0\0A.popsection", ""() #9, !srcloc !379
  unreachable

do.end307:                                        ; preds = %do.body289
  %inc = add nsw i32 %nr_bhs.0, 1
  %arrayidx308 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %nr_bhs.0
  %88 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %bh.0, ptr %arrayidx308, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div)
  %cmp310.not = icmp sge i32 %inc, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add132)
  %cmp313 = icmp ne i32 %add, %add132
  %spec.select597 = select i1 %cmp310.not, i1 %cmp313, i1 false
  br i1 %spec.select597, label %do.body323, label %do.end307.do.cond332_crit_edge, !prof !338

do.end307.do.cond332_crit_edge:                   ; preds = %do.end307
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond332

do.body323:                                       ; preds = %do.end307
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 758, 0\0A.popsection", ""() #9, !srcloc !380
  unreachable

do.cond332:                                       ; preds = %do.end307.do.cond332_crit_edge, %do.body131.do.cond332_crit_edge
  %rl.4 = phi ptr [ %rl.0, %do.body131.do.cond332_crit_edge ], [ %rl.3, %do.end307.do.cond332_crit_edge ]
  %nr_bhs.1 = phi i32 [ %nr_bhs.0, %do.body131.do.cond332_crit_edge ], [ %inc, %do.end307.do.cond332_crit_edge ]
  %err.3 = phi i32 [ %err.0, %do.body131.do.cond332_crit_edge ], [ %err.2, %do.end307.do.cond332_crit_edge ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %89 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_this_page, align 4
  %cmp333.not = icmp eq ptr %90, %40
  br i1 %cmp333.not, label %do.cond332.do.end335_crit_edge, label %do.cond332.do.body131_crit_edge

do.cond332.do.body131_crit_edge:                  ; preds = %do.cond332
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body131

do.cond332.do.end335_crit_edge:                   ; preds = %do.cond332
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end335

do.end335:                                        ; preds = %do.cond332.do.end335_crit_edge, %do.body150.do.end335_crit_edge, %if.end135.do.end335_crit_edge
  %rl.5 = phi ptr [ %rl.0, %do.body150.do.end335_crit_edge ], [ %rl.0, %if.end135.do.end335_crit_edge ], [ %rl.4, %do.cond332.do.end335_crit_edge ]
  %nr_bhs.2 = phi i32 [ 0, %do.body150.do.end335_crit_edge ], [ %nr_bhs.0, %if.end135.do.end335_crit_edge ], [ %nr_bhs.1, %do.cond332.do.end335_crit_edge ]
  %err.4 = phi i32 [ %err.0, %do.body150.do.end335_crit_edge ], [ %err.0, %if.end135.do.end335_crit_edge ], [ %err.3, %do.cond332.do.end335_crit_edge ]
  %tobool336.not = icmp eq ptr %rl.5, null
  br i1 %tobool336.not, label %do.end335.if.end348_crit_edge, label %if.then343, !prof !335

do.end335.if.end348_crit_edge:                    ; preds = %do.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end348

if.then343:                                       ; preds = %do.end335
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mft_ino, align 8
  %lock347 = getelementptr i8, ptr %92, i32 -428
  tail call void @up_read(ptr noundef %lock347) #9
  br label %if.end348

if.end348:                                        ; preds = %if.then343, %do.end335.if.end348_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.2)
  %tobool349.not = icmp eq i32 %nr_bhs.2, 0
  br i1 %tobool349.not, label %if.end348.done_crit_edge, label %if.end351

if.end348.done_crit_edge:                         ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end351:                                        ; preds = %if.end348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool352.not = icmp eq i32 %err.4, 0
  br i1 %tobool352.not, label %if.end360, label %if.end351.cleanup_out_crit_edge, !prof !335

if.end351.cleanup_out_crit_edge:                  ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_out

if.end360:                                        ; preds = %if.end351
  %93 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mft_record_size, align 4
  %call362 = tail call i32 @pre_write_mst_fixup(ptr noundef %m, i32 noundef %94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.end366, label %if.then364

if.then364:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.write_mft_record_nolock, ptr noundef %96, ptr noundef nonnull @.str.16) #9
  br label %cleanup_out

if.end366:                                        ; preds = %if.end360
  %97 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %page2, align 8
  tail call void @flush_dcache_page(ptr noundef %98) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.2)
  %cmp367648 = icmp sgt i32 %nr_bhs.2, 0
  br i1 %cmp367648, label %if.end366.for.body_crit_edge, label %if.end366.for.end_crit_edge

if.end366.for.end_crit_edge:                      ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end366.for.body_crit_edge:                     ; preds = %if.end366
  br label %for.body

for.body:                                         ; preds = %do.end400.for.body_crit_edge, %if.end366.for.body_crit_edge
  %i_bhs.0649 = phi i32 [ %inc402, %do.end400.for.body_crit_edge ], [ 0, %if.end366.for.body_crit_edge ]
  %arrayidx369 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i_bhs.0649
  %99 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx369, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %100, i32 noundef 4) #9
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %and.i.i.i = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %for.body.do.body373_crit_edge

for.body.do.body373_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body373

trylock_buffer.exit:                              ; preds = %for.body
  tail call void @llvm.prefetch.p0(ptr %100, i32 1, i32 3, i32 1) #9
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 4, ptr elementtype(i32) %100) #9, !srcloc !345
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %103, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  %104 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool371.not.not = icmp eq i32 %104, 0
  br i1 %tobool371.not.not, label %do.body380, label %trylock_buffer.exit.do.body373_crit_edge

trylock_buffer.exit.do.body373_crit_edge:         ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body373

do.body373:                                       ; preds = %trylock_buffer.exit.do.body373_crit_edge, %for.body.do.body373_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 778, 0\0A.popsection", ""() #9, !srcloc !381
  unreachable

do.body380:                                       ; preds = %trylock_buffer.exit
  %105 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %100, align 4
  %and1.i.i607 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i607)
  %tobool382.not = icmp eq i32 %and1.i.i607, 0
  br i1 %tobool382.not, label %do.body392, label %do.end400, !prof !338

do.body392:                                       ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 779, 0\0A.popsection", ""() #9, !srcloc !382
  unreachable

do.end400:                                        ; preds = %do.body380
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %100) #9
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %100, i32 0, i32 11
  %call.i.i.i617 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !334
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %100, i32 0, i32 7
  %108 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @end_buffer_write_sync, ptr %b_end_io, align 4
  %call401 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %100) #9
  %inc402 = add nuw nsw i32 %i_bhs.0649, 1
  %exitcond671.not = icmp eq i32 %inc402, %nr_bhs.2
  br i1 %exitcond671.not, label %do.end400.for.end_crit_edge, label %do.end400.for.body_crit_edge

do.end400.for.body_crit_edge:                     ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end400.for.end_crit_edge:                      ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %do.end400.for.end_crit_edge, %if.end366.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool403.not = icmp eq i32 %sync, 0
  br i1 %tobool403.not, label %land.lhs.true, label %for.end.if.end410_crit_edge

for.end.if.end410_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410

land.lhs.true:                                    ; preds = %for.end
  %109 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mft_no, align 4
  %mftmirr_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 38
  %111 = ptrtoint ptr %mftmirr_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mftmirr_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %112)
  %cmp405 = icmp ult i32 %110, %112
  br i1 %cmp405, label %if.then407, label %land.lhs.true.if.end410_crit_edge

land.lhs.true.if.end410_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410

if.then407:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call409 = tail call i32 @ntfs_sync_mft_mirror(ptr noundef %1, i32 noundef %110, ptr noundef %m, i32 undef)
  br label %if.end410

if.end410:                                        ; preds = %if.then407, %land.lhs.true.if.end410_crit_edge, %for.end.if.end410_crit_edge
  br i1 %cmp367648, label %if.end410.for.body414_crit_edge, label %if.end410.for.end435_crit_edge

if.end410.for.end435_crit_edge:                   ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end435

if.end410.for.body414_crit_edge:                  ; preds = %if.end410
  br label %for.body414

for.body414:                                      ; preds = %if.end432.for.body414_crit_edge, %if.end410.for.body414_crit_edge
  %err.5652 = phi i32 [ %err.6, %if.end432.for.body414_crit_edge ], [ 0, %if.end410.for.body414_crit_edge ]
  %i_bhs.1651 = phi i32 [ %inc434, %if.end432.for.body414_crit_edge ], [ 0, %if.end410.for.body414_crit_edge ]
  %arrayidx416 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i_bhs.1651
  %113 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx416, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.85, i32 noundef 354) #9
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %114, align 4
  %117 = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i618 = icmp eq i32 %117, 0
  br i1 %tobool.not.i618, label %for.body414.wait_on_buffer.exit_crit_edge, label %if.then.i619

for.body414.wait_on_buffer.exit_crit_edge:        ; preds = %for.body414
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_on_buffer.exit

if.then.i619:                                     ; preds = %for.body414
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wait_on_buffer(ptr noundef %114) #9
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i619, %for.body414.wait_on_buffer.exit_crit_edge
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %114, align 4
  %and1.i.i608 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i608)
  %tobool418.not = icmp eq i32 %and1.i.i608, 0
  br i1 %tobool418.not, label %if.then427, label %wait_on_buffer.exit.if.end432_crit_edge, !prof !338

wait_on_buffer.exit.if.end432_crit_edge:          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end432

if.then427:                                       ; preds = %wait_on_buffer.exit
  %call428 = tail call fastcc i32 @PageUptodate(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call428)
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %if.then427.if.end432_crit_edge, label %if.then430

if.then427.if.end432_crit_edge:                   ; preds = %if.then427
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end432

if.then430:                                       ; preds = %if.then427
  %120 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %114, align 4
  %and1.i.i609 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i609)
  %tobool.not.i610 = icmp eq i32 %and1.i.i609, 0
  br i1 %tobool.not.i610, label %if.then.i611, label %if.then430.if.end432_crit_edge

if.then430.if.end432_crit_edge:                   ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end432

if.then.i611:                                     ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %114) #9
  br label %if.end432

if.end432:                                        ; preds = %if.then.i611, %if.then430.if.end432_crit_edge, %if.then427.if.end432_crit_edge, %wait_on_buffer.exit.if.end432_crit_edge
  %err.6 = phi i32 [ -5, %if.then427.if.end432_crit_edge ], [ %err.5652, %wait_on_buffer.exit.if.end432_crit_edge ], [ -5, %if.then430.if.end432_crit_edge ], [ -5, %if.then.i611 ]
  %inc434 = add nuw nsw i32 %i_bhs.1651, 1
  %exitcond672.not = icmp eq i32 %inc434, %nr_bhs.2
  br i1 %exitcond672.not, label %if.end432.for.end435_crit_edge, label %if.end432.for.body414_crit_edge

if.end432.for.body414_crit_edge:                  ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body414

if.end432.for.end435_crit_edge:                   ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end435

for.end435:                                       ; preds = %if.end432.for.end435_crit_edge, %if.end410.for.end435_crit_edge
  %err.5.lcssa = phi i32 [ 0, %if.end410.for.end435_crit_edge ], [ %err.6, %if.end432.for.end435_crit_edge ]
  br i1 %tobool403.not, label %for.end435.if.end445_crit_edge, label %land.lhs.true437

for.end435.if.end445_crit_edge:                   ; preds = %for.end435
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

land.lhs.true437:                                 ; preds = %for.end435
  %122 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mft_no, align 4
  %mftmirr_size439 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 38
  %124 = ptrtoint ptr %mftmirr_size439 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mftmirr_size439, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp440 = icmp ult i32 %123, %125
  br i1 %cmp440, label %if.then442, label %land.lhs.true437.if.end445_crit_edge

land.lhs.true437.if.end445_crit_edge:             ; preds = %land.lhs.true437
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end445

if.then442:                                       ; preds = %land.lhs.true437
  call void @__sanitizer_cov_trace_pc() #11
  %call444 = tail call i32 @ntfs_sync_mft_mirror(ptr noundef %1, i32 noundef %123, ptr noundef %m, i32 undef)
  br label %if.end445

if.end445:                                        ; preds = %if.then442, %land.lhs.true437.if.end445_crit_edge, %for.end435.if.end445_crit_edge
  tail call void @post_write_mst_fixup(ptr noundef %m) #9
  %126 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %page2, align 8
  tail call void @flush_dcache_page(ptr noundef %127) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.lcssa)
  %tobool446.not = icmp eq i32 %err.5.lcssa, 0
  br i1 %tobool446.not, label %if.end445.done_crit_edge, label %if.then453, !prof !335

if.end445.done_crit_edge:                         ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then453:                                       ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  %130 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.write_mft_record_nolock, ptr noundef %129, ptr noundef nonnull @.str.17, i32 noundef %131) #9
  br label %err_out

done:                                             ; preds = %if.end445.done_crit_edge, %if.end348.done_crit_edge, %if.end83.done_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @__func__.write_mft_record_nolock, ptr noundef nonnull @.str.12) #9
  br label %cleanup

cleanup_out:                                      ; preds = %if.then364, %if.end351.cleanup_out_crit_edge
  %err.7 = phi i32 [ %err.4, %if.end351.cleanup_out_crit_edge ], [ %call362, %if.then364 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.2)
  %cmp458646 = icmp sgt i32 %nr_bhs.2, 0
  br i1 %cmp458646, label %cleanup_out.for.body460_crit_edge, label %cleanup_out.err_out_crit_edge

cleanup_out.err_out_crit_edge:                    ; preds = %cleanup_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

cleanup_out.for.body460_crit_edge:                ; preds = %cleanup_out
  br label %for.body460

for.body460:                                      ; preds = %for.body460.for.body460_crit_edge, %cleanup_out.for.body460_crit_edge
  %i_bhs.2647 = phi i32 [ %inc463, %for.body460.for.body460_crit_edge ], [ 0, %cleanup_out.for.body460_crit_edge ]
  %arrayidx461 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i_bhs.2647
  %132 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx461, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %133) #9
  %inc463 = add nuw nsw i32 %i_bhs.2647, 1
  %exitcond.not = icmp eq i32 %inc463, %nr_bhs.2
  br i1 %exitcond.not, label %for.body460.err_out_crit_edge, label %for.body460.for.body460_crit_edge

for.body460.for.body460_crit_edge:                ; preds = %for.body460
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body460

for.body460.err_out_crit_edge:                    ; preds = %for.body460
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

err_out:                                          ; preds = %for.body460.err_out_crit_edge, %cleanup_out.err_out_crit_edge, %if.then453
  %err.8 = phi i32 [ %err.5.lcssa, %if.then453 ], [ %err.7, %cleanup_out.err_out_crit_edge ], [ %err.7, %for.body460.err_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.8)
  %cmp465 = icmp eq i32 %err.8, -12
  br i1 %cmp465, label %if.then467, label %err_out.if.else469_crit_edge

err_out.if.else469_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else469

if.then467:                                       ; preds = %err_out
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.write_mft_record_nolock, ptr noundef %135, ptr noundef nonnull @.str.18) #9
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i621 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i621, label %if.then.i622, label %if.then467.cleanup_crit_edge

if.then467.cleanup_crit_edge:                     ; preds = %if.then467
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i622:                                     ; preds = %if.then467
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %ni) #9
  br label %cleanup

if.else469:                                       ; preds = %err_out.if.else469_crit_edge, %err_out.thread
  %err.8627 = phi i32 [ -22, %err_out.thread ], [ %err.8, %err_out.if.else469_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else469, %if.then.i622, %if.then467.cleanup_crit_edge, %done
  %retval.0 = phi i32 [ 0, %done ], [ %err.8627, %if.else469 ], [ 0, %if.then467.cleanup_crit_edge ], [ 0, %if.then.i622 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pre_write_mst_fixup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_mft_record_dirty(ptr noundef %ni) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %ni)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_may_write_mft_record(ptr nocapture noundef readonly %vol, i32 noundef %mft_no, ptr nocapture noundef readonly %m, ptr noundef writeonly %locked_ni) local_unnamed_addr #0 align 64 {
entry:
  %na = alloca %struct.ntfs_attr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol, align 8
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 34
  %2 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mft_ino, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %na) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 930, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.9, i32 noundef %mft_no) #9
  %tobool.not = icmp eq ptr %locked_ni, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !338

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 934, 0\0A.popsection", ""() #9, !srcloc !383
  unreachable

do.end10:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 1
  %7 = ptrtoint ptr %locked_ni to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %locked_ni, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 940, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.19, i32 noundef %mft_no) #9
  %8 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mft_no, ptr %na, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %6, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %5, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mft_no)
  %tobool12.not = icmp eq i32 %mft_no, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end10
  %call = tail call ptr @igrab(ptr noundef %3) #9
  %cmp.not = icmp eq ptr %call, %3
  br i1 %cmp.not, label %if.then13.if.end32_crit_edge, label %do.body22, !prof !335

if.then13.if.end32_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.body22:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 952, 0\0A.popsection", ""() #9, !srcloc !384
  unreachable

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call ptr @ilookup5_nowait(ptr noundef %1, i32 noundef %mft_no, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull %na) #9
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then13.if.end32_crit_edge
  %vi.0 = phi ptr [ %call31, %if.else ], [ %3, %if.then13.if.end32_crit_edge ]
  %tobool33.not = icmp eq ptr %vi.0, null
  br i1 %tobool33.not, label %if.end54, label %if.then34

if.then34:                                        ; preds = %if.end32
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 964, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.20, i32 noundef %mft_no) #9
  %add.ptr.i = getelementptr i8, ptr %vi.0, i32 -528
  %count = getelementptr i8, ptr %vi.0, i32 -452
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %12 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !334
  %state.i = getelementptr i8, ptr %vi.0, i32 -464
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool37.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 972, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.21, i32 noundef %mft_no) #9
  %call.i.i206 = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %15 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  call void @iput(ptr noundef nonnull %vi.0) #9
  br label %cleanup

if.end40:                                         ; preds = %if.then34
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 977, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.22, i32 noundef %mft_no) #9
  %mrec_lock = getelementptr i8, ptr %vi.0, i32 -332
  %call41 = call i32 @mutex_trylock(ptr noundef %mrec_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then51, label %if.end53, !prof !338

if.then51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 981, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.23, i32 noundef %mft_no) #9
  %call.i.i207 = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  call void @iput(ptr noundef nonnull %vi.0) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 987, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.24, i32 noundef %mft_no) #9
  %17 = ptrtoint ptr %locked_ni to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %locked_ni, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end32
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 995, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.25, i32 noundef %mft_no) #9
  %18 = ptrtoint ptr %m to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %m, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179208773, i32 %19)
  %cmp.i = icmp eq i32 %19, 1179208773
  br i1 %cmp.i, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1000, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.26, i32 noundef %mft_no) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end54
  %base_mft_record = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 10
  %20 = ptrtoint ptr %base_mft_record to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %base_mft_record, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool58.not = icmp eq i64 %21, 0
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1006, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.27, i32 noundef %mft_no) #9
  br label %cleanup

if.end60:                                         ; preds = %if.end57
  %22 = and i64 %21, -65536
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %conv = trunc i64 %23 to i32
  %24 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %na, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1016, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.28, i32 noundef %mft_no, i32 noundef %conv) #9
  %25 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %na, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool65.not = icmp eq i32 %26, 0
  br i1 %tobool65.not, label %if.then66, label %if.else87

if.then66:                                        ; preds = %if.end60
  %call67 = call ptr @igrab(ptr noundef %3) #9
  %cmp69.not = icmp eq ptr %call67, %3
  br i1 %cmp69.not, label %if.then66.if.end90_crit_edge, label %do.body78, !prof !335

if.then66.if.end90_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.body78:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1020, 0\0A.popsection", ""() #9, !srcloc !385
  unreachable

if.else87:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = call ptr @ilookup5_nowait(ptr noundef %1, i32 noundef %26, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull %na) #9
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %if.then66.if.end90_crit_edge
  %vi.1 = phi ptr [ %call89, %if.else87 ], [ %3, %if.then66.if.end90_crit_edge ]
  %tobool91.not = icmp eq ptr %vi.1, null
  %27 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %na, align 4
  br i1 %tobool91.not, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1030, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.29, i32 noundef %28) #9
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1033, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.20, i32 noundef %28) #9
  %extent_lock = getelementptr i8, ptr %vi.1, i32 -104
  call void @mutex_lock_nested(ptr noundef %extent_lock, i32 noundef 0) #9
  %nr_extents = getelementptr i8, ptr %vi.1, i32 -12
  %29 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp97 = icmp slt i32 %30, 1
  br i1 %cmp97, label %if.then99, label %for.body.preheader

if.then99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %extent_lock) #9
  call void @iput(ptr noundef nonnull %vi.1) #9
  %31 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %na, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1048, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.30, i32 noundef %32) #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end94
  %ext = getelementptr i8, ptr %vi.1, i32 -8
  %33 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ext, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc, %30
  br i1 %exitcond.not, label %for.cond.if.then113_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.then113_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0215 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %34, i32 %i.0215
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %mft_no106 = getelementptr inbounds %struct._ntfs_inode, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %mft_no106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mft_no106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %mft_no)
  %cmp107 = icmp eq i32 %38, %mft_no
  br i1 %cmp107, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %tobool112.not = icmp eq ptr %36, null
  br i1 %tobool112.not, label %for.end.if.then113_crit_edge, label %if.end116

for.end.if.then113_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

if.then113:                                       ; preds = %for.end.if.then113_crit_edge, %for.cond.if.then113_crit_edge
  call void @mutex_unlock(ptr noundef %extent_lock) #9
  call void @iput(ptr noundef nonnull %vi.1) #9
  %39 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %na, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1072, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.31, i32 noundef %mft_no, i32 noundef %40) #9
  br label %cleanup

if.end116:                                        ; preds = %for.end
  %41 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %na, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1076, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.32, i32 noundef %mft_no, i32 noundef %42) #9
  %count118 = getelementptr inbounds %struct._ntfs_inode, ptr %36, i32 0, i32 6
  %call.i.i208 = call zeroext i1 @__kasan_check_write(ptr noundef %count118, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %count118, i32 1, i32 3, i32 1) #9
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count118, ptr %count118, i32 1, ptr elementtype(i32) %count118) #9, !srcloc !334
  call void @mutex_unlock(ptr noundef %extent_lock) #9
  %mrec_lock120 = getelementptr inbounds %struct._ntfs_inode, ptr %36, i32 0, i32 12
  %call121 = call i32 @mutex_trylock(ptr noundef %mrec_lock120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then131, label %if.end133, !prof !338

if.then131:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i209 = call zeroext i1 @__kasan_check_write(ptr noundef %count118, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %count118, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count118, ptr %count118, i32 1, ptr elementtype(i32) %count118) #9, !srcloc !337
  call void @iput(ptr noundef nonnull %vi.1) #9
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1088, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.33, i32 noundef %mft_no) #9
  br label %cleanup

if.end133:                                        ; preds = %if.end116
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1092, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.34, i32 noundef %mft_no) #9
  %state.i211 = getelementptr inbounds %struct._ntfs_inode, ptr %36, i32 0, i32 3
  %call.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state.i211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool135.not = icmp eq i32 %call.i, 0
  br i1 %tobool135.not, label %if.end133.if.end137_crit_edge, label %if.then136

if.end133.if.end137_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1095, ptr noundef nonnull @__func__.ntfs_may_write_mft_record, ptr noundef nonnull @.str.35, i32 noundef %mft_no) #9
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133.if.end137_crit_edge
  %45 = ptrtoint ptr %locked_ni to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %36, ptr %locked_ni, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end137, %if.then131, %if.then113, %if.then99, %if.then92, %if.then59, %if.then56, %if.end53, %if.then51, %if.then38
  %retval.0 = phi i1 [ false, %if.then38 ], [ false, %if.then51 ], [ true, %if.end53 ], [ true, %if.then99 ], [ false, %if.then131 ], [ true, %if.end137 ], [ true, %if.then113 ], [ true, %if.then92 ], [ true, %if.then59 ], [ true, %if.then56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %na) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5_nowait(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_test_inode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_mft_record_alloc(ptr noundef %vol, i32 noundef %mode, ptr noundef %base_ni, ptr noundef writeonly %mrec) local_unnamed_addr #0 align 64 {
entry:
  %ni = alloca ptr, align 4
  %tmp741 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ni) #9
  %0 = ptrtoint ptr %ni to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ni, align 4, !annotation !386
  %tobool.not = icmp eq ptr %base_ni, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 4
  %1 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mft_no, align 4
  %conv = zext i32 %2 to i64
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2258, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.36, i64 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cond1077 = icmp eq i32 %mode, 0
  br i1 %cond1077, label %if.then.do.body39_crit_edge, label %do.body5, !prof !335

if.then.do.body39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2260, 0\0A.popsection", ""() #9, !srcloc !387
  unreachable

if.else:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2262, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool12.not = icmp eq i32 %mode, 0
  br i1 %tobool12.not, label %if.else.do.body39_crit_edge, label %do.end31

if.else.do.body39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

do.end31:                                         ; preds = %if.else
  %3 = trunc i32 %mode to i16
  %trunc = and i16 %3, -4096
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.152)
  switch i16 %trunc, label %do.end31.cleanup783_crit_edge [
    i16 -32768, label %do.end31.do.body39_crit_edge
    i16 16384, label %do.end31.do.body39_crit_edge1898
  ]

do.end31.do.body39_crit_edge1898:                 ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

do.end31.do.body39_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

do.end31.cleanup783_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup783

do.body39:                                        ; preds = %do.end31.do.body39_crit_edge, %do.end31.do.body39_crit_edge1898, %if.else.do.body39_crit_edge, %if.then.do.body39_crit_edge
  %tobool40.not = icmp eq ptr %mrec, null
  br i1 %tobool40.not, label %do.body50, label %do.end58, !prof !338

do.body50:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2270, 0\0A.popsection", ""() #9, !srcloc !388
  unreachable

do.end58:                                         ; preds = %do.body39
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 34
  %5 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mft_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 -528
  %mftbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 35
  %7 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mftbmp_ino, align 4
  %add.ptr.i1086 = getelementptr i8, ptr %8, i32 -528
  %mftbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 36
  tail call void @down_write(ptr noundef %mftbmp_lock) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1138, ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef nonnull @.str.87) #9
  %9 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mftbmp_ino, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping.i, align 8
  %13 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mft_ino, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -528
  %call1.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #9
  %15 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mft_ino, align 8
  %add.ptr.i238.i = getelementptr i8, ptr %16, i32 -528
  %allocated_size.i = getelementptr i8, ptr %16, i32 -472
  %17 = ptrtoint ptr %allocated_size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %allocated_size.i, align 8
  %mft_record_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 16
  %19 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mft_record_size_bits.i, align 4
  %sh_prom.i = zext i8 %20 to i64
  %shr.i = ashr i64 %18, %sh_prom.i
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i238.i, i32 noundef %call1.i) #9
  %21 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mftbmp_ino, align 4
  %add.ptr.i240.i = getelementptr i8, ptr %22, i32 -528
  %call25.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i240.i) #9
  %23 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mftbmp_ino, align 4
  %add.ptr.i241.i = getelementptr i8, ptr %24, i32 -528
  %initialized_size.i = getelementptr i8, ptr %24, i32 -480
  %25 = ptrtoint ptr %initialized_size.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %initialized_size.i, align 8
  %shl.i = shl i64 %26, 3
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i241.i, i32 noundef %call25.i) #9
  %27 = tail call i64 @llvm.smin.i64(i64 %shr.i, i64 %shl.i) #9
  br i1 %tobool.not, label %if.then43.i, label %if.else.i

if.then43.i:                                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %mft_data_pos.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 28
  %28 = ptrtoint ptr %mft_data_pos.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %mft_data_pos.i, align 8
  br label %if.end45.i

if.else.i:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %mft_no.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 4
  %30 = ptrtoint ptr %mft_no.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mft_no.i, align 4
  %add.i = add i32 %31, 1
  %conv44.i = zext i32 %add.i to i64
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.then43.i
  %data_pos.0.i = phi i64 [ %conv44.i, %if.else.i ], [ %29, %if.then43.i ]
  %32 = tail call i64 @llvm.smax.i64(i64 %data_pos.0.i, i64 24) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %27)
  %cmp50.not.i = icmp slt i64 %32, %27
  br i1 %cmp50.not.i, label %if.end45.i.if.end57.i_crit_edge, label %if.then52.i

if.end45.i.if.end57.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then52.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 25, i64 %27)
  %cmp53.i = icmp slt i64 %27, 25
  br i1 %cmp53.i, label %if.then52.i.do.body74_crit_edge, label %if.then52.i.if.end57.i_crit_edge

if.then52.i.if.end57.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then52.i.do.body74_crit_edge:                  ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body74

if.end57.i:                                       ; preds = %if.then52.i.if.end57.i_crit_edge, %if.end45.i.if.end57.i_crit_edge
  %pass.0.i = phi i8 [ 2, %if.then52.i.if.end57.i_crit_edge ], [ 1, %if.end45.i.if.end57.i_crit_edge ]
  %data_pos.2.i = phi i64 [ 24, %if.then52.i.if.end57.i_crit_edge ], [ %32, %if.end45.i.if.end57.i_crit_edge ]
  %conv58.i = zext i8 %pass.0.i to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef nonnull @.str.88, i32 noundef %conv58.i, i64 noundef %data_pos.2.i, i64 noundef %27, i64 noundef %data_pos.2.i) #9
  br label %for.cond.outer.split.i

for.cond.outer.split.i:                           ; preds = %if.end147.i.for.cond.outer.split.i_crit_edge, %if.end57.i
  %pass_end.1.ph261.i = phi i64 [ %27, %if.end57.i ], [ %pass_end.2.i, %if.end147.i.for.cond.outer.split.i_crit_edge ]
  %data_pos.3.ph260.i = phi i64 [ %data_pos.2.i, %if.end57.i ], [ %data_pos.5.i, %if.end147.i.for.cond.outer.split.i_crit_edge ]
  %pass.1.ph259.i = phi i8 [ %pass.0.i, %if.end57.i ], [ %inc.i, %if.end147.i.for.cond.outer.split.i_crit_edge ]
  %pass_start.0.ph258.i = phi i64 [ %data_pos.2.i, %if.end57.i ], [ %pass_start.1.i, %if.end147.i.for.cond.outer.split.i_crit_edge ]
  %shr65263.in.i = add i64 %pass_end.1.ph261.i, 7
  %shr65263.i = ashr i64 %shr65263.in.i, 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i.for.cond.i_crit_edge, %for.cond.outer.split.i
  %data_pos.3.i = phi i64 [ %add132.i, %for.end.i.for.cond.i_crit_edge ], [ %data_pos.3.ph260.i, %for.cond.outer.split.i ]
  %shr62.i = ashr i64 %data_pos.3.i, 3
  %33 = trunc i64 %shr62.i to i32
  %conv63.i = and i32 %33, 4095
  %sub.i = sub nuw nsw i32 4096, %conv63.i
  %sub66.i = sub nsw i64 %shr65263.i, %shr62.i
  %conv67.i = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub66.i, i64 %conv67.i)
  %cmp68.i = icmp slt i64 %sub66.i, %conv67.i
  %conv71.i = trunc i64 %sub66.i to i32
  %spec.select237.i = select i1 %cmp68.i, i32 %conv71.i, i32 %sub.i
  %shl73.i = shl i32 %spec.select237.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl73.i)
  %tobool74.not.i = icmp eq i32 %shl73.i, 0
  br i1 %tobool74.not.i, label %for.cond.i.if.end137.i_crit_edge, label %if.then75.i

for.cond.i.if.end137.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i

if.then75.i:                                      ; preds = %for.cond.i
  %34 = lshr i64 %data_pos.3.i, 15
  %conv77.i = trunc i64 %34 to i32
  %call78.i = tail call fastcc ptr @ntfs_map_page(ptr noundef %12, i32 noundef %conv77.i) #9
  %cmp.i.i = icmp ugt ptr %call78.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then80.i, label %if.end82.i

if.then80.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef %36, ptr noundef nonnull @.str.89) #9
  %37 = ptrtoint ptr %call78.i to i32
  br label %ntfs_mft_bitmap_find_and_alloc_free_rec_nolock.exit

if.end82.i:                                       ; preds = %if.then75.i
  %call83.i = tail call ptr @page_address(ptr noundef %call78.i) #9
  %add.ptr.i1088 = getelementptr i8, ptr %call83.i, i32 %conv63.i
  %and84.i = and i64 %data_pos.3.i, 7
  %and85.i = and i64 %data_pos.3.i, -8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1199, ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef nonnull @.str.90, i32 noundef %shl73.i, i64 noundef %and85.i, i64 noundef %and84.i) #9
  %conv87.i = zext i32 %shl73.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and84.i, i64 %conv87.i)
  %cmp88249.i = icmp ult i64 %and84.i, %conv87.i
  call void @__sanitizer_cov_trace_cmp8(i64 %data_pos.3.i, i64 %pass_end.1.ph261.i)
  %cmp91251.i = icmp slt i64 %data_pos.3.i, %pass_end.1.ph261.i
  %or.cond252.i = select i1 %cmp88249.i, i1 %cmp91251.i, i1 false
  br i1 %or.cond252.i, label %if.end82.i.for.body93.i_crit_edge, label %if.end82.i.for.end.i_crit_edge

if.end82.i.for.end.i_crit_edge:                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end82.i.for.body93.i_crit_edge:                ; preds = %if.end82.i
  br label %for.body93.i

for.body93.i:                                     ; preds = %for.inc.i.for.body93.i_crit_edge, %if.end82.i.for.body93.i_crit_edge
  %bit.0253.i = phi i64 [ %add130.i, %for.inc.i.for.body93.i_crit_edge ], [ %and84.i, %if.end82.i.for.body93.i_crit_edge ]
  %38 = lshr i64 %bit.0253.i, 3
  %idx.ext.i = trunc i64 %38 to i32
  %add.ptr95.i = getelementptr i8, ptr %add.ptr.i1088, i32 %idx.ext.i
  %39 = ptrtoint ptr %add.ptr95.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr95.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %cmp97.i = icmp eq i8 %40, -1
  br i1 %cmp97.i, label %for.body93.i.for.inc.i_crit_edge, label %if.end100.i

for.body93.i.for.inc.i_crit_edge:                 ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end100.i:                                      ; preds = %for.body93.i
  %conv96.i = zext i8 %40 to i32
  %neg.i = xor i32 %conv96.i, -1
  %41 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 true) #9, !range !389
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %41)
  %cmp105.i = icmp ult i32 %41, 8
  br i1 %cmp105.i, label %land.lhs.true.i, label %if.end100.i.for.inc.i_crit_edge

if.end100.i.for.inc.i_crit_edge:                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end100.i
  %conv107.i = zext i32 %41 to i64
  %and108.i = and i64 %bit.0253.i, 7
  call void @__sanitizer_cov_trace_cmp8(i64 %and108.i, i64 %conv107.i)
  %cmp109.not.i = icmp ugt i64 %and108.i, %conv107.i
  br i1 %cmp109.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then111.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then111.i:                                     ; preds = %land.lhs.true.i
  %and112.i = and i64 %bit.0253.i, -8
  %add113.i = add i64 %and112.i, %and85.i
  %add115.i = add i64 %add113.i, %conv107.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add115.i)
  %cmp116.i = icmp sgt i64 %add115.i, 4294967296
  br i1 %cmp116.i, label %if.then120.i, label %if.end121.i, !prof !338

if.then120.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call78.i) #9
  br label %do.body74

if.end121.i:                                      ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #11
  %idx.ext.i.le = trunc i64 %38 to i32
  %add.ptr95.i.le = getelementptr i8, ptr %add.ptr.i1088, i32 %idx.ext.i.le
  %shl123.i = shl nuw nsw i32 1, %41
  %42 = trunc i32 %shl123.i to i8
  %conv125.i = or i8 %40, %42
  %43 = ptrtoint ptr %add.ptr95.i.le to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv125.i, ptr %add.ptr95.i.le, align 1
  tail call void @flush_dcache_page(ptr noundef %call78.i) #9
  %call126.i = tail call zeroext i1 @set_page_dirty(ptr noundef %call78.i) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call78.i) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1219, ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef nonnull @.str.91, i64 noundef %add115.i) #9
  %conv127.i = trunc i64 %add115.i to i32
  br label %ntfs_mft_bitmap_find_and_alloc_free_rec_nolock.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end100.i.for.inc.i_crit_edge, %for.body93.i.for.inc.i_crit_edge
  %44 = add i64 %bit.0253.i, 8
  %add130.i = and i64 %44, -8
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %conv87.i)
  %cmp88.i = icmp slt i64 %add130.i, %conv87.i
  %add90.i = add i64 %add130.i, %and85.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add90.i, i64 %pass_end.1.ph261.i)
  %cmp91.i = icmp slt i64 %add90.i, %pass_end.1.ph261.i
  %or.cond.i = select i1 %cmp88.i, i1 %cmp91.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body93.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body93.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end82.i.for.end.i_crit_edge
  %bit.0.lcssa.i = phi i64 [ %and84.i, %if.end82.i.for.end.i_crit_edge ], [ %add130.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1225, ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef nonnull @.str.92, i32 noundef %shl73.i, i64 noundef %and85.i, i64 noundef %bit.0.lcssa.i) #9
  %add132.i = add i64 %and85.i, %conv87.i
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call78.i) #9
  %cmp133.i = icmp slt i64 %add132.i, %pass_end.1.ph261.i
  br i1 %cmp133.i, label %for.end.i.for.cond.i_crit_edge, label %for.end.i.if.end137.i_crit_edge

for.end.i.if.end137.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i

for.end.i.for.cond.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end137.i:                                      ; preds = %for.end.i.if.end137.i_crit_edge, %for.cond.i.if.end137.i_crit_edge
  %data_pos.4.i = phi i64 [ %add132.i, %for.end.i.if.end137.i_crit_edge ], [ %data_pos.3.i, %for.cond.i.if.end137.i_crit_edge ]
  %inc.i = add nuw nsw i8 %pass.1.ph259.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc.i)
  %cmp139.i = icmp eq i8 %inc.i, 2
  br i1 %cmp139.i, label %if.then141.i, label %if.end137.i.if.end147.i_crit_edge

if.end137.i.if.end147.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147.i

if.then141.i:                                     ; preds = %if.end137.i
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1245, ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef nonnull @.str.93, i32 noundef 2, i64 noundef 24, i64 noundef %pass_start.0.ph258.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 25, i64 %pass_start.0.ph258.i)
  %cmp143.i = icmp slt i64 %pass_start.0.ph258.i, 25
  br i1 %cmp143.i, label %if.then141.i.for.end148.i_crit_edge, label %if.then141.i.if.end147.i_crit_edge

if.then141.i.if.end147.i_crit_edge:               ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147.i

if.then141.i.for.end148.i_crit_edge:              ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end148.i

if.end147.i:                                      ; preds = %if.then141.i.if.end147.i_crit_edge, %if.end137.i.if.end147.i_crit_edge
  %pass_start.1.i = phi i64 [ 24, %if.then141.i.if.end147.i_crit_edge ], [ %pass_start.0.ph258.i, %if.end137.i.if.end147.i_crit_edge ]
  %data_pos.5.i = phi i64 [ 24, %if.then141.i.if.end147.i_crit_edge ], [ %data_pos.4.i, %if.end137.i.if.end147.i_crit_edge ]
  %pass_end.2.i = phi i64 [ %pass_start.0.ph258.i, %if.then141.i.if.end147.i_crit_edge ], [ %pass_end.1.ph261.i, %if.end137.i.if.end147.i_crit_edge ]
  %cmp60.i = icmp ult i8 %pass.1.ph259.i, 2
  br i1 %cmp60.i, label %if.end147.i.for.cond.outer.split.i_crit_edge, label %if.end147.i.for.end148.i_crit_edge

if.end147.i.for.end148.i_crit_edge:               ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end148.i

if.end147.i.for.cond.outer.split.i_crit_edge:     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.outer.split.i

for.end148.i:                                     ; preds = %if.end147.i.for.end148.i_crit_edge, %if.then141.i.for.end148.i_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1252, ptr noundef nonnull @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, ptr noundef nonnull @.str.94) #9
  br label %do.body74

ntfs_mft_bitmap_find_and_alloc_free_rec_nolock.exit: ; preds = %if.end121.i, %if.then80.i
  %retval.0.i = phi i32 [ %37, %if.then80.i ], [ %conv127.i, %if.end121.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp63 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %ntfs_mft_bitmap_find_and_alloc_free_rec_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv621327 = zext i32 %retval.0.i to i64
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2277, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.38, i64 noundef %conv621327) #9
  br label %have_alloc_rec

if.end66:                                         ; preds = %ntfs_mft_bitmap_find_and_alloc_free_rec_nolock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %retval.0.i)
  %cmp67.not = icmp eq i32 %retval.0.i, -28
  br i1 %cmp67.not, label %if.end66.do.body74_crit_edge, label %if.then69

if.end66.do.body74_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body74

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_write(ptr noundef %mftbmp_lock) #9
  %45 = inttoptr i32 %retval.0.i to ptr
  br label %cleanup783

do.body74:                                        ; preds = %if.end66.do.body74_crit_edge, %for.end148.i, %if.then120.i, %if.then52.i.do.body74_crit_edge
  %call77 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #9
  %initialized_size = getelementptr i8, ptr %6, i32 -480
  %46 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %initialized_size, align 8
  %48 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mft_record_size_bits.i, align 4
  %sh_prom = zext i8 %49 to i64
  %shr = ashr i64 %47, %sh_prom
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call77) #9
  %call97 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i1086) #9
  %initialized_size100 = getelementptr i8, ptr %8, i32 -480
  %50 = ptrtoint ptr %initialized_size100 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %initialized_size100, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i1086, i32 noundef %call97) #9
  %shl = shl i64 %51, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %shr)
  %cmp110 = icmp sgt i64 %shl, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %51)
  %cmp113 = icmp sgt i64 %51, 3
  %or.cond = and i1 %cmp113, %cmp110
  br i1 %or.cond, label %if.then115, label %if.end130

if.then115:                                       ; preds = %do.body74
  %52 = tail call i64 @llvm.smax.i64(i64 %shr, i64 24)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %52)
  %cmp120 = icmp ugt i64 %52, 4294967295
  br i1 %cmp120, label %if.then115.max_err_out_crit_edge, label %if.end129, !prof !338

if.then115.max_err_out_crit_edge:                 ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %max_err_out

if.end129:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2305, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.39, i64 noundef %52) #9
  br label %found_free_rec

if.end130:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shl)
  %cmp132 = icmp sgt i64 %shl, 4294967295
  br i1 %cmp132, label %if.end130.max_err_out_crit_edge, label %do.body142, !prof !338

if.end130.max_err_out_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %max_err_out

do.body142:                                       ; preds = %if.end130
  %call149 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i1086) #9
  %allocated_size = getelementptr i8, ptr %8, i32 -472
  %53 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %allocated_size, align 8
  %55 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mftbmp_ino, align 4
  %call153 = tail call fastcc i64 @i_size_read(ptr noundef %56)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2322, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.40, i64 noundef %54, i64 noundef %call153, i64 noundef %51) #9
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i1086, i32 noundef %call149) #9
  %add = add i64 %51, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %54)
  %cmp163 = icmp sgt i64 %add, %54
  br i1 %cmp163, label %if.then165, label %do.body142.if.end200_crit_edge

do.body142.if.end200_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.then165:                                       ; preds = %do.body142
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2326, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.41) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1293, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef nonnull @.str.95) #9
  %57 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mft_ino, align 8
  %add.ptr.i.i1090 = getelementptr i8, ptr %58, i32 -528
  %59 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mftbmp_ino, align 4
  %add.ptr.i608.i = getelementptr i8, ptr %60, i32 -528
  %runlist.i = getelementptr i8, ptr %60, i32 -432
  %lock.i = getelementptr i8, ptr %60, i32 -428
  tail call void @down_write(ptr noundef %lock.i) #9
  %call2.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i608.i) #9
  %allocated_size.i1092 = getelementptr i8, ptr %60, i32 -472
  %61 = ptrtoint ptr %allocated_size.i1092 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %allocated_size.i1092, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i608.i, i32 noundef %call2.i) #9
  %sub.i1093 = add i64 %62, -1
  %cluster_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 13
  %63 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom.i1094 = zext i8 %64 to i64
  %shr.i1095 = ashr i64 %sub.i1093, %sh_prom.i1094
  %call13.i = tail call ptr @ntfs_attr_find_vcn_nolock(ptr noundef %add.ptr.i608.i, i64 noundef %shr.i1095, ptr noundef null) #9
  %cmp.i.i1096 = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i1096, label %if.then165.if.then.i1098_crit_edge, label %lor.lhs.false.i

if.then165.if.then.i1098_crit_edge:               ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1098

lor.lhs.false.i:                                  ; preds = %if.then165
  %length.i = getelementptr inbounds %struct.runlist_element, ptr %call13.i, i32 0, i32 2
  %65 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %tobool.not.i1097 = icmp eq i64 %66, 0
  br i1 %tobool.not.i1097, label %lor.lhs.false.i.if.then.i1098_crit_edge, label %lor.rhs.i, !prof !338

lor.lhs.false.i.if.then.i1098_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1098

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %lcn16.i = getelementptr inbounds %struct.runlist_element, ptr %call13.i, i32 0, i32 1
  %67 = ptrtoint ptr %lcn16.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %lcn16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %cmp17.i = icmp slt i64 %68, 0
  br i1 %cmp17.i, label %lor.rhs.i.if.then.i1098_crit_edge, label %if.end26.i, !prof !338

lor.rhs.i.if.then.i1098_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1098

if.then.i1098:                                    ; preds = %lor.rhs.i.if.then.i1098_crit_edge, %lor.lhs.false.i.if.then.i1098_crit_edge, %if.then165.if.then.i1098_crit_edge
  tail call void @up_write(ptr noundef %lock.i) #9
  %69 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %70, ptr noundef nonnull @.str.96) #9
  %71 = ptrtoint ptr %call13.i to i32
  br i1 %cmp.i.i1096, label %if.then.i1098.ntfs_mft_bitmap_extend_allocation_nolock.exit_crit_edge, label %if.then.i1098.err_out_crit_edge

if.then.i1098.err_out_crit_edge:                  ; preds = %if.then.i1098
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then.i1098.ntfs_mft_bitmap_extend_allocation_nolock.exit_crit_edge: ; preds = %if.then.i1098
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_mft_bitmap_extend_allocation_nolock.exit

if.end26.i:                                       ; preds = %lor.rhs.i
  %add.i1099 = add i64 %68, %66
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1318, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef nonnull @.str.97, i64 noundef %add.i1099) #9
  %shr29.i = ashr i64 %add.i1099, 3
  %lcnbmp_ino.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 40
  %72 = ptrtoint ptr %lcnbmp_ino.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lcnbmp_ino.i, align 4
  %i_mapping.i1100 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %i_mapping.i1100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_mapping.i1100, align 8
  %76 = lshr i64 %add.i1099, 15
  %conv31.i = trunc i64 %76 to i32
  %call32.i = tail call fastcc ptr @ntfs_map_page(ptr noundef %75, i32 noundef %conv31.i) #9
  %cmp.i610.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i610.i, label %if.then34.i, label %if.end39.i

if.then34.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_write(ptr noundef %lock.i) #9
  %77 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %78, ptr noundef nonnull @.str.98) #9
  %79 = ptrtoint ptr %call32.i to i32
  br label %ntfs_mft_bitmap_extend_allocation_nolock.exit

if.end39.i:                                       ; preds = %if.end26.i
  %call40.i = tail call ptr @page_address(ptr noundef %call32.i) #9
  %80 = trunc i64 %shr29.i to i32
  %idx.ext.i1101 = and i32 %80, 4095
  %add.ptr.i1102 = getelementptr i8, ptr %call40.i, i32 %idx.ext.i1101
  %lcnbmp_lock.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 41
  tail call void @down_write(ptr noundef %lcnbmp_lock.i) #9
  %81 = ptrtoint ptr %add.ptr.i1102 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr.i1102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %cmp45.not.i = icmp eq i8 %82, -1
  br i1 %cmp45.not.i, label %if.end39.i.if.else59.i_crit_edge, label %land.lhs.true.i1104

if.end39.i.if.else59.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else59.i

land.lhs.true.i1104:                              ; preds = %if.end39.i
  %83 = trunc i64 %add.i1099 to i8
  %sh_prom42.i = and i8 %83, 7
  %shl.i1103 = shl nuw i8 1, %sh_prom42.i
  %and49606.i = and i8 %82, %shl.i1103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and49606.i)
  %tobool50.not.i = icmp eq i8 %and49606.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %land.lhs.true.i1104.if.else59.i_crit_edge

land.lhs.true.i1104.if.else59.i_crit_edge:        ; preds = %land.lhs.true.i1104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else59.i

if.then51.i:                                      ; preds = %land.lhs.true.i1104
  call void @__sanitizer_cov_trace_pc() #11
  %or607.i = or i8 %82, %shl.i1103
  %84 = ptrtoint ptr %add.ptr.i1102 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %or607.i, ptr %add.ptr.i1102, align 1
  tail call void @flush_dcache_page(ptr noundef %call32.i) #9
  %call55.i = tail call zeroext i1 @set_page_dirty(ptr noundef %call32.i) #9
  tail call void @up_write(ptr noundef %lcnbmp_lock.i) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call32.i) #9
  %85 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %length.i, align 8
  %inc.i1105 = add i64 %86, 1
  store i64 %inc.i1105, ptr %length.i, align 8
  %arrayidx.i = getelementptr %struct.runlist_element, ptr %call13.i, i32 1
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx.i, align 8
  %inc58.i = add i64 %88, 1
  store i64 %inc58.i, ptr %arrayidx.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1346, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef nonnull @.str.99) #9
  br label %if.end94.i

if.else59.i:                                      ; preds = %land.lhs.true.i1104.if.else59.i_crit_edge, %if.end39.i.if.else59.i_crit_edge
  tail call void @up_write(ptr noundef %lcnbmp_lock.i) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call32.i) #9
  %arrayidx61.i = getelementptr %struct.runlist_element, ptr %call13.i, i32 1
  %89 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx61.i, align 8
  %call63.i = tail call ptr @ntfs_cluster_alloc(ptr noundef %vol, i64 noundef %90, i64 noundef 1, i64 noundef %add.i1099, i32 noundef 1, i1 noundef zeroext true) #9
  %cmp.i611.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i611.i, label %if.then65.i, label %if.end70.i

if.then65.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_write(ptr noundef %lock.i) #9
  %91 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %92, ptr noundef nonnull @.str.100) #9
  %93 = ptrtoint ptr %call63.i to i32
  br label %ntfs_mft_bitmap_extend_allocation_nolock.exit

if.end70.i:                                       ; preds = %if.else59.i
  %94 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %runlist.i, align 8
  %call73.i = tail call ptr @ntfs_runlists_merge(ptr noundef %95, ptr noundef %call63.i) #9
  %cmp.i612.i = icmp ugt ptr %call73.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i612.i, label %if.then75.i1107, label %if.end85.i

if.then75.i1107:                                  ; preds = %if.end70.i
  tail call void @up_write(ptr noundef %lock.i) #9
  %96 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %97, ptr noundef nonnull @.str.101) #9
  tail call void @down_write(ptr noundef %lcnbmp_lock.i) #9
  %call.i.i1106 = tail call i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef %vol, ptr noundef %call63.i) #9
  tail call void @up_write(ptr noundef %lcnbmp_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1106)
  %tobool80.not.i = icmp eq i32 %call.i.i1106, 0
  br i1 %tobool80.not.i, label %if.then75.i1107.if.end83.i_crit_edge, label %if.then81.i

if.then75.i1107.if.end83.i_crit_edge:             ; preds = %if.then75.i1107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.then75.i1107
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %99, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.150) #9
  %flags.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #9
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.then75.i1107.if.end83.i_crit_edge
  tail call void @kvfree(ptr noundef %call63.i) #9
  %100 = ptrtoint ptr %call73.i to i32
  br label %ntfs_mft_bitmap_extend_allocation_nolock.exit

if.end85.i:                                       ; preds = %if.end70.i
  %101 = ptrtoint ptr %runlist.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call73.i, ptr %runlist.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1374, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef nonnull @.str.103) #9
  br label %for.cond.i1108

for.cond.i1108:                                   ; preds = %for.cond.i1108.for.cond.i1108_crit_edge, %if.end85.i
  %rl.0.i = phi ptr [ %call73.i, %if.end85.i ], [ %arrayidx91.i, %for.cond.i1108.for.cond.i1108_crit_edge ]
  %length92.i = getelementptr %struct.runlist_element, ptr %rl.0.i, i32 1, i32 2
  %102 = ptrtoint ptr %length92.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %length92.i, align 8
  %tobool93.not.i = icmp eq i64 %103, 0
  %arrayidx91.i = getelementptr %struct.runlist_element, ptr %rl.0.i, i32 1
  br i1 %tobool93.not.i, label %for.cond.i1108.if.end94.i_crit_edge, label %for.cond.i1108.for.cond.i1108_crit_edge

for.cond.i1108.for.cond.i1108_crit_edge:          ; preds = %for.cond.i1108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i1108

for.cond.i1108.if.end94.i_crit_edge:              ; preds = %for.cond.i1108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

if.end94.i:                                       ; preds = %for.cond.i1108.if.end94.i_crit_edge, %if.then51.i
  %rl.1.i = phi ptr [ %call13.i, %if.then51.i ], [ %rl.0.i, %for.cond.i1108.if.end94.i_crit_edge ]
  %rl2.0.i = phi ptr [ null, %if.then51.i ], [ %call63.i, %for.cond.i1108.if.end94.i_crit_edge ]
  %status.sroa.0.0.i = phi i8 [ -128, %if.then51.i ], [ 64, %for.cond.i1108.if.end94.i_crit_edge ]
  %call95.i = tail call ptr @map_mft_record(ptr noundef %add.ptr.i.i1090) #9
  %cmp.i613.i = icmp ugt ptr %call95.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i613.i, label %if.then97.i, label %if.end100.i1109

if.then97.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %105, ptr noundef nonnull @.str.55) #9
  %106 = ptrtoint ptr %call95.i to i32
  br label %undo_alloc.i

if.end100.i1109:                                  ; preds = %if.end94.i
  %call101.i = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i.i1090, ptr noundef %call95.i) #9
  %tobool102.not.i = icmp eq ptr %call101.i, null
  br i1 %tobool102.not.i, label %if.then111.i1110, label %if.end113.i, !prof !338

if.then111.i1110:                                 ; preds = %if.end100.i1109
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %108, ptr noundef nonnull @.str.56) #9
  br label %undo_alloc.i

if.end113.i:                                      ; preds = %if.end100.i1109
  %type.i = getelementptr i8, ptr %60, i32 -444
  %109 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %type.i, align 4
  %name.i = getelementptr i8, ptr %60, i32 -440
  %111 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name.i, align 8
  %name_len.i = getelementptr i8, ptr %60, i32 -436
  %113 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %name_len.i, align 4
  %arrayidx114.i = getelementptr %struct.runlist_element, ptr %rl.1.i, i32 1
  %115 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx114.i, align 8
  %call116.i = tail call i32 @ntfs_attr_lookup(i32 noundef %110, ptr noundef %112, i32 noundef %114, i32 noundef 0, i64 noundef %116, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call101.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %if.end130.i, label %if.then124.i, !prof !335

if.then124.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %118, ptr noundef nonnull @.str.104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call116.i)
  %cmp126.i = icmp eq i32 %call116.i, -2
  %spec.select.i = select i1 %cmp126.i, i32 -5, i32 %call116.i
  br label %undo_alloc.i

if.end130.i:                                      ; preds = %if.end113.i
  %attr.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call101.i, i32 0, i32 1
  %119 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %attr.i, align 4
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %data.i, align 1
  %123 = tail call i64 @llvm.bswap.i64(i64 %122) #9
  %124 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %runlist.i, align 8
  %cmp135646.i = icmp ugt ptr %rl.1.i, %125
  br i1 %cmp135646.i, label %if.end130.i.for.body137.i_crit_edge, label %if.end130.i.do.body146.i_crit_edge

if.end130.i.do.body146.i_crit_edge:               ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body146.i

if.end130.i.for.body137.i_crit_edge:              ; preds = %if.end130.i
  br label %for.body137.i

for.body137.i:                                    ; preds = %for.inc143.i.for.body137.i_crit_edge, %if.end130.i.for.body137.i_crit_edge
  %rl2.1647.i = phi ptr [ %incdec.ptr144.i, %for.inc143.i.for.body137.i_crit_edge ], [ %rl.1.i, %if.end130.i.for.body137.i_crit_edge ]
  %126 = ptrtoint ptr %rl2.1647.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %rl2.1647.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %127)
  %cmp139.not.i = icmp slt i64 %123, %127
  br i1 %cmp139.not.i, label %for.inc143.i, label %for.body137.i.do.body146.i_crit_edge

for.body137.i.do.body146.i_crit_edge:             ; preds = %for.body137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body146.i

for.inc143.i:                                     ; preds = %for.body137.i
  %incdec.ptr144.i = getelementptr %struct.runlist_element, ptr %rl2.1647.i, i32 -1
  %cmp135.i = icmp ugt ptr %incdec.ptr144.i, %125
  br i1 %cmp135.i, label %for.inc143.i.for.body137.i_crit_edge, label %for.inc143.i.do.body146.i_crit_edge

for.inc143.i.do.body146.i_crit_edge:              ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body146.i

for.inc143.i.for.body137.i_crit_edge:             ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body137.i

do.body146.i:                                     ; preds = %for.inc143.i.do.body146.i_crit_edge, %for.body137.i.do.body146.i_crit_edge, %if.end130.i.do.body146.i_crit_edge
  %rl2.1.lcssa.i = phi ptr [ %rl.1.i, %if.end130.i.do.body146.i_crit_edge ], [ %rl2.1647.i, %for.body137.i.do.body146.i_crit_edge ], [ %incdec.ptr144.i, %for.inc143.i.do.body146.i_crit_edge ]
  %128 = ptrtoint ptr %rl2.1.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %rl2.1.lcssa.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %129)
  %cmp148.i = icmp slt i64 %123, %129
  br i1 %cmp148.i, label %do.body157.i, label %do.body166.i, !prof !338

do.body157.i:                                     ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1412, 0\0A.popsection", ""() #9, !srcloc !390
  unreachable

do.body166.i:                                     ; preds = %do.body146.i
  %length168.i = getelementptr inbounds %struct.runlist_element, ptr %rl2.1.lcssa.i, i32 0, i32 2
  %130 = ptrtoint ptr %length168.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %length168.i, align 8
  %add169.i = add i64 %131, %129
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %add169.i)
  %cmp170.not.i = icmp slt i64 %123, %add169.i
  br i1 %cmp170.not.i, label %do.end187.i, label %do.body179.i, !prof !335

do.body179.i:                                     ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1413, 0\0A.popsection", ""() #9, !srcloc !391
  unreachable

do.end187.i:                                      ; preds = %do.body166.i
  %call188.i = tail call i32 @ntfs_get_size_for_mapping_pairs(ptr noundef %vol, ptr noundef %rl2.1.lcssa.i, i64 noundef %123, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call188.i)
  %cmp189.i = icmp slt i32 %call188.i, 1
  br i1 %cmp189.i, label %if.then197.i, label %if.end202.i, !prof !338

if.then197.i:                                     ; preds = %do.end187.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %133, ptr noundef nonnull @.str.105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188.i)
  %tobool199.not.i = icmp eq i32 %call188.i, 0
  %spec.store.select.i = select i1 %tobool199.not.i, i32 -5, i32 %call188.i
  br label %undo_alloc.i

if.end202.i:                                      ; preds = %do.end187.i
  %length203.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %120, i32 0, i32 1
  %134 = ptrtoint ptr %length203.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %length203.i, align 1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #9
  %137 = ptrtoint ptr %call101.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call101.i, align 4
  %mapping_pairs_offset.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %120, i32 0, i32 7, i32 0, i32 2
  %139 = ptrtoint ptr %mapping_pairs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %mapping_pairs_offset.i, align 1
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #9
  %conv206.i = zext i16 %141 to i32
  %add207.i = add nuw i32 %call188.i, %conv206.i
  %call208.i = tail call i32 @ntfs_attr_record_resize(ptr noundef %138, ptr noundef %120, i32 noundef %add207.i) #9
  %142 = zext i32 %call208.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call208.i, label %if.then219.i [
    i32 0, label %if.end223.i
    i32 -28, label %if.end221.i
  ], !prof !392

if.then219.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %144, ptr noundef nonnull @.str.106) #9
  br label %undo_alloc.i

if.end221.i:                                      ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %146, ptr noundef nonnull @.str.107) #9
  br label %undo_alloc.i

if.end223.i:                                      ; preds = %if.end202.i
  %bf.set226.i = or i8 %status.sroa.0.0.i, 32
  %147 = ptrtoint ptr %mapping_pairs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %mapping_pairs_offset.i, align 1
  %149 = tail call i16 @llvm.bswap.i16(i16 %148) #9
  %conv229.i = zext i16 %149 to i32
  %add.ptr230.i = getelementptr i8, ptr %120, i32 %conv229.i
  %call231.i = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %vol, ptr noundef %add.ptr230.i, i32 noundef %call188.i, ptr noundef %rl2.1.lcssa.i, i64 noundef %123, i64 noundef -1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.i)
  %tobool232.not.i = icmp eq i32 %call231.i, 0
  br i1 %tobool232.not.i, label %if.end241.i, label %if.then239.i, !prof !335

if.then239.i:                                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %151, ptr noundef nonnull @.str.108) #9
  br label %undo_alloc.i

if.end241.i:                                      ; preds = %if.end223.i
  %152 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx114.i, align 8
  %sub244.i = add i64 %153, -1
  %154 = tail call i64 @llvm.bswap.i64(i64 %sub244.i) #9
  %highest_vcn.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %120, i32 0, i32 7, i32 0, i32 1
  %155 = ptrtoint ptr %highest_vcn.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 8)
  store i64 %154, ptr %highest_vcn.i, align 1
  %156 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 8)
  %157 = load i64, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %157)
  %tobool249.not.i = icmp eq i64 %157, 0
  br i1 %tobool249.not.i, label %if.end241.i.do.body268.i_crit_edge, label %if.then250.i

if.end241.i.do.body268.i_crit_edge:               ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body268.i

if.then250.i:                                     ; preds = %if.end241.i
  %ntfs_ino.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call101.i, i32 0, i32 3
  %158 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ntfs_ino.i, align 4
  %page.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %159, i32 0, i32 13
  %160 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %page.i.i, align 8
  tail call void @flush_dcache_page(ptr noundef %161) #9
  %162 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ntfs_ino.i, align 4
  %state.i.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %163, i32 0, i32 3
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i1111 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i1111, label %if.then.i.i1112, label %if.then250.i.mark_mft_record_dirty.exit.i_crit_edge

if.then250.i.mark_mft_record_dirty.exit.i_crit_edge: ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mark_mft_record_dirty.exit.i

if.then.i.i1112:                                  ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %163) #9
  br label %mark_mft_record_dirty.exit.i

mark_mft_record_dirty.exit.i:                     ; preds = %if.then.i.i1112, %if.then250.i.mark_mft_record_dirty.exit.i_crit_edge
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call101.i) #9
  %164 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %type.i, align 4
  %166 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %name.i, align 8
  %168 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %name_len.i, align 4
  %call255.i = tail call i32 @ntfs_attr_lookup(i32 noundef %165, ptr noundef %167, i32 noundef %169, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call101.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255.i)
  %tobool256.not.i = icmp eq i32 %call255.i, 0
  br i1 %tobool256.not.i, label %if.end265.i, label %if.then263.i, !prof !335

if.then263.i:                                     ; preds = %mark_mft_record_dirty.exit.i
  %170 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %171, ptr noundef nonnull @.str.109) #9
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call101.i) #9
  %172 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %type.i, align 4
  %174 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %name.i, align 8
  %176 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %name_len.i, align 4
  %178 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %arrayidx114.i, align 8
  %call303.i = tail call i32 @ntfs_attr_lookup(i32 noundef %173, ptr noundef %175, i32 noundef %177, i32 noundef 0, i64 noundef %179, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call101.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303.i)
  %tobool304.not.i = icmp eq i32 %call303.i, 0
  br i1 %tobool304.not.i, label %if.end332.i, label %if.then305.i

if.end265.i:                                      ; preds = %mark_mft_record_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %attr.i, align 4
  br label %do.body268.i

do.body268.i:                                     ; preds = %if.end265.i, %if.end241.i.do.body268.i_crit_edge
  %a.0.i = phi ptr [ %181, %if.end265.i ], [ %120, %if.end241.i.do.body268.i_crit_edge ]
  %call275.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i608.i) #9
  %cluster_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 11
  %182 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cluster_size.i, align 8
  %conv278.i = zext i32 %183 to i64
  %184 = ptrtoint ptr %allocated_size.i1092 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %allocated_size.i1092, align 8
  %add280.i = add i64 %185, %conv278.i
  store i64 %add280.i, ptr %allocated_size.i1092, align 8
  %186 = tail call i64 @llvm.bswap.i64(i64 %add280.i) #9
  %allocated_size284.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0.i, i32 0, i32 7, i32 0, i32 5
  %187 = ptrtoint ptr %allocated_size284.i to i32
  call void @__asan_storeN_noabort(i32 %187, i32 8)
  store i64 %186, ptr %allocated_size284.i, align 1
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i608.i, i32 noundef %call275.i) #9
  %ntfs_ino294.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call101.i, i32 0, i32 3
  %188 = ptrtoint ptr %ntfs_ino294.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ntfs_ino294.i, align 4
  %page.i614.i = getelementptr inbounds %struct._ntfs_inode, ptr %189, i32 0, i32 13
  %190 = ptrtoint ptr %page.i614.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %page.i614.i, align 8
  tail call void @flush_dcache_page(ptr noundef %191) #9
  %192 = ptrtoint ptr %ntfs_ino294.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ntfs_ino294.i, align 4
  %state.i.i615.i = getelementptr inbounds %struct._ntfs_inode, ptr %193, i32 0, i32 3
  %call.i.i616.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i615.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i616.i)
  %tobool.not.i617.i = icmp eq i32 %call.i.i616.i, 0
  br i1 %tobool.not.i617.i, label %if.then.i618.i, label %do.body268.i.mark_mft_record_dirty.exit619.i_crit_edge

do.body268.i.mark_mft_record_dirty.exit619.i_crit_edge: ; preds = %do.body268.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mark_mft_record_dirty.exit619.i

if.then.i618.i:                                   ; preds = %do.body268.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %193) #9
  br label %mark_mft_record_dirty.exit619.i

mark_mft_record_dirty.exit619.i:                  ; preds = %if.then.i618.i, %do.body268.i.mark_mft_record_dirty.exit619.i_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call101.i) #9
  %page1.i.i = getelementptr i8, ptr %58, i32 -240
  %194 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %page1.i.i, align 8
  %tobool.not.i620.i = icmp eq ptr %195, null
  br i1 %tobool.not.i620.i, label %do.body5.i.i, label %do.end10.i.i, !prof !338

do.body5.i.i:                                     ; preds = %mark_mft_record_dirty.exit619.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10.i.i:                                     ; preds = %mark_mft_record_dirty.exit619.i
  %mft_no.i.i = getelementptr i8, ptr %58, i32 -460
  %196 = ptrtoint ptr %mft_no.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mft_no.i.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %197) #9
  %198 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %page1.i.i, align 8
  %tobool.not.i.i.i1113 = icmp eq ptr %199, null
  br i1 %tobool.not.i.i.i1113, label %do.body4.i.i.i, label %ntfs_mft_bitmap_extend_allocation_nolock.exit.thread1296, !prof !338

do.body4.i.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

ntfs_mft_bitmap_extend_allocation_nolock.exit.thread1296: ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %199) #9
  %200 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %page1.i.i, align 8
  %page_ofs.i.i.i = getelementptr i8, ptr %58, i32 -236
  %201 = ptrtoint ptr %page_ofs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %page_ofs.i.i.i, align 4
  %mrec_lock.i.i = getelementptr i8, ptr %58, i32 -332
  tail call void @mutex_unlock(ptr noundef %mrec_lock.i.i) #9
  %count.i.i = getelementptr i8, ptr %58, i32 -452
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #9
  %202 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #9, !srcloc !337
  tail call void @up_write(ptr noundef %lock.i) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1490, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef nonnull @.str.12) #9
  br label %do.body177

if.then305.i:                                     ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #11
  %203 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %204, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.150) #9
  %call314.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i608.i) #9
  %cluster_size317.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 11
  %205 = ptrtoint ptr %cluster_size317.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cluster_size317.i, align 8
  %conv318.i = zext i32 %206 to i64
  %207 = ptrtoint ptr %allocated_size.i1092 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %allocated_size.i1092, align 8
  %add320.i = add i64 %208, %conv318.i
  store i64 %add320.i, ptr %allocated_size.i1092, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i608.i, i32 noundef %call314.i) #9
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call101.i) #9
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i.i1090) #9
  tail call void @up_write(ptr noundef %lock.i) #9
  %flags.i621.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i621.i) #9
  br label %err_out

if.end332.i:                                      ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #11
  %209 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %attr.i, align 4
  %211 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %arrayidx114.i, align 8
  %sub336.i = add i64 %212, -2
  %213 = tail call i64 @llvm.bswap.i64(i64 %sub336.i) #9
  %highest_vcn339.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %210, i32 0, i32 7, i32 0, i32 1
  %214 = ptrtoint ptr %highest_vcn339.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 8)
  store i64 %213, ptr %highest_vcn339.i, align 1
  br label %undo_alloc.i

undo_alloc.i:                                     ; preds = %if.end332.i, %if.then239.i, %if.end221.i, %if.then219.i, %if.then197.i, %if.then124.i, %if.then111.i1110, %if.then97.i
  %rl2.2.i = phi ptr [ %rl2.0.i, %if.then97.i ], [ %rl2.0.i, %if.then111.i1110 ], [ %rl2.1.lcssa.i, %if.then197.i ], [ %rl2.1.lcssa.i, %if.then219.i ], [ %rl2.1.lcssa.i, %if.end221.i ], [ %rl2.1.lcssa.i, %if.then239.i ], [ %rl2.1.lcssa.i, %if.end332.i ], [ %rl2.0.i, %if.then124.i ]
  %ctx.0.i = phi ptr [ null, %if.then97.i ], [ null, %if.then111.i1110 ], [ %call101.i, %if.then197.i ], [ %call101.i, %if.then219.i ], [ %call101.i, %if.end221.i ], [ %call101.i, %if.then239.i ], [ %call101.i, %if.end332.i ], [ %call101.i, %if.then124.i ]
  %a.1.i = phi ptr [ null, %if.then97.i ], [ null, %if.then111.i1110 ], [ %120, %if.then197.i ], [ %120, %if.then219.i ], [ %120, %if.end221.i ], [ %120, %if.then239.i ], [ %210, %if.end332.i ], [ null, %if.then124.i ]
  %ret.1.i = phi i32 [ %106, %if.then97.i ], [ -12, %if.then111.i1110 ], [ %spec.store.select.i, %if.then197.i ], [ %call208.i, %if.then219.i ], [ -95, %if.end221.i ], [ %call231.i, %if.then239.i ], [ %call255.i, %if.end332.i ], [ %spec.select.i, %if.then124.i ]
  %old_alen.0.i = phi i32 [ 0, %if.then97.i ], [ 0, %if.then111.i1110 ], [ 0, %if.then197.i ], [ %136, %if.then219.i ], [ %136, %if.end221.i ], [ %136, %if.then239.i ], [ %136, %if.end332.i ], [ 0, %if.then124.i ]
  %status.sroa.0.1.i = phi i8 [ %status.sroa.0.0.i, %if.then97.i ], [ %status.sroa.0.0.i, %if.then111.i1110 ], [ %status.sroa.0.0.i, %if.then197.i ], [ %status.sroa.0.0.i, %if.then219.i ], [ %status.sroa.0.0.i, %if.end221.i ], [ %bf.set226.i, %if.then239.i ], [ %bf.set226.i, %if.end332.i ], [ %status.sroa.0.0.i, %if.then124.i ]
  %ll.0.i = phi i64 [ %shr29.i, %if.then97.i ], [ %shr29.i, %if.then111.i1110 ], [ %123, %if.then197.i ], [ %123, %if.then219.i ], [ %123, %if.end221.i ], [ %123, %if.then239.i ], [ %123, %if.end332.i ], [ %shr29.i, %if.then124.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %status.sroa.0.1.i)
  %tobool341.not.i = icmp sgt i8 %status.sroa.0.1.i, -1
  br i1 %tobool341.not.i, label %if.else347.i, label %if.then342.i

if.then342.i:                                     ; preds = %undo_alloc.i
  call void @__sanitizer_cov_trace_pc() #11
  %length343.i = getelementptr inbounds %struct.runlist_element, ptr %rl.1.i, i32 0, i32 2
  %215 = ptrtoint ptr %length343.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %length343.i, align 8
  %dec.i = add i64 %216, -1
  store i64 %dec.i, ptr %length343.i, align 8
  %arrayidx344.i = getelementptr %struct.runlist_element, ptr %rl.1.i, i32 1
  %217 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %arrayidx344.i, align 8
  %dec346.i = add i64 %218, -1
  store i64 %dec346.i, ptr %arrayidx344.i, align 8
  br label %if.end359.i

if.else347.i:                                     ; preds = %undo_alloc.i
  %219 = and i8 %status.sroa.0.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool351.not.i = icmp eq i8 %219, 0
  br i1 %tobool351.not.i, label %if.else347.i.if.end359.i_crit_edge, label %if.then352.i

if.else347.i.if.end359.i_crit_edge:               ; preds = %if.else347.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end359.i

if.then352.i:                                     ; preds = %if.else347.i
  call void @__sanitizer_cov_trace_pc() #11
  %lcn353.i = getelementptr inbounds %struct.runlist_element, ptr %rl.1.i, i32 0, i32 1
  %220 = ptrtoint ptr %lcn353.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %lcn353.i, align 8
  %lcn355.i = getelementptr %struct.runlist_element, ptr %rl.1.i, i32 1, i32 1
  %222 = ptrtoint ptr %lcn355.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %lcn355.i, align 8
  store i64 %223, ptr %lcn353.i, align 8
  %length357.i = getelementptr inbounds %struct.runlist_element, ptr %rl.1.i, i32 0, i32 2
  %224 = ptrtoint ptr %length357.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 0, ptr %length357.i, align 8
  br label %if.end359.i

if.end359.i:                                      ; preds = %if.then352.i, %if.else347.i.if.end359.i_crit_edge, %if.then342.i
  %lcn.0.i = phi i64 [ %add.i1099, %if.then342.i ], [ %221, %if.then352.i ], [ %add.i1099, %if.else347.i.if.end359.i_crit_edge ]
  tail call void @down_write(ptr noundef %lcnbmp_lock.i) #9
  %225 = ptrtoint ptr %lcnbmp_ino.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %lcnbmp_ino.i, align 4
  %call.i.i.i622.i = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef %226, i64 noundef %lcn.0.i, i64 noundef 1, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i622.i)
  %tobool363.not.i = icmp eq i32 %call.i.i.i622.i, 0
  br i1 %tobool363.not.i, label %if.end359.i.if.end366.i_crit_edge, label %if.then364.i

if.end359.i.if.end366.i_crit_edge:                ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end366.i

if.then364.i:                                     ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %228, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.150) #9
  %flags.i623.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i623.i) #9
  br label %if.end366.i

if.end366.i:                                      ; preds = %if.then364.i, %if.end359.i.if.end366.i_crit_edge
  tail call void @up_write(ptr noundef %lcnbmp_lock.i) #9
  %229 = and i8 %status.sroa.0.1.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool371.not.i = icmp eq i8 %229, 0
  br i1 %tobool371.not.i, label %if.end366.i.if.end394.i_crit_edge, label %if.then372.i

if.end366.i.if.end394.i_crit_edge:                ; preds = %if.end366.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end394.i

if.then372.i:                                     ; preds = %if.end366.i
  %mapping_pairs_offset374.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.1.i, i32 0, i32 7, i32 0, i32 2
  %230 = ptrtoint ptr %mapping_pairs_offset374.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %231 = load i16, ptr %mapping_pairs_offset374.i, align 1
  %232 = tail call i16 @llvm.bswap.i16(i16 %231) #9
  %conv375.i = zext i16 %232 to i32
  %add.ptr376.i = getelementptr i8, ptr %a.1.i, i32 %conv375.i
  %sub380.i = sub i32 %old_alen.0.i, %conv375.i
  %call381.i = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %vol, ptr noundef %add.ptr376.i, i32 noundef %sub380.i, ptr noundef %rl2.2.i, i64 noundef %ll.0.i, i64 noundef -1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381.i)
  %tobool382.not.i = icmp eq i32 %call381.i, 0
  br i1 %tobool382.not.i, label %if.then372.i.if.end385.i_crit_edge, label %if.then383.i

if.then372.i.if.end385.i_crit_edge:               ; preds = %if.then372.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end385.i

if.then383.i:                                     ; preds = %if.then372.i
  call void @__sanitizer_cov_trace_pc() #11
  %233 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %234, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.150) #9
  %flags.i624.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i624.i) #9
  br label %if.end385.i

if.end385.i:                                      ; preds = %if.then383.i, %if.then372.i.if.end385.i_crit_edge
  %235 = ptrtoint ptr %ctx.0.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ctx.0.i, align 4
  %call387.i = tail call i32 @ntfs_attr_record_resize(ptr noundef %236, ptr noundef %a.1.i, i32 noundef %old_alen.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387.i)
  %tobool388.not.i = icmp eq i32 %call387.i, 0
  br i1 %tobool388.not.i, label %if.end385.i.if.end391.i_crit_edge, label %if.then389.i

if.end385.i.if.end391.i_crit_edge:                ; preds = %if.end385.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end391.i

if.then389.i:                                     ; preds = %if.end385.i
  call void @__sanitizer_cov_trace_pc() #11
  %237 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_allocation_nolock, ptr noundef %238, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.150) #9
  %flags.i625.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i625.i) #9
  br label %if.end391.i

if.end391.i:                                      ; preds = %if.then389.i, %if.end385.i.if.end391.i_crit_edge
  %ntfs_ino392.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.0.i, i32 0, i32 3
  %239 = ptrtoint ptr %ntfs_ino392.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ntfs_ino392.i, align 4
  %page.i626.i = getelementptr inbounds %struct._ntfs_inode, ptr %240, i32 0, i32 13
  %241 = ptrtoint ptr %page.i626.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %page.i626.i, align 8
  tail call void @flush_dcache_page(ptr noundef %242) #9
  %243 = ptrtoint ptr %ntfs_ino392.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ntfs_ino392.i, align 4
  %state.i.i627.i = getelementptr inbounds %struct._ntfs_inode, ptr %244, i32 0, i32 3
  %call.i.i628.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i627.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i628.i)
  %tobool.not.i629.i = icmp eq i32 %call.i.i628.i, 0
  br i1 %tobool.not.i629.i, label %if.then.i630.i, label %if.end391.i.if.end394.i_crit_edge

if.end391.i.if.end394.i_crit_edge:                ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end394.i

if.then.i630.i:                                   ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %244) #9
  br label %if.end394.i

if.end394.i:                                      ; preds = %if.then.i630.i, %if.end391.i.if.end394.i_crit_edge, %if.end366.i.if.end394.i_crit_edge
  %tobool395.not.i = icmp eq ptr %ctx.0.i, null
  br i1 %tobool395.not.i, label %if.end394.i.if.end397.i_crit_edge, label %if.then396.i

if.end394.i.if.end397.i_crit_edge:                ; preds = %if.end394.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end397.i

if.then396.i:                                     ; preds = %if.end394.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.0.i) #9
  br label %if.end397.i

if.end397.i:                                      ; preds = %if.then396.i, %if.end394.i.if.end397.i_crit_edge
  br i1 %cmp.i613.i, label %if.end397.i.if.end400.i_crit_edge, label %if.then399.i

if.end397.i.if.end400.i_crit_edge:                ; preds = %if.end397.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end400.i

if.then399.i:                                     ; preds = %if.end397.i
  %page1.i633.i = getelementptr i8, ptr %58, i32 -240
  %245 = ptrtoint ptr %page1.i633.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %page1.i633.i, align 8
  %tobool.not.i634.i = icmp eq ptr %246, null
  br i1 %tobool.not.i634.i, label %do.body5.i635.i, label %do.end10.i638.i, !prof !338

do.body5.i635.i:                                  ; preds = %if.then399.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10.i638.i:                                  ; preds = %if.then399.i
  %mft_no.i636.i = getelementptr i8, ptr %58, i32 -460
  %247 = ptrtoint ptr %mft_no.i636.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %mft_no.i636.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %248) #9
  %249 = ptrtoint ptr %page1.i633.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %page1.i633.i, align 8
  %tobool.not.i.i637.i = icmp eq ptr %250, null
  br i1 %tobool.not.i.i637.i, label %do.body4.i.i639.i, label %unmap_mft_record.exit644.i, !prof !338

do.body4.i.i639.i:                                ; preds = %do.end10.i638.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

unmap_mft_record.exit644.i:                       ; preds = %do.end10.i638.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %250) #9
  %251 = ptrtoint ptr %page1.i633.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %page1.i633.i, align 8
  %page_ofs.i.i640.i = getelementptr i8, ptr %58, i32 -236
  %252 = ptrtoint ptr %page_ofs.i.i640.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 0, ptr %page_ofs.i.i640.i, align 4
  %mrec_lock.i641.i = getelementptr i8, ptr %58, i32 -332
  tail call void @mutex_unlock(ptr noundef %mrec_lock.i641.i) #9
  %count.i642.i = getelementptr i8, ptr %58, i32 -452
  %call.i.i.i643.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i642.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i642.i, i32 1, i32 3, i32 1) #9
  %253 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i642.i, ptr %count.i642.i, i32 1, ptr elementtype(i32) %count.i642.i) #9, !srcloc !337
  br label %if.end400.i

if.end400.i:                                      ; preds = %unmap_mft_record.exit644.i, %if.end397.i.if.end400.i_crit_edge
  tail call void @up_write(ptr noundef %lock.i) #9
  br label %ntfs_mft_bitmap_extend_allocation_nolock.exit

ntfs_mft_bitmap_extend_allocation_nolock.exit:    ; preds = %if.end400.i, %if.end83.i, %if.then65.i, %if.then34.i, %if.then.i1098.ntfs_mft_bitmap_extend_allocation_nolock.exit_crit_edge
  %retval.0.i1114 = phi i32 [ %79, %if.then34.i ], [ %93, %if.then65.i ], [ %100, %if.end83.i ], [ %ret.1.i, %if.end400.i ], [ %71, %if.then.i1098.ntfs_mft_bitmap_extend_allocation_nolock.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i1114)
  %tobool167.not = icmp eq i32 %retval.0.i1114, 0
  br i1 %tobool167.not, label %ntfs_mft_bitmap_extend_allocation_nolock.exit.do.body177_crit_edge, label %ntfs_mft_bitmap_extend_allocation_nolock.exit.err_out_crit_edge, !prof !335

ntfs_mft_bitmap_extend_allocation_nolock.exit.err_out_crit_edge: ; preds = %ntfs_mft_bitmap_extend_allocation_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

ntfs_mft_bitmap_extend_allocation_nolock.exit.do.body177_crit_edge: ; preds = %ntfs_mft_bitmap_extend_allocation_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body177

do.body177:                                       ; preds = %ntfs_mft_bitmap_extend_allocation_nolock.exit.do.body177_crit_edge, %ntfs_mft_bitmap_extend_allocation_nolock.exit.thread1296
  %call184 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i1086) #9
  %254 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %allocated_size, align 8
  %256 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mftbmp_ino, align 4
  %call189 = tail call fastcc i64 @i_size_read(ptr noundef %257)
  %258 = ptrtoint ptr %initialized_size100 to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %initialized_size100, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2339, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.42, i64 noundef %255, i64 noundef %call189, i64 noundef %259) #9
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i1086, i32 noundef %call184) #9
  br label %if.end200

if.end200:                                        ; preds = %do.body177, %do.body142.if.end200_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1583, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef nonnull @.str.114) #9
  %260 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mft_ino, align 8
  %add.ptr.i.i1116 = getelementptr i8, ptr %261, i32 -528
  %262 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mftbmp_ino, align 4
  %add.ptr.i227.i = getelementptr i8, ptr %263, i32 -528
  %call2.i1118 = tail call ptr @map_mft_record(ptr noundef %add.ptr.i.i1116) #9
  %cmp.i.i1119 = icmp ugt ptr %call2.i1118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i1119, label %if.then.i1120, label %if.end.i

if.then.i1120:                                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  %264 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef %265, ptr noundef nonnull @.str.55) #9
  %266 = ptrtoint ptr %call2.i1118 to i32
  br label %err_out

if.end.i:                                         ; preds = %if.end200
  %call5.i = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i.i1116, ptr noundef %call2.i1118) #9
  %tobool.not.i1121 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i1121, label %if.then9.i, label %if.end11.i, !prof !338

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %267 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef %268, ptr noundef nonnull @.str.56) #9
  br label %unm_err_out.i

if.end11.i:                                       ; preds = %if.end.i
  %type.i1122 = getelementptr i8, ptr %263, i32 -444
  %269 = ptrtoint ptr %type.i1122 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %type.i1122, align 4
  %name.i1123 = getelementptr i8, ptr %263, i32 -440
  %271 = ptrtoint ptr %name.i1123 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %name.i1123, align 8
  %name_len.i1124 = getelementptr i8, ptr %263, i32 -436
  %273 = ptrtoint ptr %name_len.i1124 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %name_len.i1124, align 4
  %call12.i = tail call i32 @ntfs_attr_lookup(i32 noundef %270, ptr noundef %272, i32 noundef %274, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end24.i, label %if.then20.i, !prof !335

if.then20.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %275 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef %276, ptr noundef nonnull @.str.109) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12.i)
  %cmp.i = icmp eq i32 %call12.i, -2
  %spec.store.select.i1125 = select i1 %cmp.i, i32 -5, i32 %call12.i
  br label %put_err_out.i

if.end24.i:                                       ; preds = %if.end11.i
  %attr.i1126 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call5.i, i32 0, i32 1
  %277 = ptrtoint ptr %attr.i1126 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %attr.i1126, align 4
  %call26.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i227.i) #9
  %call27.i = tail call fastcc i64 @i_size_read(ptr noundef %263) #9
  %initialized_size.i1127 = getelementptr i8, ptr %263, i32 -480
  %279 = ptrtoint ptr %initialized_size.i1127 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %initialized_size.i1127, align 8
  %add.i1128 = add i64 %280, 8
  store i64 %add.i1128, ptr %initialized_size.i1127, align 8
  %281 = tail call i64 @llvm.bswap.i64(i64 %add.i1128) #9
  %initialized_size31.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %278, i32 0, i32 7, i32 0, i32 7
  %282 = ptrtoint ptr %initialized_size31.i to i32
  call void @__asan_storeN_noabort(i32 %282, i32 8)
  store i64 %281, ptr %initialized_size31.i, align 1
  %283 = ptrtoint ptr %initialized_size.i1127 to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %initialized_size.i1127, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %284, i64 %call27.i)
  %cmp33.i = icmp sgt i64 %284, %call27.i
  br i1 %cmp33.i, label %if.then35.i, label %if.end24.i.do.body41.i_crit_edge

if.end24.i.do.body41.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41.i

if.then35.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @i_size_write(ptr noundef %263, i64 noundef %284) #9
  %285 = ptrtoint ptr %initialized_size.i1127 to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %initialized_size.i1127, align 8
  %287 = tail call i64 @llvm.bswap.i64(i64 %286) #9
  %data_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %278, i32 0, i32 7, i32 0, i32 6
  %288 = ptrtoint ptr %data_size.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 8)
  store i64 %287, ptr %data_size.i, align 1
  br label %do.body41.i

do.body41.i:                                      ; preds = %if.then35.i, %if.end24.i.do.body41.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i227.i, i32 noundef %call26.i) #9
  %ntfs_ino.i1129 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call5.i, i32 0, i32 3
  %289 = ptrtoint ptr %ntfs_ino.i1129 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ntfs_ino.i1129, align 4
  %page.i.i1130 = getelementptr inbounds %struct._ntfs_inode, ptr %290, i32 0, i32 13
  %291 = ptrtoint ptr %page.i.i1130 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %page.i.i1130, align 8
  tail call void @flush_dcache_page(ptr noundef %292) #9
  %293 = ptrtoint ptr %ntfs_ino.i1129 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ntfs_ino.i1129, align 4
  %state.i.i.i1131 = getelementptr inbounds %struct._ntfs_inode, ptr %294, i32 0, i32 3
  %call.i.i.i1132 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i1131) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1132)
  %tobool.not.i.i1133 = icmp eq i32 %call.i.i.i1132, 0
  br i1 %tobool.not.i.i1133, label %if.then.i.i1134, label %do.body41.i.mark_mft_record_dirty.exit.i1136_crit_edge

do.body41.i.mark_mft_record_dirty.exit.i1136_crit_edge: ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mark_mft_record_dirty.exit.i1136

if.then.i.i1134:                                  ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %294) #9
  br label %mark_mft_record_dirty.exit.i1136

mark_mft_record_dirty.exit.i1136:                 ; preds = %if.then.i.i1134, %do.body41.i.mark_mft_record_dirty.exit.i1136_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call5.i) #9
  %page1.i.i1135 = getelementptr i8, ptr %261, i32 -240
  %295 = ptrtoint ptr %page1.i.i1135 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %page1.i.i1135, align 8
  %tobool.not.i228.i = icmp eq ptr %296, null
  br i1 %tobool.not.i228.i, label %do.body5.i.i1137, label %do.end10.i.i1140, !prof !338

do.body5.i.i1137:                                 ; preds = %mark_mft_record_dirty.exit.i1136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10.i.i1140:                                 ; preds = %mark_mft_record_dirty.exit.i1136
  %mft_no.i.i1138 = getelementptr i8, ptr %261, i32 -460
  %297 = ptrtoint ptr %mft_no.i.i1138 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %mft_no.i.i1138, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %298) #9
  %299 = ptrtoint ptr %page1.i.i1135 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %page1.i.i1135, align 8
  %tobool.not.i.i.i1139 = icmp eq ptr %300, null
  br i1 %tobool.not.i.i.i1139, label %do.body4.i.i.i1141, label %unmap_mft_record.exit.i1146, !prof !338

do.body4.i.i.i1141:                               ; preds = %do.end10.i.i1140
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

unmap_mft_record.exit.i1146:                      ; preds = %do.end10.i.i1140
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %300) #9
  %301 = ptrtoint ptr %page1.i.i1135 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr null, ptr %page1.i.i1135, align 8
  %page_ofs.i.i.i1142 = getelementptr i8, ptr %261, i32 -236
  %302 = ptrtoint ptr %page_ofs.i.i.i1142 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 0, ptr %page_ofs.i.i.i1142, align 4
  %mrec_lock.i.i1143 = getelementptr i8, ptr %261, i32 -332
  tail call void @mutex_unlock(ptr noundef %mrec_lock.i.i1143) #9
  %count.i.i1144 = getelementptr i8, ptr %261, i32 -452
  %call.i.i.i.i1145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i1144, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i.i1144, i32 1, i32 3, i32 1) #9
  %303 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i1144, ptr %count.i.i1144, i32 1, ptr elementtype(i32) %count.i.i1144) #9, !srcloc !337
  %call51.i = tail call i32 @ntfs_attr_set(ptr noundef %add.ptr.i227.i, i64 noundef %280, i64 noundef 8, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %ntfs_mft_bitmap_extend_initialized_nolock.exit.thread1302, label %if.end62.i, !prof !335

ntfs_mft_bitmap_extend_initialized_nolock.exit.thread1302: ; preds = %unmap_mft_record.exit.i1146
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1635, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef nonnull @.str.115) #9
  %call219 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i1086) #9
  %304 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %allocated_size, align 8
  %306 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %mftbmp_ino, align 4
  %call224 = tail call fastcc i64 @i_size_read(ptr noundef %307)
  %308 = ptrtoint ptr %initialized_size100 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %initialized_size100, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2360, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.43, i64 noundef %305, i64 noundef %call224, i64 noundef %309) #9
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i1086, i32 noundef %call219) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2363, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.44, i64 noundef %shl) #9
  br label %found_free_rec

if.end62.i:                                       ; preds = %unmap_mft_record.exit.i1146
  %310 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef %311, ptr noundef nonnull @.str.116) #9
  %call64.i = tail call ptr @map_mft_record(ptr noundef %add.ptr.i.i1116) #9
  %cmp.i229.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229.i, label %if.then66.i, label %if.end68.i

if.then66.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  %312 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef %313, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.150) #9
  %flags.i.i1147 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i1147) #9
  br label %err_out

if.end68.i:                                       ; preds = %if.end62.i
  %call69.i = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i.i1116, ptr noundef %call64.i) #9
  %tobool70.not.i = icmp eq ptr %call69.i, null
  br i1 %tobool70.not.i, label %if.then79.i, label %if.end81.i, !prof !338

if.then79.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  %314 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef %315, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.150) #9
  %flags.i230.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i230.i) #9
  br label %unm_err_out.i

if.end81.i:                                       ; preds = %if.end68.i
  %316 = ptrtoint ptr %type.i1122 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %type.i1122, align 4
  %318 = ptrtoint ptr %name.i1123 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %name.i1123, align 8
  %320 = ptrtoint ptr %name_len.i1124 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %name_len.i1124, align 4
  %call85.i = tail call i32 @ntfs_attr_lookup(i32 noundef %317, ptr noundef %319, i32 noundef %321, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call69.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end89.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  %322 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef %323, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.150) #9
  %flags.i231.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i231.i) #9
  br label %put_err_out.i

put_err_out.i:                                    ; preds = %if.then87.i, %if.then20.i
  %ctx.0.i1148 = phi ptr [ %call5.i, %if.then20.i ], [ %call69.i, %if.then87.i ]
  %ret.0.i = phi i32 [ %spec.store.select.i1125, %if.then20.i ], [ %call51.i, %if.then87.i ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.0.i1148) #9
  br label %unm_err_out.i

unm_err_out.i:                                    ; preds = %put_err_out.i, %if.then79.i, %if.then9.i
  %ret.1.i1149 = phi i32 [ -12, %if.then9.i ], [ %ret.0.i, %put_err_out.i ], [ %call51.i, %if.then79.i ]
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i.i1116) #9
  br label %err_out

if.end89.i:                                       ; preds = %if.end81.i
  %attr90.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call69.i, i32 0, i32 1
  %324 = ptrtoint ptr %attr90.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %attr90.i, align 4
  %call98.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i227.i) #9
  %326 = ptrtoint ptr %initialized_size.i1127 to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 %280, ptr %initialized_size.i1127, align 8
  %327 = tail call i64 @llvm.bswap.i64(i64 %280) #9
  %initialized_size104.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %325, i32 0, i32 7, i32 0, i32 7
  %328 = ptrtoint ptr %initialized_size104.i to i32
  call void @__asan_storeN_noabort(i32 %328, i32 8)
  store i64 %327, ptr %initialized_size104.i, align 1
  %call105.i = tail call fastcc i64 @i_size_read(ptr noundef %263) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call105.i, i64 %call27.i)
  %cmp106.not.i = icmp eq i64 %call105.i, %call27.i
  br i1 %cmp106.not.i, label %if.end89.i.do.body113.i_crit_edge, label %if.then108.i

if.end89.i.do.body113.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body113.i

if.then108.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @i_size_write(ptr noundef %263, i64 noundef %call27.i) #9
  %329 = tail call i64 @llvm.bswap.i64(i64 %call27.i) #9
  %data_size111.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %325, i32 0, i32 7, i32 0, i32 6
  %330 = ptrtoint ptr %data_size111.i to i32
  call void @__asan_storeN_noabort(i32 %330, i32 8)
  store i64 %329, ptr %data_size111.i, align 1
  br label %do.body113.i

do.body113.i:                                     ; preds = %if.then108.i, %if.end89.i.do.body113.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i227.i, i32 noundef %call98.i) #9
  %ntfs_ino122.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call69.i, i32 0, i32 3
  %331 = ptrtoint ptr %ntfs_ino122.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %ntfs_ino122.i, align 4
  %page.i232.i = getelementptr inbounds %struct._ntfs_inode, ptr %332, i32 0, i32 13
  %333 = ptrtoint ptr %page.i232.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %page.i232.i, align 8
  tail call void @flush_dcache_page(ptr noundef %334) #9
  %335 = ptrtoint ptr %ntfs_ino122.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ntfs_ino122.i, align 4
  tail call fastcc void @mark_mft_record_dirty(ptr noundef %336) #9
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call69.i) #9
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i.i1116) #9
  %call131.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i227.i) #9
  %allocated_size.i1150 = getelementptr i8, ptr %263, i32 -472
  %337 = ptrtoint ptr %allocated_size.i1150 to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %allocated_size.i1150, align 8
  %call134.i = tail call fastcc i64 @i_size_read(ptr noundef %263) #9
  %339 = ptrtoint ptr %initialized_size.i1127 to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %initialized_size.i1127, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1683, ptr noundef nonnull @__func__.ntfs_mft_bitmap_extend_initialized_nolock, ptr noundef nonnull @.str.120, i64 noundef %338, i64 noundef %call134.i, i64 noundef %340) #9
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i227.i, i32 noundef %call131.i) #9
  br label %err_out

found_free_rec:                                   ; preds = %ntfs_mft_bitmap_extend_initialized_nolock.exit.thread1302, %if.end129
  %bit.0 = phi i64 [ %52, %if.end129 ], [ %shl, %ntfs_mft_bitmap_extend_initialized_nolock.exit.thread1302 ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2366, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.45) #9
  %341 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mftbmp_ino, align 4
  %call.i.i.i1152 = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef %342, i64 noundef %bit.0, i64 noundef 1, i8 noundef zeroext 1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1152)
  %tobool237.not = icmp eq i32 %call.i.i.i1152, 0
  br i1 %tobool237.not, label %if.end246, label %if.then244, !prof !335

if.then244:                                       ; preds = %found_free_rec
  call void @__sanitizer_cov_trace_pc() #11
  %343 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %344, ptr noundef nonnull @.str.46) #9
  br label %err_out

if.end246:                                        ; preds = %found_free_rec
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2373, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.47, i64 noundef %bit.0) #9
  br label %have_alloc_rec

have_alloc_rec:                                   ; preds = %if.end246, %if.then65
  %bit.1 = phi i64 [ %conv621327, %if.then65 ], [ %bit.0, %if.end246 ]
  %add247 = add i64 %bit.1, 1
  %345 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %mft_record_size_bits.i, align 4
  %sh_prom250 = zext i8 %346 to i64
  %shl251 = shl i64 %add247, %sh_prom250
  %call259 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #9
  %initialized_size262 = getelementptr i8, ptr %6, i32 -480
  %347 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %initialized_size262, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call259) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl251, i64 %348)
  %cmp272.not = icmp sgt i64 %shl251, %348
  br i1 %cmp272.not, label %if.end275, label %if.then274

if.then274:                                       ; preds = %have_alloc_rec
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2388, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.48) #9
  br label %mft_rec_already_initialized

if.end275:                                        ; preds = %have_alloc_rec
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2391, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.49) #9
  %call283 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #9
  %allocated_size286 = getelementptr i8, ptr %6, i32 -472
  %349 = ptrtoint ptr %allocated_size286 to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %allocated_size286, align 8
  %351 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %mft_ino, align 8
  %call288 = tail call fastcc i64 @i_size_read(ptr noundef %352)
  %353 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %initialized_size262, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2404, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.50, i64 noundef %350, i64 noundef %call288, i64 noundef %354) #9
  %355 = ptrtoint ptr %allocated_size286 to i32
  call void @__asan_load8_noabort(i32 %355)
  %356 = load i64, ptr %allocated_size286, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl251, i64 %356)
  %cmp2911436 = icmp sgt i64 %shl251, %356
  br i1 %cmp2911436, label %do.body293.lr.ph, label %if.end275.do.body327_crit_edge

if.end275.do.body327_crit_edge:                   ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body327

do.body293.lr.ph:                                 ; preds = %if.end275
  %cluster_size_bits.i1160 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 13
  %mft_record_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 14
  %flags.i668.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  %lcnbmp_lock.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 41
  br label %do.body293

do.body293:                                       ; preds = %do.body313.do.body293_crit_edge, %do.body293.lr.ph
  %flags.01437 = phi i32 [ %call283, %do.body293.lr.ph ], [ %call320, %do.body313.do.body293_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.01437) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1724, ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef nonnull @.str.121) #9
  %357 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %mft_ino, align 8
  %add.ptr.i.i1154 = getelementptr i8, ptr %358, i32 -528
  %runlist.i1155 = getelementptr i8, ptr %358, i32 -432
  %lock.i1156 = getelementptr i8, ptr %358, i32 -428
  tail call void @down_write(ptr noundef %lock.i1156) #9
  %call1.i1157 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i1154) #9
  %allocated_size.i1158 = getelementptr i8, ptr %358, i32 -472
  %359 = ptrtoint ptr %allocated_size.i1158 to i32
  call void @__asan_load8_noabort(i32 %359)
  %360 = load i64, ptr %allocated_size.i1158, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i1154, i32 noundef %call1.i1157) #9
  %sub.i1159 = add i64 %360, -1
  %361 = ptrtoint ptr %cluster_size_bits.i1160 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %cluster_size_bits.i1160, align 8
  %sh_prom.i1161 = zext i8 %362 to i64
  %shr.i1162 = ashr i64 %sub.i1159, %sh_prom.i1161
  %call12.i1163 = tail call ptr @ntfs_attr_find_vcn_nolock(ptr noundef %add.ptr.i.i1154, i64 noundef %shr.i1162, ptr noundef null) #9
  %cmp.i.i1164 = icmp ugt ptr %call12.i1163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i1164, label %do.body293.if.then.i1169_crit_edge, label %lor.lhs.false.i1167

do.body293.if.then.i1169_crit_edge:               ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1169

lor.lhs.false.i1167:                              ; preds = %do.body293
  %length.i1165 = getelementptr inbounds %struct.runlist_element, ptr %call12.i1163, i32 0, i32 2
  %363 = ptrtoint ptr %length.i1165 to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %length.i1165, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %364)
  %tobool.not.i1166 = icmp eq i64 %364, 0
  br i1 %tobool.not.i1166, label %lor.lhs.false.i1167.if.then.i1169_crit_edge, label %lor.rhs.i1168, !prof !338

lor.lhs.false.i1167.if.then.i1169_crit_edge:      ; preds = %lor.lhs.false.i1167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1169

lor.rhs.i1168:                                    ; preds = %lor.lhs.false.i1167
  %lcn15.i = getelementptr inbounds %struct.runlist_element, ptr %call12.i1163, i32 0, i32 1
  %365 = ptrtoint ptr %lcn15.i to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %lcn15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %366)
  %cmp16.i = icmp slt i64 %366, 0
  br i1 %cmp16.i, label %lor.rhs.i1168.if.then.i1169_crit_edge, label %if.end25.i, !prof !338

lor.rhs.i1168.if.then.i1169_crit_edge:            ; preds = %lor.rhs.i1168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1169

if.then.i1169:                                    ; preds = %lor.rhs.i1168.if.then.i1169_crit_edge, %lor.lhs.false.i1167.if.then.i1169_crit_edge, %do.body293.if.then.i1169_crit_edge
  tail call void @up_write(ptr noundef %lock.i1156) #9
  %367 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %368, ptr noundef nonnull @.str.122) #9
  %369 = ptrtoint ptr %call12.i1163 to i32
  br i1 %cmp.i.i1164, label %if.then.i1169.ntfs_mft_data_extend_allocation_nolock.exit_crit_edge, label %if.then.i1169.if.then310_crit_edge

if.then.i1169.if.then310_crit_edge:               ; preds = %if.then.i1169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then310

if.then.i1169.ntfs_mft_data_extend_allocation_nolock.exit_crit_edge: ; preds = %if.then.i1169
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntfs_mft_data_extend_allocation_nolock.exit

if.end25.i:                                       ; preds = %lor.rhs.i1168
  %add.i1170 = add i64 %366, %364
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1748, ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef nonnull @.str.123, i64 noundef %add.i1170) #9
  %370 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %mft_record_size.i, align 4
  %372 = ptrtoint ptr %cluster_size_bits.i1160 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %cluster_size_bits.i1160, align 8
  %conv29.i = zext i8 %373 to i32
  %shr30.i = lshr i32 %371, %conv29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr30.i)
  %tobool32.not.i = icmp eq i32 %shr30.i, 0
  %narrow.i = select i1 %tobool32.not.i, i32 1, i32 %shr30.i
  %spec.store.select.i1171 = zext i32 %narrow.i to i64
  %shl.i1172 = shl i32 %371, 4
  %shr38.i = lshr i32 %shl.i1172, %conv29.i
  %conv39.i = zext i32 %shr38.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr38.i)
  %tobool40.not.i = icmp eq i32 %shr38.i, 0
  %spec.select.i1173 = select i1 %tobool40.not.i, i64 %spec.store.select.i1171, i64 %conv39.i
  %call50.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i1154) #9
  %374 = ptrtoint ptr %allocated_size.i1158 to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %allocated_size.i1158, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i1154, i32 noundef %call50.i) #9
  %376 = ptrtoint ptr %cluster_size_bits.i1160 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %cluster_size_bits.i1160, align 8
  %sh_prom65.i = zext i8 %377 to i64
  %shl66.i = shl i64 %spec.select.i1173, %sh_prom65.i
  %add67.i = add i64 %shl66.i, %375
  %378 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %mft_record_size_bits.i, align 4
  %sh_prom69.i = zext i8 %379 to i64
  %shr70.i = ashr i64 %add67.i, %sh_prom69.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shr70.i)
  %cmp71.i = icmp sgt i64 %shr70.i, 4294967295
  br i1 %cmp71.i, label %if.then79.i1175, label %if.end25.i.if.end102.i_crit_edge, !prof !338

if.end25.i.if.end102.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then79.i1175:                                  ; preds = %if.end25.i
  %shl83.i = shl i64 %spec.store.select.i1171, %sh_prom65.i
  %add84.i = add i64 %shl83.i, %375
  %shr88.i = ashr i64 %add84.i, %sh_prom69.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shr88.i)
  %cmp89.i = icmp sgt i64 %shr88.i, 4294967295
  br i1 %cmp89.i, label %if.then97.i1176, label %if.then79.i1175.if.end102.i_crit_edge, !prof !338

if.then79.i1175.if.end102.i_crit_edge:            ; preds = %if.then79.i1175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then97.i1176:                                  ; preds = %if.then79.i1175
  call void @__sanitizer_cov_trace_pc() #11
  %380 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %381, ptr noundef nonnull @.str.67) #9
  tail call void @up_write(ptr noundef %lock.i1156) #9
  br label %if.then310

if.end102.i:                                      ; preds = %if.then79.i1175.if.end102.i_crit_edge, %if.end25.i.if.end102.i_crit_edge
  %nr.1.i = phi i64 [ %spec.store.select.i1171, %if.then79.i1175.if.end102.i_crit_edge ], [ %spec.select.i1173, %if.end25.i.if.end102.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %nr.1.i, i64 %spec.store.select.i1171)
  %cmp103.i = icmp ugt i64 %nr.1.i, %spec.store.select.i1171
  %cond.i = select i1 %cmp103.i, ptr @.str.125, ptr @.str.126
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1774, ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef nonnull @.str.124, ptr noundef nonnull %cond.i, i64 noundef %nr.1.i) #9
  %arrayidx.i1177 = getelementptr %struct.runlist_element, ptr %call12.i1163, i32 1
  %382 = ptrtoint ptr %arrayidx.i1177 to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %arrayidx.i1177, align 8
  %call106692.i = tail call ptr @ntfs_cluster_alloc(ptr noundef %vol, i64 noundef %383, i64 noundef %nr.1.i, i64 noundef %add.i1170, i32 noundef 0, i1 noundef zeroext true) #9
  %cmp.i656693.i = icmp ugt ptr %call106692.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i656693.i, label %if.end102.i.if.end109.i_crit_edge, label %if.end102.i.do.end123.i_crit_edge

if.end102.i.do.end123.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end123.i

if.end102.i.if.end109.i_crit_edge:                ; preds = %if.end102.i
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.end121.i1179.if.end109.i_crit_edge, %if.end102.i.if.end109.i_crit_edge
  %call106695.i = phi ptr [ %call106.i, %if.end121.i1179.if.end109.i_crit_edge ], [ %call106692.i, %if.end102.i.if.end109.i_crit_edge ]
  %nr.2694.i = phi i64 [ %spec.store.select.i1171, %if.end121.i1179.if.end109.i_crit_edge ], [ %nr.1.i, %if.end102.i.if.end109.i_crit_edge ]
  %cmp111.not.i = icmp ne ptr %call106695.i, inttoptr (i32 -28 to ptr)
  call void @__sanitizer_cov_trace_cmp8(i64 %nr.2694.i, i64 %spec.store.select.i1171)
  %cmp114.i = icmp eq i64 %nr.2694.i, %spec.store.select.i1171
  %or.cond.i1178 = select i1 %cmp111.not.i, i1 true, i1 %cmp114.i
  br i1 %or.cond.i1178, label %if.then116.i, label %if.end121.i1179

if.then116.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  %384 = ptrtoint ptr %call106695.i to i32
  %385 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %386, ptr noundef nonnull @.str.127, i64 noundef %nr.2694.i) #9
  tail call void @up_write(ptr noundef %lock.i1156) #9
  br label %ntfs_mft_data_extend_allocation_nolock.exit

if.end121.i1179:                                  ; preds = %if.end109.i
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1795, ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef nonnull @.str.128, i64 noundef %spec.store.select.i1171) #9
  %call106.i = tail call ptr @ntfs_cluster_alloc(ptr noundef %vol, i64 noundef %383, i64 noundef %spec.store.select.i1171, i64 noundef %add.i1170, i32 noundef 0, i1 noundef zeroext true) #9
  %cmp.i656.i = icmp ugt ptr %call106.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i656.i, label %if.end121.i1179.if.end109.i_crit_edge, label %if.end121.i1179.do.end123.i_crit_edge

if.end121.i1179.do.end123.i_crit_edge:            ; preds = %if.end121.i1179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end123.i

if.end121.i1179.if.end109.i_crit_edge:            ; preds = %if.end121.i1179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i

do.end123.i:                                      ; preds = %if.end121.i1179.do.end123.i_crit_edge, %if.end102.i.do.end123.i_crit_edge
  %nr.2.lcssa.i = phi i64 [ %nr.1.i, %if.end102.i.do.end123.i_crit_edge ], [ %spec.store.select.i1171, %if.end121.i1179.do.end123.i_crit_edge ]
  %call106.lcssa.i = phi ptr [ %call106692.i, %if.end102.i.do.end123.i_crit_edge ], [ %call106.i, %if.end121.i1179.do.end123.i_crit_edge ]
  %387 = ptrtoint ptr %runlist.i1155 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %runlist.i1155, align 8
  %call126.i1180 = tail call ptr @ntfs_runlists_merge(ptr noundef %388, ptr noundef %call106.lcssa.i) #9
  %cmp.i657.i = icmp ugt ptr %call126.i1180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i657.i, label %if.then128.i, label %if.end138.i

if.then128.i:                                     ; preds = %do.end123.i
  tail call void @up_write(ptr noundef %lock.i1156) #9
  %389 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %390, ptr noundef nonnull @.str.129) #9
  tail call void @down_write(ptr noundef %lcnbmp_lock.i.i) #9
  %call.i.i1181 = tail call i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef %vol, ptr noundef %call106.lcssa.i) #9
  tail call void @up_write(ptr noundef %lcnbmp_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1181)
  %tobool133.not.i = icmp eq i32 %call.i.i1181, 0
  br i1 %tobool133.not.i, label %if.then128.i.if.end136.i_crit_edge, label %if.then134.i

if.then128.i.if.end136.i_crit_edge:               ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136.i

if.then134.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #11
  %391 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %392, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.150) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i668.i) #9
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then134.i, %if.then128.i.if.end136.i_crit_edge
  tail call void @kvfree(ptr noundef %call106.lcssa.i) #9
  %393 = ptrtoint ptr %call126.i1180 to i32
  br label %ntfs_mft_data_extend_allocation_nolock.exit

if.end138.i:                                      ; preds = %do.end123.i
  %394 = ptrtoint ptr %runlist.i1155 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %call126.i1180, ptr %runlist.i1155, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1811, ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef nonnull @.str.131, i64 noundef %nr.2.lcssa.i) #9
  br label %for.cond.i1184

for.cond.i1184:                                   ; preds = %for.cond.i1184.for.cond.i1184_crit_edge, %if.end138.i
  %rl.0.i1183 = phi ptr [ %call126.i1180, %if.end138.i ], [ %arrayidx141.i, %for.cond.i1184.for.cond.i1184_crit_edge ]
  %arrayidx141.i = getelementptr %struct.runlist_element, ptr %rl.0.i1183, i32 1
  %length142.i = getelementptr %struct.runlist_element, ptr %rl.0.i1183, i32 1, i32 2
  %395 = ptrtoint ptr %length142.i to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %length142.i, align 8
  %tobool143.not.i = icmp eq i64 %396, 0
  br i1 %tobool143.not.i, label %for.end.i1185, label %for.cond.i1184.for.cond.i1184_crit_edge

for.cond.i1184.for.cond.i1184_crit_edge:          ; preds = %for.cond.i1184
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i1184

for.end.i1185:                                    ; preds = %for.cond.i1184
  %call144.i = tail call ptr @map_mft_record(ptr noundef %add.ptr.i.i1154) #9
  %cmp.i658.i = icmp ugt ptr %call144.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i658.i, label %if.then146.i, label %if.end149.i

if.then146.i:                                     ; preds = %for.end.i1185
  call void @__sanitizer_cov_trace_pc() #11
  %397 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %398, ptr noundef nonnull @.str.55) #9
  %399 = ptrtoint ptr %call144.i to i32
  br label %undo_alloc.i1217

if.end149.i:                                      ; preds = %for.end.i1185
  %call150.i = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i.i1154, ptr noundef %call144.i) #9
  %tobool151.not.i = icmp eq ptr %call150.i, null
  br i1 %tobool151.not.i, label %if.then160.i, label %if.end162.i, !prof !338

if.then160.i:                                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #11
  %400 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %401, ptr noundef nonnull @.str.56) #9
  br label %undo_alloc.i1217

if.end162.i:                                      ; preds = %if.end149.i
  %type.i1186 = getelementptr i8, ptr %358, i32 -444
  %402 = ptrtoint ptr %type.i1186 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %type.i1186, align 4
  %name.i1187 = getelementptr i8, ptr %358, i32 -440
  %404 = ptrtoint ptr %name.i1187 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %name.i1187, align 8
  %name_len.i1188 = getelementptr i8, ptr %358, i32 -436
  %406 = ptrtoint ptr %name_len.i1188 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %name_len.i1188, align 4
  %408 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load8_noabort(i32 %408)
  %409 = load i64, ptr %arrayidx141.i, align 8
  %call165.i = tail call i32 @ntfs_attr_lookup(i32 noundef %403, ptr noundef %405, i32 noundef %407, i32 noundef 0, i64 noundef %409, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call150.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165.i)
  %tobool166.not.i = icmp eq i32 %call165.i, 0
  br i1 %tobool166.not.i, label %if.end179.i, label %if.then173.i, !prof !335

if.then173.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #11
  %410 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %411, ptr noundef nonnull @.str.132) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call165.i)
  %cmp175.i = icmp eq i32 %call165.i, -2
  %spec.select654.i = select i1 %cmp175.i, i32 -5, i32 %call165.i
  br label %undo_alloc.i1217

if.end179.i:                                      ; preds = %if.end162.i
  %attr.i1189 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call150.i, i32 0, i32 1
  %412 = ptrtoint ptr %attr.i1189 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %attr.i1189, align 4
  %data.i1190 = getelementptr inbounds %struct.ATTR_RECORD, ptr %413, i32 0, i32 7
  %414 = ptrtoint ptr %data.i1190 to i32
  call void @__asan_loadN_noabort(i32 %414, i32 8)
  %415 = load i64, ptr %data.i1190, align 1
  %416 = tail call i64 @llvm.bswap.i64(i64 %415) #9
  %417 = ptrtoint ptr %runlist.i1155 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %runlist.i1155, align 8
  %cmp184697.i = icmp ugt ptr %rl.0.i1183, %418
  br i1 %cmp184697.i, label %if.end179.i.for.body186.i_crit_edge, label %if.end179.i.do.body195.i_crit_edge

if.end179.i.do.body195.i_crit_edge:               ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body195.i

if.end179.i.for.body186.i_crit_edge:              ; preds = %if.end179.i
  br label %for.body186.i

for.body186.i:                                    ; preds = %for.inc192.i.for.body186.i_crit_edge, %if.end179.i.for.body186.i_crit_edge
  %rl2.0698.i = phi ptr [ %incdec.ptr193.i, %for.inc192.i.for.body186.i_crit_edge ], [ %rl.0.i1183, %if.end179.i.for.body186.i_crit_edge ]
  %419 = ptrtoint ptr %rl2.0698.i to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %rl2.0698.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %416, i64 %420)
  %cmp188.not.i = icmp slt i64 %416, %420
  br i1 %cmp188.not.i, label %for.inc192.i, label %for.body186.i.do.body195.i_crit_edge

for.body186.i.do.body195.i_crit_edge:             ; preds = %for.body186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body195.i

for.inc192.i:                                     ; preds = %for.body186.i
  %incdec.ptr193.i = getelementptr %struct.runlist_element, ptr %rl2.0698.i, i32 -1
  %cmp184.i = icmp ugt ptr %incdec.ptr193.i, %418
  br i1 %cmp184.i, label %for.inc192.i.for.body186.i_crit_edge, label %for.inc192.i.do.body195.i_crit_edge

for.inc192.i.do.body195.i_crit_edge:              ; preds = %for.inc192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body195.i

for.inc192.i.for.body186.i_crit_edge:             ; preds = %for.inc192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body186.i

do.body195.i:                                     ; preds = %for.inc192.i.do.body195.i_crit_edge, %for.body186.i.do.body195.i_crit_edge, %if.end179.i.do.body195.i_crit_edge
  %rl2.0.lcssa.i = phi ptr [ %rl.0.i1183, %if.end179.i.do.body195.i_crit_edge ], [ %rl2.0698.i, %for.body186.i.do.body195.i_crit_edge ], [ %incdec.ptr193.i, %for.inc192.i.do.body195.i_crit_edge ]
  %421 = ptrtoint ptr %rl2.0.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %421)
  %422 = load i64, ptr %rl2.0.lcssa.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %416, i64 %422)
  %cmp197.i = icmp slt i64 %416, %422
  br i1 %cmp197.i, label %do.body206.i, label %do.body215.i, !prof !338

do.body206.i:                                     ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1844, 0\0A.popsection", ""() #9, !srcloc !393
  unreachable

do.body215.i:                                     ; preds = %do.body195.i
  %length217.i = getelementptr inbounds %struct.runlist_element, ptr %rl2.0.lcssa.i, i32 0, i32 2
  %423 = ptrtoint ptr %length217.i to i32
  call void @__asan_load8_noabort(i32 %423)
  %424 = load i64, ptr %length217.i, align 8
  %add218.i = add i64 %424, %422
  call void @__sanitizer_cov_trace_cmp8(i64 %416, i64 %add218.i)
  %cmp219.not.i = icmp slt i64 %416, %add218.i
  br i1 %cmp219.not.i, label %do.end236.i, label %do.body228.i, !prof !335

do.body228.i:                                     ; preds = %do.body215.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1845, 0\0A.popsection", ""() #9, !srcloc !394
  unreachable

do.end236.i:                                      ; preds = %do.body215.i
  %call237.i = tail call i32 @ntfs_get_size_for_mapping_pairs(ptr noundef %vol, ptr noundef %rl2.0.lcssa.i, i64 noundef %416, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call237.i)
  %cmp238.i = icmp slt i32 %call237.i, 1
  br i1 %cmp238.i, label %if.then246.i, label %if.end251.i, !prof !338

if.then246.i:                                     ; preds = %do.end236.i
  call void @__sanitizer_cov_trace_pc() #11
  %425 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %426, ptr noundef nonnull @.str.133) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237.i)
  %tobool248.not.i = icmp eq i32 %call237.i, 0
  %spec.store.select457.i = select i1 %tobool248.not.i, i32 -5, i32 %call237.i
  br label %undo_alloc.i1217

if.end251.i:                                      ; preds = %do.end236.i
  %length252.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %413, i32 0, i32 1
  %427 = ptrtoint ptr %length252.i to i32
  call void @__asan_loadN_noabort(i32 %427, i32 4)
  %428 = load i32, ptr %length252.i, align 1
  %429 = tail call i32 @llvm.bswap.i32(i32 %428) #9
  %430 = ptrtoint ptr %call150.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %call150.i, align 4
  %mapping_pairs_offset.i1191 = getelementptr inbounds %struct.ATTR_RECORD, ptr %413, i32 0, i32 7, i32 0, i32 2
  %432 = ptrtoint ptr %mapping_pairs_offset.i1191 to i32
  call void @__asan_loadN_noabort(i32 %432, i32 2)
  %433 = load i16, ptr %mapping_pairs_offset.i1191, align 1
  %434 = tail call i16 @llvm.bswap.i16(i16 %433) #9
  %conv255.i = zext i16 %434 to i32
  %add256.i = add nuw i32 %call237.i, %conv255.i
  %call257.i = tail call i32 @ntfs_attr_record_resize(ptr noundef %431, ptr noundef %413, i32 noundef %add256.i) #9
  %435 = zext i32 %call257.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %435, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call257.i, label %if.then268.i [
    i32 0, label %if.end272.i
    i32 -28, label %if.end270.i
  ], !prof !392

if.then268.i:                                     ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #11
  %436 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %437, ptr noundef nonnull @.str.134) #9
  br label %undo_alloc.i1217

if.end270.i:                                      ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #11
  %438 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %439, ptr noundef nonnull @.str.135) #9
  br label %undo_alloc.i1217

if.end272.i:                                      ; preds = %if.end251.i
  %440 = ptrtoint ptr %mapping_pairs_offset.i1191 to i32
  call void @__asan_loadN_noabort(i32 %440, i32 2)
  %441 = load i16, ptr %mapping_pairs_offset.i1191, align 1
  %442 = tail call i16 @llvm.bswap.i16(i16 %441) #9
  %conv275.i = zext i16 %442 to i32
  %add.ptr.i1192 = getelementptr i8, ptr %413, i32 %conv275.i
  %call276.i = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %vol, ptr noundef %add.ptr.i1192, i32 noundef %call237.i, ptr noundef %rl2.0.lcssa.i, i64 noundef %416, i64 noundef -1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276.i)
  %tobool277.not.i = icmp eq i32 %call276.i, 0
  br i1 %tobool277.not.i, label %if.end286.i, label %if.then284.i, !prof !335

if.then284.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #11
  %443 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %444, ptr noundef nonnull @.str.136) #9
  br label %undo_alloc.i1217

if.end286.i:                                      ; preds = %if.end272.i
  %445 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load8_noabort(i32 %445)
  %446 = load i64, ptr %arrayidx141.i, align 8
  %sub289.i = add i64 %446, -1
  %447 = tail call i64 @llvm.bswap.i64(i64 %sub289.i) #9
  %highest_vcn.i1193 = getelementptr inbounds %struct.ATTR_RECORD, ptr %413, i32 0, i32 7, i32 0, i32 1
  %448 = ptrtoint ptr %highest_vcn.i1193 to i32
  call void @__asan_storeN_noabort(i32 %448, i32 8)
  store i64 %447, ptr %highest_vcn.i1193, align 1
  %449 = ptrtoint ptr %data.i1190 to i32
  call void @__asan_loadN_noabort(i32 %449, i32 8)
  %450 = load i64, ptr %data.i1190, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %450)
  %tobool294.not.i = icmp eq i64 %450, 0
  br i1 %tobool294.not.i, label %if.end286.i.do.body313.i_crit_edge, label %if.then295.i

if.end286.i.do.body313.i_crit_edge:               ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body313.i

if.then295.i:                                     ; preds = %if.end286.i
  %ntfs_ino.i1194 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call150.i, i32 0, i32 3
  %451 = ptrtoint ptr %ntfs_ino.i1194 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %ntfs_ino.i1194, align 4
  %page.i.i1195 = getelementptr inbounds %struct._ntfs_inode, ptr %452, i32 0, i32 13
  %453 = ptrtoint ptr %page.i.i1195 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %page.i.i1195, align 8
  tail call void @flush_dcache_page(ptr noundef %454) #9
  %455 = ptrtoint ptr %ntfs_ino.i1194 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %ntfs_ino.i1194, align 4
  %state.i.i.i1196 = getelementptr inbounds %struct._ntfs_inode, ptr %456, i32 0, i32 3
  %call.i.i.i1197 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i1196) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1197)
  %tobool.not.i.i1198 = icmp eq i32 %call.i.i.i1197, 0
  br i1 %tobool.not.i.i1198, label %if.then.i.i1199, label %if.then295.i.mark_mft_record_dirty.exit.i1200_crit_edge

if.then295.i.mark_mft_record_dirty.exit.i1200_crit_edge: ; preds = %if.then295.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mark_mft_record_dirty.exit.i1200

if.then.i.i1199:                                  ; preds = %if.then295.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %456) #9
  br label %mark_mft_record_dirty.exit.i1200

mark_mft_record_dirty.exit.i1200:                 ; preds = %if.then.i.i1199, %if.then295.i.mark_mft_record_dirty.exit.i1200_crit_edge
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call150.i) #9
  %457 = ptrtoint ptr %type.i1186 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %type.i1186, align 4
  %459 = ptrtoint ptr %name.i1187 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %name.i1187, align 8
  %461 = ptrtoint ptr %name_len.i1188 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %name_len.i1188, align 4
  %call300.i = tail call i32 @ntfs_attr_lookup(i32 noundef %458, ptr noundef %460, i32 noundef %462, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call150.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300.i)
  %tobool301.not.i = icmp eq i32 %call300.i, 0
  br i1 %tobool301.not.i, label %if.end310.i, label %if.then308.i, !prof !335

if.then308.i:                                     ; preds = %mark_mft_record_dirty.exit.i1200
  %463 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %464, ptr noundef nonnull @.str.57) #9
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call150.i) #9
  %465 = ptrtoint ptr %type.i1186 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %type.i1186, align 4
  %467 = ptrtoint ptr %name.i1187 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %name.i1187, align 8
  %469 = ptrtoint ptr %name_len.i1188 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %name_len.i1188, align 4
  %471 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load8_noabort(i32 %471)
  %472 = load i64, ptr %arrayidx141.i, align 8
  %call351.i = tail call i32 @ntfs_attr_lookup(i32 noundef %466, ptr noundef %468, i32 noundef %470, i32 noundef 0, i64 noundef %472, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call150.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351.i)
  %tobool352.not.i = icmp eq i32 %call351.i, 0
  br i1 %tobool352.not.i, label %if.end382.i, label %if.then353.i

if.end310.i:                                      ; preds = %mark_mft_record_dirty.exit.i1200
  call void @__sanitizer_cov_trace_pc() #11
  %473 = ptrtoint ptr %attr.i1189 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %attr.i1189, align 4
  br label %do.body313.i

do.body313.i:                                     ; preds = %if.end310.i, %if.end286.i.do.body313.i_crit_edge
  %a.0.i1201 = phi ptr [ %474, %if.end310.i ], [ %413, %if.end286.i.do.body313.i_crit_edge ]
  %call320.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i.i1154) #9
  %475 = ptrtoint ptr %cluster_size_bits.i1160 to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %cluster_size_bits.i1160, align 8
  %sh_prom325.i = zext i8 %476 to i64
  %shl326.i = shl i64 %nr.2.lcssa.i, %sh_prom325.i
  %477 = ptrtoint ptr %allocated_size.i1158 to i32
  call void @__asan_load8_noabort(i32 %477)
  %478 = load i64, ptr %allocated_size.i1158, align 8
  %add328.i = add i64 %shl326.i, %478
  store i64 %add328.i, ptr %allocated_size.i1158, align 8
  %479 = tail call i64 @llvm.bswap.i64(i64 %add328.i) #9
  %allocated_size332.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0.i1201, i32 0, i32 7, i32 0, i32 5
  %480 = ptrtoint ptr %allocated_size332.i to i32
  call void @__asan_storeN_noabort(i32 %480, i32 8)
  store i64 %479, ptr %allocated_size332.i, align 1
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i.i1154, i32 noundef %call320.i) #9
  %ntfs_ino342.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call150.i, i32 0, i32 3
  %481 = ptrtoint ptr %ntfs_ino342.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %ntfs_ino342.i, align 4
  %page.i659.i = getelementptr inbounds %struct._ntfs_inode, ptr %482, i32 0, i32 13
  %483 = ptrtoint ptr %page.i659.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %page.i659.i, align 8
  tail call void @flush_dcache_page(ptr noundef %484) #9
  %485 = ptrtoint ptr %ntfs_ino342.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %ntfs_ino342.i, align 4
  %state.i.i660.i = getelementptr inbounds %struct._ntfs_inode, ptr %486, i32 0, i32 3
  %call.i.i661.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i660.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i661.i)
  %tobool.not.i662.i = icmp eq i32 %call.i.i661.i, 0
  br i1 %tobool.not.i662.i, label %if.then.i663.i, label %do.body313.i.mark_mft_record_dirty.exit664.i_crit_edge

do.body313.i.mark_mft_record_dirty.exit664.i_crit_edge: ; preds = %do.body313.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mark_mft_record_dirty.exit664.i

if.then.i663.i:                                   ; preds = %do.body313.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %486) #9
  br label %mark_mft_record_dirty.exit664.i

mark_mft_record_dirty.exit664.i:                  ; preds = %if.then.i663.i, %do.body313.i.mark_mft_record_dirty.exit664.i_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call150.i) #9
  %page1.i.i1202 = getelementptr i8, ptr %358, i32 -240
  %487 = ptrtoint ptr %page1.i.i1202 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %page1.i.i1202, align 8
  %tobool.not.i665.i = icmp eq ptr %488, null
  br i1 %tobool.not.i665.i, label %do.body5.i.i1203, label %do.end10.i.i1206, !prof !338

do.body5.i.i1203:                                 ; preds = %mark_mft_record_dirty.exit664.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10.i.i1206:                                 ; preds = %mark_mft_record_dirty.exit664.i
  %mft_no.i.i1204 = getelementptr i8, ptr %358, i32 -460
  %489 = ptrtoint ptr %mft_no.i.i1204 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %mft_no.i.i1204, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %490) #9
  %491 = ptrtoint ptr %page1.i.i1202 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %page1.i.i1202, align 8
  %tobool.not.i.i.i1205 = icmp eq ptr %492, null
  br i1 %tobool.not.i.i.i1205, label %do.body4.i.i.i1207, label %ntfs_mft_data_extend_allocation_nolock.exit.thread1309, !prof !338

do.body4.i.i.i1207:                               ; preds = %do.end10.i.i1206
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

ntfs_mft_data_extend_allocation_nolock.exit.thread1309: ; preds = %do.end10.i.i1206
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %492) #9
  %493 = ptrtoint ptr %page1.i.i1202 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr null, ptr %page1.i.i1202, align 8
  %page_ofs.i.i.i1208 = getelementptr i8, ptr %358, i32 -236
  %494 = ptrtoint ptr %page_ofs.i.i.i1208 to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 0, ptr %page_ofs.i.i.i1208, align 4
  %mrec_lock.i.i1209 = getelementptr i8, ptr %358, i32 -332
  tail call void @mutex_unlock(ptr noundef %mrec_lock.i.i1209) #9
  %count.i.i1210 = getelementptr i8, ptr %358, i32 -452
  %call.i.i.i.i1211 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i1210, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i.i1210, i32 1, i32 3, i32 1) #9
  %495 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i1210, ptr %count.i.i1210, i32 1, ptr elementtype(i32) %count.i.i1210) #9, !srcloc !337
  tail call void @up_write(ptr noundef %lock.i1156) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1929, ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef nonnull @.str.12) #9
  br label %do.body313

if.then353.i:                                     ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #11
  %496 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %497, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.150) #9
  %call362.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i.i1154) #9
  %498 = ptrtoint ptr %cluster_size_bits.i1160 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %cluster_size_bits.i1160, align 8
  %sh_prom367.i = zext i8 %499 to i64
  %shl368.i = shl i64 %nr.2.lcssa.i, %sh_prom367.i
  %500 = ptrtoint ptr %allocated_size.i1158 to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %allocated_size.i1158, align 8
  %add370.i = add i64 %shl368.i, %501
  store i64 %add370.i, ptr %allocated_size.i1158, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i.i1154, i32 noundef %call362.i) #9
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call150.i) #9
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i.i1154) #9
  tail call void @up_write(ptr noundef %lock.i1156) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i668.i) #9
  br label %if.then310

if.end382.i:                                      ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub383.i = add i64 %383, -1
  %502 = tail call i64 @llvm.bswap.i64(i64 %sub383.i) #9
  %503 = ptrtoint ptr %attr.i1189 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %attr.i1189, align 4
  %highest_vcn387.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %504, i32 0, i32 7, i32 0, i32 1
  %505 = ptrtoint ptr %highest_vcn387.i to i32
  call void @__asan_storeN_noabort(i32 %505, i32 8)
  store i64 %502, ptr %highest_vcn387.i, align 1
  br label %undo_alloc.i1217

undo_alloc.i1217:                                 ; preds = %if.end382.i, %if.then284.i, %if.end270.i, %if.then268.i, %if.then246.i, %if.then173.i, %if.then160.i, %if.then146.i
  %rl2.1.i = phi ptr [ %call106.lcssa.i, %if.then146.i ], [ %call106.lcssa.i, %if.then160.i ], [ %rl2.0.lcssa.i, %if.then246.i ], [ %rl2.0.lcssa.i, %if.then268.i ], [ %rl2.0.lcssa.i, %if.end270.i ], [ %rl2.0.lcssa.i, %if.then284.i ], [ %rl2.0.lcssa.i, %if.end382.i ], [ %call106.lcssa.i, %if.then173.i ]
  %ctx.0.i1213 = phi ptr [ null, %if.then146.i ], [ null, %if.then160.i ], [ %call150.i, %if.then246.i ], [ %call150.i, %if.then268.i ], [ %call150.i, %if.end270.i ], [ %call150.i, %if.then284.i ], [ %call150.i, %if.end382.i ], [ %call150.i, %if.then173.i ]
  %ret.1.i1214 = phi i32 [ %399, %if.then146.i ], [ -12, %if.then160.i ], [ %spec.store.select457.i, %if.then246.i ], [ %call257.i, %if.then268.i ], [ -95, %if.end270.i ], [ %call276.i, %if.then284.i ], [ %call300.i, %if.end382.i ], [ %spec.select654.i, %if.then173.i ]
  %old_alen.0.i1215 = phi i32 [ 0, %if.then146.i ], [ 0, %if.then160.i ], [ 0, %if.then246.i ], [ %429, %if.then268.i ], [ %429, %if.end270.i ], [ %429, %if.then284.i ], [ %429, %if.end382.i ], [ 0, %if.then173.i ]
  %mp_rebuilt.0.off0.i = phi i1 [ true, %if.then146.i ], [ true, %if.then160.i ], [ true, %if.then246.i ], [ true, %if.then268.i ], [ true, %if.end270.i ], [ false, %if.then284.i ], [ false, %if.end382.i ], [ true, %if.then173.i ]
  %ll.0.i1216 = phi i64 [ %375, %if.then146.i ], [ %375, %if.then160.i ], [ %416, %if.then246.i ], [ %416, %if.then268.i ], [ %416, %if.end270.i ], [ %416, %if.then284.i ], [ %416, %if.end382.i ], [ %375, %if.then173.i ]
  %call.i667.i = tail call i64 @__ntfs_cluster_free(ptr noundef %add.ptr.i.i1154, i64 noundef %383, i64 noundef -1, ptr noundef %ctx.0.i1213, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i667.i)
  %cmp389.i = icmp slt i64 %call.i667.i, 0
  br i1 %cmp389.i, label %if.then391.i, label %undo_alloc.i1217.if.end393.i_crit_edge

undo_alloc.i1217.if.end393.i_crit_edge:           ; preds = %undo_alloc.i1217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end393.i

if.then391.i:                                     ; preds = %undo_alloc.i1217
  call void @__sanitizer_cov_trace_pc() #11
  %506 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %507, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.150) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i668.i) #9
  br label %if.end393.i

if.end393.i:                                      ; preds = %if.then391.i, %undo_alloc.i1217.if.end393.i_crit_edge
  %attr394.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.0.i1213, i32 0, i32 1
  %508 = ptrtoint ptr %attr394.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %attr394.i, align 4
  %call396.i = tail call i32 @ntfs_rl_truncate_nolock(ptr noundef %vol, ptr noundef %runlist.i1155, i64 noundef %383) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call396.i)
  %tobool397.not.i = icmp eq i32 %call396.i, 0
  br i1 %tobool397.not.i, label %if.end393.i.if.end400.i1218_crit_edge, label %if.then398.i

if.end393.i.if.end400.i1218_crit_edge:            ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end400.i1218

if.then398.i:                                     ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #11
  %510 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %511, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.150) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i668.i) #9
  br label %if.end400.i1218

if.end400.i1218:                                  ; preds = %if.then398.i, %if.end393.i.if.end400.i1218_crit_edge
  %512 = ptrtoint ptr %ctx.0.i1213 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %ctx.0.i1213, align 4
  %cmp.i670.i = icmp ugt ptr %513, inttoptr (i32 -4096 to ptr)
  %or.cond707.i = select i1 %mp_rebuilt.0.off0.i, i1 true, i1 %cmp.i670.i
  br i1 %or.cond707.i, label %if.else427.i, label %if.then405.i

if.then405.i:                                     ; preds = %if.end400.i1218
  %mapping_pairs_offset407.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %509, i32 0, i32 7, i32 0, i32 2
  %514 = ptrtoint ptr %mapping_pairs_offset407.i to i32
  call void @__asan_loadN_noabort(i32 %514, i32 2)
  %515 = load i16, ptr %mapping_pairs_offset407.i, align 1
  %516 = tail call i16 @llvm.bswap.i16(i16 %515) #9
  %conv408.i = zext i16 %516 to i32
  %add.ptr409.i = getelementptr i8, ptr %509, i32 %conv408.i
  %sub413.i = sub i32 %old_alen.0.i1215, %conv408.i
  %call414.i = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %vol, ptr noundef %add.ptr409.i, i32 noundef %sub413.i, ptr noundef %rl2.1.i, i64 noundef %ll.0.i1216, i64 noundef -1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414.i)
  %tobool415.not.i = icmp eq i32 %call414.i, 0
  br i1 %tobool415.not.i, label %if.then405.i.if.end418.i_crit_edge, label %if.then416.i

if.then405.i.if.end418.i_crit_edge:               ; preds = %if.then405.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end418.i

if.then416.i:                                     ; preds = %if.then405.i
  call void @__sanitizer_cov_trace_pc() #11
  %517 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %518, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.150) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i668.i) #9
  br label %if.end418.i

if.end418.i:                                      ; preds = %if.then416.i, %if.then405.i.if.end418.i_crit_edge
  %519 = ptrtoint ptr %ctx.0.i1213 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %ctx.0.i1213, align 4
  %call420.i = tail call i32 @ntfs_attr_record_resize(ptr noundef %520, ptr noundef %509, i32 noundef %old_alen.0.i1215) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420.i)
  %tobool421.not.i = icmp eq i32 %call420.i, 0
  br i1 %tobool421.not.i, label %if.end418.i.if.end424.i_crit_edge, label %if.then422.i

if.end418.i.if.end424.i_crit_edge:                ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end424.i

if.then422.i:                                     ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #11
  %521 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %522, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.150) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i668.i) #9
  br label %if.end424.i

if.end424.i:                                      ; preds = %if.then422.i, %if.end418.i.if.end424.i_crit_edge
  %ntfs_ino425.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.0.i1213, i32 0, i32 3
  %523 = ptrtoint ptr %ntfs_ino425.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %ntfs_ino425.i, align 4
  %page.i673.i = getelementptr inbounds %struct._ntfs_inode, ptr %524, i32 0, i32 13
  %525 = ptrtoint ptr %page.i673.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %page.i673.i, align 8
  tail call void @flush_dcache_page(ptr noundef %526) #9
  %527 = ptrtoint ptr %ntfs_ino425.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %ntfs_ino425.i, align 4
  %state.i.i1282 = getelementptr inbounds %struct._ntfs_inode, ptr %528, i32 0, i32 3
  %call.i.i1283 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i1282) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1283)
  %tobool.not.i1284 = icmp eq i32 %call.i.i1283, 0
  br i1 %tobool.not.i1284, label %if.then.i1285, label %if.end424.i.if.end433.i_crit_edge

if.end424.i.if.end433.i_crit_edge:                ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end433.i

if.then.i1285:                                    ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %528) #9
  br label %if.end433.i

if.else427.i:                                     ; preds = %if.end400.i1218
  br i1 %cmp.i670.i, label %if.then430.i, label %if.else427.i.if.end433.i_crit_edge

if.else427.i.if.end433.i_crit_edge:               ; preds = %if.else427.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end433.i

if.then430.i:                                     ; preds = %if.else427.i
  call void @__sanitizer_cov_trace_pc() #11
  %529 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_data_extend_allocation_nolock, ptr noundef %530, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.150) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i668.i) #9
  br label %if.end433.i

if.end433.i:                                      ; preds = %if.then430.i, %if.else427.i.if.end433.i_crit_edge, %if.then.i1285, %if.end424.i.if.end433.i_crit_edge
  %tobool434.not.i = icmp eq ptr %ctx.0.i1213, null
  br i1 %tobool434.not.i, label %if.end433.i.if.end436.i_crit_edge, label %if.then435.i

if.end433.i.if.end436.i_crit_edge:                ; preds = %if.end433.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end436.i

if.then435.i:                                     ; preds = %if.end433.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.0.i1213) #9
  br label %if.end436.i

if.end436.i:                                      ; preds = %if.then435.i, %if.end433.i.if.end436.i_crit_edge
  br i1 %cmp.i658.i, label %if.end436.i.if.end439.i_crit_edge, label %if.then438.i

if.end436.i.if.end439.i_crit_edge:                ; preds = %if.end436.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end439.i

if.then438.i:                                     ; preds = %if.end436.i
  %page1.i677.i = getelementptr i8, ptr %358, i32 -240
  %531 = ptrtoint ptr %page1.i677.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %page1.i677.i, align 8
  %tobool.not.i678.i = icmp eq ptr %532, null
  br i1 %tobool.not.i678.i, label %do.body5.i679.i, label %do.end10.i682.i, !prof !338

do.body5.i679.i:                                  ; preds = %if.then438.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10.i682.i:                                  ; preds = %if.then438.i
  %mft_no.i680.i = getelementptr i8, ptr %358, i32 -460
  %533 = ptrtoint ptr %mft_no.i680.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %mft_no.i680.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %534) #9
  %535 = ptrtoint ptr %page1.i677.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %page1.i677.i, align 8
  %tobool.not.i.i681.i = icmp eq ptr %536, null
  br i1 %tobool.not.i.i681.i, label %do.body4.i.i683.i, label %unmap_mft_record.exit688.i, !prof !338

do.body4.i.i683.i:                                ; preds = %do.end10.i682.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

unmap_mft_record.exit688.i:                       ; preds = %do.end10.i682.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %536) #9
  %537 = ptrtoint ptr %page1.i677.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr null, ptr %page1.i677.i, align 8
  %page_ofs.i.i684.i = getelementptr i8, ptr %358, i32 -236
  %538 = ptrtoint ptr %page_ofs.i.i684.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 0, ptr %page_ofs.i.i684.i, align 4
  %mrec_lock.i685.i = getelementptr i8, ptr %358, i32 -332
  tail call void @mutex_unlock(ptr noundef %mrec_lock.i685.i) #9
  %count.i686.i = getelementptr i8, ptr %358, i32 -452
  %call.i.i.i687.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i686.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i686.i, i32 1, i32 3, i32 1) #9
  %539 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i686.i, ptr %count.i686.i, i32 1, ptr elementtype(i32) %count.i686.i) #9, !srcloc !337
  br label %if.end439.i

if.end439.i:                                      ; preds = %unmap_mft_record.exit688.i, %if.end436.i.if.end439.i_crit_edge
  tail call void @up_write(ptr noundef %lock.i1156) #9
  br label %ntfs_mft_data_extend_allocation_nolock.exit

ntfs_mft_data_extend_allocation_nolock.exit:      ; preds = %if.end439.i, %if.end136.i, %if.then116.i, %if.then.i1169.ntfs_mft_data_extend_allocation_nolock.exit_crit_edge
  %retval.0.i1219 = phi i32 [ %384, %if.then116.i ], [ %393, %if.end136.i ], [ %ret.1.i1214, %if.end439.i ], [ %369, %if.then.i1169.ntfs_mft_data_extend_allocation_nolock.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i1219)
  %tobool303.not = icmp eq i32 %retval.0.i1219, 0
  br i1 %tobool303.not, label %ntfs_mft_data_extend_allocation_nolock.exit.do.body313_crit_edge, label %ntfs_mft_data_extend_allocation_nolock.exit.if.then310_crit_edge, !prof !335

ntfs_mft_data_extend_allocation_nolock.exit.if.then310_crit_edge: ; preds = %ntfs_mft_data_extend_allocation_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then310

ntfs_mft_data_extend_allocation_nolock.exit.do.body313_crit_edge: ; preds = %ntfs_mft_data_extend_allocation_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body313

if.then310:                                       ; preds = %ntfs_mft_data_extend_allocation_nolock.exit.if.then310_crit_edge, %if.then353.i, %if.then97.i1176, %if.then.i1169.if.then310_crit_edge
  %retval.0.i12191308 = phi i32 [ %call300.i, %if.then353.i ], [ -28, %if.then97.i1176 ], [ -5, %if.then.i1169.if.then310_crit_edge ], [ %retval.0.i1219, %ntfs_mft_data_extend_allocation_nolock.exit.if.then310_crit_edge ]
  %540 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %541, ptr noundef nonnull @.str.51) #9
  br label %undo_mftbmp_alloc_nolock

do.body313:                                       ; preds = %ntfs_mft_data_extend_allocation_nolock.exit.do.body313_crit_edge, %ntfs_mft_data_extend_allocation_nolock.exit.thread1309
  %call320 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #9
  %542 = ptrtoint ptr %allocated_size286 to i32
  call void @__asan_load8_noabort(i32 %542)
  %543 = load i64, ptr %allocated_size286, align 8
  %544 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %mft_ino, align 8
  %call325 = tail call fastcc i64 @i_size_read(ptr noundef %545)
  %546 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_load8_noabort(i32 %546)
  %547 = load i64, ptr %initialized_size262, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2419, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.52, i64 noundef %543, i64 noundef %call325, i64 noundef %547) #9
  %548 = ptrtoint ptr %allocated_size286 to i32
  call void @__asan_load8_noabort(i32 %548)
  %549 = load i64, ptr %allocated_size286, align 8
  %cmp291 = icmp sgt i64 %shl251, %549
  br i1 %cmp291, label %do.body313.do.body293_crit_edge, label %do.body313.do.body327_crit_edge

do.body313.do.body327_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body327

do.body313.do.body293_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body293

do.body327:                                       ; preds = %do.body313.do.body327_crit_edge, %if.end275.do.body327_crit_edge
  %flags.0.lcssa = phi i32 [ %call283, %if.end275.do.body327_crit_edge ], [ %call320, %do.body313.do.body327_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.0.lcssa) #9
  %call343 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i) #9
  %550 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_load8_noabort(i32 %550)
  %551 = load i64, ptr %initialized_size262, align 8
  %552 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %mft_ino, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %553, i32 0, i32 14
  %554 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %554)
  %555 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl251, i64 %551)
  %cmp3501438 = icmp sgt i64 %shl251, %551
  br i1 %cmp3501438, label %while.body352.lr.ph, label %do.body327.do.body402_crit_edge

do.body327.do.body402_crit_edge:                  ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body402

while.body352.lr.ph:                              ; preds = %do.body327
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 14
  br label %while.body352

while.body352:                                    ; preds = %ntfs_mft_record_format.exit.thread1316.while.body352_crit_edge, %while.body352.lr.ph
  %556 = phi i64 [ %551, %while.body352.lr.ph ], [ %add356, %ntfs_mft_record_format.exit.thread1316.while.body352_crit_edge ]
  %flags.11439 = phi i32 [ %call343, %while.body352.lr.ph ], [ %call396, %ntfs_mft_record_format.exit.thread1316.while.body352_crit_edge ]
  %557 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %mft_record_size, align 4
  %conv355 = zext i32 %558 to i64
  %add356 = add i64 %556, %conv355
  %559 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %mft_record_size_bits.i, align 4
  %sh_prom360 = zext i8 %560 to i64
  %shr361 = ashr i64 %556, %sh_prom360
  %561 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %mft_ino, align 8
  %call363 = tail call fastcc i64 @i_size_read(ptr noundef %562)
  call void @__sanitizer_cov_trace_cmp8(i64 %add356, i64 %call363)
  %cmp364 = icmp sgt i64 %add356, %call363
  br i1 %cmp364, label %if.then366, label %while.body352.do.body369_crit_edge

while.body352.do.body369_crit_edge:               ; preds = %while.body352
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body369

if.then366:                                       ; preds = %while.body352
  call void @__sanitizer_cov_trace_pc() #11
  %563 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %mft_ino, align 8
  tail call fastcc void @i_size_write(ptr noundef %564, i64 noundef %add356)
  br label %do.body369

do.body369:                                       ; preds = %if.then366, %while.body352.do.body369_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.11439) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2442, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.53, i64 noundef %shr361) #9
  %565 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %mft_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2096, ptr noundef nonnull @__func__.ntfs_mft_record_format, ptr noundef nonnull @.str.142, i64 noundef %shr361) #9
  %567 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %mft_record_size_bits.i, align 4
  %sh_prom.i1222 = zext i8 %568 to i64
  %shl.i1223 = shl i64 %shr361, %sh_prom.i1222
  %569 = lshr i64 %shl.i1223, 12
  %conv1.i = trunc i64 %569 to i32
  %570 = trunc i64 %shl.i1223 to i32
  %conv6.i = and i32 %570, 4095
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %566) #9
  %571 = lshr i64 %call.i, 12
  %conv8.i = trunc i64 %571 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %conv8.i)
  %cmp.not.i = icmp ult i32 %conv1.i, %conv8.i
  br i1 %cmp.not.i, label %do.body369.if.end24.i1231_crit_edge, label %if.then.i1224, !prof !335

do.body369.if.end24.i1231_crit_edge:              ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i1231

if.then.i1224:                                    ; preds = %do.body369
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %conv8.i)
  %cmp11.i = icmp ugt i32 %conv1.i, %conv8.i
  br i1 %cmp11.i, label %if.then.i1224.if.then23.i_crit_edge, label %lor.rhs.i1227, !prof !338

if.then.i1224.if.then23.i_crit_edge:              ; preds = %if.then.i1224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.rhs.i1227:                                    ; preds = %if.then.i1224
  %572 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %mft_record_size, align 4
  %add.i1226 = add i32 %573, %conv6.i
  %conv13.i = zext i32 %add.i1226 to i64
  %and14.i = and i64 %call.i, 4095
  call void @__sanitizer_cov_trace_cmp8(i64 %and14.i, i64 %conv13.i)
  %cmp15.not.i = icmp ugt i64 %and14.i, %conv13.i
  br i1 %cmp15.not.i, label %lor.rhs.i1227.if.end24.i1231_crit_edge, label %lor.rhs.i1227.if.then23.i_crit_edge, !prof !335

lor.rhs.i1227.if.then23.i_crit_edge:              ; preds = %lor.rhs.i1227
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.rhs.i1227.if.end24.i1231_crit_edge:           ; preds = %lor.rhs.i1227
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i1231

if.then23.i:                                      ; preds = %lor.rhs.i1227.if.then23.i_crit_edge, %if.then.i1224.if.then23.i_crit_edge
  %574 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_format, ptr noundef %575, ptr noundef nonnull @.str.143, i64 noundef %shr361) #9
  br label %cleanup.thread

if.end24.i1231:                                   ; preds = %lor.rhs.i1227.if.end24.i1231_crit_edge, %do.body369.if.end24.i1231_crit_edge
  %i_mapping.i1228 = getelementptr inbounds %struct.inode, ptr %566, i32 0, i32 9
  %576 = ptrtoint ptr %i_mapping.i1228 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %i_mapping.i1228, align 8
  %call25.i1229 = tail call fastcc ptr @ntfs_map_page(ptr noundef %577, i32 noundef %conv1.i) #9
  %cmp.i.i1230 = icmp ugt ptr %call25.i1229, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i1230, label %ntfs_mft_record_format.exit, label %if.end30.i

if.end30.i:                                       ; preds = %if.end24.i1231
  tail call void @__might_sleep(ptr noundef nonnull @.str.79, i32 noundef 788) #9
  %578 = getelementptr inbounds %struct.page, ptr %call25.i1229, i32 0, i32 1
  %579 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load volatile i32, ptr %578, align 4
  %and.i.i106.i = and i32 %580, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106.i)
  %tobool.not.i.i107.i = icmp eq i32 %and.i.i106.i, 0
  br i1 %tobool.not.i.i107.i, label %if.end.i.i110.i, label %if.then.i.i109.i, !prof !335

if.then.i.i109.i:                                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i108.i = add i32 %580, -1
  br label %_compound_head.exit.i114.i

if.end.i.i110.i:                                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %581 = ptrtoint ptr %call25.i1229 to i32
  br label %_compound_head.exit.i114.i

_compound_head.exit.i114.i:                       ; preds = %if.end.i.i110.i, %if.then.i.i109.i
  %retval.0.i.i111.i = phi i32 [ %sub.i.i108.i, %if.then.i.i109.i ], [ %581, %if.end.i.i110.i ]
  %582 = inttoptr i32 %retval.0.i.i111.i to ptr
  %583 = getelementptr inbounds %struct.page, ptr %582, i32 0, i32 1
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load volatile i32, ptr %583, align 4
  %and.i.i.i.i112.i = and i32 %585, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i112.i)
  %tobool.not.i.i.i113.i = icmp eq i32 %and.i.i.i.i112.i, 0
  br i1 %tobool.not.i.i.i113.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i115.i, !prof !335

if.then.i.i.i115.i:                               ; preds = %_compound_head.exit.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  %586 = inttoptr i32 %retval.0.i.i111.i to ptr
  tail call void @dump_page(ptr noundef %586, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i114.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %582, i32 noundef 4) #9
  %587 = ptrtoint ptr %582 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load volatile i32, ptr %582, align 4
  %and.i.i4.i.i.i = and i32 %588, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i116.i_crit_edge

folio_flags.exit.i.i.i.if.then.i116.i_crit_edge:  ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i116.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  tail call void @llvm.prefetch.p0(ptr %582, i32 1, i32 3, i32 1) #9
  %589 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %582, ptr %582, i32 1, ptr elementtype(i32) %582) #9, !srcloc !345
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %589, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  %590 = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %590)
  %phi.cmp.i.i.i.i = icmp eq i32 %590, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i116.i_crit_edge

folio_trylock.exit.i.i.if.then.i116.i_crit_edge:  ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i116.i

folio_trylock.exit.i.i.lock_page.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit.i

if.then.i116.i:                                   ; preds = %folio_trylock.exit.i.i.if.then.i116.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i116.i_crit_edge
  tail call void @__folio_lock(ptr noundef %582) #9
  br label %lock_page.exit.i

lock_page.exit.i:                                 ; preds = %if.then.i116.i, %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge
  %591 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load volatile i32, ptr %578, align 4
  %and.i.i117.i = and i32 %592, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i117.i)
  %tobool.not.i.i118.i = icmp eq i32 %and.i.i117.i, 0
  br i1 %tobool.not.i.i118.i, label %if.end.i.i121.i, label %if.then.i.i120.i, !prof !335

if.then.i.i120.i:                                 ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i119.i = add i32 %592, -1
  br label %_compound_head.exit.i125.i

if.end.i.i121.i:                                  ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %593 = ptrtoint ptr %call25.i1229 to i32
  br label %_compound_head.exit.i125.i

_compound_head.exit.i125.i:                       ; preds = %if.end.i.i121.i, %if.then.i.i120.i
  %retval.0.i.i122.i = phi i32 [ %sub.i.i119.i, %if.then.i.i120.i ], [ %593, %if.end.i.i121.i ]
  %594 = inttoptr i32 %retval.0.i.i122.i to ptr
  %595 = getelementptr inbounds %struct.page, ptr %594, i32 0, i32 1
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load volatile i32, ptr %595, align 4
  %and.i.i.i.i123.i = and i32 %597, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i123.i)
  %tobool.not.i.i.i124.i = icmp eq i32 %and.i.i.i.i123.i, 0
  br i1 %tobool.not.i.i.i124.i, label %folio_flags.exit.i.i127.i, label %if.then.i.i.i126.i, !prof !335

if.then.i.i.i126.i:                               ; preds = %_compound_head.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  %598 = inttoptr i32 %retval.0.i.i122.i to ptr
  tail call void @dump_page(ptr noundef %598, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i.i127.i:                        ; preds = %_compound_head.exit.i125.i
  %599 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load volatile i32, ptr %594, align 4
  %601 = and i32 %600, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %601)
  %tobool.i.not.i.i = icmp eq i32 %601, 0
  br i1 %tobool.i.not.i.i, label %do.body42.i, label %PageUptodate.exit.i

PageUptodate.exit.i:                              ; preds = %folio_flags.exit.i.i127.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  %602 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load volatile i32, ptr %578, align 4
  %and.i.i.i = and i32 %603, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i1232 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i1232, label %do.body7.i.i, label %if.then.i.i1233, !prof !335

do.body42.i:                                      ; preds = %folio_flags.exit.i.i127.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2122, 0\0A.popsection", ""() #9, !srcloc !395
  unreachable

if.then.i.i1233:                                  ; preds = %PageUptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call25.i1229, ptr noundef nonnull @.str.82) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !349
  unreachable

do.body7.i.i:                                     ; preds = %PageUptodate.exit.i
  %604 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load volatile i32, ptr %578, align 4
  %and.i31.i.i = and i32 %605, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i.i)
  %tobool.not.i.i.i1234 = icmp eq i32 %and.i31.i.i, 0
  br i1 %tobool.not.i.i.i1234, label %if.end.i.i.i, label %if.then.i.i.i1235, !prof !335

if.then.i.i.i1235:                                ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %605, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %606 = ptrtoint ptr %call25.i1229 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i1235
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i1235 ], [ %606, %if.end.i.i.i ]
  %607 = inttoptr i32 %retval.0.i.i.i to ptr
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load volatile i32, ptr %607, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %609)
  %cmp.i.not.i.i = icmp eq i32 %609, -1
  %610 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load volatile i32, ptr %578, align 4
  %and.i32.i.i = and i32 %611, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then17.i.i, label %do.end24.i.i, !prof !338

if.then17.i.i:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %if.end.i36.i.i, label %if.then.i35.i.i, !prof !335

if.then.i35.i.i:                                  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i.i = add i32 %611, -1
  br label %_compound_head.exit38.i.i

if.end.i36.i.i:                                   ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %612 = ptrtoint ptr %call25.i1229 to i32
  br label %_compound_head.exit38.i.i

_compound_head.exit38.i.i:                        ; preds = %if.end.i36.i.i, %if.then.i35.i.i
  %retval.0.i37.i.i = phi i32 [ %sub.i34.i.i, %if.then.i35.i.i ], [ %612, %if.end.i36.i.i ]
  %613 = inttoptr i32 %retval.0.i37.i.i to ptr
  tail call void @dump_page(ptr noundef %613, ptr noundef nonnull @.str.78) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !350
  unreachable

do.end24.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %if.end.i43.i.i, label %if.then.i42.i.i, !prof !335

if.then.i42.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i.i = add i32 %611, -1
  br label %ClearPageUptodate.exit.i

if.end.i43.i.i:                                   ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %614 = ptrtoint ptr %call25.i1229 to i32
  br label %ClearPageUptodate.exit.i

ClearPageUptodate.exit.i:                         ; preds = %if.end.i43.i.i, %if.then.i42.i.i
  %retval.0.i44.i.i = phi i32 [ %sub.i41.i.i, %if.then.i42.i.i ], [ %614, %if.end.i43.i.i ]
  %615 = inttoptr i32 %retval.0.i44.i.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %615) #9
  %call49.i = tail call ptr @page_address(ptr noundef %call25.i1229) #9
  %add.ptr.i1236 = getelementptr i8, ptr %call49.i, i32 %conv6.i
  %call50.i1237 = tail call fastcc i32 @ntfs_mft_record_layout(ptr noundef %vol, i64 noundef %shr361, ptr noundef %add.ptr.i1236) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i1237)
  %tobool51.not.i = icmp eq i32 %call50.i1237, 0
  br i1 %tobool51.not.i, label %if.end60.i, label %if.then58.i, !prof !335

if.then58.i:                                      ; preds = %ClearPageUptodate.exit.i
  %616 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_format, ptr noundef %617, ptr noundef nonnull @.str.145, i64 noundef %shr361) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !361
  %618 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load volatile i32, ptr %578, align 4
  %and.i.i.i.i.i = and i32 %619, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !335

if.then.i.i.i.i:                                  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call25.i1229, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call25.i1229) #9
  tail call void @unlock_page(ptr noundef %call25.i1229) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call25.i1229) #9
  br label %cleanup.thread

if.end60.i:                                       ; preds = %ClearPageUptodate.exit.i
  tail call void @flush_dcache_page(ptr noundef %call25.i1229) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !361
  %620 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load volatile i32, ptr %578, align 4
  %and.i.i.i.i102.i = and i32 %621, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i102.i)
  %tobool.not.i.i.i103.i = icmp eq i32 %and.i.i.i.i102.i, 0
  br i1 %tobool.not.i.i.i103.i, label %ntfs_mft_record_format.exit.thread1316, label %if.then.i.i.i104.i, !prof !335

if.then.i.i.i104.i:                               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call25.i1229, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

ntfs_mft_record_format.exit.thread1316:           ; preds = %if.end60.i
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call25.i1229) #9
  tail call void @unlock_page(ptr noundef %call25.i1229) #9
  tail call void @mark_ntfs_record_dirty(ptr noundef %call25.i1229, i32 noundef %conv6.i) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call25.i1229) #9
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2144, ptr noundef nonnull @__func__.ntfs_mft_record_format, ptr noundef nonnull @.str.12) #9
  %call396 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i) #9
  %622 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_store8_noabort(i32 %622)
  store i64 %add356, ptr %initialized_size262, align 8
  %cmp350 = icmp sgt i64 %shl251, %add356
  br i1 %cmp350, label %ntfs_mft_record_format.exit.thread1316.while.body352_crit_edge, label %ntfs_mft_record_format.exit.thread1316.do.body402_crit_edge

ntfs_mft_record_format.exit.thread1316.do.body402_crit_edge: ; preds = %ntfs_mft_record_format.exit.thread1316
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body402

ntfs_mft_record_format.exit.thread1316.while.body352_crit_edge: ; preds = %ntfs_mft_record_format.exit.thread1316
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body352

ntfs_mft_record_format.exit:                      ; preds = %if.end24.i1231
  call void @__sanitizer_cov_trace_pc() #11
  %623 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_format, ptr noundef %624, ptr noundef nonnull @.str.144, i64 noundef %shr361) #9
  %625 = ptrtoint ptr %call25.i1229 to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %ntfs_mft_record_format.exit, %SetPageUptodate.exit.i, %if.then23.i
  %retval.0.i12381315 = phi i32 [ %625, %ntfs_mft_record_format.exit ], [ %call50.i1237, %SetPageUptodate.exit.i ], [ -2, %if.then23.i ]
  %626 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %627, ptr noundef nonnull @.str.54) #9
  br label %do.body750

do.body402:                                       ; preds = %ntfs_mft_record_format.exit.thread1316.do.body402_crit_edge, %do.body327.do.body402_crit_edge
  %flags.1.lcssa = phi i32 [ %call343, %do.body327.do.body402_crit_edge ], [ %call396, %ntfs_mft_record_format.exit.thread1316.do.body402_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.1.lcssa) #9
  %call411 = tail call ptr @map_mft_record(ptr noundef %add.ptr.i)
  %cmp.i1239 = icmp ugt ptr %call411, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1239, label %if.then413, label %if.end416

if.then413:                                       ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #11
  %628 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %629, ptr noundef nonnull @.str.55) #9
  %630 = ptrtoint ptr %call411 to i32
  br label %do.body750

if.end416:                                        ; preds = %do.body402
  %call417 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i, ptr noundef %call411) #9
  %tobool418.not = icmp eq ptr %call417, null
  br i1 %tobool418.not, label %if.then427, label %if.end429, !prof !338

if.then427:                                       ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #11
  %631 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %632, ptr noundef nonnull @.str.56) #9
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i)
  br label %do.body750

if.end429:                                        ; preds = %if.end416
  %type = getelementptr i8, ptr %6, i32 -444
  %633 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %type, align 4
  %name = getelementptr i8, ptr %6, i32 -440
  %635 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %name, align 8
  %name_len = getelementptr i8, ptr %6, i32 -436
  %637 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %name_len, align 4
  %call430 = tail call i32 @ntfs_attr_lookup(i32 noundef %634, ptr noundef %636, i32 noundef %638, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call417) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call430)
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %if.end440, label %if.then438, !prof !335

if.then438:                                       ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #11
  %639 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %640, ptr noundef nonnull @.str.57) #9
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call417) #9
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i)
  br label %do.body750

if.end440:                                        ; preds = %if.end429
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call417, i32 0, i32 1
  %641 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %attr, align 4
  %call448 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #9
  %643 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_load8_noabort(i32 %643)
  %644 = load i64, ptr %initialized_size262, align 8
  %645 = tail call i64 @llvm.bswap.i64(i64 %644) #9
  %initialized_size453 = getelementptr inbounds %struct.ATTR_RECORD, ptr %642, i32 0, i32 7, i32 0, i32 7
  %646 = ptrtoint ptr %initialized_size453 to i32
  call void @__asan_storeN_noabort(i32 %646, i32 8)
  store i64 %645, ptr %initialized_size453, align 1
  %647 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %mft_ino, align 8
  %call455 = tail call fastcc i64 @i_size_read(ptr noundef %648)
  %649 = tail call i64 @llvm.bswap.i64(i64 %call455) #9
  %data_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %642, i32 0, i32 7, i32 0, i32 6
  %650 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %650, i32 8)
  store i64 %649, ptr %data_size, align 1
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call448) #9
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call417, i32 0, i32 3
  %651 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %ntfs_ino, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %652, i32 0, i32 13
  %653 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %654) #9
  %655 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %ntfs_ino, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %656, i32 0, i32 3
  %call.i.i1240 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1240)
  %tobool.not.i1241 = icmp eq i32 %call.i.i1240, 0
  br i1 %tobool.not.i1241, label %if.then.i1242, label %if.end440.mark_mft_record_dirty.exit_crit_edge

if.end440.mark_mft_record_dirty.exit_crit_edge:   ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #11
  br label %mark_mft_record_dirty.exit

if.then.i1242:                                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_mft_record_dirty(ptr noundef %656) #9
  br label %mark_mft_record_dirty.exit

mark_mft_record_dirty.exit:                       ; preds = %if.then.i1242, %if.end440.mark_mft_record_dirty.exit_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call417) #9
  %page1.i = getelementptr i8, ptr %6, i32 -240
  %657 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %page1.i, align 8
  %tobool.not.i1244 = icmp eq ptr %658, null
  br i1 %tobool.not.i1244, label %do.body5.i, label %do.end10.i, !prof !338

do.body5.i:                                       ; preds = %mark_mft_record_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10.i:                                       ; preds = %mark_mft_record_dirty.exit
  %mft_no.i1245 = getelementptr i8, ptr %6, i32 -460
  %659 = ptrtoint ptr %mft_no.i1245 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %mft_no.i1245, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %660) #9
  %661 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %page1.i, align 8
  %tobool.not.i.i1246 = icmp eq ptr %662, null
  br i1 %tobool.not.i.i1246, label %do.body4.i.i, label %unmap_mft_record.exit, !prof !338

do.body4.i.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

unmap_mft_record.exit:                            ; preds = %do.end10.i
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %662) #9
  %663 = ptrtoint ptr %page1.i to i32
  call void @__asan_store4_noabort(i32 %663)
  store ptr null, ptr %page1.i, align 8
  %page_ofs.i.i = getelementptr i8, ptr %6, i32 -236
  %664 = ptrtoint ptr %page_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 0, ptr %page_ofs.i.i, align 4
  %mrec_lock.i = getelementptr i8, ptr %6, i32 -332
  tail call void @mutex_unlock(ptr noundef %mrec_lock.i) #9
  %count.i = getelementptr i8, ptr %6, i32 -452
  %call.i.i.i1247 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %665 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !337
  %call475 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #9
  %666 = ptrtoint ptr %allocated_size286 to i32
  call void @__asan_load8_noabort(i32 %666)
  %667 = load i64, ptr %allocated_size286, align 8
  %668 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %mft_ino, align 8
  %call480 = tail call fastcc i64 @i_size_read(ptr noundef %669)
  %670 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_load8_noabort(i32 %670)
  %671 = load i64, ptr %initialized_size262, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2494, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.58, i64 noundef %667, i64 noundef %call480, i64 noundef %671) #9
  %672 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %mft_ino, align 8
  %call484 = tail call fastcc i64 @i_size_read(ptr noundef %673)
  %674 = ptrtoint ptr %allocated_size286 to i32
  call void @__asan_load8_noabort(i32 %674)
  %675 = load i64, ptr %allocated_size286, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call484, i64 %675)
  %cmp486 = icmp sgt i64 %call484, %675
  br i1 %cmp486, label %do.body495, label %do.body504, !prof !338

do.body495:                                       ; preds = %unmap_mft_record.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2495, 0\0A.popsection", ""() #9, !srcloc !396
  unreachable

do.body504:                                       ; preds = %unmap_mft_record.exit
  %676 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_load8_noabort(i32 %676)
  %677 = load i64, ptr %initialized_size262, align 8
  %678 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %mft_ino, align 8
  %call507 = tail call fastcc i64 @i_size_read(ptr noundef %679)
  call void @__sanitizer_cov_trace_cmp8(i64 %677, i64 %call507)
  %cmp508 = icmp sgt i64 %677, %call507
  br i1 %cmp508, label %do.body517, label %do.body526, !prof !338

do.body517:                                       ; preds = %do.body504
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2496, 0\0A.popsection", ""() #9, !srcloc !397
  unreachable

do.body526:                                       ; preds = %do.body504
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call475) #9
  br label %mft_rec_already_initialized

mft_rec_already_initialized:                      ; preds = %do.body526, %if.then274
  tail call void @up_write(ptr noundef %mftbmp_lock) #9
  %680 = ptrtoint ptr %mft_record_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %mft_record_size_bits.i, align 4
  %sh_prom538 = zext i8 %681 to i64
  %shl539 = shl i64 %bit.1, %sh_prom538
  %682 = lshr i64 %shl539, 12
  %conv541 = trunc i64 %682 to i32
  %683 = trunc i64 %shl539 to i32
  %conv547 = and i32 %683, 4095
  %684 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %mft_ino, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %685, i32 0, i32 9
  %686 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %i_mapping, align 8
  %call549 = tail call fastcc ptr @ntfs_map_page(ptr noundef %687, i32 noundef %conv541)
  %cmp.i1248 = icmp ugt ptr %call549, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1248, label %if.then551, label %if.end554

if.then551:                                       ; preds = %mft_rec_already_initialized
  call void @__sanitizer_cov_trace_pc() #11
  %688 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %689, ptr noundef nonnull @.str.59, i64 noundef %bit.1) #9
  %690 = ptrtoint ptr %call549 to i32
  br label %undo_mftbmp_alloc

if.end554:                                        ; preds = %mft_rec_already_initialized
  tail call void @__might_sleep(ptr noundef nonnull @.str.79, i32 noundef 788) #9
  %691 = getelementptr inbounds %struct.page, ptr %call549, i32 0, i32 1
  %692 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load volatile i32, ptr %691, align 4
  %and.i.i1249 = and i32 %693, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1249)
  %tobool.not.i.i1250 = icmp eq i32 %and.i.i1249, 0
  br i1 %tobool.not.i.i1250, label %if.end.i.i1253, label %if.then.i.i1252, !prof !335

if.then.i.i1252:                                  ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i1251 = add i32 %693, -1
  br label %_compound_head.exit.i1257

if.end.i.i1253:                                   ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #11
  %694 = ptrtoint ptr %call549 to i32
  br label %_compound_head.exit.i1257

_compound_head.exit.i1257:                        ; preds = %if.end.i.i1253, %if.then.i.i1252
  %retval.0.i.i1254 = phi i32 [ %sub.i.i1251, %if.then.i.i1252 ], [ %694, %if.end.i.i1253 ]
  %695 = inttoptr i32 %retval.0.i.i1254 to ptr
  %696 = getelementptr inbounds %struct.page, ptr %695, i32 0, i32 1
  %697 = ptrtoint ptr %696 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load volatile i32, ptr %696, align 4
  %and.i.i.i.i1255 = and i32 %698, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1255)
  %tobool.not.i.i.i1256 = icmp eq i32 %and.i.i.i.i1255, 0
  br i1 %tobool.not.i.i.i1256, label %folio_flags.exit.i.i, label %if.then.i.i.i1258, !prof !335

if.then.i.i.i1258:                                ; preds = %_compound_head.exit.i1257
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %695, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i1257
  %call.i.i.i.i1259 = tail call zeroext i1 @__kasan_check_write(ptr noundef %695, i32 noundef 4) #9
  %699 = ptrtoint ptr %695 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load volatile i32, ptr %695, align 4
  %and.i.i4.i.i = and i32 %700, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i1260 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i1260, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i1261_crit_edge

folio_flags.exit.i.i.if.then.i1261_crit_edge:     ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1261

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %695, i32 1, i32 3, i32 1) #9
  %701 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %695, ptr %695, i32 1, ptr elementtype(i32) %695) #9, !srcloc !345
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %701, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  %702 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %702)
  %phi.cmp.i.i.i = icmp eq i32 %702, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i1261_crit_edge

folio_trylock.exit.i.if.then.i1261_crit_edge:     ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i1261

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i1261:                                    ; preds = %folio_trylock.exit.i.if.then.i1261_crit_edge, %folio_flags.exit.i.i.if.then.i1261_crit_edge
  tail call void @__folio_lock(ptr noundef %695) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i1261, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %703 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load volatile i32, ptr %691, align 4
  %and.i.i1263 = and i32 %704, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1263)
  %tobool.not.i.i1264 = icmp eq i32 %and.i.i1263, 0
  br i1 %tobool.not.i.i1264, label %if.end.i.i1267, label %if.then.i.i1266, !prof !335

if.then.i.i1266:                                  ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i1265 = add i32 %704, -1
  br label %_compound_head.exit.i1271

if.end.i.i1267:                                   ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %705 = ptrtoint ptr %call549 to i32
  br label %_compound_head.exit.i1271

_compound_head.exit.i1271:                        ; preds = %if.end.i.i1267, %if.then.i.i1266
  %retval.0.i.i1268 = phi i32 [ %sub.i.i1265, %if.then.i.i1266 ], [ %705, %if.end.i.i1267 ]
  %706 = inttoptr i32 %retval.0.i.i1268 to ptr
  %707 = getelementptr inbounds %struct.page, ptr %706, i32 0, i32 1
  %708 = ptrtoint ptr %707 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load volatile i32, ptr %707, align 4
  %and.i.i.i.i1269 = and i32 %709, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1269)
  %tobool.not.i.i.i1270 = icmp eq i32 %and.i.i.i.i1269, 0
  br i1 %tobool.not.i.i.i1270, label %folio_flags.exit.i.i1273, label %if.then.i.i.i1272, !prof !335

if.then.i.i.i1272:                                ; preds = %_compound_head.exit.i1271
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %706, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i.i1273:                         ; preds = %_compound_head.exit.i1271
  %710 = ptrtoint ptr %706 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load volatile i32, ptr %706, align 4
  %712 = and i32 %711, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %712)
  %tobool.i.not.i = icmp eq i32 %712, 0
  br i1 %tobool.i.not.i, label %do.body567, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i1273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !347
  %713 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load volatile i32, ptr %691, align 4
  %and.i.i = and i32 %714, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !335

do.body567:                                       ; preds = %folio_flags.exit.i.i1273
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2524, 0\0A.popsection", ""() #9, !srcloc !398
  unreachable

if.then.i:                                        ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call549, ptr noundef nonnull @.str.82) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !349
  unreachable

do.body7.i:                                       ; preds = %PageUptodate.exit
  %715 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load volatile i32, ptr %691, align 4
  %and.i31.i = and i32 %716, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !335

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %716, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %717 = ptrtoint ptr %call549 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %717, %if.end.i.i ]
  %718 = inttoptr i32 %retval.0.i.i to ptr
  %719 = ptrtoint ptr %718 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load volatile i32, ptr %718, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %720)
  %cmp.i.not.i = icmp eq i32 %720, -1
  %721 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load volatile i32, ptr %691, align 4
  %and.i32.i = and i32 %722, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !338

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !335

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %722, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %723 = ptrtoint ptr %call549 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %723, %if.end.i36.i ]
  %724 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %724, ptr noundef nonnull @.str.78) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !350
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !335

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %722, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %725 = ptrtoint ptr %call549 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %725, %if.end.i43.i ]
  %726 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %726) #9
  %call576 = tail call ptr @page_address(ptr noundef %call549) #9
  %add.ptr = getelementptr i8, ptr %call576, i32 %conv547
  br i1 %cmp272.not, label %ClearPageUptodate.exit.if.end617_crit_edge, label %if.then578

ClearPageUptodate.exit.if.end617_crit_edge:       ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end617

if.then578:                                       ; preds = %ClearPageUptodate.exit
  %727 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %727, i32 4)
  %728 = load i32, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179208773, i32 %728)
  %cmp.i1274 = icmp eq i32 %728, 1179208773
  br i1 %cmp.i1274, label %land.lhs.true581, label %if.then578.if.end588_crit_edge

if.then578.if.end588_crit_edge:                   ; preds = %if.then578
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end588

land.lhs.true581:                                 ; preds = %if.then578
  %flags582 = getelementptr inbounds %struct.MFT_RECORD, ptr %add.ptr, i32 0, i32 7
  %729 = ptrtoint ptr %flags582 to i32
  call void @__asan_loadN_noabort(i32 %729, i32 2)
  %730 = load i16, ptr %flags582, align 1
  %731 = and i16 %730, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %731)
  %tobool585.not = icmp eq i16 %731, 0
  br i1 %tobool585.not, label %land.lhs.true581.if.end588_crit_edge, label %if.then586

land.lhs.true581.if.end588_crit_edge:             ; preds = %land.lhs.true581
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end588

if.then586:                                       ; preds = %land.lhs.true581
  %732 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %733, ptr noundef nonnull @.str.60, i64 noundef %bit.1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !361
  %734 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load volatile i32, ptr %691, align 4
  %and.i.i.i.i = and i32 %735, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !335

if.then.i.i.i:                                    ; preds = %if.then586
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call549, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then586
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call549) #9
  tail call void @unlock_page(ptr noundef %call549) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call549)
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %undo_mftbmp_alloc

if.end588:                                        ; preds = %land.lhs.true581.if.end588_crit_edge, %if.then578.if.end588_crit_edge
  %sequence_number = getelementptr inbounds %struct.MFT_RECORD, ptr %add.ptr, i32 0, i32 4
  %736 = ptrtoint ptr %sequence_number to i32
  call void @__asan_loadN_noabort(i32 %736, i32 2)
  %737 = load i16, ptr %sequence_number, align 1
  %usa_ofs = getelementptr inbounds %struct.MFT_RECORD, ptr %add.ptr, i32 0, i32 1
  %738 = ptrtoint ptr %usa_ofs to i32
  call void @__asan_loadN_noabort(i32 %738, i32 2)
  %739 = load i16, ptr %usa_ofs, align 1
  %740 = tail call i16 @llvm.bswap.i16(i16 %739)
  %conv589 = zext i16 %740 to i32
  %add.ptr590 = getelementptr i8, ptr %add.ptr, i32 %conv589
  %741 = ptrtoint ptr %add.ptr590 to i32
  call void @__asan_load2_noabort(i32 %741)
  %742 = load i16, ptr %add.ptr590, align 2
  %call591 = tail call fastcc i32 @ntfs_mft_record_layout(ptr noundef %vol, i64 noundef %bit.1, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call591)
  %tobool592.not = icmp eq i32 %call591, 0
  br i1 %tobool592.not, label %if.end601, label %if.then599, !prof !335

if.then599:                                       ; preds = %if.end588
  %743 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %744, ptr noundef nonnull @.str.61, i64 noundef %bit.1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !361
  %745 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load volatile i32, ptr %691, align 4
  %and.i.i.i.i1078 = and i32 %746, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1078)
  %tobool.not.i.i.i1079 = icmp eq i32 %and.i.i.i.i1078, 0
  br i1 %tobool.not.i.i.i1079, label %SetPageUptodate.exit1081, label %if.then.i.i.i1080, !prof !335

if.then.i.i.i1080:                                ; preds = %if.then599
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call549, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

SetPageUptodate.exit1081:                         ; preds = %if.then599
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call549) #9
  tail call void @unlock_page(ptr noundef %call549) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call549)
  br label %undo_mftbmp_alloc

if.end601:                                        ; preds = %if.end588
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %737)
  %tobool602.not = icmp eq i16 %737, 0
  br i1 %tobool602.not, label %if.end601.if.end605_crit_edge, label %if.then603

if.end601.if.end605_crit_edge:                    ; preds = %if.end601
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end605

if.then603:                                       ; preds = %if.end601
  call void @__sanitizer_cov_trace_pc() #11
  %747 = ptrtoint ptr %sequence_number to i32
  call void @__asan_storeN_noabort(i32 %747, i32 2)
  store i16 %737, ptr %sequence_number, align 1
  br label %if.end605

if.end605:                                        ; preds = %if.then603, %if.end601.if.end605_crit_edge
  %748 = zext i16 %742 to i64
  call void @__sanitizer_cov_trace_switch(i64 %748, ptr @__sancov_gen_cov_switch_values.155)
  switch i16 %742, label %if.then612 [
    i16 0, label %if.end605.if.end617_crit_edge
    i16 -1, label %if.end605.if.end617_crit_edge1899
  ]

if.end605.if.end617_crit_edge1899:                ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end617

if.end605.if.end617_crit_edge:                    ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end617

if.then612:                                       ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #11
  %749 = ptrtoint ptr %usa_ofs to i32
  call void @__asan_loadN_noabort(i32 %749, i32 2)
  %750 = load i16, ptr %usa_ofs, align 1
  %751 = tail call i16 @llvm.bswap.i16(i16 %750)
  %conv614 = zext i16 %751 to i32
  %add.ptr615 = getelementptr i8, ptr %add.ptr, i32 %conv614
  %752 = ptrtoint ptr %add.ptr615 to i32
  call void @__asan_store2_noabort(i32 %752)
  store i16 %742, ptr %add.ptr615, align 2
  br label %if.end617

if.end617:                                        ; preds = %if.then612, %if.end605.if.end617_crit_edge, %if.end605.if.end617_crit_edge1899, %ClearPageUptodate.exit.if.end617_crit_edge
  %flags618 = getelementptr inbounds %struct.MFT_RECORD, ptr %add.ptr, i32 0, i32 7
  %753 = ptrtoint ptr %flags618 to i32
  call void @__asan_loadN_noabort(i32 %753, i32 2)
  %754 = load i16, ptr %flags618, align 1
  %and621 = and i32 %mode, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and621)
  %cmp622 = icmp eq i32 %and621, 16384
  %spec.select.v = select i1 %cmp622, i16 768, i16 256
  %spec.select = or i16 %754, %spec.select.v
  %755 = ptrtoint ptr %flags618 to i32
  call void @__asan_storeN_noabort(i32 %755, i32 2)
  store i16 %spec.select, ptr %flags618, align 1
  tail call void @flush_dcache_page(ptr noundef %call549) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !361
  %756 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load volatile i32, ptr %691, align 4
  %and.i.i.i.i1082 = and i32 %757, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1082)
  %tobool.not.i.i.i1083 = icmp eq i32 %and.i.i.i.i1082, 0
  br i1 %tobool.not.i.i.i1083, label %SetPageUptodate.exit1085, label %if.then.i.i.i1084, !prof !335

if.then.i.i.i1084:                                ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call549, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

SetPageUptodate.exit1085:                         ; preds = %if.end617
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call549) #9
  br i1 %tobool.not, label %if.else671, label %if.then631

if.then631:                                       ; preds = %SetPageUptodate.exit1085
  %seq_no632 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 5
  %758 = ptrtoint ptr %seq_no632 to i32
  call void @__asan_load2_noabort(i32 %758)
  %759 = load i16, ptr %seq_no632, align 8
  %conv633 = zext i16 %759 to i64
  %shl634 = shl nuw i64 %conv633, 48
  %mft_no635 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni, i32 0, i32 4
  %760 = ptrtoint ptr %mft_no635 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %mft_no635, align 4
  %conv636 = zext i32 %761 to i64
  %or638 = or i64 %shl634, %conv636
  %762 = tail call i64 @llvm.bswap.i64(i64 %or638)
  %base_mft_record = getelementptr inbounds %struct.MFT_RECORD, ptr %add.ptr, i32 0, i32 10
  %763 = ptrtoint ptr %base_mft_record to i32
  call void @__asan_storeN_noabort(i32 %763, i32 8)
  store i64 %762, ptr %base_mft_record, align 1
  %call639 = call ptr @map_extent_mft_record(ptr noundef nonnull %base_ni, i64 noundef %bit.1, ptr noundef nonnull %ni)
  %cmp.i1275 = icmp ugt ptr %call639, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1275, label %cleanup668, label %do.body649

do.body649:                                       ; preds = %if.then631
  %cmp650.not = icmp eq ptr %add.ptr, %call639
  br i1 %cmp650.not, label %cleanup668.thread, label %do.body659, !prof !335

do.body659:                                       ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2603, 0\0A.popsection", ""() #9, !srcloc !399
  unreachable

cleanup668.thread:                                ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mark_ntfs_record_dirty(ptr noundef %call549, i32 noundef %conv547) #9
  tail call void @unlock_page(ptr noundef %call549) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call549)
  br label %if.end748

cleanup668:                                       ; preds = %if.then631
  call void @__sanitizer_cov_trace_pc() #11
  %764 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %765, ptr noundef nonnull @.str.62, i64 noundef %bit.1) #9
  %766 = ptrtoint ptr %call639 to i32
  %767 = ptrtoint ptr %flags618 to i32
  call void @__asan_loadN_noabort(i32 %767, i32 2)
  %768 = load i16, ptr %flags618, align 1
  %769 = and i16 %768, -257
  store i16 %769, ptr %flags618, align 1
  tail call void @flush_dcache_page(ptr noundef %call549) #9
  tail call void @mark_ntfs_record_dirty(ptr noundef %call549, i32 noundef %conv547) #9
  tail call void @unlock_page(ptr noundef %call549) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call549)
  br label %undo_mftbmp_alloc

if.else671:                                       ; preds = %SetPageUptodate.exit1085
  %770 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %vol, align 8
  %call673 = tail call ptr @new_inode(ptr noundef %771) #9
  %tobool674.not = icmp eq ptr %call673, null
  br i1 %tobool674.not, label %if.then683, label %if.end688, !prof !338

if.then683:                                       ; preds = %if.else671
  call void @__sanitizer_cov_trace_pc() #11
  %772 = ptrtoint ptr %flags618 to i32
  call void @__asan_loadN_noabort(i32 %772, i32 2)
  %773 = load i16, ptr %flags618, align 1
  %774 = and i16 %773, -257
  store i16 %774, ptr %flags618, align 1
  tail call void @flush_dcache_page(ptr noundef %call549) #9
  tail call void @mark_ntfs_record_dirty(ptr noundef %call549, i32 noundef %conv547) #9
  tail call void @unlock_page(ptr noundef %call549) #9
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call549)
  br label %undo_mftbmp_alloc

if.end688:                                        ; preds = %if.else671
  %conv689 = trunc i64 %bit.1 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 11
  %775 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 %conv689, ptr %i_ino, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 2
  %uid = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 3
  %776 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %uid, align 4
  %778 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 %777, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 3
  %gid = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 4
  %779 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %gid, align 8
  %781 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 %780, ptr %i_gid, align 8
  %add.ptr.i.i1276 = getelementptr i8, ptr %call673, i32 -528
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.148, i32 noundef 274, ptr noundef nonnull @__func__.ntfs_init_big_inode, ptr noundef nonnull @.str.149) #9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 8
  %782 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %i_sb.i, align 4
  tail call void @__ntfs_init_inode(ptr noundef %783, ptr noundef %add.ptr.i.i1276) #9
  %784 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %i_ino, align 8
  %mft_no.i1277 = getelementptr i8, ptr %call673, i32 -460
  %786 = ptrtoint ptr %mft_no.i1277 to i32
  call void @__asan_store4_noabort(i32 %786)
  store i32 %785, ptr %mft_no.i1277, align 4
  %787 = ptrtoint ptr %ni to i32
  call void @__asan_store4_noabort(i32 %787)
  store ptr %add.ptr.i.i1276, ptr %ni, align 4
  br i1 %cmp622, label %if.then694, label %if.else722

if.then694:                                       ; preds = %if.end688
  %788 = ptrtoint ptr %call673 to i32
  call void @__asan_store2_noabort(i32 %788)
  store i16 16895, ptr %call673, align 8
  %dmask = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 6
  %789 = ptrtoint ptr %dmask to i32
  call void @__asan_load2_noabort(i32 %789)
  %790 = load i16, ptr %dmask, align 2
  %791 = and i16 %790, 16895
  %792 = xor i16 %791, 16895
  store i16 %792, ptr %call673, align 8
  %state.i = getelementptr i8, ptr %call673, i32 -464
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state.i) #9
  %type700 = getelementptr i8, ptr %call673, i32 -444
  %793 = ptrtoint ptr %type700 to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 -1610612736, ptr %type700, align 4
  %name701 = getelementptr i8, ptr %call673, i32 -440
  %794 = ptrtoint ptr %name701 to i32
  call void @__asan_store4_noabort(i32 %794)
  store ptr @I30, ptr %name701, align 8
  %name_len702 = getelementptr i8, ptr %call673, i32 -436
  %795 = ptrtoint ptr %name_len702 to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 4, ptr %name_len702, align 4
  %itype = getelementptr i8, ptr %call673, i32 -120
  %796 = ptrtoint ptr %itype to i32
  call void @__asan_store4_noabort(i32 %796)
  store i32 4096, ptr %itype, align 8
  %block_size_bits = getelementptr i8, ptr %call673, i32 -108
  %797 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_store1_noabort(i32 %797)
  store i8 12, ptr %block_size_bits, align 4
  %collation_rule = getelementptr i8, ptr %call673, i32 -112
  %798 = ptrtoint ptr %collation_rule to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 16777216, ptr %collation_rule, align 8
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 11
  %799 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %800)
  %cmp709.not = icmp ugt i32 %800, 4096
  br i1 %cmp709.not, label %if.else715, label %if.then711

if.then711:                                       ; preds = %if.then694
  call void @__sanitizer_cov_trace_pc() #11
  %vcn_size = getelementptr i8, ptr %call673, i32 -116
  %801 = ptrtoint ptr %vcn_size to i32
  call void @__asan_store4_noabort(i32 %801)
  store i32 %800, ptr %vcn_size, align 4
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 13
  %802 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %802)
  %803 = load i8, ptr %cluster_size_bits, align 8
  %vcn_size_bits = getelementptr i8, ptr %call673, i32 -107
  %804 = ptrtoint ptr %vcn_size_bits to i32
  call void @__asan_store1_noabort(i32 %804)
  store i8 %803, ptr %vcn_size_bits, align 1
  br label %if.end733

if.else715:                                       ; preds = %if.then694
  call void @__sanitizer_cov_trace_pc() #11
  %sector_size = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 9
  %805 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %805)
  %806 = load i16, ptr %sector_size, align 2
  %conv716 = zext i16 %806 to i32
  %vcn_size718 = getelementptr i8, ptr %call673, i32 -116
  %807 = ptrtoint ptr %vcn_size718 to i32
  call void @__asan_store4_noabort(i32 %807)
  store i32 %conv716, ptr %vcn_size718, align 4
  %sector_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 10
  %808 = ptrtoint ptr %sector_size_bits to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %sector_size_bits, align 4
  %vcn_size_bits720 = getelementptr i8, ptr %call673, i32 -107
  %810 = ptrtoint ptr %vcn_size_bits720 to i32
  call void @__asan_store1_noabort(i32 %810)
  store i8 %809, ptr %vcn_size_bits720, align 1
  br label %if.end733

if.else722:                                       ; preds = %if.end688
  call void @__sanitizer_cov_trace_pc() #11
  %811 = ptrtoint ptr %call673 to i32
  call void @__asan_store2_noabort(i32 %811)
  store i16 -32257, ptr %call673, align 8
  %fmask = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 5
  %812 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %812)
  %813 = load i16, ptr %fmask, align 4
  %814 = and i16 %813, -32257
  %815 = xor i16 %814, -32257
  store i16 %815, ptr %call673, align 8
  %type730 = getelementptr i8, ptr %call673, i32 -444
  %816 = ptrtoint ptr %type730 to i32
  call void @__asan_store4_noabort(i32 %816)
  store i32 -2147483648, ptr %type730, align 4
  %name731 = getelementptr i8, ptr %call673, i32 -440
  %817 = ptrtoint ptr %name731 to i32
  call void @__asan_store4_noabort(i32 %817)
  store ptr null, ptr %name731, align 8
  %name_len732 = getelementptr i8, ptr %call673, i32 -436
  %818 = ptrtoint ptr %name_len732 to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 0, ptr %name_len732, align 4
  br label %if.end733

if.end733:                                        ; preds = %if.else722, %if.else715, %if.then711
  %819 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %820, i32 0, i32 10
  %821 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %822, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end733.if.end740_crit_edge, label %if.then735

if.end733.if.end740_crit_edge:                    ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end740

if.then735:                                       ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #11
  %823 = ptrtoint ptr %call673 to i32
  call void @__asan_load2_noabort(i32 %823)
  %824 = load i16, ptr %call673, align 8
  %825 = and i16 %824, -147
  store i16 %825, ptr %call673, align 8
  br label %if.end740

if.end740:                                        ; preds = %if.then735, %if.end733.if.end740_crit_edge
  %i_atime = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp741) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp741, ptr noundef nonnull %call673) #9
  %826 = call ptr @memcpy(ptr %i_ctime, ptr %tmp741, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp741) #9
  %827 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %828 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %i_size742 = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 14
  %829 = ptrtoint ptr %i_size742 to i32
  call void @__asan_store8_noabort(i32 %829)
  store i64 0, ptr %i_size742, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 22
  %830 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %830)
  store i64 0, ptr %i_blocks, align 8
  %sequence_number743 = getelementptr inbounds %struct.MFT_RECORD, ptr %add.ptr, i32 0, i32 4
  %831 = ptrtoint ptr %sequence_number743 to i32
  call void @__asan_loadN_noabort(i32 %831, i32 2)
  %832 = load i16, ptr %sequence_number743, align 1
  %833 = call i16 @llvm.bswap.i16(i16 %832)
  %seq_no744 = getelementptr i8, ptr %call673, i32 -456
  %834 = ptrtoint ptr %seq_no744 to i32
  call void @__asan_store2_noabort(i32 %834)
  store i16 %833, ptr %seq_no744, align 8
  %conv745 = zext i16 %833 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %call673, i32 0, i32 49
  %835 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %835)
  store i32 %conv745, ptr %i_generation, align 8
  %count = getelementptr i8, ptr %call673, i32 -452
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %836 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !334
  %mrec_lock = getelementptr i8, ptr %call673, i32 -332
  call void @mutex_lock_nested(ptr noundef %mrec_lock, i32 noundef 0) #9
  %page746 = getelementptr i8, ptr %call673, i32 -240
  %837 = ptrtoint ptr %page746 to i32
  call void @__asan_store4_noabort(i32 %837)
  store ptr %call549, ptr %page746, align 8
  %page_ofs = getelementptr i8, ptr %call673, i32 -236
  %838 = ptrtoint ptr %page_ofs to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %conv547, ptr %page_ofs, align 4
  call void @mark_ntfs_record_dirty(ptr noundef %call549, i32 noundef %conv547) #9
  call void @unlock_page(ptr noundef %call549) #9
  %839 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call673, i32 noundef %840) #9
  %mft_data_pos = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 28
  %841 = ptrtoint ptr %mft_data_pos to i32
  call void @__asan_store8_noabort(i32 %841)
  store i64 %add247, ptr %mft_data_pos, align 8
  br label %if.end748

if.end748:                                        ; preds = %if.end740, %cleanup668.thread
  %cond = phi ptr [ @.str.65, %if.end740 ], [ @.str.64, %cleanup668.thread ]
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2726, ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef nonnull @.str.63, ptr noundef nonnull %cond, i64 noundef %bit.1) #9
  %842 = ptrtoint ptr %mrec to i32
  call void @__asan_store4_noabort(i32 %842)
  store ptr %add.ptr, ptr %mrec, align 4
  %843 = ptrtoint ptr %ni to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %ni, align 4
  br label %cleanup783

do.body750:                                       ; preds = %if.then438, %if.then427, %if.then413, %cleanup.thread
  %err.4 = phi i32 [ %630, %if.then413 ], [ -12, %if.then427 ], [ %call430, %if.then438 ], [ %retval.0.i12381315, %cleanup.thread ]
  %call757 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i) #9
  %845 = ptrtoint ptr %initialized_size262 to i32
  call void @__asan_store8_noabort(i32 %845)
  store i64 %551, ptr %initialized_size262, align 8
  %846 = ptrtoint ptr %mft_ino to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %mft_ino, align 8
  tail call fastcc void @i_size_write(ptr noundef %847, i64 noundef %555)
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call757) #9
  br label %undo_mftbmp_alloc_nolock

undo_mftbmp_alloc:                                ; preds = %if.then683, %cleanup668, %SetPageUptodate.exit1081, %SetPageUptodate.exit, %if.then551
  %err.5 = phi i32 [ %690, %if.then551 ], [ %766, %cleanup668 ], [ -12, %if.then683 ], [ -5, %SetPageUptodate.exit ], [ %call591, %SetPageUptodate.exit1081 ]
  tail call void @down_write(ptr noundef %mftbmp_lock) #9
  br label %undo_mftbmp_alloc_nolock

undo_mftbmp_alloc_nolock:                         ; preds = %undo_mftbmp_alloc, %do.body750, %if.then310
  %err.6 = phi i32 [ %err.5, %undo_mftbmp_alloc ], [ %retval.0.i12191308, %if.then310 ], [ %err.4, %do.body750 ]
  %848 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %mftbmp_ino, align 4
  %call.i.i.i1280 = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef %849, i64 noundef %bit.1, i64 noundef 1, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i1280)
  %tobool774.not = icmp eq i32 %call.i.i.i1280, 0
  br i1 %tobool774.not, label %undo_mftbmp_alloc_nolock.err_out_crit_edge, label %if.then775

undo_mftbmp_alloc_nolock.err_out_crit_edge:       ; preds = %undo_mftbmp_alloc_nolock
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then775:                                       ; preds = %undo_mftbmp_alloc_nolock
  call void @__sanitizer_cov_trace_pc() #11
  %850 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %851, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.150) #9
  %flags.i1281 = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1281) #9
  br label %err_out

err_out:                                          ; preds = %if.then775, %undo_mftbmp_alloc_nolock.err_out_crit_edge, %if.then244, %do.body113.i, %unm_err_out.i, %if.then66.i, %if.then.i1120, %ntfs_mft_bitmap_extend_allocation_nolock.exit.err_out_crit_edge, %if.then305.i, %if.then.i1098.err_out_crit_edge
  %err.7 = phi i32 [ %call.i.i.i1152, %if.then244 ], [ %retval.0.i1114, %ntfs_mft_bitmap_extend_allocation_nolock.exit.err_out_crit_edge ], [ -5, %if.then.i1098.err_out_crit_edge ], [ %call255.i, %if.then305.i ], [ %call51.i, %if.then66.i ], [ %call51.i, %do.body113.i ], [ %266, %if.then.i1120 ], [ %ret.1.i1149, %unm_err_out.i ], [ %err.6, %if.then775 ], [ %err.6, %undo_mftbmp_alloc_nolock.err_out_crit_edge ]
  tail call void @up_write(ptr noundef %mftbmp_lock) #9
  %852 = inttoptr i32 %err.7 to ptr
  br label %cleanup783

max_err_out:                                      ; preds = %if.end130.max_err_out_crit_edge, %if.then115.max_err_out_crit_edge
  %853 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_mft_record_alloc, ptr noundef %854, ptr noundef nonnull @.str.67) #9
  tail call void @up_write(ptr noundef %mftbmp_lock) #9
  br label %cleanup783

cleanup783:                                       ; preds = %max_err_out, %err_out, %if.end748, %if.then69, %do.end31.cleanup783_crit_edge
  %retval.0 = phi ptr [ %852, %err_out ], [ %844, %if.end748 ], [ %45, %if.then69 ], [ inttoptr (i32 -28 to ptr), %max_err_out ], [ inttoptr (i32 -95 to ptr), %do.end31.cleanup783_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ni) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !400
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !401
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !338

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !402
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !403
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !404
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !405
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !406
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !407
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !408
  %9 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !409
  %18 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !410
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !411
  %37 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !335

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.141, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !412
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !413
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !414
  %48 = tail call i32 @llvm.read_register.i32(metadata !324) #9
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_mft_record_layout(ptr nocapture noundef readonly %vol, i64 noundef %mft_no, ptr noundef %m) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2012, ptr noundef nonnull @__func__.ntfs_mft_record_layout, ptr noundef nonnull @.str.142, i64 noundef %mft_no) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mft_no)
  %cmp = icmp sgt i64 %mft_no, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mft_record_layout, ptr noundef %1, ptr noundef nonnull @.str.146, i64 noundef %mft_no) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 14
  %2 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mft_record_size, align 4
  %4 = call ptr @memset(ptr %m, i32 0, i32 %3)
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 44
  %5 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp1 = icmp ult i8 %6, 3
  br i1 %cmp1, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp5 = icmp eq i8 %6, 3
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %minor_ver = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 45
  %7 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %minor_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %usa_ofs = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %usa_ofs to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 10752, ptr %usa_ofs, align 1
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %usa_ofs8 = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 1
  %10 = ptrtoint ptr %usa_ofs8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 12288, ptr %usa_ofs8, align 1
  %reserved = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 12
  %11 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %reserved, align 1
  %conv9 = trunc i64 %mft_no to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %mft_record_number = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 13
  %13 = ptrtoint ptr %mft_record_number to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %mft_record_number, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %14 = ptrtoint ptr %m to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1179208773, ptr %m, align 1
  %15 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mft_record_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %16)
  %cmp12 = icmp ugt i32 %16, 511
  br i1 %cmp12, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %div72 = lshr i32 %16, 9
  %17 = trunc i32 %div72 to i16
  %conv16 = add i16 %17, 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %usa_count = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 2
  %19 = ptrtoint ptr %usa_count to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %usa_count, align 1
  br label %if.end20

if.else17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %usa_count18 = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 2
  %20 = ptrtoint ptr %usa_count18 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 256, ptr %usa_count18, align 1
  %21 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_mft_record_layout, ptr noundef %22, ptr noundef nonnull @.str.147) #9
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then14
  %usa_ofs21 = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 1
  %23 = ptrtoint ptr %usa_ofs21 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %usa_ofs21, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv22 = zext i16 %25 to i32
  %add.ptr = getelementptr i8, ptr %m, i32 %conv22
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 256, ptr %add.ptr, align 2
  %lsn = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 3
  %27 = ptrtoint ptr %lsn to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %lsn, align 1
  %sequence_number = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 4
  %28 = ptrtoint ptr %sequence_number to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 256, ptr %sequence_number, align 1
  %link_count = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 5
  %29 = ptrtoint ptr %link_count to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 0, ptr %link_count, align 1
  %30 = ptrtoint ptr %usa_ofs21 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %usa_ofs21, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %usa_count25 = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 2
  %33 = ptrtoint ptr %usa_count25 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %usa_count25, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %shl = shl i16 %35, 1
  %add27 = add i16 %32, 7
  %add28 = add i16 %add27, %shl
  %and = and i16 %add28, -8
  %36 = tail call i16 @llvm.bswap.i16(i16 %and)
  %attrs_offset = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 6
  %37 = ptrtoint ptr %attrs_offset to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %attrs_offset, align 1
  %flags = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 7
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 0, ptr %flags, align 1
  %conv31 = zext i16 %and to i32
  %add32 = add nuw nsw i32 %conv31, 8
  %39 = tail call i32 @llvm.bswap.i32(i32 %add32)
  %bytes_in_use = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 8
  %40 = ptrtoint ptr %bytes_in_use to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %bytes_in_use, align 1
  %41 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mft_record_size, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %bytes_allocated = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 9
  %44 = ptrtoint ptr %bytes_allocated to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %bytes_allocated, align 1
  %base_mft_record = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 10
  %45 = ptrtoint ptr %base_mft_record to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 0, ptr %base_mft_record, align 1
  %next_attr_instance = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 11
  %46 = ptrtoint ptr %next_attr_instance to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 0, ptr %next_attr_instance, align 1
  %add.ptr36 = getelementptr i8, ptr %m, i32 %conv31
  %47 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 -1, ptr %add.ptr36, align 1
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %add.ptr36, i32 0, i32 1
  %48 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %length, align 1
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2071, ptr noundef nonnull @__func__.ntfs_mft_record_layout, ptr noundef nonnull @.str.12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  %retval.0 = phi i32 [ -34, %if.then ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_extent_mft_record_free(ptr noundef %ni, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mft_no1 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no1, align 4
  %vol2 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %2 = ptrtoint ptr %vol2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol2, align 8
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body11, label %do.body5, !prof !335

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2783, 0\0A.popsection", ""() #9, !srcloc !415
  unreachable

do.body11:                                        ; preds = %entry
  %nr_extents = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 20
  %7 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not = icmp eq i32 %8, -1
  br i1 %cmp.not, label %do.end27, label %do.body19, !prof !335

do.body19:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2784, 0\0A.popsection", ""() #9, !srcloc !416
  unreachable

do.end27:                                         ; preds = %do.body11
  %extent_lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %extent_lock, i32 noundef 0) #9
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %9 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext, align 8
  tail call void @mutex_unlock(ptr noundef %extent_lock) #9
  %nr_extents30 = getelementptr inbounds %struct._ntfs_inode, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %nr_extents30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_extents30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp31 = icmp slt i32 %12, 1
  br i1 %cmp31, label %do.body39, label %do.end47, !prof !338

do.body39:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2790, 0\0A.popsection", ""() #9, !srcloc !417
  unreachable

do.end47:                                         ; preds = %do.end27
  %mft_no48 = getelementptr inbounds %struct._ntfs_inode, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %mft_no48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mft_no48, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2793, ptr noundef nonnull @__func__.ntfs_extent_mft_record_free, ptr noundef nonnull @.str.68, i32 noundef %1, i32 noundef %14) #9
  %extent_lock49 = getelementptr inbounds %struct._ntfs_inode, ptr %10, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %extent_lock49, i32 noundef 0) #9
  %count = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #9
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp51 = icmp sgt i32 %16, 2
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %19 = ptrtoint ptr %mft_no48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mft_no48, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_extent_mft_record_free, ptr noundef %18, ptr noundef nonnull @.str.69, i32 noundef %20) #9
  tail call void @mutex_unlock(ptr noundef %extent_lock49) #9
  br label %cleanup178

if.end55:                                         ; preds = %do.end47
  %ext56 = getelementptr inbounds %struct._ntfs_inode, ptr %10, i32 0, i32 21
  %21 = ptrtoint ptr %ext56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ext56, align 8
  %23 = ptrtoint ptr %nr_extents30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_extents30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp58273 = icmp sgt i32 %24, 0
  br i1 %cmp58273, label %if.end55.for.body_crit_edge, label %if.end55.if.then73.critedge_crit_edge

if.end55.if.then73.critedge_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73.critedge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end55.for.body_crit_edge
  %i.0274 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end55.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %22, i32 %i.0274
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %cmp59.not = icmp eq ptr %26, %ni
  br i1 %cmp59.not, label %if.end61, label %for.inc

if.end61:                                         ; preds = %for.body
  %arrayidx.le = getelementptr ptr, ptr %22, i32 %i.0274
  %dec = add nsw i32 %24, -1
  %27 = ptrtoint ptr %nr_extents30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec, ptr %nr_extents30, align 4
  %add.ptr63 = getelementptr ptr, ptr %arrayidx.le, i32 1
  %sub = sub i32 %dec, %i.0274
  %mul = shl i32 %sub, 2
  %28 = call ptr @memmove(ptr %arrayidx.le, ptr %add.ptr63, i32 %mul)
  tail call void @mutex_unlock(ptr noundef %extent_lock49) #9
  %flags = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 7
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %flags, align 1
  %31 = and i16 %30, -257
  store i16 %31, ptr %flags, align 1
  %sequence_number = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 4
  %32 = ptrtoint ptr %sequence_number to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %sequence_number, align 1
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.156)
  switch i16 %33, label %if.then89 [
    i16 -1, label %if.end61.if.end92_crit_edge
    i16 0, label %if.end92.fold.split
  ]

if.end61.if.end92_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0274, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %for.inc.if.then73.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then73.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73.critedge

if.then73.critedge:                               ; preds = %for.inc.if.then73.critedge_crit_edge, %if.end55.if.then73.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef %extent_lock49) #9
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 8
  %37 = ptrtoint ptr %mft_no48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mft_no48, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_extent_mft_record_free, ptr noundef %36, ptr noundef nonnull @.str.70, i32 noundef %1, i32 noundef %38) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2825, 0\0A.popsection", ""() #9, !srcloc !418
  unreachable

if.then89:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %39 = tail call i16 @llvm.bswap.i16(i16 %33)
  %inc90 = add i16 %39, 1
  br label %if.end92

if.end92.fold.split:                              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.end92:                                         ; preds = %if.end92.fold.split, %if.then89, %if.end61.if.end92_crit_edge
  %seq_no.0 = phi i16 [ %inc90, %if.then89 ], [ 1, %if.end61.if.end92_crit_edge ], [ 0, %if.end92.fold.split ]
  %40 = tail call i16 @llvm.bswap.i16(i16 %seq_no.0)
  %41 = ptrtoint ptr %sequence_number to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %sequence_number, align 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  %page1.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %42 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %page1.i, align 8
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !338

do.body5.i:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #9, !srcloc !419
  unreachable

do.end10.i:                                       ; preds = %if.end92
  tail call void @__might_sleep(ptr noundef nonnull @.str.79, i32 noundef 788) #9
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !335

if.then.i.i.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i260 = add i32 %46, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %43 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i260, %if.then.i.i.i ], [ %47, %if.end.i.i.i ]
  %48 = inttoptr i32 %retval.0.i.i.i to ptr
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !335

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.80) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %48, i32 noundef 4) #9
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %48, align 4
  %and.i.i4.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i.i_crit_edge

folio_flags.exit.i.i.i.if.then.i.i_crit_edge:     ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  tail call void @llvm.prefetch.p0(ptr %48, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #9, !srcloc !345
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !346
  %55 = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %phi.cmp.i.i.i.i = icmp eq i32 %55, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.write_mft_record.exit_crit_edge, label %folio_trylock.exit.i.i.if.then.i.i_crit_edge

folio_trylock.exit.i.i.if.then.i.i_crit_edge:     ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

folio_trylock.exit.i.i.write_mft_record.exit_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_mft_record.exit

if.then.i.i:                                      ; preds = %folio_trylock.exit.i.i.if.then.i.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i.i_crit_edge
  tail call void @__folio_lock(ptr noundef %48) #9
  br label %write_mft_record.exit

write_mft_record.exit:                            ; preds = %if.then.i.i, %folio_trylock.exit.i.i.write_mft_record.exit_crit_edge
  %call.i = tail call i32 @write_mft_record_nolock(ptr noundef %ni, ptr noundef %m, i32 noundef 0) #9
  tail call void @unlock_page(ptr noundef nonnull %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool95.not = icmp eq i32 %call.i, 0
  br i1 %tobool95.not, label %write_mft_record.exit.rollback_error_crit_edge, label %if.then102, !prof !335

write_mft_record.exit.rollback_error_crit_edge:   ; preds = %write_mft_record.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rollback_error

if.then102:                                       ; preds = %write_mft_record.exit
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_extent_mft_record_free, ptr noundef %57, ptr noundef nonnull @.str.71, i32 noundef %1) #9
  tail call void @mutex_lock_nested(ptr noundef %extent_lock49, i32 noundef 0) #9
  %58 = ptrtoint ptr %ext56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ext56, align 8
  %60 = ptrtoint ptr %nr_extents30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_extents30, align 4
  %and121 = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.then123, label %if.then102.if.end169_crit_edge

if.then102.if.end169_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

rollback_error:                                   ; preds = %cleanup, %write_mft_record.exit.rollback_error_crit_edge
  %62 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %page1.i, align 8
  %tobool.not.i.i261 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i261, label %do.body5.i.i, label %do.end10.i.i, !prof !338

do.body5.i.i:                                     ; preds = %rollback_error
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end10.i.i:                                     ; preds = %rollback_error
  %64 = ptrtoint ptr %mft_no1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mft_no1, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @__func__.unmap_mft_record, ptr noundef nonnull @.str.1, i32 noundef %65) #9
  %66 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %page1.i, align 8
  %tobool.not.i.i.i262 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i262, label %do.body4.i.i.i, label %unmap_extent_mft_record.exit, !prof !338

do.body4.i.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

unmap_extent_mft_record.exit:                     ; preds = %do.end10.i.i
  tail call fastcc void @ntfs_unmap_page(ptr noundef nonnull %67) #9
  %68 = ptrtoint ptr %page1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %page1.i, align 8
  %page_ofs.i.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 14
  %69 = ptrtoint ptr %page_ofs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %page_ofs.i.i.i, align 4
  %mrec_lock.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %mrec_lock.i.i) #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !337
  tail call void @ntfs_clear_extent_inode(ptr noundef %ni) #9
  %mftbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 36
  tail call void @down_write(ptr noundef %mftbmp_lock) #9
  %mftbmp_ino = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 35
  %71 = ptrtoint ptr %mftbmp_ino to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mftbmp_ino, align 4
  %conv105 = zext i32 %1 to i64
  %call.i.i.i = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef %72, i64 noundef %conv105, i64 noundef 1, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  tail call void @up_write(ptr noundef %mftbmp_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool108.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool108.not, label %unmap_extent_mft_record.exit.cleanup178_crit_edge, label %if.then115, !prof !335

unmap_extent_mft_record.exit.cleanup178_crit_edge: ; preds = %unmap_extent_mft_record.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup178

if.then115:                                       ; preds = %unmap_extent_mft_record.exit
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_extent_mft_record_free, ptr noundef %74, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.150) #9
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %cleanup178

if.then123:                                       ; preds = %if.then102
  %add = shl i32 %61, 2
  %mul125 = add i32 %add, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul125, i32 noundef 3136) #12
  %tobool127.not = icmp eq ptr %call9.i, null
  br i1 %tobool127.not, label %cleanup, label %if.end139, !prof !338

if.end139:                                        ; preds = %if.then123
  %75 = ptrtoint ptr %nr_extents30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_extents30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool141.not = icmp eq i32 %76, 0
  br i1 %tobool141.not, label %if.end139.cleanup.thread_crit_edge, label %do.body143

if.end139.cleanup.thread_crit_edge:               ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

do.body143:                                       ; preds = %if.end139
  %77 = ptrtoint ptr %ext56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ext56, align 8
  %tobool145.not = icmp eq ptr %78, null
  br i1 %tobool145.not, label %do.body155, label %do.end163, !prof !338

do.body155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2892, 0\0A.popsection", ""() #9, !srcloc !420
  unreachable

do.end163:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #11
  %79 = call ptr @memcpy(ptr %call9.i, ptr %78, i32 %add)
  %80 = ptrtoint ptr %ext56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ext56, align 8
  tail call void @kfree(ptr noundef %81) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end163, %if.end139.cleanup.thread_crit_edge
  %82 = ptrtoint ptr %ext56 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call9.i, ptr %ext56, align 8
  br label %if.end169

cleanup:                                          ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_extent_mft_record_free, ptr noundef %84, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.150) #9
  tail call void @mutex_unlock(ptr noundef %extent_lock49) #9
  %flags.i263 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i263) #9
  br label %rollback_error

if.end169:                                        ; preds = %cleanup.thread, %if.then102.if.end169_crit_edge
  %extent_nis.0 = phi ptr [ %59, %if.then102.if.end169_crit_edge ], [ %call9.i, %cleanup.thread ]
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %flags, align 1
  %87 = or i16 %86, 256
  store i16 %87, ptr %flags, align 1
  %88 = ptrtoint ptr %sequence_number to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %33, ptr %sequence_number, align 1
  %89 = ptrtoint ptr %nr_extents30 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_extents30, align 4
  %inc175 = add i32 %90, 1
  store i32 %inc175, ptr %nr_extents30, align 4
  %arrayidx176 = getelementptr ptr, ptr %extent_nis.0, i32 %90
  %91 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %ni, ptr %arrayidx176, align 4
  tail call void @mutex_unlock(ptr noundef %extent_lock49) #9
  tail call fastcc void @mark_mft_record_dirty(ptr noundef %ni)
  br label %cleanup178

cleanup178:                                       ; preds = %if.end169, %if.then115, %unmap_extent_mft_record.exit.cleanup178_crit_edge, %if.then52
  %retval.0 = phi i32 [ -16, %if.then52 ], [ %call.i, %if.end169 ], [ 0, %if.then115 ], [ 0, %unmap_extent_mft_record.exit.cleanup178_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_find_vcn_nolock(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_cluster_alloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_runlists_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_size_for_mapping_pairs(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_record_resize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_mapping_pairs_build(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_reinit_search_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_set(ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_rl_truncate_nolock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ntfs_cluster_free(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_init_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !143, !145, !147, !148, !150, !152, !154, !156, !158, !159, !161, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !247, !249, !251, !253, !255, !257, !259, !261, !262, !264, !266, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !301, !303, !304, !306, !308, !310, !312, !314, !316, !318, !319, !320, !322}
!llvm.named.register.sp = !{!324}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/mft.c", i32 148, i32 2}
!2 = !{ptr @__func__.map_mft_record, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/mft.c", i32 162, i32 2}
!6 = !{ptr @__func__.unmap_mft_record, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/mft.c", i32 208, i32 2}
!8 = !{ptr @__func__.map_extent_mft_record, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/mft.c", i32 246, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ntfs/mft.c", i32 277, i32 5}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ntfs/mft.c", i32 282, i32 4}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ntfs/mft.c", i32 288, i32 3}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ntfs/mft.c", i32 326, i32 4}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ntfs/mft.c", i32 343, i32 2}
!21 = !{ptr @__func__.__mark_mft_record_dirty, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ntfs/mft.c", i32 388, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__func__.ntfs_sync_mft_mirror, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/mft.c", i32 468, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs/mft.c", i32 483, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ntfs/mft.c", i32 558, i32 5}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ntfs/mft.c", i32 615, i32 3}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ntfs/mft.c", i32 617, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ntfs/mft.c", i32 620, i32 3}
!36 = !{ptr @__func__.write_mft_record_nolock, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ntfs/mft.c", i32 673, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ntfs/mft.c", i32 746, i32 5}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ntfs/mft.c", i32 769, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ntfs/mft.c", i32 811, i32 3}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ntfs/mft.c", i32 832, i32 3}
!46 = !{ptr @__func__.ntfs_may_write_mft_record, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ntfs/mft.c", i32 930, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ntfs/mft.c", i32 940, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ntfs/mft.c", i32 964, i32 3}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ntfs/mft.c", i32 971, i32 4}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ntfs/mft.c", i32 977, i32 3}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ntfs/mft.c", i32 980, i32 4}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ntfs/mft.c", i32 986, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ntfs/mft.c", i32 995, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ntfs/mft.c", i32 999, i32 3}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ntfs/mft.c", i32 1005, i32 3}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ntfs/mft.c", i32 1015, i32 2}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ntfs/mft.c", i32 1029, i32 3}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ntfs/mft.c", i32 1047, i32 3}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ntfs/mft.c", i32 1070, i32 3}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ntfs/mft.c", i32 1075, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ntfs/mft.c", i32 1087, i32 3}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ntfs/mft.c", i32 1091, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ntfs/mft.c", i32 1094, i32 3}
!82 = !{ptr @__func__.ntfs_mft_record_alloc, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ntfs/mft.c", i32 2256, i32 3}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ntfs/mft.c", i32 2262, i32 3}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ntfs/mft.c", i32 2276, i32 3}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ntfs/mft.c", i32 2304, i32 3}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ntfs/mft.c", i32 2318, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ntfs/mft.c", i32 2326, i32 3}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ntfs/mft.c", i32 2334, i32 3}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ntfs/mft.c", i32 2355, i32 2}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ntfs/mft.c", i32 2363, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ntfs/mft.c", i32 2366, i32 2}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ntfs/mft.c", i32 2369, i32 3}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ntfs/mft.c", i32 2373, i32 2}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ntfs/mft.c", i32 2388, i32 3}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ntfs/mft.c", i32 2391, i32 2}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ntfs/mft.c", i32 2399, i32 2}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ntfs/mft.c", i32 2409, i32 4}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ntfs/mft.c", i32 2414, i32 3}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ntfs/mft.c", i32 2441, i32 3}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ntfs/mft.c", i32 2445, i32 4}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ntfs/mft.c", i32 2456, i32 3}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ntfs/mft.c", i32 2462, i32 3}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ntfs/mft.c", i32 2470, i32 3}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ntfs/mft.c", i32 2489, i32 2}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ntfs/mft.c", i32 2518, i32 3}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ntfs/mft.c", i32 2532, i32 4}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ntfs/mft.c", i32 2555, i32 4}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ntfs/mft.c", i32 2590, i32 4}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ntfs/mft.c", i32 2725, i32 2}
!139 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ntfs/mft.c", i32 2739, i32 3}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/ntfs/mft.c", i32 2746, i32 2}
!145 = !{ptr @__func__.ntfs_extent_mft_record_free, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ntfs/mft.c", i32 2792, i32 2}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ntfs/mft.c", i32 2799, i32 3}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ntfs/mft.c", i32 2822, i32 3}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ntfs/mft.c", i32 2853, i32 3}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ntfs/mft.c", i32 2885, i32 4}
!156 = !{ptr @__func__.map_mft_record_page, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ntfs/mft.c", i32 65, i32 4}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ntfs/mft.c", i32 82, i32 3}
!161 = !{ptr @__func__.ntfs_sync_mft_mirror_umount, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ntfs/mft.c", i32 431, i32 2}
!163 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ntfs/mft.c", i32 401, i32 40}
!166 = distinct !{null, !167, !"ntfs_please_email", i1 false, i1 false}
!167 = !{!"../fs/ntfs/mft.c", i32 401, i32 20}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!176 = distinct !{null, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../include/linux/mm.h", i32 717, i32 2}
!188 = !{ptr @__func__.ntfs_mft_bitmap_find_and_alloc_free_rec_nolock, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ntfs/mft.c", i32 1137, i32 2}
!190 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ntfs/mft.c", i32 1168, i32 2}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ntfs/mft.c", i32 1190, i32 5}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ntfs/mft.c", i32 1197, i32 4}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ntfs/mft.c", i32 1216, i32 6}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ntfs/mft.c", i32 1223, i32 4}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ntfs/mft.c", i32 1243, i32 4}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ntfs/mft.c", i32 1251, i32 2}
!205 = !{ptr @__func__.ntfs_mft_bitmap_extend_allocation_nolock, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ntfs/mft.c", i32 1293, i32 2}
!207 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ntfs/mft.c", i32 1308, i32 3}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/ntfs/mft.c", i32 1317, i32 2}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/ntfs/mft.c", i32 1329, i32 3}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ntfs/mft.c", i32 1346, i32 3}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/ntfs/mft.c", i32 1355, i32 4}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/ntfs/mft.c", i32 1362, i32 4}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ntfs/mft.c", i32 1365, i32 5}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/ntfs/mft.c", i32 1374, i32 3}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/ntfs/mft.c", i32 1399, i32 3}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/ntfs/mft.c", i32 1417, i32 3}
!228 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/ntfs/mft.c", i32 1430, i32 4}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/ntfs/mft.c", i32 1439, i32 3}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/ntfs/mft.c", i32 1451, i32 3}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/ntfs/mft.c", i32 1473, i32 4}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/ntfs/mft.c", i32 1497, i32 3}
!238 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/ntfs/mft.c", i32 1528, i32 3}
!240 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/ntfs/mft.c", i32 1538, i32 4}
!242 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/ntfs/mft.c", i32 1543, i32 4}
!244 = !{ptr @__func__.ntfs_mft_bitmap_extend_initialized_nolock, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/ntfs/mft.c", i32 1583, i32 2}
!246 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ntfs/mft.c", i32 1634, i32 3}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ntfs/mft.c", i32 1638, i32 2}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ntfs/mft.c", i32 1642, i32 3}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/ntfs/mft.c", i32 1648, i32 3}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ntfs/mft.c", i32 1654, i32 3}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ntfs/mft.c", i32 1679, i32 2}
!259 = !{ptr @__func__.ntfs_mft_data_extend_allocation_nolock, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ntfs/mft.c", i32 1724, i32 2}
!261 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/ntfs/mft.c", i32 1739, i32 3}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/ntfs/mft.c", i32 1748, i32 2}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/ntfs/mft.c", i32 1773, i32 2}
!268 = !{ptr @.str.125, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.126, !267, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/ntfs/mft.c", i32 1782, i32 4}
!272 = !{ptr @.str.128, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ntfs/mft.c", i32 1794, i32 3}
!274 = !{ptr @.str.129, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ntfs/mft.c", i32 1800, i32 3}
!276 = !{ptr @.str.130, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ntfs/mft.c", i32 1803, i32 4}
!278 = !{ptr @.str.131, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ntfs/mft.c", i32 1811, i32 2}
!280 = !{ptr @.str.132, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/ntfs/mft.c", i32 1831, i32 3}
!282 = !{ptr @.str.133, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ntfs/mft.c", i32 1849, i32 3}
!284 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/ntfs/mft.c", i32 1862, i32 4}
!286 = !{ptr @.str.135, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/ntfs/mft.c", i32 1876, i32 3}
!288 = !{ptr @.str.136, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/ntfs/mft.c", i32 1888, i32 3}
!290 = !{ptr @.str.137, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/ntfs/mft.c", i32 1935, i32 3}
!292 = !{ptr @.str.138, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/ntfs/mft.c", i32 1954, i32 3}
!294 = !{ptr @.str.139, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/ntfs/mft.c", i32 1960, i32 3}
!296 = !{ptr @.str.140, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/ntfs/mft.c", i32 1982, i32 3}
!298 = distinct !{null, !299, !"__already_done", i1 false, i1 false}
!299 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!300 = !{ptr @.str.141, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @__func__.ntfs_mft_record_format, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/ntfs/mft.c", i32 2096, i32 2}
!303 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.143, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/ntfs/mft.c", i32 2109, i32 4}
!306 = !{ptr @.str.144, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ntfs/mft.c", i32 2117, i32 3}
!308 = !{ptr @.str.145, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/ntfs/mft.c", i32 2127, i32 3}
!310 = !{ptr @__func__.ntfs_mft_record_layout, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/ntfs/mft.c", i32 2012, i32 2}
!312 = !{ptr @.str.146, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/ntfs/mft.c", i32 2014, i32 3}
!314 = !{ptr @.str.147, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/ntfs/mft.c", i32 2038, i32 3}
!316 = !{ptr @.str.148, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/ntfs/inode.h", i32 274, i32 2}
!318 = !{ptr @__func__.ntfs_init_big_inode, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.149, !317, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.150, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/ntfs/mft.c", i32 1104, i32 25}
!322 = distinct !{null, !323, !"es", i1 false, i1 false}
!323 = !{!"../fs/ntfs/mft.c", i32 1104, i32 20}
!324 = !{!"sp"}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 1, !"min_enum_size", i32 4}
!327 = !{i32 8, !"branch-target-enforcement", i32 0}
!328 = !{i32 8, !"sign-return-address", i32 0}
!329 = !{i32 8, !"sign-return-address-all", i32 0}
!330 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!331 = !{i32 7, !"uwtable", i32 1}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!334 = !{i64 2148765212, i64 2148765238, i64 2148765267, i64 2148765301, i64 2148765332, i64 2148765355}
!335 = !{!"branch_weights", i32 2000, i32 1}
!336 = !{i64 2155141154, i64 2155141631, i64 2155141191, i64 2155141247, i64 2155141281, i64 2155141305, i64 2155141346, i64 2155141367, i64 2155141395, i64 2155141429}
!337 = !{i64 2148767677, i64 2148767703, i64 2148767732, i64 2148767766, i64 2148767797, i64 2148767820}
!338 = !{!"branch_weights", i32 1, i32 2000}
!339 = !{i64 2155145430, i64 2155145908, i64 2155145467, i64 2155145523, i64 2155145557, i64 2155145581, i64 2155145622, i64 2155145643, i64 2155145671, i64 2155145705}
!340 = !{i64 2155143870, i64 2155144348, i64 2155143907, i64 2155143963, i64 2155143997, i64 2155144021, i64 2155144062, i64 2155144083, i64 2155144111, i64 2155144145}
!341 = !{i64 2155148727, i64 2155149205, i64 2155148764, i64 2155148820, i64 2155148854, i64 2155148878, i64 2155148919, i64 2155148940, i64 2155148968, i64 2155149002}
!342 = !{i64 2155150480, i64 2155150958, i64 2155150517, i64 2155150573, i64 2155150607, i64 2155150631, i64 2155150672, i64 2155150693, i64 2155150721, i64 2155150755}
!343 = !{i64 2155154031, i64 2155154509, i64 2155154068, i64 2155154124, i64 2155154158, i64 2155154182, i64 2155154223, i64 2155154244, i64 2155154272, i64 2155154306}
!344 = !{i64 2150673957, i64 2150674448, i64 2150673994, i64 2150674050, i64 2150674084, i64 2150674108, i64 2150674149, i64 2150674170, i64 2150674198, i64 2150674232}
!345 = !{i64 2148774070, i64 2148774102, i64 2148774131, i64 2148774165, i64 2148774196, i64 2148774219}
!346 = !{i64 2148863175}
!347 = !{i64 2151423849}
!348 = !{i64 2155156381, i64 2155156859, i64 2155156418, i64 2155156474, i64 2155156508, i64 2155156532, i64 2155156573, i64 2155156594, i64 2155156622, i64 2155156656}
!349 = !{i64 2151432833, i64 2151433006, i64 2151433021, i64 2151433073, i64 2151433132, i64 2151433156, i64 2151433197, i64 2151433218, i64 2151433246, i64 2151433278}
!350 = !{i64 2151433708, i64 2151433881, i64 2151433896, i64 2151433948, i64 2151434007, i64 2151434031, i64 2151434072, i64 2151434093, i64 2151434121, i64 2151434153}
!351 = !{i64 2151132663, i64 2151133154, i64 2151132700, i64 2151132756, i64 2151132790, i64 2151132814, i64 2151132855, i64 2151132876, i64 2151132904, i64 2151132938}
!352 = !{i64 2155158168, i64 2155158646, i64 2155158205, i64 2155158261, i64 2155158295, i64 2155158319, i64 2155158360, i64 2155158381, i64 2155158409, i64 2155158443}
!353 = !{i64 2155159735, i64 2155160213, i64 2155159772, i64 2155159828, i64 2155159862, i64 2155159886, i64 2155159927, i64 2155159948, i64 2155159976, i64 2155160010}
!354 = !{i64 2155161385, i64 2155161863, i64 2155161422, i64 2155161478, i64 2155161512, i64 2155161536, i64 2155161577, i64 2155161598, i64 2155161626, i64 2155161660}
!355 = !{i64 2155163220, i64 2155163698, i64 2155163257, i64 2155163313, i64 2155163347, i64 2155163371, i64 2155163412, i64 2155163433, i64 2155163461, i64 2155163495}
!356 = !{i64 2155164828, i64 2155165306, i64 2155164865, i64 2155164921, i64 2155164955, i64 2155164979, i64 2155165020, i64 2155165041, i64 2155165069, i64 2155165103}
!357 = !{i64 2155166400, i64 2155166878, i64 2155166437, i64 2155166493, i64 2155166527, i64 2155166551, i64 2155166592, i64 2155166613, i64 2155166641, i64 2155166675}
!358 = !{i64 2155168024, i64 2155168502, i64 2155168061, i64 2155168117, i64 2155168151, i64 2155168175, i64 2155168216, i64 2155168237, i64 2155168265, i64 2155168299}
!359 = !{i64 2155169546, i64 2155170024, i64 2155169583, i64 2155169639, i64 2155169673, i64 2155169697, i64 2155169738, i64 2155169759, i64 2155169787, i64 2155169821}
!360 = !{i64 2155171126, i64 2155175665, i64 2155171163, i64 2155171219, i64 2155171253, i64 2155171277, i64 2155171318, i64 2155171339, i64 2155171367, i64 2155171401}
!361 = !{i64 2151424920}
!362 = !{i64 2150726989, i64 2150727480, i64 2150727026, i64 2150727082, i64 2150727116, i64 2150727140, i64 2150727181, i64 2150727202, i64 2150727230, i64 2150727264}
!363 = !{i64 2153287001, i64 2153287485, i64 2153287038, i64 2153287094, i64 2153287128, i64 2153287152, i64 2153287193, i64 2153287214, i64 2153287242, i64 2153287276}
!364 = !{i64 2148589810, i64 2148589815, i64 2148589828, i64 2148589872, i64 2148589906, i64 2148589927}
!365 = !{i64 2153263028, i64 2153263511, i64 2153263065, i64 2153263121, i64 2153263155, i64 2153263179, i64 2153263220, i64 2153263241, i64 2153263269, i64 2153263303}
!366 = !{i64 2148853688}
!367 = !{i64 2148768397, i64 2148768429, i64 2148768458, i64 2148768492, i64 2148768523, i64 2148768546}
!368 = !{i64 2148853917}
!369 = !{i64 2155177442, i64 2155177920, i64 2155177479, i64 2155177535, i64 2155177569, i64 2155177593, i64 2155177634, i64 2155177655, i64 2155177683, i64 2155177717}
!370 = !{i64 2155178996, i64 2155179474, i64 2155179033, i64 2155179089, i64 2155179123, i64 2155179147, i64 2155179188, i64 2155179209, i64 2155179237, i64 2155179271}
!371 = !{i64 2150681390, i64 2150681881, i64 2150681427, i64 2150681483, i64 2150681517, i64 2150681541, i64 2150681582, i64 2150681603, i64 2150681631, i64 2150681665}
!372 = !{i64 2155180568, i64 2155181046, i64 2155180605, i64 2155180661, i64 2155180695, i64 2155180719, i64 2155180760, i64 2155180781, i64 2155180809, i64 2155180843}
!373 = !{i64 2155182871, i64 2155183349, i64 2155182908, i64 2155182964, i64 2155182998, i64 2155183022, i64 2155183063, i64 2155183084, i64 2155183112, i64 2155183146}
!374 = !{i64 2155184438, i64 2155184916, i64 2155184475, i64 2155184531, i64 2155184565, i64 2155184589, i64 2155184630, i64 2155184651, i64 2155184679, i64 2155184713}
!375 = !{i64 2155186048, i64 2155186526, i64 2155186085, i64 2155186141, i64 2155186175, i64 2155186199, i64 2155186240, i64 2155186261, i64 2155186289, i64 2155186323}
!376 = !{i64 2155187638, i64 2155188116, i64 2155187675, i64 2155187731, i64 2155187765, i64 2155187789, i64 2155187830, i64 2155187851, i64 2155187879, i64 2155187913}
!377 = !{i64 2155189455, i64 2155189933, i64 2155189492, i64 2155189548, i64 2155189582, i64 2155189606, i64 2155189647, i64 2155189668, i64 2155189696, i64 2155189730}
!378 = !{i64 2155191063, i64 2155191541, i64 2155191100, i64 2155191156, i64 2155191190, i64 2155191214, i64 2155191255, i64 2155191276, i64 2155191304, i64 2155191338}
!379 = !{i64 2155192635, i64 2155193113, i64 2155192672, i64 2155192728, i64 2155192762, i64 2155192786, i64 2155192827, i64 2155192848, i64 2155192876, i64 2155192910}
!380 = !{i64 2155194259, i64 2155194737, i64 2155194296, i64 2155194352, i64 2155194386, i64 2155194410, i64 2155194451, i64 2155194472, i64 2155194500, i64 2155194534}
!381 = !{i64 2155195853, i64 2155196331, i64 2155195890, i64 2155195946, i64 2155195980, i64 2155196004, i64 2155196045, i64 2155196066, i64 2155196094, i64 2155196128}
!382 = !{i64 2155197433, i64 2155197911, i64 2155197470, i64 2155197526, i64 2155197560, i64 2155197584, i64 2155197625, i64 2155197646, i64 2155197674, i64 2155197708}
!383 = !{i64 2155199582, i64 2155200060, i64 2155199619, i64 2155199675, i64 2155199709, i64 2155199733, i64 2155199774, i64 2155199795, i64 2155199823, i64 2155199857}
!384 = !{i64 2155201283, i64 2155201761, i64 2155201320, i64 2155201376, i64 2155201410, i64 2155201434, i64 2155201475, i64 2155201496, i64 2155201524, i64 2155201558}
!385 = !{i64 2155204422, i64 2155204901, i64 2155204459, i64 2155204515, i64 2155204549, i64 2155204573, i64 2155204614, i64 2155204635, i64 2155204663, i64 2155204697}
!386 = !{!"auto-init"}
!387 = !{i64 2155240208, i64 2155240687, i64 2155240245, i64 2155240301, i64 2155240335, i64 2155240359, i64 2155240400, i64 2155240421, i64 2155240449, i64 2155240483}
!388 = !{i64 2155243532, i64 2155244011, i64 2155243569, i64 2155243625, i64 2155243659, i64 2155243683, i64 2155243724, i64 2155243745, i64 2155243773, i64 2155243807}
!389 = !{i32 0, i32 33}
!390 = !{i64 2155215806, i64 2155216285, i64 2155215843, i64 2155215899, i64 2155215933, i64 2155215957, i64 2155215998, i64 2155216019, i64 2155216047, i64 2155216081}
!391 = !{i64 2155217403, i64 2155217882, i64 2155217440, i64 2155217496, i64 2155217530, i64 2155217554, i64 2155217595, i64 2155217616, i64 2155217644, i64 2155217678}
!392 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!393 = !{i64 2155227974, i64 2155228453, i64 2155228011, i64 2155228067, i64 2155228101, i64 2155228125, i64 2155228166, i64 2155228187, i64 2155228215, i64 2155228249}
!394 = !{i64 2155229571, i64 2155230050, i64 2155229608, i64 2155229664, i64 2155229698, i64 2155229722, i64 2155229763, i64 2155229784, i64 2155229812, i64 2155229846}
!395 = !{i64 2155238260, i64 2155238739, i64 2155238297, i64 2155238353, i64 2155238387, i64 2155238411, i64 2155238452, i64 2155238473, i64 2155238501, i64 2155238535}
!396 = !{i64 2155254592, i64 2155255071, i64 2155254629, i64 2155254685, i64 2155254719, i64 2155254743, i64 2155254784, i64 2155254805, i64 2155254833, i64 2155254867}
!397 = !{i64 2155256237, i64 2155256716, i64 2155256274, i64 2155256330, i64 2155256364, i64 2155256388, i64 2155256429, i64 2155256450, i64 2155256478, i64 2155256512}
!398 = !{i64 2155258223, i64 2155258702, i64 2155258260, i64 2155258316, i64 2155258350, i64 2155258374, i64 2155258415, i64 2155258436, i64 2155258464, i64 2155258498}
!399 = !{i64 2155261709, i64 2155262188, i64 2155261746, i64 2155261802, i64 2155261836, i64 2155261860, i64 2155261901, i64 2155261922, i64 2155261950, i64 2155261984}
!400 = !{i64 1169892, i64 1169953}
!401 = !{i64 1172624}
!402 = !{i64 1172909}
!403 = !{i64 2152608043}
!404 = !{i64 2152607885}
!405 = !{i64 2152608213}
!406 = !{i64 2150194027}
!407 = !{i64 2152609974}
!408 = !{i64 2150086279}
!409 = !{i64 2150091213}
!410 = !{i64 2150112931}
!411 = !{i64 2150117825}
!412 = !{i64 2150194352}
!413 = !{i64 2150194677}
!414 = !{i64 2152621836}
!415 = !{i64 2155265031, i64 2155265510, i64 2155265068, i64 2155265124, i64 2155265158, i64 2155265182, i64 2155265223, i64 2155265244, i64 2155265272, i64 2155265306}
!416 = !{i64 2155266612, i64 2155267091, i64 2155266649, i64 2155266705, i64 2155266739, i64 2155266763, i64 2155266804, i64 2155266825, i64 2155266853, i64 2155266887}
!417 = !{i64 2155268245, i64 2155268724, i64 2155268282, i64 2155268338, i64 2155268372, i64 2155268396, i64 2155268437, i64 2155268458, i64 2155268486, i64 2155268520}
!418 = !{i64 2155274265, i64 2155274744, i64 2155274302, i64 2155274358, i64 2155274392, i64 2155274416, i64 2155274457, i64 2155274478, i64 2155274506, i64 2155274540}
!419 = !{i64 2155130861, i64 2155131338, i64 2155130898, i64 2155130954, i64 2155130988, i64 2155131012, i64 2155131053, i64 2155131074, i64 2155131102, i64 2155131136}
!420 = !{i64 2155276692, i64 2155277171, i64 2155276729, i64 2155276785, i64 2155276819, i64 2155276843, i64 2155276884, i64 2155276905, i64 2155276933, i64 2155276967}
