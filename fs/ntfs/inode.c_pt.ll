; ModuleID = '/llk/IR_all_yes/fs/ntfs/inode.c_pt.bc'
source_filename = "../fs/ntfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.option_t = type { i32, ptr }
%struct.atomic_t = type { i32 }
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
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { ptr }
%struct.ntfs_attr = type { i32, ptr, i32, i32 }
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
%struct.MFT_RECORD = type { i32, i16, i16, i64, i16, i16, i16, i16, i32, i32, i64, i16, i16, i32 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.78 = type { i32, i16, i8, i8 }
%struct.STANDARD_INFORMATION = type { i64, i64, i64, i64, i32, %union.anon.80 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type <{ i32, i32, i32, i32, i32, i64, i64 }>
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HEADER }
%struct.INDEX_HEADER = type { i32, i32, i32, i8, [3 x i8] }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.73, %struct.mutex, i32, %union.anon.76 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, i32, i8, i8 }
%union.anon.76 = type { ptr }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ATTR_LIST_ENTRY = type <{ i32, i16, i8, i8, i64, i64, i16, [0 x i16] }>
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.60, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.60 = type { %struct.atomic_t }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs/inode.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.ntfs_alloc_big_inode = private unnamed_addr constant [21 x i8] c"ntfs_alloc_big_inode\00", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@ntfs_big_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Allocation of NTFS big inode structure failed.\00", [49 x i8] zeroinitializer }, align 32
@__func__.__ntfs_init_inode = private unnamed_addr constant [18 x i8] c"__ntfs_init_inode\00", align 1
@__ntfs_init_inode.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ni->size_lock\00", [17 x i8] zeroinitializer }, align 32
@__ntfs_init_inode.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ni->mrec_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&attr_list_rl_lock_class\00", [39 x i8] zeroinitializer }, align 32
@attr_list_rl_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__ntfs_init_inode.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ni->extent_lock\00", [47 x i8] zeroinitializer }, align 32
@__func__.ntfs_new_extent_inode = private unnamed_addr constant [22 x i8] c"ntfs_new_extent_inode\00", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&extent_inode_mrec_lock_key\00", [36 x i8] zeroinitializer }, align 32
@extent_inode_mrec_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__func__.ntfs_read_inode_mount = private unnamed_addr constant [22 x i8] c"ntfs_read_inode_mount\00", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsupported mft record size %i (max 64kiB).\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to allocate buffer for $MFT record 0.\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Device read failed.\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Incorrect mft record size %u in superblock, should be %u.\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MST fixup failed. $MFT is corrupt.\00", [61 x i8] zeroinitializer }, align 32
@ntfs_mst_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failed to lookup attribute list attribute. You should run chkdsk.\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"  Not allowed.  $MFT is corrupt.  You should run chkdsk.\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attribute list attribute found in $MFT.\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Attribute list attribute is compressed.%s\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Non-resident attribute list attribute is encrypted/sparse.%s\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [242 x i8], [46 x i8] } { [242 x i8] c"Resident attribute list attribute in $MFT system file is marked encrypted/sparse which is not true.  However, Windows allows this and chkdsk does not detect or correct it so we will just ignore the invalid flags and pretend they are not set.\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Not enough memory to allocate buffer for attribute list.\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Attribute list has non zero lowest_vcn. $MFT is corrupt. You should run chkdsk.\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Mapping pairs decompression failed with error code %i.\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to load attribute list attribute with error code %i.\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Corrupt attribute list attribute.\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"BUG: The first $DATA extent of $MFT is not in the base mft record. Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"$MFT must be non-resident but a resident extent was found. $MFT is corrupt. Run chkdsk.\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"$MFT must be uncompressed, non-sparse, and unencrypted but a compressed/sparse/encrypted extent was found. $MFT is corrupt. Run chkdsk.\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ntfs_mapping_pairs_decompress() failed with error code %ld.  $MFT is corrupt.\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"First extent of $DATA attribute has non zero lowest_vcn. $MFT is corrupt. You should run chkdsk.\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"$MFT is too big! Aborting.\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"ntfs_read_inode() of $MFT failed. BUG or corrupt $MFT. Run chkdsk and if no errors are found, please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", [55 x i8] zeroinitializer }, align 32
@ntfs_empty_inode_ops = external dso_local constant %struct.inode_operations, align 128
@ntfs_empty_file_ops = external dso_local constant %struct.file_operations, align 4
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"$MFT has corrupt attribute list attribute. Run chkdsk.\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Failed to lookup $MFT/$DATA attribute extent. $MFT is corrupt. Run chkdsk.\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"$MFT/$DATA attribute not found. $MFT is corrupt. Run chkdsk.\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Failed to load the complete runlist for $MFT/$DATA. Driver bug or corrupt $MFT. Run chkdsk.\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"highest_vcn = 0x%llx, last_vcn - 1 = 0x%llx\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&mft_ni_runlist_lock_key\00", [39 x i8] zeroinitializer }, align 32
@mft_ni_runlist_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mft_ni_mrec_lock_key\00", [42 x i8] zeroinitializer }, align 32
@mft_ni_mrec_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Couldn't find first extent of $DATA attribute in attribute list. $MFT is corrupt. Run chkdsk.\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed. Marking inode as bad.\00", [34 x i8] zeroinitializer }, align 32
@__func__.ntfs_clear_extent_inode = private unnamed_addr constant [24 x i8] c"ntfs_clear_extent_inode\00", align 1
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering for inode 0x%lx.\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Clearing dirty extent inode!  Losing data!  This is a BUG!!!\00", [35 x i8] zeroinitializer }, align 32
@__func__.ntfs_evict_big_inode = private unnamed_addr constant [21 x i8] c"ntfs_evict_big_inode\00", align 1
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to commit dirty inode 0x%lx.  Losing data!\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%i\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%i\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",umask=0%o\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",fmask=0%o\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",dmask=0%o\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",nls=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",case_sensitive\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",show_sys_files\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",disable_sparse\00", [16 x i8] zeroinitializer }, align 32
@on_errors_arr = external dso_local local_unnamed_addr constant [0 x %struct.option_t], align 4
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",errors=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",mft_zone_multiplier=%i\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"  Leaving file length out of sync with i_size.\00", [49 x i8] zeroinitializer }, align 32
@__func__.ntfs_truncate = private unnamed_addr constant [14 x i8] c"ntfs_truncate\00", align 1
@.str.58 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to map mft record for inode 0x%lx (error code %d).%s\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Failed to allocate a search context for inode 0x%lx (not enough memory).%s\00", [53 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Open attribute is missing from mft record.  Inode 0x%lx is corrupt.  Run chkdsk.%s\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to lookup attribute in inode 0x%lx (error code %d).%s\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Truncate would cause the inode 0x%lx to %simum size for its attribute type (0x%x).  Aborting truncate.\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exceed the max\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"go under the min\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Inode 0x%lx has unknown attribute type 0x%x.  Aborting truncate.\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Changes in inode size are not supported yet for %s files, ignoring.\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compressed\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"encrypted\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"Cannot truncate inode 0x%lx, attribute type 0x%x, because the conversion from resident to non-resident attribute failed with error code %i.\00", [52 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Not enough space in the mft record/on disk for the non-resident attribute value.  This case is not implemented yet.\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"This attribute type may not be non-resident.  This case is not implemented yet.\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [165 x i8], [59 x i8] } { [165 x i8] c"Cannot truncate inode 0x%lx, attribute type 0x%x, because the attribute is highly fragmented (it consists of multiple extents) and this case is not implemented yet.\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Failed to release cluster(s) (error code %lli).  Unmount and run chkdsk to recover the lost cluster(s).\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to %s (error code %li).%s\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"restore attribute search context\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"truncate attribute runlist\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"Cannot shrink allocation of inode 0x%lx, attribute type 0x%x, because determining the size for the mapping pairs failed with error code %i.%s\00", [50 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"Cannot shrink allocation of inode 0x%lx, attribute type 0x%x, because building the mapping pairs failed with error code %i.%s\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed.  Returning error code %i.\00", [62 x i8] zeroinitializer }, align 32
@__func__.ntfs_setattr = private unnamed_addr constant [13 x i8] c"ntfs_setattr\00", align 1
@.str.80 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Changes in user/group/mode are not supported yet, ignoring.\00", [36 x i8] zeroinitializer }, align 32
@__func__.__ntfs_write_inode = private unnamed_addr constant [19 x i8] c"__ntfs_write_inode\00", align 1
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Entering for %sinode 0x%lx.\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"attr \00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Updating mtime for inode 0x%lx: old = 0x%llx, new = 0x%llx\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Updating ctime for inode 0x%lx: old = 0x%llx, new = 0x%llx\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Updating atime for inode 0x%lx: old = 0x%llx, new = 0x%llx\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Writing %i extent inodes.\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Not enough memory to write inode.  Marking the inode dirty again, so the VFS retries later.\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed (error %i):  Run chkdsk.\00", [32 x i8] zeroinitializer }, align 32
@I30 = external dso_local global [5 x i16], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ntfs_init_runlist.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rl->lock\00", [22 x i8] zeroinitializer }, align 32
@__func__.ntfs_alloc_extent_inode = private unnamed_addr constant [24 x i8] c"ntfs_alloc_extent_inode\00", align 1
@ntfs_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Allocation of NTFS inode structure failed.\00", [53 x i8] zeroinitializer }, align 32
@__func__.ntfs_read_locked_inode = private unnamed_addr constant [23 x i8] c"ntfs_read_locked_inode\00", align 1
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering for i_ino 0x%lx.\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Inode is not in use!\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Inode is an extent inode!\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"$STANDARD_INFORMATION attribute is missing.\00", [52 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Corrupt standard information attribute in inode.\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to lookup attribute list attribute.\00", [53 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Attribute list found in inode 0x%lx.\00", [59 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attribute list attribute is compressed.\00", [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Non-resident attribute list attribute is encrypted/sparse.\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [237 x i8], [51 x i8] } { [237 x i8] c"Resident attribute list attribute in inode 0x%lx is marked encrypted/sparse which is not true.  However, Windows allows this and chkdsk does not detect or correct it so we will just ignore the invalid flags and pretend they are not set.\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Attribute list has non zero lowest_vcn.\00", [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Mapping pairs decompression failed.\00", [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to load attribute list attribute.\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Corrupt attribute list in inode.\00", [63 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"$INDEX_ROOT attribute is missing.\00", [62 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"$INDEX_ROOT attribute is not resident.\00", [57 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"$INDEX_ROOT attribute name is placed after the attribute value.\00", [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Found encrypted and compressed attribute.\00", [54 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"$INDEX_ROOT attribute is corrupt.\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Directory index is corrupt.\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Indexed attribute is not $FILE_NAME.\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Index collation rule is not COLLATION_FILE_NAME.\00", [47 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Index block size (%u) is not a power of two.\00", [51 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Index block size (%u) > PAGE_SIZE (%ld) is not supported.  Sorry.\00", [62 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Index block size (%u) < NTFS_BLOCK_SIZE (%i) is not supported.  Sorry.\00", [57 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"$INDEX_ALLOCATION attribute is not present but $INDEX_ROOT indicated it is.\00", [52 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to lookup $INDEX_ALLOCATION attribute.\00", [50 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"$INDEX_ALLOCATION attribute is resident.\00", [55 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"$INDEX_ALLOCATION attribute name is placed after the mapping pairs array.\00", [54 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"$INDEX_ALLOCATION attribute is encrypted.\00", [54 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"$INDEX_ALLOCATION attribute is sparse.\00", [57 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"$INDEX_ALLOCATION attribute is compressed.\00", [53 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"First extent of $INDEX_ALLOCATION attribute has non zero lowest_vcn.\00", [59 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get bitmap attribute.\00", [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"$BITMAP attribute is compressed and/or encrypted and/or sparse.\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Index bitmap too small (0x%llx) for index allocation (0x%llx).\00", [33 x i8] zeroinitializer }, align 32
@ntfs_dir_inode_ops = external dso_local constant %struct.inode_operations, align 128
@ntfs_dir_ops = external dso_local constant %struct.file_operations, align 4
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to lookup $DATA attribute.\00", [62 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"$DATA attribute is missing.\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Found compressed data but compression is disabled due to cluster size (%i) > 4kiB.\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Found unknown compression method or corrupt file.\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Found encrypted and compressed data.\00", [59 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Found non-standard compression unit (%u instead of 4).  Cannot handle this.\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"First extent of $DATA attribute has non zero lowest_vcn.\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Resident data attribute is corrupt (size exceeds allocation).\00", [34 x i8] zeroinitializer }, align 32
@ntfs_file_inode_ops = external dso_local constant %struct.inode_operations, align 128
@ntfs_file_ops = external dso_local constant %struct.file_operations, align 4
@ntfs_normal_aops = external dso_local constant %struct.address_space_operations, align 4
@ntfs_compressed_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.136 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Failed with error code %i.  Marking corrupt inode 0x%lx as bad.  Run chkdsk.\00", [51 x i8] zeroinitializer }, align 32
@__func__.ntfs_is_extended_system_file = private unnamed_addr constant [29 x i8] c"ntfs_is_extended_system_file\00", align 1
@.str.137 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Corrupt file name attribute. You should run chkdsk.\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Non-resident file name. You should run chkdsk.\00", [49 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"File name with invalid flags. You should run chkdsk.\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unindexed file name. You should run chkdsk.\00", [52 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Inode hard link count doesn't match number of name attributes. You should run chkdsk.\00", [42 x i8] zeroinitializer }, align 32
@__func__.ntfs_read_locked_attr_inode = private unnamed_addr constant [28 x i8] c"ntfs_read_locked_attr_inode\00", align 1
@.str.142 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"Found compressed non-data or named data attribute.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Found compressed attribute but compression is disabled due to cluster size (%i) > 4kiB.\00", [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Found unknown compression method.\00", [62 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"Found mst protected attribute but the attribute is %s.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", [61 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sparse\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"Found mst protected attribute but the attribute is encrypted.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", [54 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Found encrypted non-data attribute.\00", [60 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Attribute name is placed after the attribute value.\00", [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"Found mst protected attribute but the attribute is resident.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", [55 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Resident attribute is corrupt (size exceeds allocation).\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Attribute name is placed after the mapping pairs array.\00", [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"First extent of attribute has non-zero lowest_vcn.\00", [45 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [161 x i8], [63 x i8] } { [161 x i8] c"Failed with error code %i while reading attribute inode (mft_no 0x%lx, type 0x%x, name_len %i).  Marking corrupt inode and base inode 0x%lx as bad.  Run chkdsk.\00", [63 x i8] zeroinitializer }, align 32
@__func__.ntfs_read_locked_index_inode = private unnamed_addr constant [29 x i8] c"ntfs_read_locked_index_inode\00", align 1
@.str.155 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Found compressed/encrypted/sparse index root attribute.\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Index is corrupt.\00", [46 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Index type is not 0 (type is 0x%x).\00", [60 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Index collation rule is 0x%x.\00", [34 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Failed with error code %i while reading index inode (mft_no 0x%lx, name_len %i.\00", [48 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs/inode.h\00", [16 x i8] zeroinitializer }, align 32
@__func__.ntfs_init_big_inode = private unnamed_addr constant [20 x i8] c"ntfs_init_big_inode\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@__func__.ntfs_destroy_extent_inode = private unnamed_addr constant [26 x i8] c"ntfs_destroy_extent_inode\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.161 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"  Leaving inconsistent metadata.  Unmount and run chkdsk.\00", [38 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967284]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967284]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967262]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967268, i64 4294967295]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967284]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 312, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 318, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 371, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 377, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 383, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [24 x i8] c"attr_list_rl_lock_class\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 354, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 390, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 410, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [27 x i8] c"extent_inode_mrec_lock_key\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 400, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1787, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1796, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1811, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1820, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1828, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1848, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1855, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1858, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1862, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1869, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1874, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1886, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1893, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1904, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1914, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1925, i32 5 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1977, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2008, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2017, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2032, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2042, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2065, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2089, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2126, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2132, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2137, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2142, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2145, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2151, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2158, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [24 x i8] c"mft_ni_runlist_lock_key\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1719, i32 30 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2159, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"mft_ni_mrec_lock_key\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1719, i32 55 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2164, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2169, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2206, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2214, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2251, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2298, i32 17 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2299, i32 17 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2301, i32 18 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2303, i32 18 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2304, i32 18 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2306, i32 17 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2308, i32 18 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2310, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2312, i32 18 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2315, i32 19 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2317, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2354, i32 19 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2375, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2383, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2393, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2398, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2449, i32 5 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2459, i32 5 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2472, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2551, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2562, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2566, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2610, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2689, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2705, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2716, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2739, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2829, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2882, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2954, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2989, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2998, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 3007, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 3046, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 3078, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 3083, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [21 x i8] c"../fs/ntfs/runlist.h\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 48, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 337, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 535, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 562, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 566, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 625, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 635, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 669, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 676, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 680, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 687, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 692, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 713, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 726, i32 5 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 735, i32 5 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 744, i32 5 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 775, i32 5 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 783, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 790, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 804, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 816, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 823, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 827, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 832, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 840, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 846, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 855, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 898, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 902, i32 5 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 909, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 920, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 926, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 931, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 936, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 941, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 962, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 969, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 977, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1004, i32 5 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1027, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1036, i32 6 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1047, i32 6 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1058, i32 5 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1069, i32 6 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1104, i32 5 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1122, i32 5 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1170, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 458, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 463, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 468, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 474, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 490, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1249, i32 5 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1258, i32 5 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1267, i32 5 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1277, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1299, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1307, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1317, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1322, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1333, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1346, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1381, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1421, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1531, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1543, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1547, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1552, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 1703, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant [19 x i8] c"../fs/ntfs/inode.h\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 274, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 271, i32 2 }
@___asan_gen_.678 = private constant [19 x i8] c"../fs/ntfs/inode.c\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.678, i32 2323, i32 25 }
@___asan_gen_.681 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 788, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.684 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.684, i32 260, i32 2 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @attr_list_rl_lock_class, ptr @.str.8, ptr @.str.9, ptr @extent_inode_mrec_lock_key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @mft_ni_runlist_lock_key, ptr @.str.40, ptr @mft_ni_mrec_lock_key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @ntfs_init_runlist.__key, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_list_rl_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extent_inode_mrec_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 242, i32 288, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mft_ni_runlist_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mft_ni_mrec_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_init_runlist.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 237, i32 288, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ntfs_test_inode(ptr noundef %vi, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr i8, ptr %vi, i32 -464
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then5, label %if.else, !prof !369

if.then5:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.ntfs_attr, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not = icmp eq i32 %8, 0
  br i1 %cmp6.not, label %if.then5.if.end32_crit_edge, label %if.then5.cleanup_crit_edge, !prof !369

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.if.end32_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.else:                                          ; preds = %if.end
  %type15 = getelementptr i8, ptr %vi, i32 -444
  %9 = ptrtoint ptr %type15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type15, align 4
  %type16 = getelementptr inbounds %struct.ntfs_attr, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp17.not = icmp eq i32 %10, %12
  br i1 %cmp17.not, label %if.end19, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.else
  %name_len = getelementptr i8, ptr %vi, i32 -436
  %13 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %name_len, align 4
  %name_len20 = getelementptr inbounds %struct.ntfs_attr, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %name_len20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %name_len20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp21.not = icmp eq i32 %14, %16
  br i1 %cmp21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %land.lhs.true

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end23
  %name = getelementptr i8, ptr %vi, i32 -440
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  %name26 = getelementptr inbounds %struct.ntfs_attr, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name26, align 4
  %mul = shl i32 %14, 1
  %bcmp = tail call i32 @bcmp(ptr %18, ptr %20, i32 %mul) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end23.if.end32_crit_edge, %if.then5.if.end32_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %land.lhs.true.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end32 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_iget(ptr noundef %sb, i32 noundef %mft_no) local_unnamed_addr #2 align 64 {
entry:
  %na = alloca %struct.ntfs_attr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %na) #12
  %0 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 3
  %3 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mft_no, ptr %na, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %2, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %call = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %mft_no, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull @ntfs_init_locked_inode, ptr noundef nonnull %na) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !370

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %call8 = call fastcc i32 @ntfs_read_locked_inode(ptr noundef nonnull %call)
  call void @unlock_new_inode(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call8)
  %phi.cmp = icmp eq i32 %call8, -12
  br i1 %phi.cmp, label %if.then16, label %if.then7.cleanup_crit_edge, !prof !370

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  call void @iput(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then16 ], [ %call, %if.then7.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %na) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_init_locked_inode(ptr noundef %vi, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_ino, align 8
  %type = getelementptr inbounds %struct.ntfs_attr, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %type1 = getelementptr i8, ptr %vi, i32 -444
  %5 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type1, align 4
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %6)
  %cmp = icmp eq i32 %6, -1610612736
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state.i = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name = getelementptr inbounds %struct.ntfs_attr, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %name3 = getelementptr i8, ptr %vi, i32 -440
  %9 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %name3, align 8
  %name_len = getelementptr inbounds %struct.ntfs_attr, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name_len, align 4
  %name_len4 = getelementptr i8, ptr %vi, i32 -436
  %12 = ptrtoint ptr %name_len4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %name_len4, align 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %do.body, label %if.end44, !prof !369

do.body:                                          ; preds = %if.end
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %do.body25, label %do.body18, !prof !369

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #12, !srcloc !371
  unreachable

do.body25:                                        ; preds = %do.body
  %17 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool27.not = icmp eq i32 %18, 0
  br i1 %tobool27.not, label %do.body25.cleanup83_crit_edge, label %do.body35, !prof !369

do.body25.cleanup83_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

do.body35:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #12, !srcloc !372
  unreachable

if.end44:                                         ; preds = %if.end
  %state.i109 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state.i109) #12
  %19 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46.not = icmp eq i32 %20, 0
  br i1 %tobool46.not, label %if.end44.cleanup83_crit_edge, label %land.lhs.true

if.end44.cleanup83_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

land.lhs.true:                                    ; preds = %if.end44
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %cmp48.not = icmp eq ptr %22, @I30
  br i1 %cmp48.not, label %land.lhs.true.cleanup83_crit_edge, label %if.then49

land.lhs.true.cleanup83_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.then49:                                        ; preds = %land.lhs.true
  %tobool52.not = icmp eq ptr %22, null
  br i1 %tobool52.not, label %do.body62, label %do.end70, !prof !370

do.body62:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #12, !srcloc !373
  unreachable

do.end70:                                         ; preds = %if.then49
  %mul = shl i32 %20, 1
  %add = add i32 %mul, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #16
  %23 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %name3, align 8
  %tobool75.not = icmp eq ptr %call9.i, null
  br i1 %tobool75.not, label %do.end70.cleanup83_crit_edge, label %if.end77

do.end70.cleanup83_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.end77:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %26 = call ptr @memcpy(ptr %call9.i, ptr %25, i32 %mul)
  %27 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name3, align 8
  %29 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %name_len, align 4
  %arrayidx = getelementptr i16, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %arrayidx, align 2
  br label %cleanup83

cleanup83:                                        ; preds = %if.end77, %do.end70.cleanup83_crit_edge, %land.lhs.true.cleanup83_crit_edge, %if.end44.cleanup83_crit_edge, %do.body25.cleanup83_crit_edge
  %retval.1 = phi i32 [ 0, %do.body25.cleanup83_crit_edge ], [ 0, %if.end77 ], [ 0, %land.lhs.true.cleanup83_crit_edge ], [ 0, %if.end44.cleanup83_crit_edge ], [ -12, %do.end70.cleanup83_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_read_locked_inode(ptr noundef %vi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef nonnull @.str.92, i32 noundef %5) #12
  %i_uid = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 2
  %uid = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uid, align 4
  %8 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 3
  %gid = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gid, align 8
  %11 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_gid, align 8
  %12 = ptrtoint ptr %vi to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %vi, align 8
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %vi, i32 -528
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.160, i32 noundef 274, ptr noundef nonnull @__func__.ntfs_init_big_inode, ptr noundef nonnull @.str.1) #12
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  tail call void @__ntfs_init_inode(ptr noundef %16, ptr noundef %add.ptr.i.i) #12
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %mft_no.i = getelementptr i8, ptr %vi, i32 -460
  %19 = ptrtoint ptr %mft_no.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mft_no.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %vi, i32 -528
  %call3 = tail call ptr @map_mft_record(ptr noundef %add.ptr.i) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call3 to i32
  br label %err_out

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i, ptr noundef %call3) #12
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end7.if.end696_crit_edge, label %if.end10

if.end7.if.end696_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end696

if.end10:                                         ; preds = %if.end7
  %flags = getelementptr inbounds %struct.MFT_RECORD, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %flags, align 1
  %23 = and i16 %22, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool11.not = icmp eq i16 %23, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %25, ptr noundef nonnull @.str.93) #12
  br label %unm_err_out.thread

if.end14:                                         ; preds = %if.end10
  %base_mft_record = getelementptr inbounds %struct.MFT_RECORD, ptr %call3, i32 0, i32 10
  %26 = ptrtoint ptr %base_mft_record to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %base_mft_record, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool15.not = icmp eq i64 %27, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %29, ptr noundef nonnull @.str.94) #12
  br label %unm_err_out.thread

if.end18:                                         ; preds = %if.end14
  %sequence_number = getelementptr inbounds %struct.MFT_RECORD, ptr %call3, i32 0, i32 4
  %30 = ptrtoint ptr %sequence_number to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %sequence_number, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %seq_no = getelementptr i8, ptr %vi, i32 -456
  %33 = ptrtoint ptr %seq_no to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %seq_no, align 8
  %conv19 = zext i16 %32 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 49
  %34 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv19, ptr %i_generation, align 8
  %link_count = getelementptr inbounds %struct.MFT_RECORD, ptr %call3, i32 0, i32 5
  %35 = ptrtoint ptr %link_count to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %link_count, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv20 = zext i16 %37 to i32
  tail call void @set_nlink(ptr noundef %vi, i32 noundef %conv20) #12
  %38 = ptrtoint ptr %vi to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vi, align 8
  %40 = or i16 %39, 511
  store i16 %40, ptr %vi, align 8
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end18.if.end31_crit_edge, label %if.then26

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %45 = and i16 %40, -147
  %46 = ptrtoint ptr %vi to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %vi, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end18.if.end31_crit_edge
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %flags, align 1
  %49 = and i16 %48, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool35.not = icmp eq i16 %49, 0
  %50 = ptrtoint ptr %vi to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vi, align 8
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end31
  %52 = or i16 %51, 16384
  %53 = ptrtoint ptr %vi to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %vi, align 8
  %dmask = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %dmask to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dmask, align 2
  %neg = xor i16 %55, -1
  %and44 = and i16 %52, %neg
  store i16 %and44, ptr %vi, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 12
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp46 = icmp ugt i32 %58, 1
  br i1 %cmp46, label %if.then48, label %if.then36.if.end60_crit_edge

if.then36.if.end60_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then48:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @set_nlink(ptr noundef %vi, i32 noundef 1) #12
  br label %if.end60

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %59 = or i16 %51, -32768
  %60 = ptrtoint ptr %vi to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %vi, align 8
  %fmask = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 5
  %61 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %fmask, align 4
  %neg55 = xor i16 %62, -1
  %and58 = and i16 %59, %neg55
  store i16 %and58, ptr %vi, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then48, %if.then36.if.end60_crit_edge
  %call61 = tail call i32 @ntfs_attr_lookup(i32 noundef 268435456, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call8) #12
  %63 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call61, label %if.end60.unm_err_out_crit_edge [
    i32 0, label %if.end71
    i32 -2, label %if.then68
  ], !prof !374

if.end60.unm_err_out_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out

if.then68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %65, ptr noundef nonnull @.str.95) #12
  br label %if.then695

if.end71:                                         ; preds = %if.end60
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call8, i32 0, i32 1
  %66 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %67, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.78, ptr %data, i32 0, i32 1
  %68 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %value_offset, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %conv72 = zext i16 %70 to i32
  %add.ptr = getelementptr i8, ptr %67, i32 %conv72
  %71 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %data, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %add.ptr74 = getelementptr i8, ptr %add.ptr, i32 %73
  %74 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call8, align 4
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 14
  %76 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mft_record_size, align 4
  %add.ptr75 = getelementptr i8, ptr %75, i32 %77
  %cmp76 = icmp ugt ptr %add.ptr74, %add.ptr75
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %79, ptr noundef nonnull @.str.96) #12
  br label %unm_err_out.thread

if.end80:                                         ; preds = %if.end71
  %i_mtime = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 16
  %last_data_change_time = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %add.ptr, i32 0, i32 1
  %80 = ptrtoint ptr %last_data_change_time to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %81 = load i64, ptr %last_data_change_time, align 1
  %82 = tail call i64 @llvm.bswap.i64(i64 %81) #12
  %sub.i = add i64 %82, -116444736000000000
  %conv16.i = trunc i64 %sub.i to i32
  %83 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i) #17, !srcloc !375
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i, i64 %83, i32 0) #17, !srcloc !376
  %asmresult10.i.i = extractvalue { i64, i32 } %84, 0
  %div160262.i = lshr i64 %asmresult10.i.i, 23
  %conv161.i = trunc i64 %div160262.i to i32
  %mul162.neg.i = mul i32 %conv161.i, -10000000
  %sub163.i = add i32 %mul162.neg.i, %conv16.i
  %mul182.i = mul i32 %sub163.i, 100
  %tmp.sroa.4.8.insert.ext = zext i32 %mul182.i to i64
  %tmp.sroa.4.8.insert.shift = shl nuw i64 %tmp.sroa.4.8.insert.ext, 32
  %tmp.sroa.4.8.insert.insert = or i64 %tmp.sroa.4.8.insert.shift, 4294967295
  %85 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %div160262.i, ptr %i_mtime, align 8
  %tmp.sroa.4.0.i_mtime.sroa_idx = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 16, i32 1
  %86 = ptrtoint ptr %tmp.sroa.4.0.i_mtime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %tmp.sroa.4.8.insert.insert, ptr %tmp.sroa.4.0.i_mtime.sroa_idx, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 17
  %last_mft_change_time = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %add.ptr, i32 0, i32 2
  %87 = ptrtoint ptr %last_mft_change_time to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %last_mft_change_time, align 1
  %89 = tail call i64 @llvm.bswap.i64(i64 %88) #12
  %sub.i1035 = add i64 %89, -116444736000000000
  %conv16.i1036 = trunc i64 %sub.i1035 to i32
  %90 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i1035) #17, !srcloc !375
  %91 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i1035, i64 %90, i32 0) #17, !srcloc !376
  %asmresult10.i.i1037 = extractvalue { i64, i32 } %91, 0
  %div160262.i1038 = lshr i64 %asmresult10.i.i1037, 23
  %conv161.i1039 = trunc i64 %div160262.i1038 to i32
  %mul162.neg.i1040 = mul i32 %conv161.i1039, -10000000
  %sub163.i1041 = add i32 %mul162.neg.i1040, %conv16.i1036
  %mul182.i1042 = mul i32 %sub163.i1041, 100
  %tmp85.sroa.4.8.insert.ext = zext i32 %mul182.i1042 to i64
  %tmp85.sroa.4.8.insert.shift = shl nuw i64 %tmp85.sroa.4.8.insert.ext, 32
  %tmp85.sroa.4.8.insert.insert = or i64 %tmp85.sroa.4.8.insert.shift, 4294967295
  %92 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %div160262.i1038, ptr %i_ctime, align 8
  %tmp85.sroa.4.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 17, i32 1
  %93 = ptrtoint ptr %tmp85.sroa.4.0.i_ctime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %tmp85.sroa.4.8.insert.insert, ptr %tmp85.sroa.4.0.i_ctime.sroa_idx, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 15
  %last_access_time = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %add.ptr, i32 0, i32 3
  %94 = ptrtoint ptr %last_access_time to i32
  call void @__asan_loadN_noabort(i32 %94, i32 8)
  %95 = load i64, ptr %last_access_time, align 1
  %96 = tail call i64 @llvm.bswap.i64(i64 %95) #12
  %sub.i1044 = add i64 %96, -116444736000000000
  %conv16.i1045 = trunc i64 %sub.i1044 to i32
  %97 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i1044) #17, !srcloc !375
  %98 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i1044, i64 %97, i32 0) #17, !srcloc !376
  %asmresult10.i.i1046 = extractvalue { i64, i32 } %98, 0
  %div160262.i1047 = lshr i64 %asmresult10.i.i1046, 23
  %conv161.i1048 = trunc i64 %div160262.i1047 to i32
  %mul162.neg.i1049 = mul i32 %conv161.i1048, -10000000
  %sub163.i1050 = add i32 %mul162.neg.i1049, %conv16.i1045
  %mul182.i1051 = mul i32 %sub163.i1050, 100
  %tmp86.sroa.4.8.insert.ext = zext i32 %mul182.i1051 to i64
  %tmp86.sroa.4.8.insert.shift = shl nuw i64 %tmp86.sroa.4.8.insert.ext, 32
  %tmp86.sroa.4.8.insert.insert = or i64 %tmp86.sroa.4.8.insert.shift, 4294967295
  %99 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %div160262.i1047, ptr %i_atime, align 8
  %tmp86.sroa.4.0.i_atime.sroa_idx = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 15, i32 1
  %100 = ptrtoint ptr %tmp86.sroa.4.0.i_atime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %tmp86.sroa.4.8.insert.insert, ptr %tmp86.sroa.4.0.i_atime.sroa_idx, align 8
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call8) #12
  %call87 = tail call i32 @ntfs_attr_lookup(i32 noundef 536870912, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call8) #12
  %101 = zext i32 %call87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call87, label %if.then98 [
    i32 0, label %if.else101
    i32 -2, label %if.end80.skip_attr_list_load_crit_edge
  ], !prof !377

if.end80.skip_attr_list_load_crit_edge:           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_attr_list_load

if.then98:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %103, ptr noundef nonnull @.str.97) #12
  br label %unm_err_out

if.else101:                                       ; preds = %if.end80
  %104 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp103 = icmp eq i32 %105, 0
  br i1 %cmp103, label %if.else101.skip_attr_list_load_crit_edge, label %if.end106

if.else101.skip_attr_list_load_crit_edge:         ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_attr_list_load

if.end106:                                        ; preds = %if.else101
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 676, ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef nonnull @.str.98, i32 noundef %105) #12
  %state.i = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #12
  %106 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %attr, align 4
  %flags109 = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %flags109 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %flags109, align 1
  %conv110 = zext i16 %109 to i32
  %and111 = and i32 %conv110, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end115, label %if.then113

if.then113:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %111, ptr noundef nonnull @.str.99) #12
  br label %unm_err_out.thread

if.end115:                                        ; preds = %if.end106
  %112 = and i32 %conv110, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %if.end115.if.end131_crit_edge, label %if.then124

if.end115.if.end131_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then124:                                       ; preds = %if.end115
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 2
  %114 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool125.not = icmp eq i8 %115, 0
  %116 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_sb, align 4
  br i1 %tobool125.not, label %if.end128, label %if.then126

if.then126:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %117, ptr noundef nonnull @.str.100) #12
  br label %unm_err_out.thread

if.end128:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %117, ptr noundef nonnull @.str.101, i32 noundef %119) #12
  br label %if.end131

if.end131:                                        ; preds = %if.end128, %if.end115.if.end131_crit_edge
  %non_resident.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 2
  %120 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 7
  %122 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %data.i, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #12
  br label %ntfs_attr_size.exit

if.end.i:                                         ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %data_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 7, i32 0, i32 6
  %125 = ptrtoint ptr %data_size.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %data_size.i, align 1
  %127 = tail call i64 @llvm.bswap.i64(i64 %126) #12
  %extract.t = trunc i64 %127 to i32
  br label %ntfs_attr_size.exit

ntfs_attr_size.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i.off0 = phi i32 [ %extract.t, %if.end.i ], [ %124, %if.then.i ]
  %attr_list_size = getelementptr i8, ptr %vi, i32 -232
  %128 = ptrtoint ptr %attr_list_size to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %retval.0.i.off0, ptr %attr_list_size, align 8
  %call135 = tail call fastcc ptr @ntfs_malloc_nofs(i32 noundef %retval.0.i.off0)
  %attr_list = getelementptr i8, ptr %vi, i32 -228
  %129 = ptrtoint ptr %attr_list to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call135, ptr %attr_list, align 4
  %tobool137.not = icmp eq ptr %call135, null
  br i1 %tobool137.not, label %if.then138, label %if.end140

if.then138:                                       ; preds = %ntfs_attr_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %131, ptr noundef nonnull @.str.21) #12
  br label %if.then695

if.end140:                                        ; preds = %ntfs_attr_size.exit
  %132 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool142.not = icmp eq i8 %133, 0
  br i1 %tobool142.not, label %if.else172, label %if.then143

if.then143:                                       ; preds = %if.end140
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #12
  %data144 = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 7
  %134 = ptrtoint ptr %data144 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 8)
  %135 = load i64, ptr %data144, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %135)
  %tobool145.not = icmp eq i64 %135, 0
  br i1 %tobool145.not, label %if.end148, label %if.then146

if.then146:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %137, ptr noundef nonnull @.str.102) #12
  br label %unm_err_out.thread

if.end148:                                        ; preds = %if.then143
  %call149 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %3, ptr noundef %107, ptr noundef null) #12
  %attr_list_rl = getelementptr i8, ptr %vi, i32 -224
  %138 = ptrtoint ptr %attr_list_rl to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call149, ptr %attr_list_rl, align 8
  %cmp.i1054 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1054, label %if.then153, label %if.end160

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %call149 to i32
  %140 = ptrtoint ptr %attr_list_rl to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %attr_list_rl, align 8
  %141 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %142, ptr noundef nonnull @.str.103) #12
  br label %unm_err_out

if.end160:                                        ; preds = %if.end148
  %143 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %attr_list, align 4
  %145 = ptrtoint ptr %attr_list_size to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %attr_list_size, align 8
  %conv164 = zext i32 %146 to i64
  %initialized_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 7, i32 0, i32 7
  %147 = ptrtoint ptr %initialized_size to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %initialized_size, align 1
  %149 = tail call i64 @llvm.bswap.i64(i64 %148) #12
  %call167 = tail call i32 @load_attribute_list(ptr noundef %3, ptr noundef %attr_list_rl, ptr noundef %144, i64 noundef %conv164, i64 noundef %149) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end160.skip_attr_list_load_crit_edge, label %if.then169

if.end160.skip_attr_list_load_crit_edge:          ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_attr_list_load

if.then169:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %151, ptr noundef nonnull @.str.104) #12
  br label %if.then695

if.else172:                                       ; preds = %if.end140
  %data173 = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 7
  %value_offset174 = getelementptr inbounds %struct.anon.78, ptr %data173, i32 0, i32 1
  %152 = ptrtoint ptr %value_offset174 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %value_offset174, align 1
  %154 = tail call i16 @llvm.bswap.i16(i16 %153)
  %conv175 = zext i16 %154 to i32
  %add.ptr176 = getelementptr i8, ptr %107, i32 %conv175
  %155 = ptrtoint ptr %data173 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %data173, align 1
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %add.ptr179 = getelementptr i8, ptr %add.ptr176, i32 %157
  %158 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %call8, align 4
  %160 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mft_record_size, align 4
  %add.ptr182 = getelementptr i8, ptr %159, i32 %161
  %cmp183 = icmp ugt ptr %add.ptr179, %add.ptr182
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #14
  %162 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %163, ptr noundef nonnull @.str.105) #12
  br label %unm_err_out.thread

if.end187:                                        ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #14
  %164 = call ptr @memcpy(ptr %call135, ptr %add.ptr176, i32 %157)
  br label %skip_attr_list_load

skip_attr_list_load:                              ; preds = %if.end187, %if.end160.skip_attr_list_load_crit_edge, %if.else101.skip_attr_list_load_crit_edge, %if.end80.skip_attr_list_load_crit_edge
  %165 = ptrtoint ptr %vi to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %vi, align 8
  %167 = and i16 %166, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %167)
  %cmp200 = icmp eq i16 %167, 16384
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call8) #12
  br i1 %cmp200, label %if.then202, label %if.else479

if.then202:                                       ; preds = %skip_attr_list_load
  %call203 = tail call i32 @ntfs_attr_lookup(i32 noundef -1879048192, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call8) #12
  %168 = zext i32 %call203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %call203, label %if.then202.unm_err_out_crit_edge [
    i32 0, label %if.end217
    i32 -2, label %if.then214
  ], !prof !374

if.then202.unm_err_out_crit_edge:                 ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out

if.then214:                                       ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %170, ptr noundef nonnull @.str.106) #12
  br label %if.then695

if.end217:                                        ; preds = %if.then202
  %171 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %attr, align 4
  %non_resident219 = getelementptr inbounds %struct.ATTR_RECORD, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %non_resident219 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %non_resident219, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool220.not = icmp eq i8 %174, 0
  br i1 %tobool220.not, label %if.end228, label %if.then227, !prof !369

if.then227:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %176, ptr noundef nonnull @.str.107) #12
  br label %unm_err_out.thread

if.end228:                                        ; preds = %if.end217
  %name_length = getelementptr inbounds %struct.ATTR_RECORD, ptr %172, i32 0, i32 3
  %177 = ptrtoint ptr %name_length to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %name_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool230.not = icmp eq i8 %178, 0
  br i1 %tobool230.not, label %if.end228.if.end245_crit_edge, label %land.rhs

if.end228.if.end245_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

land.rhs:                                         ; preds = %if.end228
  %name_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %172, i32 0, i32 4
  %179 = ptrtoint ptr %name_offset to i32
  call void @__asan_loadN_noabort(i32 %179, i32 2)
  %180 = load i16, ptr %name_offset, align 1
  %181 = tail call i16 @llvm.bswap.i16(i16 %180)
  %data232 = getelementptr inbounds %struct.ATTR_RECORD, ptr %172, i32 0, i32 7
  %value_offset233 = getelementptr inbounds %struct.anon.78, ptr %data232, i32 0, i32 1
  %182 = ptrtoint ptr %value_offset233 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %value_offset233, align 1
  %184 = tail call i16 @llvm.bswap.i16(i16 %183)
  call void @__sanitizer_cov_trace_cmp2(i16 %181, i16 %184)
  %cmp235.not = icmp ult i16 %181, %184
  br i1 %cmp235.not, label %land.rhs.if.end245_crit_edge, label %if.then243, !prof !369

land.rhs.if.end245_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.then243:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %185 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %186, ptr noundef nonnull @.str.108) #12
  br label %unm_err_out.thread

if.end245:                                        ; preds = %land.rhs.if.end245_crit_edge, %if.end228.if.end245_crit_edge
  %flags246 = getelementptr inbounds %struct.ATTR_RECORD, ptr %172, i32 0, i32 5
  %187 = ptrtoint ptr %flags246 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 2)
  %188 = load i16, ptr %flags246, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %188)
  %tobool249.not = icmp ult i16 %188, 256
  br i1 %tobool249.not, label %if.end245.if.end251_crit_edge, label %if.then250

if.end245.if.end251_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end251

if.then250:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  %state.i1055 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state.i1055) #12
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %if.end245.if.end251_crit_edge
  %189 = ptrtoint ptr %flags246 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %flags246, align 1
  %conv253 = zext i16 %190 to i32
  %and254 = and i32 %conv253, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %if.end251.if.end264_crit_edge, label %if.then256

if.end251.if.end264_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

if.then256:                                       ; preds = %if.end251
  %and259 = and i32 %conv253, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %if.end263, label %if.then261

if.then261:                                       ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #14
  %191 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %192, ptr noundef nonnull @.str.109) #12
  br label %unm_err_out.thread

if.end263:                                        ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #14
  %state.i1056 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state.i1056) #12
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.end251.if.end264_crit_edge
  %193 = ptrtoint ptr %flags246 to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %flags246, align 1
  %195 = and i16 %194, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %195)
  %tobool268.not = icmp eq i16 %195, 0
  br i1 %tobool268.not, label %if.end264.if.end270_crit_edge, label %if.then269

if.end264.if.end270_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end270

if.then269:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  %state.i1057 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state.i1057) #12
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %if.end264.if.end270_crit_edge
  %data271 = getelementptr inbounds %struct.ATTR_RECORD, ptr %172, i32 0, i32 7
  %value_offset272 = getelementptr inbounds %struct.anon.78, ptr %data271, i32 0, i32 1
  %196 = ptrtoint ptr %value_offset272 to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %value_offset272, align 1
  %198 = tail call i16 @llvm.bswap.i16(i16 %197)
  %conv273 = zext i16 %198 to i32
  %add.ptr274 = getelementptr i8, ptr %172, i32 %conv273
  %199 = ptrtoint ptr %data271 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %data271, align 1
  %201 = tail call i32 @llvm.bswap.i32(i32 %200)
  %add.ptr277 = getelementptr i8, ptr %add.ptr274, i32 %201
  %202 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %call8, align 4
  %204 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %mft_record_size, align 4
  %add.ptr280 = getelementptr i8, ptr %203, i32 %205
  %cmp281 = icmp ugt ptr %add.ptr277, %add.ptr280
  br i1 %cmp281, label %if.then283, label %if.end285

if.then283:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %207, ptr noundef nonnull @.str.110) #12
  br label %unm_err_out.thread

if.end285:                                        ; preds = %if.end270
  %index = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr274, i32 0, i32 5
  %index_length = getelementptr inbounds %struct.INDEX_HEADER, ptr %index, i32 0, i32 1
  %208 = ptrtoint ptr %index_length to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %index_length, align 1
  %210 = tail call i32 @llvm.bswap.i32(i32 %209)
  %add.ptr287 = getelementptr i8, ptr %index, i32 %210
  %cmp288 = icmp ugt ptr %add.ptr287, %add.ptr277
  br i1 %cmp288, label %if.then290, label %if.end292

if.then290:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #14
  %211 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %212, ptr noundef nonnull @.str.111) #12
  br label %unm_err_out.thread

if.end292:                                        ; preds = %if.end285
  %213 = ptrtoint ptr %add.ptr274 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %add.ptr274, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %214)
  %cmp293.not = icmp eq i32 %214, 805306368
  br i1 %cmp293.not, label %if.end297, label %if.then295

if.then295:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #14
  %215 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %216, ptr noundef nonnull @.str.112) #12
  br label %unm_err_out.thread

if.end297:                                        ; preds = %if.end292
  %collation_rule = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr274, i32 0, i32 1
  %217 = ptrtoint ptr %collation_rule to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %collation_rule, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %218)
  %cmp298.not = icmp eq i32 %218, 16777216
  br i1 %cmp298.not, label %if.end302, label %if.then300

if.then300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #14
  %219 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %220, ptr noundef nonnull @.str.113) #12
  br label %unm_err_out.thread

if.end302:                                        ; preds = %if.end297
  %itype = getelementptr i8, ptr %vi, i32 -120
  %collation_rule304 = getelementptr i8, ptr %vi, i32 -112
  %221 = ptrtoint ptr %collation_rule304 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 16777216, ptr %collation_rule304, align 8
  %index_block_size = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr274, i32 0, i32 2
  %222 = ptrtoint ptr %index_block_size to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load i32, ptr %index_block_size, align 1
  %224 = tail call i32 @llvm.bswap.i32(i32 %223)
  %225 = ptrtoint ptr %itype to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %itype, align 8
  %226 = tail call i32 @llvm.ctpop.i32(i32 %223), !range !378
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %226)
  %tobool311.not = icmp ult i32 %226, 2
  br i1 %tobool311.not, label %if.end316, label %if.then312

if.then312:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %228, ptr noundef nonnull @.str.114, i32 noundef %224) #12
  br label %unm_err_out.thread

if.end316:                                        ; preds = %if.end302
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %224)
  %cmp319 = icmp ugt i32 %224, 4096
  br i1 %cmp319, label %if.then321, label %if.end325

if.then321:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #14
  %229 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %230, ptr noundef nonnull @.str.115, i32 noundef %224, i32 noundef 4096) #12
  br label %if.then695

if.end325:                                        ; preds = %if.end316
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %224)
  %cmp328 = icmp ult i32 %224, 512
  br i1 %cmp328, label %if.then330, label %if.end334

if.then330:                                       ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #14
  %231 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %232, ptr noundef nonnull @.str.116, i32 noundef %224, i32 noundef 512) #12
  br label %if.then695

if.end334:                                        ; preds = %if.end325
  %233 = tail call i32 @llvm.cttz.i32(i32 %224, i1 true), !range !378
  %conv338 = trunc i32 %233 to i8
  %block_size_bits = getelementptr i8, ptr %vi, i32 -108
  %234 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv338, ptr %block_size_bits, align 4
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 11
  %235 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %224)
  %cmp342.not = icmp ugt i32 %236, %224
  br i1 %cmp342.not, label %if.else348, label %if.then344

if.then344:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #14
  %vcn_size = getelementptr i8, ptr %vi, i32 -116
  %237 = ptrtoint ptr %vcn_size to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %vcn_size, align 4
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 13
  br label %if.end354

if.else348:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #14
  %sector_size = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 9
  %238 = ptrtoint ptr %sector_size to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %sector_size, align 2
  %conv349 = zext i16 %239 to i32
  %vcn_size351 = getelementptr i8, ptr %vi, i32 -116
  %240 = ptrtoint ptr %vcn_size351 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %conv349, ptr %vcn_size351, align 4
  %sector_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 10
  br label %if.end354

if.end354:                                        ; preds = %if.else348, %if.then344
  %.sink.in = phi ptr [ %sector_size_bits, %if.else348 ], [ %cluster_size_bits, %if.then344 ]
  %241 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %241)
  %.sink = load i8, ptr %.sink.in, align 4
  %242 = getelementptr i8, ptr %vi, i32 -107
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %.sink, ptr %242, align 1
  %state.i1058 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state.i1058) #12
  %type355 = getelementptr i8, ptr %vi, i32 -444
  %244 = ptrtoint ptr %type355 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1610612736, ptr %type355, align 4
  %name = getelementptr i8, ptr %vi, i32 -440
  %245 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @I30, ptr %name, align 8
  %name_len = getelementptr i8, ptr %vi, i32 -436
  %246 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 4, ptr %name_len, align 4
  %flags357 = getelementptr inbounds %struct.INDEX_HEADER, ptr %index, i32 0, i32 3
  %247 = ptrtoint ptr %flags357 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %flags357, align 1
  %249 = and i8 %248, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool360.not = icmp eq i8 %249, 0
  br i1 %tobool360.not, label %if.then361, label %if.end363

if.then361:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #14
  %initialized_size362 = getelementptr i8, ptr %vi, i32 -480
  %i_size = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 14
  %250 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 0, ptr %i_size, align 8
  %251 = call ptr @memset(ptr %initialized_size362, i32 0, i32 16)
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call8) #12
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #12
  br label %cleanup

if.end363:                                        ; preds = %if.end354
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i1058) #12
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call8) #12
  %call364 = tail call i32 @ntfs_attr_lookup(i32 noundef -1610612736, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call8) #12
  %252 = zext i32 %call364 to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %call364, label %if.else377 [
    i32 0, label %if.end380
    i32 -2, label %if.then375
  ], !prof !374

if.then375:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #14
  %253 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %254, ptr noundef nonnull @.str.117) #12
  br label %if.then695

if.else377:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #14
  %255 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %256, ptr noundef nonnull @.str.118) #12
  br label %unm_err_out

if.end380:                                        ; preds = %if.end363
  %257 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %attr, align 4
  %non_resident382 = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %non_resident382 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %non_resident382, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool383.not = icmp eq i8 %260, 0
  br i1 %tobool383.not, label %if.then384, label %if.end386

if.then384:                                       ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #14
  %261 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %262, ptr noundef nonnull @.str.119) #12
  br label %unm_err_out.thread

if.end386:                                        ; preds = %if.end380
  %name_length387 = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 3
  %263 = ptrtoint ptr %name_length387 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %name_length387, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool389.not = icmp eq i8 %264, 0
  br i1 %tobool389.not, label %if.end386.if.end406_crit_edge, label %land.rhs390

if.end386.if.end406_crit_edge:                    ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end406

land.rhs390:                                      ; preds = %if.end386
  %name_offset391 = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 4
  %265 = ptrtoint ptr %name_offset391 to i32
  call void @__asan_loadN_noabort(i32 %265, i32 2)
  %266 = load i16, ptr %name_offset391, align 1
  %267 = tail call i16 @llvm.bswap.i16(i16 %266)
  %mapping_pairs_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 7, i32 0, i32 2
  %268 = ptrtoint ptr %mapping_pairs_offset to i32
  call void @__asan_loadN_noabort(i32 %268, i32 2)
  %269 = load i16, ptr %mapping_pairs_offset, align 1
  %270 = tail call i16 @llvm.bswap.i16(i16 %269)
  call void @__sanitizer_cov_trace_cmp2(i16 %267, i16 %270)
  %cmp395.not = icmp ult i16 %267, %270
  br i1 %cmp395.not, label %land.rhs390.if.end406_crit_edge, label %if.then404, !prof !369

land.rhs390.if.end406_crit_edge:                  ; preds = %land.rhs390
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end406

if.then404:                                       ; preds = %land.rhs390
  call void @__sanitizer_cov_trace_pc() #14
  %271 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %272, ptr noundef nonnull @.str.120) #12
  br label %unm_err_out.thread

if.end406:                                        ; preds = %land.rhs390.if.end406_crit_edge, %if.end386.if.end406_crit_edge
  %flags407 = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 5
  %273 = ptrtoint ptr %flags407 to i32
  call void @__asan_loadN_noabort(i32 %273, i32 2)
  %274 = load i16, ptr %flags407, align 1
  %conv408 = zext i16 %274 to i32
  %and409 = and i32 %conv408, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %tobool410.not = icmp eq i32 %and409, 0
  br i1 %tobool410.not, label %if.end413, label %if.then411

if.then411:                                       ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #14
  %275 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %276, ptr noundef nonnull @.str.121) #12
  br label %unm_err_out.thread

if.end413:                                        ; preds = %if.end406
  %and416 = and i32 %conv408, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %if.end420, label %if.then418

if.then418:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #14
  %277 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %278, ptr noundef nonnull @.str.122) #12
  br label %unm_err_out.thread

if.end420:                                        ; preds = %if.end413
  %and423 = and i32 %conv408, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423)
  %tobool424.not = icmp eq i32 %and423, 0
  br i1 %tobool424.not, label %if.end427, label %if.then425

if.then425:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #14
  %279 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %280, ptr noundef nonnull @.str.123) #12
  br label %unm_err_out.thread

if.end427:                                        ; preds = %if.end420
  %data428 = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 7
  %281 = ptrtoint ptr %data428 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 8)
  %282 = load i64, ptr %data428, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %282)
  %tobool430.not = icmp eq i64 %282, 0
  br i1 %tobool430.not, label %if.end433, label %if.then431

if.then431:                                       ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #14
  %283 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %284, ptr noundef nonnull @.str.124) #12
  br label %unm_err_out.thread

if.end433:                                        ; preds = %if.end427
  %data_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 7, i32 0, i32 6
  %285 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %285, i32 8)
  %286 = load i64, ptr %data_size, align 1
  %287 = tail call i64 @llvm.bswap.i64(i64 %286) #12
  %i_size436 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 14
  %288 = ptrtoint ptr %i_size436 to i32
  call void @__asan_store8_noabort(i32 %288)
  store i64 %287, ptr %i_size436, align 8
  %initialized_size438 = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 7, i32 0, i32 7
  %289 = ptrtoint ptr %initialized_size438 to i32
  call void @__asan_loadN_noabort(i32 %289, i32 8)
  %290 = load i64, ptr %initialized_size438, align 1
  %291 = tail call i64 @llvm.bswap.i64(i64 %290) #12
  %initialized_size440 = getelementptr i8, ptr %vi, i32 -480
  %292 = ptrtoint ptr %initialized_size440 to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 %291, ptr %initialized_size440, align 8
  %allocated_size442 = getelementptr inbounds %struct.ATTR_RECORD, ptr %258, i32 0, i32 7, i32 0, i32 5
  %293 = ptrtoint ptr %allocated_size442 to i32
  call void @__asan_loadN_noabort(i32 %293, i32 8)
  %294 = load i64, ptr %allocated_size442, align 1
  %295 = tail call i64 @llvm.bswap.i64(i64 %294) #12
  %allocated_size444 = getelementptr i8, ptr %vi, i32 -472
  %296 = ptrtoint ptr %allocated_size444 to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 %295, ptr %allocated_size444, align 8
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call8) #12
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #12
  %call445 = tail call ptr @ntfs_attr_iget(ptr noundef %vi, i32 noundef -1342177280, ptr noundef nonnull @I30, i32 noundef 4)
  %cmp.i1060 = icmp ugt ptr %call445, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1060, label %if.then447, label %if.end450

if.then447:                                       ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #14
  %297 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %298, ptr noundef nonnull @.str.125) #12
  %299 = ptrtoint ptr %call445 to i32
  br label %unm_err_out

if.end450:                                        ; preds = %if.end433
  %state.i1062 = getelementptr i8, ptr %call445, i32 -464
  %300 = ptrtoint ptr %state.i1062 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile i32, ptr %state.i1062, align 4
  %302 = and i32 %301, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool453.not = icmp eq i32 %302, 0
  br i1 %tobool453.not, label %lor.lhs.false454, label %if.end450.if.then460_crit_edge

if.end450.if.then460_crit_edge:                   ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then460

lor.lhs.false454:                                 ; preds = %if.end450
  %303 = ptrtoint ptr %state.i1062 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load volatile i32, ptr %state.i1062, align 4
  %305 = and i32 %304, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool456.not = icmp eq i32 %305, 0
  br i1 %tobool456.not, label %lor.lhs.false457, label %lor.lhs.false454.if.then460_crit_edge

lor.lhs.false454.if.then460_crit_edge:            ; preds = %lor.lhs.false454
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then460

lor.lhs.false457:                                 ; preds = %lor.lhs.false454
  %306 = ptrtoint ptr %state.i1062 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load volatile i32, ptr %state.i1062, align 4
  %308 = and i32 %307, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool459.not = icmp eq i32 %308, 0
  br i1 %tobool459.not, label %if.end462, label %lor.lhs.false457.if.then460_crit_edge

lor.lhs.false457.if.then460_crit_edge:            ; preds = %lor.lhs.false457
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then460

if.then460:                                       ; preds = %lor.lhs.false457.if.then460_crit_edge, %lor.lhs.false454.if.then460_crit_edge, %if.end450.if.then460_crit_edge
  %309 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %310, ptr noundef nonnull @.str.126) #12
  br label %iput_unm_err_out

if.end462:                                        ; preds = %lor.lhs.false457
  %call463 = tail call fastcc i64 @i_size_read(ptr noundef %call445)
  %shl = shl i64 %call463, 3
  %311 = ptrtoint ptr %i_size436 to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %i_size436, align 8
  %313 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %block_size_bits, align 4
  %sh_prom = zext i8 %314 to i64
  %shr = ashr i64 %312, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %shr)
  %cmp468 = icmp slt i64 %shl, %shr
  br i1 %cmp468, label %if.then470, label %if.end474

if.then470:                                       ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #14
  %315 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %316, ptr noundef nonnull @.str.127, i64 noundef %shl, i64 noundef %312) #12
  br label %iput_unm_err_out

if.end474:                                        ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iput(ptr noundef %call445) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end474, %if.then361
  %i_op = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 7
  %317 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr @ntfs_dir_inode_ops, ptr %i_op, align 8
  %318 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 44
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr @ntfs_dir_ops, ptr %318, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 9
  br label %if.end670.sink.split

if.else479:                                       ; preds = %skip_attr_list_load
  %type480 = getelementptr i8, ptr %vi, i32 -444
  %320 = ptrtoint ptr %type480 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -2147483648, ptr %type480, align 4
  %name481 = getelementptr i8, ptr %vi, i32 -440
  %321 = ptrtoint ptr %name481 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr null, ptr %name481, align 8
  %name_len482 = getelementptr i8, ptr %vi, i32 -436
  %322 = ptrtoint ptr %name_len482 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 0, ptr %name_len482, align 4
  %call483 = tail call i32 @ntfs_attr_lookup(i32 noundef -2147483648, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call483)
  %tobool484.not = icmp eq i32 %call483, 0
  br i1 %tobool484.not, label %if.end511, label %if.then491, !prof !369

if.then491:                                       ; preds = %if.else479
  %initialized_size493 = getelementptr i8, ptr %vi, i32 -480
  %i_size494 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 14
  %323 = ptrtoint ptr %i_size494 to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 0, ptr %i_size494, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call483)
  %cmp495.not = icmp eq i32 %call483, -2
  %324 = call ptr @memset(ptr %initialized_size493, i32 0, i32 16)
  br i1 %cmp495.not, label %if.end499, label %if.then497

if.then497:                                       ; preds = %if.then491
  call void @__sanitizer_cov_trace_pc() #14
  %325 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %326, ptr noundef nonnull @.str.128) #12
  br label %if.then695

if.end499:                                        ; preds = %if.then491
  %327 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %328)
  %cmp501 = icmp eq i32 %328, 9
  br i1 %cmp501, label %if.end499.no_data_attr_special_case_crit_edge, label %if.end504

if.end499.no_data_attr_special_case_crit_edge:    ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_data_attr_special_case

if.end504:                                        ; preds = %if.end499
  %call505 = tail call fastcc i32 @ntfs_is_extended_system_file(ptr noundef nonnull %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call505)
  %cmp506 = icmp sgt i32 %call505, 0
  br i1 %cmp506, label %if.end504.no_data_attr_special_case_crit_edge, label %if.end509

if.end504.no_data_attr_special_case_crit_edge:    ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_data_attr_special_case

if.end509:                                        ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #14
  %329 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %330, ptr noundef nonnull @.str.129) #12
  br label %if.then695

if.end511:                                        ; preds = %if.else479
  %331 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %attr, align 4
  %flags513 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 5
  %333 = ptrtoint ptr %flags513 to i32
  call void @__asan_loadN_noabort(i32 %333, i32 2)
  %334 = load i16, ptr %flags513, align 1
  %conv514 = zext i16 %334 to i32
  %and515 = and i32 %conv514, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and515)
  %tobool516.not = icmp eq i32 %and515, 0
  br i1 %tobool516.not, label %if.end511.if.end545_crit_edge, label %if.then517

if.end511.if.end545_crit_edge:                    ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end545

if.then517:                                       ; preds = %if.end511
  %and520 = and i32 %conv514, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and520)
  %tobool521.not = icmp eq i32 %and520, 0
  br i1 %tobool521.not, label %if.then517.if.end538_crit_edge, label %if.then522

if.then517.if.end538_crit_edge:                   ; preds = %if.then517
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end538

if.then522:                                       ; preds = %if.then517
  %state.i1069 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state.i1069) #12
  %cluster_size523 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 11
  %335 = ptrtoint ptr %cluster_size523 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %cluster_size523, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %336)
  %cmp524 = icmp ugt i32 %336, 4096
  br i1 %cmp524, label %if.then526, label %if.end529

if.then526:                                       ; preds = %if.then522
  call void @__sanitizer_cov_trace_pc() #14
  %337 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %338, ptr noundef nonnull @.str.130, i32 noundef %336) #12
  br label %unm_err_out.thread

if.end529:                                        ; preds = %if.then522
  %339 = ptrtoint ptr %flags513 to i32
  call void @__asan_loadN_noabort(i32 %339, i32 2)
  %340 = load i16, ptr %flags513, align 1
  %341 = and i16 %340, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %341)
  %cmp533.not = icmp eq i16 %341, 256
  br i1 %cmp533.not, label %if.end529.if.end538_crit_edge, label %if.then535

if.end529.if.end538_crit_edge:                    ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end538

if.then535:                                       ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #14
  %342 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %343, ptr noundef nonnull @.str.131) #12
  br label %unm_err_out.thread

if.end538:                                        ; preds = %if.end529.if.end538_crit_edge, %if.then517.if.end538_crit_edge
  %344 = ptrtoint ptr %flags513 to i32
  call void @__asan_loadN_noabort(i32 %344, i32 2)
  %345 = load i16, ptr %flags513, align 1
  %346 = and i16 %345, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %346)
  %tobool542.not = icmp eq i16 %346, 0
  br i1 %tobool542.not, label %if.end538.if.end545_crit_edge, label %if.then543

if.end538.if.end545_crit_edge:                    ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end545

if.then543:                                       ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #14
  %state.i1070 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state.i1070) #12
  br label %if.end545

if.end545:                                        ; preds = %if.then543, %if.end538.if.end545_crit_edge, %if.end511.if.end545_crit_edge
  %347 = ptrtoint ptr %flags513 to i32
  call void @__asan_loadN_noabort(i32 %347, i32 2)
  %348 = load i16, ptr %flags513, align 1
  %349 = and i16 %348, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %349)
  %tobool549.not = icmp eq i16 %349, 0
  br i1 %tobool549.not, label %if.end545.if.end556_crit_edge, label %if.then550

if.end545.if.end556_crit_edge:                    ; preds = %if.end545
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end556

if.then550:                                       ; preds = %if.end545
  %state.i1071 = getelementptr i8, ptr %vi, i32 -464
  %350 = ptrtoint ptr %state.i1071 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load volatile i32, ptr %state.i1071, align 4
  %352 = and i32 %351, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool552.not = icmp eq i32 %352, 0
  br i1 %tobool552.not, label %if.end555, label %if.then553

if.then553:                                       ; preds = %if.then550
  call void @__sanitizer_cov_trace_pc() #14
  %353 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %354, ptr noundef nonnull @.str.132) #12
  br label %unm_err_out.thread

if.end555:                                        ; preds = %if.then550
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state.i1071) #12
  br label %if.end556

if.end556:                                        ; preds = %if.end555, %if.end545.if.end556_crit_edge
  %non_resident557 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 2
  %355 = ptrtoint ptr %non_resident557 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %non_resident557, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool558.not = icmp eq i8 %356, 0
  br i1 %tobool558.not, label %if.else634, label %if.then559

if.then559:                                       ; preds = %if.end556
  %state.i1075 = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i1075) #12
  %357 = ptrtoint ptr %state.i1075 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load volatile i32, ptr %state.i1075, align 4
  %359 = and i32 %358, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool561.not = icmp eq i32 %359, 0
  br i1 %tobool561.not, label %lor.lhs.false562, label %if.then559.if.then565_crit_edge

if.then559.if.then565_crit_edge:                  ; preds = %if.then559
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then565

lor.lhs.false562:                                 ; preds = %if.then559
  %360 = ptrtoint ptr %state.i1075 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load volatile i32, ptr %state.i1075, align 4
  %362 = and i32 %361, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %tobool564.not = icmp eq i32 %362, 0
  br i1 %tobool564.not, label %lor.lhs.false562.if.end615_crit_edge, label %lor.lhs.false562.if.then565_crit_edge

lor.lhs.false562.if.then565_crit_edge:            ; preds = %lor.lhs.false562
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then565

lor.lhs.false562.if.end615_crit_edge:             ; preds = %lor.lhs.false562
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end615

if.then565:                                       ; preds = %lor.lhs.false562.if.then565_crit_edge, %if.then559.if.then565_crit_edge
  %363 = ptrtoint ptr %state.i1075 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load volatile i32, ptr %state.i1075, align 4
  %365 = and i32 %364, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %tobool567.not = icmp eq i32 %365, 0
  br i1 %tobool567.not, label %if.then565.if.end577_crit_edge, label %land.lhs.true

if.then565.if.end577_crit_edge:                   ; preds = %if.then565
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end577

land.lhs.true:                                    ; preds = %if.then565
  %compression_unit = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7, i32 0, i32 3
  %366 = ptrtoint ptr %compression_unit to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %compression_unit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %367)
  %cmp570.not = icmp eq i8 %367, 4
  br i1 %cmp570.not, label %land.lhs.true.if.end577_crit_edge, label %if.then572

land.lhs.true.if.end577_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end577

if.then572:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %conv569 = zext i8 %367 to i32
  %368 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %369, ptr noundef nonnull @.str.133, i32 noundef %conv569) #12
  br label %if.then695

if.end577:                                        ; preds = %land.lhs.true.if.end577_crit_edge, %if.then565.if.end577_crit_edge
  %compression_unit579 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7, i32 0, i32 3
  %370 = ptrtoint ptr %compression_unit579 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %compression_unit579, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %tobool580.not = icmp eq i8 %371, 0
  br i1 %tobool580.not, label %if.else604, label %if.then581

if.then581:                                       ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #14
  %conv584 = zext i8 %371 to i32
  %cluster_size_bits585 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 13
  %372 = ptrtoint ptr %cluster_size_bits585 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %cluster_size_bits585, align 8
  %conv586 = zext i8 %373 to i32
  %add = add nuw nsw i32 %conv586, %conv584
  %shl587 = shl nuw i32 1, %add
  %block_size589 = getelementptr i8, ptr %vi, i32 -112
  %374 = ptrtoint ptr %block_size589 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %shl587, ptr %block_size589, align 8
  %conv595 = trunc i32 %add to i8
  %block_size_bits597 = getelementptr i8, ptr %vi, i32 -108
  %375 = ptrtoint ptr %block_size_bits597 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %conv595, ptr %block_size_bits597, align 4
  %376 = ptrtoint ptr %compression_unit579 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %compression_unit579, align 1
  %conv600 = zext i8 %377 to i32
  %shl601 = shl nuw i32 1, %conv600
  %conv602 = trunc i32 %shl601 to i8
  br label %if.end611

if.else604:                                       ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #14
  %block_size606 = getelementptr i8, ptr %vi, i32 -112
  %378 = ptrtoint ptr %block_size606 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %block_size606, align 8
  %block_size_bits608 = getelementptr i8, ptr %vi, i32 -108
  %379 = ptrtoint ptr %block_size_bits608 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 0, ptr %block_size_bits608, align 4
  br label %if.end611

if.end611:                                        ; preds = %if.else604, %if.then581
  %conv602.sink = phi i8 [ 0, %if.else604 ], [ %conv602, %if.then581 ]
  %380 = getelementptr i8, ptr %vi, i32 -107
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %conv602.sink, ptr %380, align 1
  %compressed_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7, i32 0, i32 8
  %382 = ptrtoint ptr %compressed_size to i32
  call void @__asan_loadN_noabort(i32 %382, i32 8)
  %383 = load i64, ptr %compressed_size, align 1
  %384 = tail call i64 @llvm.bswap.i64(i64 %383) #12
  %itype614 = getelementptr i8, ptr %vi, i32 -120
  %385 = ptrtoint ptr %itype614 to i32
  call void @__asan_store8_noabort(i32 %385)
  store i64 %384, ptr %itype614, align 8
  br label %if.end615

if.end615:                                        ; preds = %if.end611, %lor.lhs.false562.if.end615_crit_edge
  %data616 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7
  %386 = ptrtoint ptr %data616 to i32
  call void @__asan_loadN_noabort(i32 %386, i32 8)
  %387 = load i64, ptr %data616, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %387)
  %tobool618.not = icmp eq i64 %387, 0
  br i1 %tobool618.not, label %if.end621, label %if.then619

if.then619:                                       ; preds = %if.end615
  call void @__sanitizer_cov_trace_pc() #14
  %388 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %389, ptr noundef nonnull @.str.134) #12
  br label %unm_err_out.thread

if.end621:                                        ; preds = %if.end615
  call void @__sanitizer_cov_trace_pc() #14
  %data_size623 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7, i32 0, i32 6
  %390 = ptrtoint ptr %data_size623 to i32
  call void @__asan_loadN_noabort(i32 %390, i32 8)
  %391 = load i64, ptr %data_size623, align 1
  %392 = tail call i64 @llvm.bswap.i64(i64 %391) #12
  %i_size625 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 14
  %393 = ptrtoint ptr %i_size625 to i32
  call void @__asan_store8_noabort(i32 %393)
  store i64 %392, ptr %i_size625, align 8
  %initialized_size627 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7, i32 0, i32 7
  %394 = ptrtoint ptr %initialized_size627 to i32
  call void @__asan_loadN_noabort(i32 %394, i32 8)
  %395 = load i64, ptr %initialized_size627, align 1
  %396 = tail call i64 @llvm.bswap.i64(i64 %395) #12
  %initialized_size629 = getelementptr i8, ptr %vi, i32 -480
  %397 = ptrtoint ptr %initialized_size629 to i32
  call void @__asan_store8_noabort(i32 %397)
  store i64 %396, ptr %initialized_size629, align 8
  %allocated_size631 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7, i32 0, i32 5
  %398 = ptrtoint ptr %allocated_size631 to i32
  call void @__asan_loadN_noabort(i32 %398, i32 8)
  %399 = load i64, ptr %allocated_size631, align 1
  %400 = tail call i64 @llvm.bswap.i64(i64 %399) #12
  %allocated_size633 = getelementptr i8, ptr %vi, i32 -472
  %401 = ptrtoint ptr %allocated_size633 to i32
  call void @__asan_store8_noabort(i32 %401)
  store i64 %400, ptr %allocated_size633, align 8
  br label %no_data_attr_special_case

if.else634:                                       ; preds = %if.end556
  %data635 = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 7
  %402 = ptrtoint ptr %data635 to i32
  call void @__asan_loadN_noabort(i32 %402, i32 4)
  %403 = load i32, ptr %data635, align 1
  %404 = tail call i32 @llvm.bswap.i32(i32 %403)
  %conv637 = zext i32 %404 to i64
  %initialized_size638 = getelementptr i8, ptr %vi, i32 -480
  %405 = ptrtoint ptr %initialized_size638 to i32
  call void @__asan_store8_noabort(i32 %405)
  store i64 %conv637, ptr %initialized_size638, align 8
  %i_size639 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 14
  %406 = ptrtoint ptr %i_size639 to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 %conv637, ptr %i_size639, align 8
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %332, i32 0, i32 1
  %407 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %407, i32 4)
  %408 = load i32, ptr %length, align 1
  %409 = tail call i32 @llvm.bswap.i32(i32 %408)
  %value_offset641 = getelementptr inbounds %struct.anon.78, ptr %data635, i32 0, i32 1
  %410 = ptrtoint ptr %value_offset641 to i32
  call void @__asan_loadN_noabort(i32 %410, i32 2)
  %411 = load i16, ptr %value_offset641, align 1
  %412 = tail call i16 @llvm.bswap.i16(i16 %411)
  %conv642 = zext i16 %412 to i32
  %sub643 = sub i32 %409, %conv642
  %conv644 = zext i32 %sub643 to i64
  %allocated_size645 = getelementptr i8, ptr %vi, i32 -472
  %413 = ptrtoint ptr %allocated_size645 to i32
  call void @__asan_store8_noabort(i32 %413)
  store i64 %conv644, ptr %allocated_size645, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %404, i32 %sub643)
  %cmp648 = icmp ugt i32 %404, %sub643
  br i1 %cmp648, label %if.then650, label %if.else634.no_data_attr_special_case_crit_edge

if.else634.no_data_attr_special_case_crit_edge:   ; preds = %if.else634
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_data_attr_special_case

if.then650:                                       ; preds = %if.else634
  call void @__sanitizer_cov_trace_pc() #14
  %414 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %415, ptr noundef nonnull @.str.135) #12
  br label %unm_err_out.thread

no_data_attr_special_case:                        ; preds = %if.else634.no_data_attr_special_case_crit_edge, %if.end621, %if.end504.no_data_attr_special_case_crit_edge, %if.end499.no_data_attr_special_case_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call8) #12
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #12
  %i_op654 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 7
  %416 = ptrtoint ptr %i_op654 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr @ntfs_file_inode_ops, ptr %i_op654, align 8
  %417 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 44
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr @ntfs_file_ops, ptr %417, align 8
  %i_mapping655 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 9
  %419 = ptrtoint ptr %i_mapping655 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %i_mapping655, align 8
  %a_ops656 = getelementptr inbounds %struct.address_space, ptr %420, i32 0, i32 9
  %421 = ptrtoint ptr %a_ops656 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr @ntfs_normal_aops, ptr %a_ops656, align 4
  %state.i1085 = getelementptr i8, ptr %vi, i32 -464
  %422 = ptrtoint ptr %state.i1085 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load volatile i32, ptr %state.i1085, align 4
  %424 = and i32 %423, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool658.not = icmp eq i32 %424, 0
  br i1 %tobool658.not, label %if.else662, label %no_data_attr_special_case.if.end670.sink.split_crit_edge

no_data_attr_special_case.if.end670.sink.split_crit_edge: ; preds = %no_data_attr_special_case
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end670.sink.split

if.else662:                                       ; preds = %no_data_attr_special_case
  %425 = ptrtoint ptr %state.i1085 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load volatile i32, ptr %state.i1085, align 4
  %427 = and i32 %426, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %427)
  %tobool664.not = icmp eq i32 %427, 0
  br i1 %tobool664.not, label %if.else662.if.end670_crit_edge, label %if.else662.if.end670.sink.split_crit_edge

if.else662.if.end670.sink.split_crit_edge:        ; preds = %if.else662
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end670.sink.split

if.else662.if.end670_crit_edge:                   ; preds = %if.else662
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end670

if.end670.sink.split:                             ; preds = %if.else662.if.end670.sink.split_crit_edge, %no_data_attr_special_case.if.end670.sink.split_crit_edge, %cleanup
  %i_mapping.sink = phi ptr [ %i_mapping, %cleanup ], [ %i_mapping655, %no_data_attr_special_case.if.end670.sink.split_crit_edge ], [ %i_mapping655, %if.else662.if.end670.sink.split_crit_edge ]
  %ntfs_mst_aops.sink = phi ptr [ @ntfs_mst_aops, %cleanup ], [ @ntfs_mst_aops, %no_data_attr_special_case.if.end670.sink.split_crit_edge ], [ @ntfs_compressed_aops, %if.else662.if.end670.sink.split_crit_edge ]
  %428 = ptrtoint ptr %i_mapping.sink to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %i_mapping.sink, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %429, i32 0, i32 9
  %430 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %ntfs_mst_aops.sink, ptr %a_ops, align 4
  br label %if.end670

if.end670:                                        ; preds = %if.end670.sink.split, %if.else662.if.end670_crit_edge
  %431 = ptrtoint ptr %vi to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %vi, align 8
  %433 = and i16 %432, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %433)
  %cmp674 = icmp eq i16 %433, -32768
  br i1 %cmp674, label %land.lhs.true676, label %if.end670.if.else686_crit_edge

if.end670.if.else686_crit_edge:                   ; preds = %if.end670
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else686

land.lhs.true676:                                 ; preds = %if.end670
  %state.i1091 = getelementptr i8, ptr %vi, i32 -464
  %434 = ptrtoint ptr %state.i1091 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load volatile i32, ptr %state.i1091, align 4
  %436 = and i32 %435, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %tobool678.not = icmp eq i32 %436, 0
  br i1 %tobool678.not, label %lor.lhs.false679, label %land.lhs.true676.if.end690_crit_edge

land.lhs.true676.if.end690_crit_edge:             ; preds = %land.lhs.true676
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end690

lor.lhs.false679:                                 ; preds = %land.lhs.true676
  %437 = ptrtoint ptr %state.i1091 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load volatile i32, ptr %state.i1091, align 4
  %439 = and i32 %438, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %tobool681.not = icmp eq i32 %439, 0
  br i1 %tobool681.not, label %lor.lhs.false679.if.else686_crit_edge, label %lor.lhs.false679.if.end690_crit_edge

lor.lhs.false679.if.end690_crit_edge:             ; preds = %lor.lhs.false679
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end690

lor.lhs.false679.if.else686_crit_edge:            ; preds = %lor.lhs.false679
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else686

if.else686:                                       ; preds = %lor.lhs.false679.if.else686_crit_edge, %if.end670.if.else686_crit_edge
  br label %if.end690

if.end690:                                        ; preds = %if.else686, %lor.lhs.false679.if.end690_crit_edge, %land.lhs.true676.if.end690_crit_edge
  %.sink1153 = phi i32 [ -472, %if.else686 ], [ -120, %lor.lhs.false679.if.end690_crit_edge ], [ -120, %land.lhs.true676.if.end690_crit_edge ]
  %allocated_size687 = getelementptr i8, ptr %vi, i32 %.sink1153
  %440 = ptrtoint ptr %allocated_size687 to i32
  call void @__asan_load8_noabort(i32 %440)
  %441 = load i64, ptr %allocated_size687, align 8
  %shr688 = ashr i64 %441, 9
  %i_blocks689 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 22
  %442 = ptrtoint ptr %i_blocks689 to i32
  call void @__asan_store8_noabort(i32 %442)
  store i64 %shr688, ptr %i_blocks689, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1158, ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef nonnull @.str.38) #12
  br label %cleanup709

iput_unm_err_out:                                 ; preds = %if.then470, %if.then460
  tail call void @iput(ptr noundef %call445) #12
  br label %unm_err_out.thread

unm_err_out:                                      ; preds = %if.then447, %if.else377, %if.then202.unm_err_out_crit_edge, %if.then153, %if.then98, %if.end60.unm_err_out_crit_edge
  %m.2 = phi ptr [ %call3, %if.then98 ], [ %call3, %if.then153 ], [ %call3, %if.end60.unm_err_out_crit_edge ], [ %call3, %if.else377 ], [ %call3, %if.then202.unm_err_out_crit_edge ], [ null, %if.then447 ]
  %ctx.2 = phi ptr [ %call8, %if.then98 ], [ %call8, %if.then153 ], [ %call8, %if.end60.unm_err_out_crit_edge ], [ %call8, %if.else377 ], [ %call8, %if.then202.unm_err_out_crit_edge ], [ null, %if.then447 ]
  %err.2 = phi i32 [ %call87, %if.then98 ], [ %139, %if.then153 ], [ %call61, %if.end60.unm_err_out_crit_edge ], [ %call364, %if.else377 ], [ %call203, %if.then202.unm_err_out_crit_edge ], [ %299, %if.then447 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool691.not = icmp eq i32 %err.2, 0
  br i1 %tobool691.not, label %unm_err_out.unm_err_out.thread_crit_edge, label %unm_err_out.unm_err_out.thread1123_crit_edge

unm_err_out.unm_err_out.thread1123_crit_edge:     ; preds = %unm_err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out.thread1123

unm_err_out.unm_err_out.thread_crit_edge:         ; preds = %unm_err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out.thread

unm_err_out.thread:                               ; preds = %unm_err_out.unm_err_out.thread_crit_edge, %iput_unm_err_out, %if.then650, %if.then619, %if.then553, %if.then535, %if.then526, %if.then431, %if.then425, %if.then418, %if.then411, %if.then404, %if.then384, %if.then312, %if.then300, %if.then295, %if.then290, %if.then283, %if.then261, %if.then243, %if.then227, %if.then185, %if.then146, %if.then126, %if.then113, %if.then78, %if.then16, %if.then12
  %ctx.21120 = phi ptr [ %ctx.2, %unm_err_out.unm_err_out.thread_crit_edge ], [ %call8, %if.then12 ], [ %call8, %if.then185 ], [ %call8, %if.then146 ], [ %call8, %if.then126 ], [ %call8, %if.then113 ], [ %call8, %if.then650 ], [ %call8, %if.then619 ], [ %call8, %if.then553 ], [ %call8, %if.then535 ], [ %call8, %if.then526 ], [ null, %iput_unm_err_out ], [ %call8, %if.then78 ], [ %call8, %if.then16 ], [ %call8, %if.then384 ], [ %call8, %if.then431 ], [ %call8, %if.then425 ], [ %call8, %if.then418 ], [ %call8, %if.then411 ], [ %call8, %if.then404 ], [ %call8, %if.then312 ], [ %call8, %if.then300 ], [ %call8, %if.then295 ], [ %call8, %if.then290 ], [ %call8, %if.then283 ], [ %call8, %if.then261 ], [ %call8, %if.then243 ], [ %call8, %if.then227 ]
  %m.21118 = phi ptr [ %m.2, %unm_err_out.unm_err_out.thread_crit_edge ], [ %call3, %if.then12 ], [ %call3, %if.then185 ], [ %call3, %if.then146 ], [ %call3, %if.then126 ], [ %call3, %if.then113 ], [ %call3, %if.then650 ], [ %call3, %if.then619 ], [ %call3, %if.then553 ], [ %call3, %if.then535 ], [ %call3, %if.then526 ], [ null, %iput_unm_err_out ], [ %call3, %if.then78 ], [ %call3, %if.then16 ], [ %call3, %if.then384 ], [ %call3, %if.then431 ], [ %call3, %if.then425 ], [ %call3, %if.then418 ], [ %call3, %if.then411 ], [ %call3, %if.then404 ], [ %call3, %if.then312 ], [ %call3, %if.then300 ], [ %call3, %if.then295 ], [ %call3, %if.then290 ], [ %call3, %if.then283 ], [ %call3, %if.then261 ], [ %call3, %if.then243 ], [ %call3, %if.then227 ]
  br label %unm_err_out.thread1123

unm_err_out.thread1123:                           ; preds = %unm_err_out.thread, %unm_err_out.unm_err_out.thread1123_crit_edge
  %ctx.21119 = phi ptr [ %ctx.21120, %unm_err_out.thread ], [ %ctx.2, %unm_err_out.unm_err_out.thread1123_crit_edge ]
  %m.21117 = phi ptr [ %m.21118, %unm_err_out.thread ], [ %m.2, %unm_err_out.unm_err_out.thread1123_crit_edge ]
  %443 = phi i32 [ -5, %unm_err_out.thread ], [ %err.2, %unm_err_out.unm_err_out.thread1123_crit_edge ]
  %tobool694.not = icmp eq ptr %ctx.21119, null
  br i1 %tobool694.not, label %unm_err_out.thread1123.if.end696_crit_edge, label %unm_err_out.thread1123.if.then695_crit_edge

unm_err_out.thread1123.if.then695_crit_edge:      ; preds = %unm_err_out.thread1123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then695

unm_err_out.thread1123.if.end696_crit_edge:       ; preds = %unm_err_out.thread1123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end696

if.then695:                                       ; preds = %unm_err_out.thread1123.if.then695_crit_edge, %if.then572, %if.end509, %if.then497, %if.then375, %if.then330, %if.then321, %if.then214, %if.then169, %if.then138, %if.then68
  %444 = phi i32 [ %443, %unm_err_out.thread1123.if.then695_crit_edge ], [ -2, %if.then68 ], [ %call483, %if.then497 ], [ -2, %if.end509 ], [ -95, %if.then572 ], [ %call167, %if.then169 ], [ -12, %if.then138 ], [ -95, %if.then321 ], [ -95, %if.then330 ], [ -2, %if.then214 ], [ -2, %if.then375 ]
  %m.211171144 = phi ptr [ %m.21117, %unm_err_out.thread1123.if.then695_crit_edge ], [ %call3, %if.then68 ], [ %call3, %if.then497 ], [ %call3, %if.end509 ], [ %call3, %if.then572 ], [ %call3, %if.then169 ], [ %call3, %if.then138 ], [ %call3, %if.then321 ], [ %call3, %if.then330 ], [ %call3, %if.then214 ], [ %call3, %if.then375 ]
  %ctx.211191143 = phi ptr [ %ctx.21119, %unm_err_out.thread1123.if.then695_crit_edge ], [ %call8, %if.then68 ], [ %call8, %if.then497 ], [ %call8, %if.end509 ], [ %call8, %if.then572 ], [ %call8, %if.then169 ], [ %call8, %if.then138 ], [ %call8, %if.then321 ], [ %call8, %if.then330 ], [ %call8, %if.then214 ], [ %call8, %if.then375 ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.211191143) #12
  br label %if.end696

if.end696:                                        ; preds = %if.then695, %unm_err_out.thread1123.if.end696_crit_edge, %if.end7.if.end696_crit_edge
  %445 = phi i32 [ %444, %if.then695 ], [ %443, %unm_err_out.thread1123.if.end696_crit_edge ], [ -12, %if.end7.if.end696_crit_edge ]
  %m.211171145 = phi ptr [ %m.211171144, %if.then695 ], [ %m.21117, %unm_err_out.thread1123.if.end696_crit_edge ], [ %call3, %if.end7.if.end696_crit_edge ]
  %tobool697.not = icmp eq ptr %m.211171145, null
  br i1 %tobool697.not, label %if.end696.err_out_crit_edge, label %if.then698

if.end696.err_out_crit_edge:                      ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.then698:                                       ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #12
  br label %err_out

err_out:                                          ; preds = %if.then698, %if.end696.err_out_crit_edge, %if.then5
  %err.4 = phi i32 [ %20, %if.then5 ], [ %445, %if.then698 ], [ %445, %if.end696.err_out_crit_edge ]
  %446 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %3, align 8
  %448 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %447, ptr noundef nonnull @.str.136, i32 noundef %err.4, i32 noundef %449) #12
  tail call void @make_bad_inode(ptr noundef %vi) #12
  %450 = zext i32 %err.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %450, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %err.4, label %if.then707 [
    i32 -95, label %err_out.cleanup709_crit_edge
    i32 -12, label %err_out.cleanup709_crit_edge1154
  ]

err_out.cleanup709_crit_edge1154:                 ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup709

err_out.cleanup709_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup709

if.then707:                                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #12
  br label %cleanup709

cleanup709:                                       ; preds = %if.then707, %err_out.cleanup709_crit_edge, %err_out.cleanup709_crit_edge1154, %if.end690
  %retval.0 = phi i32 [ 0, %if.end690 ], [ %err.4, %err_out.cleanup709_crit_edge ], [ %err.4, %err_out.cleanup709_crit_edge1154 ], [ %err.4, %if.then707 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_attr_iget(ptr noundef %base_vi, i32 noundef %type, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #2 align 64 {
entry:
  %na = alloca %struct.ntfs_attr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %na) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %type)
  %cmp = icmp eq i32 %type, -1610612736
  br i1 %cmp, label %do.body2, label %do.end7, !prof !370

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #12, !srcloc !379
  unreachable

do.end7:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 3
  %1 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  %5 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %na, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %type, ptr %0, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %name_len, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %call = call ptr @iget5_locked(ptr noundef %10, i32 noundef %4, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull @ntfs_init_locked_inode, ptr noundef nonnull %na) #12
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %do.end7.cleanup_crit_edge, label %if.end23, !prof !370

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %do.end7
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i, align 8
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1209, ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef nonnull @.str.92, i32 noundef %18) #12
  %add.ptr.i.i.i = getelementptr i8, ptr %call, i32 -528
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.160, i32 noundef 274, ptr noundef nonnull @__func__.ntfs_init_big_inode, ptr noundef nonnull @.str.1) #12
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  call void @__ntfs_init_inode(ptr noundef %20, ptr noundef %add.ptr.i.i.i) #12
  %21 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i, align 8
  %mft_no.i.i = getelementptr i8, ptr %call, i32 -460
  %23 = ptrtoint ptr %mft_no.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mft_no.i.i, align 4
  %add.ptr.i409.i = getelementptr i8, ptr %base_vi, i32 -528
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_uid3.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 2
  %24 = ptrtoint ptr %i_uid3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_uid3.i, align 4
  %26 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %i_gid4.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 3
  %27 = ptrtoint ptr %i_gid4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_gid4.i, align 8
  %29 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %i_gid.i, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 12
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef %32) #12
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_mtime5.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 16
  %33 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime5.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %i_ctime6.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 17
  %34 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime6.i, i32 16)
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_atime7.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 15
  %35 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime7.i, i32 16)
  %seq_no.i = getelementptr i8, ptr %base_vi, i32 -456
  %36 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %seq_no.i, align 8
  %seq_no8.i = getelementptr i8, ptr %call, i32 -456
  %38 = ptrtoint ptr %seq_no8.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %seq_no8.i, align 8
  %conv.i = zext i16 %37 to i32
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %39 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %i_generation.i, align 8
  %40 = ptrtoint ptr %base_vi to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %base_vi, align 8
  %42 = and i16 %41, 4095
  %43 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %call, align 8
  %call12.i = call ptr @map_mft_record(ptr noundef %add.ptr.i409.i) #12
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %call12.i to i32
  br label %err_out.i

if.end.i:                                         ; preds = %if.then25
  %call15.i = call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i409.i, ptr noundef %call12.i) #12
  %tobool.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end259.i_crit_edge, label %if.end17.i

if.end.i.if.end259.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end259.i

if.end17.i:                                       ; preds = %if.end.i
  %type.i = getelementptr i8, ptr %call, i32 -444
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i, align 4
  %name.i = getelementptr i8, ptr %call, i32 -440
  %47 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name.i, align 8
  %name_len.i = getelementptr i8, ptr %call, i32 -436
  %49 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %name_len.i, align 4
  %call18.i = call i32 @ntfs_attr_lookup(i32 noundef %46, ptr noundef %48, i32 noundef %50, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call15.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end23.i, label %if.end17.i.if.then258.i_crit_edge, !prof !369

if.end17.i.if.then258.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then258.i

if.end23.i:                                       ; preds = %if.end17.i
  %attr.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call15.i, i32 0, i32 1
  %51 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %attr.i, align 4
  %flags.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %flags.i, align 1
  %conv24.i = zext i16 %54 to i32
  %and25.i = and i32 %conv24.i, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end75.i_crit_edge, label %if.then27.i

if.end23.i.if.end75.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then27.i:                                      ; preds = %if.end23.i
  %and30.i = and i32 %conv24.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then27.i.if.end57.i_crit_edge, label %if.then32.i

if.then27.i.if.end57.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then32.i:                                      ; preds = %if.then27.i
  %state.i.i = getelementptr i8, ptr %call, i32 -464
  call void @_set_bit(i32 noundef 6, ptr noundef %state.i.i) #12
  %55 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %56)
  %cmp.not.i = icmp eq i32 %56, -2147483648
  br i1 %cmp.not.i, label %land.lhs.true.i, label %if.then32.i.if.then40.i_crit_edge

if.then32.i.if.then40.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40.i

land.lhs.true.i:                                  ; preds = %if.then32.i
  %57 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %name_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool39.not.i = icmp eq i32 %58, 0
  br i1 %tobool39.not.i, label %if.end42.i, label %land.lhs.true.i.if.then40.i_crit_edge

land.lhs.true.i.if.then40.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40.i

if.then40.i:                                      ; preds = %land.lhs.true.i.if.then40.i_crit_edge, %if.then32.i.if.then40.i_crit_edge
  %59 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %60, ptr noundef nonnull @.str.142) #12
  br label %if.then258.i

if.end42.i:                                       ; preds = %land.lhs.true.i
  %cluster_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 11
  %61 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cluster_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %62)
  %cmp43.i = icmp ugt i32 %62, 4096
  br i1 %cmp43.i, label %if.then45.i, label %if.end48.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %64, ptr noundef nonnull @.str.143, i32 noundef %62) #12
  br label %if.then258.i

if.end48.i:                                       ; preds = %if.end42.i
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %flags.i, align 1
  %67 = and i16 %66, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %67)
  %cmp52.not.i = icmp eq i16 %67, 256
  br i1 %cmp52.not.i, label %if.end48.i.if.end57.i_crit_edge, label %if.then54.i

if.end48.i.if.end57.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %69, ptr noundef nonnull @.str.144) #12
  br label %if.then258.i

if.end57.i:                                       ; preds = %if.end48.i.if.end57.i_crit_edge, %if.then27.i.if.end57.i_crit_edge
  %state.i410.i = getelementptr i8, ptr %call, i32 -464
  %70 = ptrtoint ptr %state.i410.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %state.i410.i, align 4
  %72 = and i32 %71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool59.not.i = icmp eq i32 %72, 0
  br i1 %tobool59.not.i, label %if.end57.i.if.end68.i_crit_edge, label %land.lhs.true60.i

if.end57.i.if.end68.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

land.lhs.true60.i:                                ; preds = %if.end57.i
  %73 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048192, i32 %74)
  %cmp62.not.i = icmp eq i32 %74, -1879048192
  br i1 %cmp62.not.i, label %land.lhs.true60.i.if.end68.i_crit_edge, label %if.then64.i

land.lhs.true60.i.if.end68.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.then64.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb.i, align 4
  %77 = ptrtoint ptr %state.i410.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %state.i410.i, align 4
  %79 = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool67.not.i = icmp eq i32 %79, 0
  %cond.i = select i1 %tobool67.not.i, ptr @.str.146, ptr @.str.67
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %76, ptr noundef nonnull @.str.145, ptr noundef nonnull %cond.i) #12
  br label %if.then258.i

if.end68.i:                                       ; preds = %land.lhs.true60.i.if.end68.i_crit_edge, %if.end57.i.if.end68.i_crit_edge
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %flags.i, align 1
  %82 = and i16 %81, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool72.not.i = icmp eq i16 %82, 0
  br i1 %tobool72.not.i, label %if.end68.i.if.end75.i_crit_edge, label %if.then73.i

if.end68.i.if.end75.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then73.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 8, ptr noundef %state.i410.i) #12
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then73.i, %if.end68.i.if.end75.i_crit_edge, %if.end23.i.if.end75.i_crit_edge
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %flags.i, align 1
  %85 = and i16 %84, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool79.not.i = icmp eq i16 %85, 0
  br i1 %tobool79.not.i, label %if.end75.i.if.end101.i_crit_edge, label %if.then80.i

if.end75.i.if.end101.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i

if.then80.i:                                      ; preds = %if.end75.i
  %state.i415.i = getelementptr i8, ptr %call, i32 -464
  %86 = ptrtoint ptr %state.i415.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %state.i415.i, align 4
  %88 = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool82.not.i = icmp eq i32 %88, 0
  br i1 %tobool82.not.i, label %if.end85.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %90, ptr noundef nonnull @.str.132) #12
  br label %if.then258.i

if.end85.i:                                       ; preds = %if.then80.i
  %91 = ptrtoint ptr %state.i415.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %state.i415.i, align 4
  %93 = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool87.not.i = icmp eq i32 %93, 0
  %94 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr.i = load i32, ptr %type.i, align 4
  br i1 %tobool87.not.i, label %if.end94.i, label %land.lhs.true88.i

land.lhs.true88.i:                                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048192, i32 %.pr.i)
  %cmp90.not.i = icmp eq i32 %.pr.i, -1879048192
  br i1 %cmp90.not.i, label %land.lhs.true88.i.if.then98.i_crit_edge, label %if.then92.i

land.lhs.true88.i.if.then98.i_crit_edge:          ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98.i

if.then92.i:                                      ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %96, ptr noundef nonnull @.str.147) #12
  br label %if.then258.i

if.end94.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %.pr.i)
  %cmp96.not.i = icmp eq i32 %.pr.i, -2147483648
  br i1 %cmp96.not.i, label %if.end100.i, label %if.end94.i.if.then98.i_crit_edge

if.end94.i.if.then98.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98.i

if.then98.i:                                      ; preds = %if.end94.i.if.then98.i_crit_edge, %land.lhs.true88.i.if.then98.i_crit_edge
  %97 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %98, ptr noundef nonnull @.str.148) #12
  br label %if.then258.i

if.end100.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 7, ptr noundef %state.i415.i) #12
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.end100.i, %if.end75.i.if.end101.i_crit_edge
  %non_resident.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 2
  %99 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool102.not.i = icmp eq i8 %100, 0
  br i1 %tobool102.not.i, label %if.then103.i, label %if.else.i

if.then103.i:                                     ; preds = %if.end101.i
  %name_length.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 3
  %101 = ptrtoint ptr %name_length.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %name_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool105.not.i = icmp eq i8 %102, 0
  br i1 %tobool105.not.i, label %if.then103.i.if.end117.i_crit_edge, label %land.rhs.i

if.then103.i.if.end117.i_crit_edge:               ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117.i

land.rhs.i:                                       ; preds = %if.then103.i
  %name_offset.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 4
  %103 = ptrtoint ptr %name_offset.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %name_offset.i, align 1
  %105 = call i16 @llvm.bswap.i16(i16 %104) #12
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7
  %value_offset.i = getelementptr inbounds %struct.anon.78, ptr %data.i, i32 0, i32 1
  %106 = ptrtoint ptr %value_offset.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %value_offset.i, align 1
  %108 = call i16 @llvm.bswap.i16(i16 %107) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %108)
  %cmp108.not.i = icmp ult i16 %105, %108
  br i1 %cmp108.not.i, label %land.rhs.i.if.end117.i_crit_edge, label %if.then116.i, !prof !369

land.rhs.i.if.end117.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117.i

if.then116.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %110, ptr noundef nonnull @.str.149) #12
  br label %if.then258.i

if.end117.i:                                      ; preds = %land.rhs.i.if.end117.i_crit_edge, %if.then103.i.if.end117.i_crit_edge
  %state.i422.i = getelementptr i8, ptr %call, i32 -464
  %111 = ptrtoint ptr %state.i422.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %state.i422.i, align 4
  %113 = and i32 %112, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool119.not.i = icmp eq i32 %113, 0
  br i1 %tobool119.not.i, label %if.end122.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %115, ptr noundef nonnull @.str.150) #12
  br label %if.then258.i

if.end122.i:                                      ; preds = %if.end117.i
  %data123.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7
  %116 = ptrtoint ptr %data123.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %data123.i, align 1
  %118 = call i32 @llvm.bswap.i32(i32 %117) #12
  %conv124.i = zext i32 %118 to i64
  %initialized_size.i = getelementptr i8, ptr %call, i32 -480
  %119 = ptrtoint ptr %initialized_size.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv124.i, ptr %initialized_size.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %120 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv124.i, ptr %i_size.i, align 8
  %length.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 1
  %121 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %length.i, align 1
  %123 = call i32 @llvm.bswap.i32(i32 %122) #12
  %value_offset126.i = getelementptr inbounds %struct.anon.78, ptr %data123.i, i32 0, i32 1
  %124 = ptrtoint ptr %value_offset126.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %value_offset126.i, align 1
  %126 = call i16 @llvm.bswap.i16(i16 %125) #12
  %conv127.i = zext i16 %126 to i32
  %sub.i = sub i32 %123, %conv127.i
  %conv128.i = zext i32 %sub.i to i64
  %allocated_size.i = getelementptr i8, ptr %call, i32 -472
  %127 = ptrtoint ptr %allocated_size.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv128.i, ptr %allocated_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %sub.i)
  %cmp131.i = icmp ugt i32 %118, %sub.i
  br i1 %cmp131.i, label %if.then133.i, label %if.end122.i.if.end222.i_crit_edge

if.end122.i.if.end222.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end222.i

if.then133.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %129, ptr noundef nonnull @.str.151) #12
  br label %if.then258.i

if.else.i:                                        ; preds = %if.end101.i
  %state.i425.i = getelementptr i8, ptr %call, i32 -464
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i425.i) #12
  %name_length136.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 3
  %130 = ptrtoint ptr %name_length136.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %name_length136.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool138.not.i = icmp eq i8 %131, 0
  br i1 %tobool138.not.i, label %if.else.i.if.end155.i_crit_edge, label %land.rhs139.i

if.else.i.if.end155.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155.i

land.rhs139.i:                                    ; preds = %if.else.i
  %name_offset140.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 4
  %132 = ptrtoint ptr %name_offset140.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %name_offset140.i, align 1
  %134 = call i16 @llvm.bswap.i16(i16 %133) #12
  %mapping_pairs_offset.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7, i32 0, i32 2
  %135 = ptrtoint ptr %mapping_pairs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %mapping_pairs_offset.i, align 1
  %137 = call i16 @llvm.bswap.i16(i16 %136) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %134, i16 %137)
  %cmp144.not.i = icmp ult i16 %134, %137
  br i1 %cmp144.not.i, label %land.rhs139.i.if.end155.i_crit_edge, label %if.then153.i, !prof !369

land.rhs139.i.if.end155.i_crit_edge:              ; preds = %land.rhs139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155.i

if.then153.i:                                     ; preds = %land.rhs139.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %139, ptr noundef nonnull @.str.152) #12
  br label %if.then258.i

if.end155.i:                                      ; preds = %land.rhs139.i.if.end155.i_crit_edge, %if.else.i.if.end155.i_crit_edge
  %140 = ptrtoint ptr %state.i425.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %state.i425.i, align 4
  %142 = and i32 %141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool157.not.i = icmp eq i32 %142, 0
  br i1 %tobool157.not.i, label %lor.lhs.false158.i, label %if.end155.i.if.then161.i_crit_edge

if.end155.i.if.then161.i_crit_edge:               ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then161.i

lor.lhs.false158.i:                               ; preds = %if.end155.i
  %143 = ptrtoint ptr %state.i425.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %state.i425.i, align 4
  %145 = and i32 %144, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool160.not.i = icmp eq i32 %145, 0
  br i1 %tobool160.not.i, label %lor.lhs.false158.i.if.end205.i_crit_edge, label %lor.lhs.false158.i.if.then161.i_crit_edge

lor.lhs.false158.i.if.then161.i_crit_edge:        ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then161.i

lor.lhs.false158.i.if.end205.i_crit_edge:         ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205.i

if.then161.i:                                     ; preds = %lor.lhs.false158.i.if.then161.i_crit_edge, %if.end155.i.if.then161.i_crit_edge
  %146 = ptrtoint ptr %state.i425.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %state.i425.i, align 4
  %148 = and i32 %147, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool163.not.i = icmp eq i32 %148, 0
  br i1 %tobool163.not.i, label %if.then161.i.if.end174.i_crit_edge, label %land.lhs.true164.i

if.then161.i.if.end174.i_crit_edge:               ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.i

land.lhs.true164.i:                               ; preds = %if.then161.i
  %compression_unit.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7, i32 0, i32 3
  %149 = ptrtoint ptr %compression_unit.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %compression_unit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %150)
  %cmp167.not.i = icmp eq i8 %150, 4
  br i1 %cmp167.not.i, label %land.lhs.true164.i.if.end174.i_crit_edge, label %if.then169.i

land.lhs.true164.i.if.end174.i_crit_edge:         ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.i

if.then169.i:                                     ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv166.i = zext i8 %150 to i32
  %151 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %152, ptr noundef nonnull @.str.133, i32 noundef %conv166.i) #12
  br label %if.then258.i

if.end174.i:                                      ; preds = %land.lhs.true164.i.if.end174.i_crit_edge, %if.then161.i.if.end174.i_crit_edge
  %compression_unit176.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7, i32 0, i32 3
  %153 = ptrtoint ptr %compression_unit176.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %compression_unit176.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool177.not.i = icmp eq i8 %154, 0
  br i1 %tobool177.not.i, label %if.else194.i, label %if.then178.i

if.then178.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv181.i = zext i8 %154 to i32
  %cluster_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 13
  %155 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %cluster_size_bits.i, align 8
  %conv182.i = zext i8 %156 to i32
  %add.i = add nuw nsw i32 %conv182.i, %conv181.i
  %shl.i = shl nuw i32 1, %add.i
  %block_size.i = getelementptr i8, ptr %call, i32 -112
  %157 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %shl.i, ptr %block_size.i, align 8
  %conv186.i = trunc i32 %add.i to i8
  %block_size_bits.i = getelementptr i8, ptr %call, i32 -108
  %158 = ptrtoint ptr %block_size_bits.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv186.i, ptr %block_size_bits.i, align 4
  %159 = ptrtoint ptr %compression_unit176.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %compression_unit176.i, align 1
  %conv190.i = zext i8 %160 to i32
  %shl191.i = shl nuw i32 1, %conv190.i
  %conv192.i = trunc i32 %shl191.i to i8
  br label %if.end201.i

if.else194.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  %block_size196.i = getelementptr i8, ptr %call, i32 -112
  %161 = ptrtoint ptr %block_size196.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %block_size196.i, align 8
  %block_size_bits198.i = getelementptr i8, ptr %call, i32 -108
  %162 = ptrtoint ptr %block_size_bits198.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %block_size_bits198.i, align 4
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.else194.i, %if.then178.i
  %conv192.sink.i = phi i8 [ 0, %if.else194.i ], [ %conv192.i, %if.then178.i ]
  %163 = getelementptr i8, ptr %call, i32 -107
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv192.sink.i, ptr %163, align 1
  %compressed_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7, i32 0, i32 8
  %165 = ptrtoint ptr %compressed_size.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 8)
  %166 = load i64, ptr %compressed_size.i, align 1
  %167 = call i64 @llvm.bswap.i64(i64 %166) #12
  %itype204.i = getelementptr i8, ptr %call, i32 -120
  %168 = ptrtoint ptr %itype204.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %itype204.i, align 8
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.end201.i, %lor.lhs.false158.i.if.end205.i_crit_edge
  %data206.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7
  %169 = ptrtoint ptr %data206.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 8)
  %170 = load i64, ptr %data206.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %170)
  %tobool207.not.i = icmp eq i64 %170, 0
  br i1 %tobool207.not.i, label %if.end210.i, label %if.then208.i

if.then208.i:                                     ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %172, ptr noundef nonnull @.str.153) #12
  br label %if.then258.i

if.end210.i:                                      ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #14
  %data_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7, i32 0, i32 6
  %173 = ptrtoint ptr %data_size.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 8)
  %174 = load i64, ptr %data_size.i, align 1
  %175 = call i64 @llvm.bswap.i64(i64 %174) #12
  %i_size213.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %176 = ptrtoint ptr %i_size213.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %i_size213.i, align 8
  %initialized_size215.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7, i32 0, i32 7
  %177 = ptrtoint ptr %initialized_size215.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 8)
  %178 = load i64, ptr %initialized_size215.i, align 1
  %179 = call i64 @llvm.bswap.i64(i64 %178) #12
  %initialized_size217.i = getelementptr i8, ptr %call, i32 -480
  %180 = ptrtoint ptr %initialized_size217.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %initialized_size217.i, align 8
  %allocated_size219.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %52, i32 0, i32 7, i32 0, i32 5
  %181 = ptrtoint ptr %allocated_size219.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 8)
  %182 = load i64, ptr %allocated_size219.i, align 1
  %183 = call i64 @llvm.bswap.i64(i64 %182) #12
  %allocated_size221.i = getelementptr i8, ptr %call, i32 -472
  %184 = ptrtoint ptr %allocated_size221.i to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %183, ptr %allocated_size221.i, align 8
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.end210.i, %if.end122.i.if.end222.i_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %185 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %186, i32 0, i32 9
  %187 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @ntfs_normal_aops, ptr %a_ops.i, align 4
  %state.i435.i = getelementptr i8, ptr %call, i32 -464
  %188 = ptrtoint ptr %state.i435.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %state.i435.i, align 4
  %190 = and i32 %189, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool224.not.i = icmp eq i32 %190, 0
  br i1 %tobool224.not.i, label %if.else228.i, label %if.end222.i.if.end235.sink.split.i_crit_edge

if.end222.i.if.end235.sink.split.i_crit_edge:     ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235.sink.split.i

if.else228.i:                                     ; preds = %if.end222.i
  %191 = ptrtoint ptr %state.i435.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %state.i435.i, align 4
  %193 = and i32 %192, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool230.not.i = icmp eq i32 %193, 0
  br i1 %tobool230.not.i, label %if.else228.i.if.end235.i_crit_edge, label %if.else228.i.if.end235.sink.split.i_crit_edge

if.else228.i.if.end235.sink.split.i_crit_edge:    ; preds = %if.else228.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235.sink.split.i

if.else228.i.if.end235.i_crit_edge:               ; preds = %if.else228.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235.i

if.end235.sink.split.i:                           ; preds = %if.else228.i.if.end235.sink.split.i_crit_edge, %if.end222.i.if.end235.sink.split.i_crit_edge
  %ntfs_compressed_aops.sink.i = phi ptr [ @ntfs_mst_aops, %if.end222.i.if.end235.sink.split.i_crit_edge ], [ @ntfs_compressed_aops, %if.else228.i.if.end235.sink.split.i_crit_edge ]
  %194 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %i_mapping.i, align 8
  %a_ops233.i = getelementptr inbounds %struct.address_space, ptr %195, i32 0, i32 9
  %196 = ptrtoint ptr %a_ops233.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %ntfs_compressed_aops.sink.i, ptr %a_ops233.i, align 4
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.end235.sink.split.i, %if.else228.i.if.end235.i_crit_edge
  %197 = ptrtoint ptr %state.i435.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %state.i435.i, align 4
  %199 = and i32 %198, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool237.not.i = icmp eq i32 %199, 0
  br i1 %tobool237.not.i, label %lor.lhs.false238.i, label %if.end235.i.land.lhs.true241.i_crit_edge

if.end235.i.land.lhs.true241.i_crit_edge:         ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true241.i

lor.lhs.false238.i:                               ; preds = %if.end235.i
  %200 = ptrtoint ptr %state.i435.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %state.i435.i, align 4
  %202 = and i32 %201, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool240.not.i = icmp eq i32 %202, 0
  br i1 %tobool240.not.i, label %lor.lhs.false238.i.if.else248.i_crit_edge, label %lor.lhs.false238.i.land.lhs.true241.i_crit_edge

lor.lhs.false238.i.land.lhs.true241.i_crit_edge:  ; preds = %lor.lhs.false238.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true241.i

lor.lhs.false238.i.if.else248.i_crit_edge:        ; preds = %lor.lhs.false238.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else248.i

land.lhs.true241.i:                               ; preds = %lor.lhs.false238.i.land.lhs.true241.i_crit_edge, %if.end235.i.land.lhs.true241.i_crit_edge
  %203 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048192, i32 %204)
  %cmp243.not.i = icmp eq i32 %204, -1879048192
  br i1 %cmp243.not.i, label %land.lhs.true241.i.if.else248.i_crit_edge, label %land.lhs.true241.i.if.end27.thread51_crit_edge

land.lhs.true241.i.if.end27.thread51_crit_edge:   ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.thread51

land.lhs.true241.i.if.else248.i_crit_edge:        ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else248.i

if.else248.i:                                     ; preds = %land.lhs.true241.i.if.else248.i_crit_edge, %lor.lhs.false238.i.if.else248.i_crit_edge
  br label %if.end27.thread51

if.end27.thread51:                                ; preds = %if.else248.i, %land.lhs.true241.i.if.end27.thread51_crit_edge
  %.sink.i = phi i32 [ -472, %if.else248.i ], [ -120, %land.lhs.true241.i.if.end27.thread51_crit_edge ]
  %allocated_size249.i = getelementptr i8, ptr %call, i32 %.sink.i
  %205 = ptrtoint ptr %allocated_size249.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %allocated_size249.i, align 8
  %shr250.i = ashr i64 %206, 9
  %i_blocks251.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %207 = ptrtoint ptr %i_blocks251.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %shr250.i, ptr %i_blocks251.i, align 8
  %call253.i = call ptr @igrab(ptr noundef %base_vi) #12
  %ext.i = getelementptr i8, ptr %call, i32 -8
  %208 = ptrtoint ptr %ext.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %add.ptr.i409.i, ptr %ext.i, align 8
  %nr_extents.i = getelementptr i8, ptr %call, i32 -12
  %209 = ptrtoint ptr %nr_extents.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 -1, ptr %nr_extents.i, align 4
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call15.i) #12
  call void @unmap_mft_record(ptr noundef %add.ptr.i409.i) #12
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1411, ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef nonnull @.str.38) #12
  call void @unlock_new_inode(ptr noundef nonnull %call) #12
  br label %cleanup

if.then258.i:                                     ; preds = %if.then208.i, %if.then169.i, %if.then153.i, %if.then133.i, %if.then120.i, %if.then116.i, %if.then98.i, %if.then92.i, %if.then83.i, %if.then64.i, %if.then54.i, %if.then45.i, %if.then40.i, %if.end17.i.if.then258.i_crit_edge
  %.ph.i = phi i32 [ -5, %if.then133.i ], [ -5, %if.then120.i ], [ -5, %if.then116.i ], [ -5, %if.then208.i ], [ -5, %if.then153.i ], [ -5, %if.then98.i ], [ -5, %if.then92.i ], [ -5, %if.then83.i ], [ -5, %if.then64.i ], [ -5, %if.then54.i ], [ -5, %if.then45.i ], [ -5, %if.then40.i ], [ -95, %if.then169.i ], [ %call18.i, %if.end17.i.if.then258.i_crit_edge ]
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call15.i) #12
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.then258.i, %if.end.i.if.end259.i_crit_edge
  %210 = phi i32 [ %.ph.i, %if.then258.i ], [ -12, %if.end.i.if.end259.i_crit_edge ]
  call void @unmap_mft_record(ptr noundef %add.ptr.i409.i) #12
  br label %err_out.i

err_out.i:                                        ; preds = %if.end259.i, %if.then.i
  %err.1.i = phi i32 [ %44, %if.then.i ], [ %210, %if.end259.i ]
  %211 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %16, align 8
  %213 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %i_ino.i, align 8
  %type262.i = getelementptr i8, ptr %call, i32 -444
  %215 = ptrtoint ptr %type262.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %type262.i, align 4
  %name_len263.i = getelementptr i8, ptr %call, i32 -436
  %217 = ptrtoint ptr %name_len263.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %name_len263.i, align 4
  %219 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %212, ptr noundef nonnull @.str.154, i32 noundef %err.1.i, i32 noundef %214, i32 noundef %216, i32 noundef %218, i32 noundef %220) #12
  call void @make_bad_inode(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.1.i)
  %cmp265.not.i = icmp eq i32 %err.1.i, -12
  br i1 %cmp265.not.i, label %if.end27.thread54, label %if.end27

if.end27.thread54:                                ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @unlock_new_inode(ptr noundef nonnull %call) #12
  br label %if.then35

if.end27:                                         ; preds = %err_out.i
  %flags.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #12
  call void @unlock_new_inode(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool28.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.end27.if.then35_crit_edge, !prof !369

if.end27.if.then35_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %if.end27.if.then35_crit_edge, %if.end27.thread54
  call void @iput(ptr noundef nonnull %call) #12
  %221 = inttoptr i32 %err.1.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end27.cleanup_crit_edge, %if.end27.thread51, %if.end23.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ %221, %if.then35 ], [ %call, %if.end27.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end7.cleanup_crit_edge ], [ %call, %if.end27.thread51 ], [ %call, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %na) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_index_iget(ptr noundef %base_vi, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #2 align 64 {
entry:
  %na = alloca %struct.ntfs_attr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %na) #12
  %0 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ntfs_attr, ptr %na, i32 0, i32 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  %5 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %na, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1610612736, ptr %2, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %name_len, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %call = call ptr @iget5_locked(ptr noundef %10, i32 noundef %4, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull @ntfs_init_locked_inode, ptr noundef nonnull %na) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !370

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i, align 8
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1478, ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef nonnull @.str.92, i32 noundef %18) #12
  %add.ptr.i.i.i = getelementptr i8, ptr %call, i32 -528
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.160, i32 noundef 274, ptr noundef nonnull @__func__.ntfs_init_big_inode, ptr noundef nonnull @.str.1) #12
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  call void @__ntfs_init_inode(ptr noundef %20, ptr noundef %add.ptr.i.i.i) #12
  %21 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i, align 8
  %mft_no.i.i = getelementptr i8, ptr %call, i32 -460
  %23 = ptrtoint ptr %mft_no.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mft_no.i.i, align 4
  %add.ptr.i432.i = getelementptr i8, ptr %base_vi, i32 -528
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_uid3.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 2
  %24 = ptrtoint ptr %i_uid3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_uid3.i, align 4
  %26 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %i_gid4.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 3
  %27 = ptrtoint ptr %i_gid4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_gid4.i, align 8
  %29 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %i_gid.i, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 12
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef %32) #12
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_mtime5.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 16
  %33 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime5.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %i_ctime6.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 17
  %34 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime6.i, i32 16)
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_atime7.i = getelementptr inbounds %struct.inode, ptr %base_vi, i32 0, i32 15
  %35 = call ptr @memcpy(ptr %i_atime.i, ptr %i_atime7.i, i32 16)
  %seq_no.i = getelementptr i8, ptr %base_vi, i32 -456
  %36 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %seq_no.i, align 8
  %seq_no8.i = getelementptr i8, ptr %call, i32 -456
  %38 = ptrtoint ptr %seq_no8.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %seq_no8.i, align 8
  %conv.i = zext i16 %37 to i32
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %39 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %i_generation.i, align 8
  %40 = ptrtoint ptr %base_vi to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %base_vi, align 8
  %42 = and i16 %41, 4095
  %43 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %call, align 8
  %call12.i = call ptr @map_mft_record(ptr noundef %add.ptr.i432.i) #12
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %call12.i to i32
  br label %err_out.i

if.end.i:                                         ; preds = %if.then9
  %call15.i = call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i432.i, ptr noundef %call12.i) #12
  %tobool.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end256.i_crit_edge, label %if.end17.i

if.end.i.if.end256.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256.i

if.end17.i:                                       ; preds = %if.end.i
  %name.i = getelementptr i8, ptr %call, i32 -440
  %45 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name.i, align 8
  %name_len.i = getelementptr i8, ptr %call, i32 -436
  %47 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %name_len.i, align 4
  %call18.i = call i32 @ntfs_attr_lookup(i32 noundef -1879048192, ptr noundef %46, i32 noundef %48, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call15.i) #12
  %49 = zext i32 %call18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %call18.i, label %if.end17.i.unm_err_out.i_crit_edge [
    i32 0, label %if.end27.i
    i32 -2, label %if.then24.i
  ], !prof !374

if.end17.i.unm_err_out.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out.i

if.then24.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %51, ptr noundef nonnull @.str.106) #12
  br label %if.then255.i

if.end27.i:                                       ; preds = %if.end17.i
  %attr.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call15.i, i32 0, i32 1
  %52 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attr.i, align 4
  %non_resident.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool28.not.i = icmp eq i8 %55, 0
  br i1 %tobool28.not.i, label %if.end36.i, label %if.then35.i, !prof !369

if.then35.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %57, ptr noundef nonnull @.str.107) #12
  br label %unm_err_out.thread.i

if.end36.i:                                       ; preds = %if.end27.i
  %name_length.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 3
  %58 = ptrtoint ptr %name_length.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %name_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool38.not.i = icmp eq i8 %59, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end51.i_crit_edge, label %land.rhs.i

if.end36.i.if.end51.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

land.rhs.i:                                       ; preds = %if.end36.i
  %name_offset.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 4
  %60 = ptrtoint ptr %name_offset.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %name_offset.i, align 1
  %62 = call i16 @llvm.bswap.i16(i16 %61) #12
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 7
  %value_offset.i = getelementptr inbounds %struct.anon.78, ptr %data.i, i32 0, i32 1
  %63 = ptrtoint ptr %value_offset.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %value_offset.i, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %65)
  %cmp41.not.i = icmp ult i16 %62, %65
  br i1 %cmp41.not.i, label %land.rhs.i.if.end51.i_crit_edge, label %if.then49.i, !prof !369

land.rhs.i.if.end51.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then49.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %67, ptr noundef nonnull @.str.108) #12
  br label %unm_err_out.thread.i

if.end51.i:                                       ; preds = %land.rhs.i.if.end51.i_crit_edge, %if.end36.i.if.end51.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 5
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %69)
  %tobool54.not.i = icmp ult i16 %69, 64
  br i1 %tobool54.not.i, label %if.end57.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %71, ptr noundef nonnull @.str.155) #12
  br label %unm_err_out.thread.i

if.end57.i:                                       ; preds = %if.end51.i
  %data58.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %53, i32 0, i32 7
  %value_offset59.i = getelementptr inbounds %struct.anon.78, ptr %data58.i, i32 0, i32 1
  %72 = ptrtoint ptr %value_offset59.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %value_offset59.i, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73) #12
  %conv60.i = zext i16 %74 to i32
  %add.ptr.i = getelementptr i8, ptr %53, i32 %conv60.i
  %75 = ptrtoint ptr %data58.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %data58.i, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76) #12
  %add.ptr62.i = getelementptr i8, ptr %add.ptr.i, i32 %77
  %78 = ptrtoint ptr %call15.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call15.i, align 4
  %mft_record_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 14
  %80 = ptrtoint ptr %mft_record_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mft_record_size.i, align 4
  %add.ptr63.i = getelementptr i8, ptr %79, i32 %81
  %cmp64.i = icmp ugt ptr %add.ptr62.i, %add.ptr63.i
  br i1 %cmp64.i, label %if.then66.i, label %if.end68.i

if.then66.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %83, ptr noundef nonnull @.str.110) #12
  br label %unm_err_out.thread.i

if.end68.i:                                       ; preds = %if.end57.i
  %index.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 5
  %index_length.i = getelementptr inbounds %struct.INDEX_HEADER, ptr %index.i, i32 0, i32 1
  %84 = ptrtoint ptr %index_length.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %index_length.i, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85) #12
  %add.ptr70.i = getelementptr i8, ptr %index.i, i32 %86
  %cmp71.i = icmp ugt ptr %add.ptr70.i, %add.ptr62.i
  br i1 %cmp71.i, label %if.then73.i, label %if.end75.i

if.then73.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %88, ptr noundef nonnull @.str.156) #12
  br label %unm_err_out.thread.i

if.end75.i:                                       ; preds = %if.end68.i
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool76.not.i = icmp eq i32 %90, 0
  br i1 %tobool76.not.i, label %if.end80.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_sb.i, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %90) #12
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %92, ptr noundef nonnull @.str.157, i32 noundef %93) #12
  br label %unm_err_out.thread.i

if.end80.i:                                       ; preds = %if.end75.i
  %collation_rule.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 1
  %94 = ptrtoint ptr %collation_rule.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %collation_rule.i, align 1
  %itype.i = getelementptr i8, ptr %call, i32 -120
  %collation_rule81.i = getelementptr i8, ptr %call, i32 -112
  %96 = ptrtoint ptr %collation_rule81.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %collation_rule81.i, align 8
  %97 = load i32, ptr %collation_rule.i, align 1
  %98 = call i32 @llvm.bswap.i32(i32 %97) #12
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1553, ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef nonnull @.str.158, i32 noundef %98) #12
  %index_block_size.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 2
  %99 = ptrtoint ptr %index_block_size.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %index_block_size.i, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100) #12
  %102 = ptrtoint ptr %itype.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %itype.i, align 8
  %103 = call i32 @llvm.ctpop.i32(i32 %100) #12, !range !378
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %if.end91.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %106, ptr noundef nonnull @.str.114, i32 noundef %101) #12
  br label %unm_err_out.thread.i

if.end91.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %101)
  %cmp94.i = icmp ugt i32 %101, 4096
  br i1 %cmp94.i, label %if.then96.i, label %if.end100.i

if.then96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %108, ptr noundef nonnull @.str.115, i32 noundef %101, i32 noundef 4096) #12
  br label %if.then255.i

if.end100.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %101)
  %cmp103.i = icmp ult i32 %101, 512
  br i1 %cmp103.i, label %if.then105.i, label %if.end109.i

if.then105.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %110, ptr noundef nonnull @.str.116, i32 noundef %101, i32 noundef 512) #12
  br label %if.then255.i

if.end109.i:                                      ; preds = %if.end100.i
  %111 = call i32 @llvm.cttz.i32(i32 %101, i1 true) #12, !range !378
  %conv112.i = trunc i32 %111 to i8
  %block_size_bits.i = getelementptr i8, ptr %call, i32 -108
  %112 = ptrtoint ptr %block_size_bits.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv112.i, ptr %block_size_bits.i, align 4
  %cluster_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 11
  %113 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cluster_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %101)
  %cmp116.not.i = icmp ugt i32 %114, %101
  br i1 %cmp116.not.i, label %if.else.i, label %if.then118.i

if.then118.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  %cluster_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 13
  br label %if.end127.i

if.else.i:                                        ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  %sector_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 9
  %115 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %sector_size.i, align 2
  %conv122.i = zext i16 %116 to i32
  %sector_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 10
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.else.i, %if.then118.i
  %.sink = phi i32 [ %conv122.i, %if.else.i ], [ %114, %if.then118.i ]
  %.sink.in.i = phi ptr [ %sector_size_bits.i, %if.else.i ], [ %cluster_size_bits.i, %if.then118.i ]
  %117 = getelementptr i8, ptr %call, i32 -116
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %.sink, ptr %117, align 4
  %119 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %.sink.i = load i8, ptr %.sink.in.i, align 4
  %120 = getelementptr i8, ptr %call, i32 -107
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.sink.i, ptr %120, align 1
  %flags129.i = getelementptr inbounds %struct.INDEX_HEADER, ptr %index.i, i32 0, i32 3
  %122 = ptrtoint ptr %flags129.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %flags129.i, align 1
  %124 = and i8 %123, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool132.not.i = icmp eq i8 %124, 0
  br i1 %tobool132.not.i, label %if.then133.i, label %if.end134.i

if.then133.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  %initialized_size.i = getelementptr i8, ptr %call, i32 -480
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %125 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 0, ptr %i_size.i, align 8
  %126 = call ptr @memset(ptr %initialized_size.i, i32 0, i32 16)
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call15.i) #12
  call void @unmap_mft_record(ptr noundef %add.ptr.i432.i) #12
  br label %if.end11.thread34

if.end134.i:                                      ; preds = %if.end127.i
  %state.i.i = getelementptr i8, ptr %call, i32 -464
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i.i) #12
  call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call15.i) #12
  %127 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name.i, align 8
  %129 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %name_len.i, align 4
  %call137.i = call i32 @ntfs_attr_lookup(i32 noundef -1610612736, ptr noundef %128, i32 noundef %130, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call15.i) #12
  %131 = zext i32 %call137.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %call137.i, label %if.else150.i [
    i32 0, label %if.end153.i
    i32 -2, label %if.then148.i
  ], !prof !374

if.then148.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %133, ptr noundef nonnull @.str.117) #12
  br label %if.then255.i

if.else150.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %135, ptr noundef nonnull @.str.118) #12
  br label %unm_err_out.i

if.end153.i:                                      ; preds = %if.end134.i
  %136 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %attr.i, align 4
  %non_resident155.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %non_resident155.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %non_resident155.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool156.not.i = icmp eq i8 %139, 0
  br i1 %tobool156.not.i, label %if.then157.i, label %if.end159.i

if.then157.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %141, ptr noundef nonnull @.str.119) #12
  br label %unm_err_out.thread.i

if.end159.i:                                      ; preds = %if.end153.i
  %name_length160.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 3
  %142 = ptrtoint ptr %name_length160.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %name_length160.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool162.not.i = icmp eq i8 %143, 0
  br i1 %tobool162.not.i, label %if.end159.i.if.end179.i_crit_edge, label %land.rhs163.i

if.end159.i.if.end179.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end179.i

land.rhs163.i:                                    ; preds = %if.end159.i
  %name_offset164.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 4
  %144 = ptrtoint ptr %name_offset164.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %name_offset164.i, align 1
  %146 = call i16 @llvm.bswap.i16(i16 %145) #12
  %mapping_pairs_offset.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 7, i32 0, i32 2
  %147 = ptrtoint ptr %mapping_pairs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %mapping_pairs_offset.i, align 1
  %149 = call i16 @llvm.bswap.i16(i16 %148) #12
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %149)
  %cmp168.not.i = icmp ult i16 %146, %149
  br i1 %cmp168.not.i, label %land.rhs163.i.if.end179.i_crit_edge, label %if.then177.i, !prof !369

land.rhs163.i.if.end179.i_crit_edge:              ; preds = %land.rhs163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end179.i

if.then177.i:                                     ; preds = %land.rhs163.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %151, ptr noundef nonnull @.str.120) #12
  br label %unm_err_out.thread.i

if.end179.i:                                      ; preds = %land.rhs163.i.if.end179.i_crit_edge, %if.end159.i.if.end179.i_crit_edge
  %flags180.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 5
  %152 = ptrtoint ptr %flags180.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %flags180.i, align 1
  %conv181.i = zext i16 %153 to i32
  %and182.i = and i32 %conv181.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i)
  %tobool183.not.i = icmp eq i32 %and182.i, 0
  br i1 %tobool183.not.i, label %if.end186.i, label %if.then184.i

if.then184.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %155, ptr noundef nonnull @.str.121) #12
  br label %unm_err_out.thread.i

if.end186.i:                                      ; preds = %if.end179.i
  %and189.i = and i32 %conv181.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i)
  %tobool190.not.i = icmp eq i32 %and189.i, 0
  br i1 %tobool190.not.i, label %if.end193.i, label %if.then191.i

if.then191.i:                                     ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %157, ptr noundef nonnull @.str.122) #12
  br label %unm_err_out.thread.i

if.end193.i:                                      ; preds = %if.end186.i
  %and196.i = and i32 %conv181.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %if.end200.i, label %if.then198.i

if.then198.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #14
  %158 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %159, ptr noundef nonnull @.str.123) #12
  br label %unm_err_out.thread.i

if.end200.i:                                      ; preds = %if.end193.i
  %data201.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 7
  %160 = ptrtoint ptr %data201.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 8)
  %161 = load i64, ptr %data201.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %161)
  %tobool202.not.i = icmp eq i64 %161, 0
  br i1 %tobool202.not.i, label %if.end205.i, label %if.then203.i

if.then203.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #14
  %162 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %163, ptr noundef nonnull @.str.124) #12
  br label %unm_err_out.thread.i

if.end205.i:                                      ; preds = %if.end200.i
  %data_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 7, i32 0, i32 6
  %164 = ptrtoint ptr %data_size.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 8)
  %165 = load i64, ptr %data_size.i, align 1
  %166 = call i64 @llvm.bswap.i64(i64 %165) #12
  %i_size208.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %167 = ptrtoint ptr %i_size208.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %i_size208.i, align 8
  %initialized_size210.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 7, i32 0, i32 7
  %168 = ptrtoint ptr %initialized_size210.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 8)
  %169 = load i64, ptr %initialized_size210.i, align 1
  %170 = call i64 @llvm.bswap.i64(i64 %169) #12
  %initialized_size212.i = getelementptr i8, ptr %call, i32 -480
  %171 = ptrtoint ptr %initialized_size212.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %initialized_size212.i, align 8
  %allocated_size214.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %137, i32 0, i32 7, i32 0, i32 5
  %172 = ptrtoint ptr %allocated_size214.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 8)
  %173 = load i64, ptr %allocated_size214.i, align 1
  %174 = call i64 @llvm.bswap.i64(i64 %173) #12
  %allocated_size216.i = getelementptr i8, ptr %call, i32 -472
  %175 = ptrtoint ptr %allocated_size216.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %allocated_size216.i, align 8
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call15.i) #12
  call void @unmap_mft_record(ptr noundef %add.ptr.i432.i) #12
  %176 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name.i, align 8
  %178 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %name_len.i, align 4
  %call219.i = call ptr @ntfs_attr_iget(ptr noundef %base_vi, i32 noundef -1342177280, ptr noundef %177, i32 noundef %179) #12
  %cmp.i433.i = icmp ugt ptr %call219.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i433.i, label %if.then221.i, label %if.end224.i

if.then221.i:                                     ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %181, ptr noundef nonnull @.str.125) #12
  %182 = ptrtoint ptr %call219.i to i32
  br label %unm_err_out.i

if.end224.i:                                      ; preds = %if.end205.i
  %state.i435.i = getelementptr i8, ptr %call219.i, i32 -464
  %183 = ptrtoint ptr %state.i435.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %state.i435.i, align 4
  %185 = and i32 %184, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool227.not.i = icmp eq i32 %185, 0
  br i1 %tobool227.not.i, label %lor.lhs.false.i, label %if.end224.i.if.then233.i_crit_edge

if.end224.i.if.then233.i_crit_edge:               ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then233.i

lor.lhs.false.i:                                  ; preds = %if.end224.i
  %186 = ptrtoint ptr %state.i435.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %state.i435.i, align 4
  %188 = and i32 %187, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool229.not.i = icmp eq i32 %188, 0
  br i1 %tobool229.not.i, label %lor.lhs.false230.i, label %lor.lhs.false.i.if.then233.i_crit_edge

lor.lhs.false.i.if.then233.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then233.i

lor.lhs.false230.i:                               ; preds = %lor.lhs.false.i
  %189 = ptrtoint ptr %state.i435.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %state.i435.i, align 4
  %191 = and i32 %190, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool232.not.i = icmp eq i32 %191, 0
  br i1 %tobool232.not.i, label %if.end235.i, label %lor.lhs.false230.i.if.then233.i_crit_edge

lor.lhs.false230.i.if.then233.i_crit_edge:        ; preds = %lor.lhs.false230.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then233.i

if.then233.i:                                     ; preds = %lor.lhs.false230.i.if.then233.i_crit_edge, %lor.lhs.false.i.if.then233.i_crit_edge, %if.end224.i.if.then233.i_crit_edge
  %192 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %193, ptr noundef nonnull @.str.126) #12
  br label %iput_unm_err_out.i

if.end235.i:                                      ; preds = %lor.lhs.false230.i
  %call236.i = call fastcc i64 @i_size_read(ptr noundef %call219.i) #12
  %shl.i = shl i64 %call236.i, 3
  %194 = ptrtoint ptr %i_size208.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %i_size208.i, align 8
  %196 = ptrtoint ptr %block_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %block_size_bits.i, align 4
  %sh_prom.i = zext i8 %197 to i64
  %shr.i = ashr i64 %195, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %shr.i)
  %cmp241.i = icmp slt i64 %shl.i, %shr.i
  br i1 %cmp241.i, label %if.then243.i, label %if.end247.i

if.then243.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %199, ptr noundef nonnull @.str.127, i64 noundef %shl.i, i64 noundef %195) #12
  br label %iput_unm_err_out.i

if.end247.i:                                      ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @iput(ptr noundef %call219.i) #12
  br label %if.end11.thread34

if.end11.thread34:                                ; preds = %if.end247.i, %if.then133.i
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %200 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %201, i32 0, i32 9
  %202 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @ntfs_mst_aops, ptr %a_ops.i, align 4
  %allocated_size248.i = getelementptr i8, ptr %call, i32 -472
  %203 = ptrtoint ptr %allocated_size248.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %allocated_size248.i, align 8
  %shr249.i = ashr i64 %204, 9
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %205 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %shr249.i, ptr %i_blocks.i, align 8
  %call250.i = call ptr @igrab(ptr noundef %base_vi) #12
  %ext.i = getelementptr i8, ptr %call, i32 -8
  %206 = ptrtoint ptr %ext.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %add.ptr.i432.i, ptr %ext.i, align 8
  %nr_extents.i = getelementptr i8, ptr %call, i32 -12
  %207 = ptrtoint ptr %nr_extents.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -1, ptr %nr_extents.i, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1691, ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef nonnull @.str.38) #12
  call void @unlock_new_inode(ptr noundef nonnull %call) #12
  br label %cleanup

iput_unm_err_out.i:                               ; preds = %if.then243.i, %if.then233.i
  call void @iput(ptr noundef %call219.i) #12
  br label %unm_err_out.thread.i

unm_err_out.i:                                    ; preds = %if.then221.i, %if.else150.i, %if.end17.i.unm_err_out.i_crit_edge
  %m.0.i = phi ptr [ %call12.i, %if.else150.i ], [ null, %if.then221.i ], [ %call12.i, %if.end17.i.unm_err_out.i_crit_edge ]
  %ctx.0.i = phi ptr [ %call15.i, %if.else150.i ], [ null, %if.then221.i ], [ %call15.i, %if.end17.i.unm_err_out.i_crit_edge ]
  %err.0.i = phi i32 [ %call137.i, %if.else150.i ], [ %182, %if.then221.i ], [ %call18.i, %if.end17.i.unm_err_out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool251.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool251.not.i, label %unm_err_out.i.unm_err_out.thread.i_crit_edge, label %unm_err_out.i.unm_err_out.thread452.i_crit_edge

unm_err_out.i.unm_err_out.thread452.i_crit_edge:  ; preds = %unm_err_out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out.thread452.i

unm_err_out.i.unm_err_out.thread.i_crit_edge:     ; preds = %unm_err_out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out.thread.i

unm_err_out.thread.i:                             ; preds = %unm_err_out.i.unm_err_out.thread.i_crit_edge, %iput_unm_err_out.i, %if.then203.i, %if.then198.i, %if.then191.i, %if.then184.i, %if.then177.i, %if.then157.i, %if.then87.i, %if.then77.i, %if.then73.i, %if.then66.i, %if.then55.i, %if.then49.i, %if.then35.i
  %ctx.0449.i = phi ptr [ %ctx.0.i, %unm_err_out.i.unm_err_out.thread.i_crit_edge ], [ %call15.i, %if.then87.i ], [ %call15.i, %if.then157.i ], [ null, %iput_unm_err_out.i ], [ %call15.i, %if.then203.i ], [ %call15.i, %if.then198.i ], [ %call15.i, %if.then191.i ], [ %call15.i, %if.then184.i ], [ %call15.i, %if.then177.i ], [ %call15.i, %if.then77.i ], [ %call15.i, %if.then73.i ], [ %call15.i, %if.then66.i ], [ %call15.i, %if.then55.i ], [ %call15.i, %if.then49.i ], [ %call15.i, %if.then35.i ]
  %m.0447.i = phi ptr [ %m.0.i, %unm_err_out.i.unm_err_out.thread.i_crit_edge ], [ %call12.i, %if.then87.i ], [ %call12.i, %if.then157.i ], [ null, %iput_unm_err_out.i ], [ %call12.i, %if.then203.i ], [ %call12.i, %if.then198.i ], [ %call12.i, %if.then191.i ], [ %call12.i, %if.then184.i ], [ %call12.i, %if.then177.i ], [ %call12.i, %if.then77.i ], [ %call12.i, %if.then73.i ], [ %call12.i, %if.then66.i ], [ %call12.i, %if.then55.i ], [ %call12.i, %if.then49.i ], [ %call12.i, %if.then35.i ]
  br label %unm_err_out.thread452.i

unm_err_out.thread452.i:                          ; preds = %unm_err_out.thread.i, %unm_err_out.i.unm_err_out.thread452.i_crit_edge
  %ctx.0448.i = phi ptr [ %ctx.0449.i, %unm_err_out.thread.i ], [ %ctx.0.i, %unm_err_out.i.unm_err_out.thread452.i_crit_edge ]
  %m.0446.i = phi ptr [ %m.0447.i, %unm_err_out.thread.i ], [ %m.0.i, %unm_err_out.i.unm_err_out.thread452.i_crit_edge ]
  %208 = phi i32 [ -5, %unm_err_out.thread.i ], [ %err.0.i, %unm_err_out.i.unm_err_out.thread452.i_crit_edge ]
  %tobool254.not.i = icmp eq ptr %ctx.0448.i, null
  br i1 %tobool254.not.i, label %unm_err_out.thread452.i.if.end256.i_crit_edge, label %unm_err_out.thread452.i.if.then255.i_crit_edge

unm_err_out.thread452.i.if.then255.i_crit_edge:   ; preds = %unm_err_out.thread452.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then255.i

unm_err_out.thread452.i.if.end256.i_crit_edge:    ; preds = %unm_err_out.thread452.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256.i

if.then255.i:                                     ; preds = %unm_err_out.thread452.i.if.then255.i_crit_edge, %if.then148.i, %if.then105.i, %if.then96.i, %if.then24.i
  %209 = phi i32 [ %208, %unm_err_out.thread452.i.if.then255.i_crit_edge ], [ -2, %if.then24.i ], [ -95, %if.then96.i ], [ -95, %if.then105.i ], [ -2, %if.then148.i ]
  %m.0446461.i = phi ptr [ %m.0446.i, %unm_err_out.thread452.i.if.then255.i_crit_edge ], [ %call12.i, %if.then24.i ], [ %call12.i, %if.then96.i ], [ %call12.i, %if.then105.i ], [ %call12.i, %if.then148.i ]
  %ctx.0448460.i = phi ptr [ %ctx.0448.i, %unm_err_out.thread452.i.if.then255.i_crit_edge ], [ %call15.i, %if.then24.i ], [ %call15.i, %if.then96.i ], [ %call15.i, %if.then105.i ], [ %call15.i, %if.then148.i ]
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.0448460.i) #12
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.then255.i, %unm_err_out.thread452.i.if.end256.i_crit_edge, %if.end.i.if.end256.i_crit_edge
  %210 = phi i32 [ %209, %if.then255.i ], [ %208, %unm_err_out.thread452.i.if.end256.i_crit_edge ], [ -12, %if.end.i.if.end256.i_crit_edge ]
  %m.0446462.i = phi ptr [ %m.0446461.i, %if.then255.i ], [ %m.0446.i, %unm_err_out.thread452.i.if.end256.i_crit_edge ], [ %call12.i, %if.end.i.if.end256.i_crit_edge ]
  %tobool257.not.i = icmp eq ptr %m.0446462.i, null
  br i1 %tobool257.not.i, label %if.end256.i.err_out.i_crit_edge, label %if.then258.i

if.end256.i.err_out.i_crit_edge:                  ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out.i

if.then258.i:                                     ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @unmap_mft_record(ptr noundef %add.ptr.i432.i) #12
  br label %err_out.i

err_out.i:                                        ; preds = %if.then258.i, %if.end256.i.err_out.i_crit_edge, %if.then.i
  %err.2.i = phi i32 [ %44, %if.then.i ], [ %210, %if.then258.i ], [ %210, %if.end256.i.err_out.i_crit_edge ]
  %211 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %i_sb.i, align 4
  %213 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %i_ino.i, align 8
  %name_len262.i = getelementptr i8, ptr %call, i32 -436
  %215 = ptrtoint ptr %name_len262.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %name_len262.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %212, ptr noundef nonnull @.str.159, i32 noundef %err.2.i, i32 noundef %214, i32 noundef %216) #12
  call void @make_bad_inode(ptr noundef nonnull %call) #12
  %217 = zext i32 %err.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %err.2.i, label %if.end11 [
    i32 -95, label %err_out.i.if.end11.thread37_crit_edge
    i32 -12, label %err_out.i.if.end11.thread37_crit_edge41
  ]

err_out.i.if.end11.thread37_crit_edge41:          ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.thread37

err_out.i.if.end11.thread37_crit_edge:            ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.thread37

if.end11.thread37:                                ; preds = %err_out.i.if.end11.thread37_crit_edge, %err_out.i.if.end11.thread37_crit_edge41
  call void @unlock_new_inode(ptr noundef nonnull %call) #12
  br label %if.then19

if.end11:                                         ; preds = %err_out.i
  %flags.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %16, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #12
  call void @unlock_new_inode(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool12.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end11.if.then19_crit_edge, !prof !369

if.end11.if.then19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end11.if.then19_crit_edge, %if.end11.thread37
  call void @iput(ptr noundef nonnull %call) #12
  %218 = inttoptr i32 %err.2.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end11.cleanup_crit_edge, %if.end11.thread34, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %218, %if.then19 ], [ %call, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call, %if.end11.thread34 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %na) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @ntfs_alloc_big_inode(ptr noundef %sb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @__func__.ntfs_alloc_big_inode, ptr noundef nonnull @.str.1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_big_inode_cache to i32))
  %0 = load ptr, ptr @ntfs_big_inode_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #12
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %if.then, !prof !370

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct._ntfs_inode, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 8
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %call, i32 0, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_alloc_big_inode, ptr noundef %sb, ptr noundef nonnull @.str.2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %vfs_inode.i, %if.then ], [ null, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_free_big_inode(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_big_inode_cache to i32))
  %0 = load ptr, ptr @ntfs_big_inode_cache, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -528
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ntfs_init_inode(ptr nocapture noundef readonly %sb, ptr noundef %ni) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 370, ptr noundef nonnull @__func__.__ntfs_init_inode, ptr noundef nonnull @.str.1) #12
  tail call void @__rwlock_init(ptr noundef %ni, ptr noundef nonnull @.str.3, ptr noundef nonnull @__ntfs_init_inode.__key) #12
  %initialized_size = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 1
  %seq_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 5
  %0 = ptrtoint ptr %seq_no to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %seq_no, align 8
  %count = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 6
  %1 = call ptr @memset(ptr %initialized_size, i32 0, i32 16)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %count, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %vol = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %5 = ptrtoint ptr %vol to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %vol, align 8
  %runlist = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %6 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %runlist, align 4
  %lock.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11, i32 1
  tail call void @__init_rwsem(ptr noundef %lock.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @ntfs_init_runlist.__key) #12
  %mrec_lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %mrec_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @__ntfs_init_inode.__key.4) #12
  %page = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %lock.i39 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 17, i32 1
  %7 = call ptr @memset(ptr %page, i32 0, i32 20)
  tail call void @__init_rwsem(ptr noundef %lock.i39, ptr noundef nonnull @.str.90, ptr noundef nonnull @ntfs_init_runlist.__key) #12
  %dep_map = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 17, i32 1, i32 6
  %wait_type_inner = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 17, i32 1, i32 6, i32 4
  %8 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @attr_list_rl_lock_class, i32 noundef 0, i8 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %itype = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18
  %extent_lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 19
  %10 = call ptr @memset(ptr %itype, i32 0, i32 14)
  tail call void @__mutex_init(ptr noundef %extent_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @__ntfs_init_inode.__key.7) #12
  %nr_extents = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 20
  %11 = ptrtoint ptr %nr_extents to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nr_extents, align 4
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %12 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ext, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_new_extent_inode(ptr nocapture noundef readonly %sb, i32 noundef %mft_no) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @__func__.ntfs_alloc_extent_inode, ptr noundef nonnull @.str.1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_inode_cache to i32))
  %0 = load ptr, ptr @ntfs_inode_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %ntfs_alloc_extent_inode.exit.thread, label %if.then, !prof !370

ntfs_alloc_extent_inode.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_alloc_extent_inode, ptr noundef null, ptr noundef nonnull @.str.91) #12
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 407, ptr noundef nonnull @__func__.ntfs_new_extent_inode, ptr noundef nonnull @.str.1) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 407, ptr noundef nonnull @__func__.ntfs_new_extent_inode, ptr noundef nonnull @.str.1) #12
  tail call void @__ntfs_init_inode(ptr noundef %sb, ptr noundef nonnull %call.i)
  %dep_map = getelementptr inbounds %struct._ntfs_inode, ptr %call.i, i32 0, i32 12, i32 5
  %wait_type_inner = getelementptr inbounds %struct._ntfs_inode, ptr %call.i, i32 0, i32 12, i32 5, i32 4
  %2 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @extent_inode_mrec_lock_key, i32 noundef 0, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %mft_no6 = getelementptr inbounds %struct._ntfs_inode, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %mft_no6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mft_no, ptr %mft_no6, align 4
  %type = getelementptr inbounds %struct._ntfs_inode, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type, align 4
  %name = getelementptr inbounds %struct._ntfs_inode, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %name, align 8
  %name_len = getelementptr inbounds %struct._ntfs_inode, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %name_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ntfs_alloc_extent_inode.exit.thread
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_read_inode_mount(ptr noundef %vi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1761, ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef nonnull @.str.1) #12
  %add.ptr.i.i = getelementptr i8, ptr %vi, i32 -528
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str.160, i32 noundef 274, ptr noundef nonnull @__func__.ntfs_init_big_inode, ptr noundef nonnull @.str.1) #12
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void @__ntfs_init_inode(ptr noundef %5, ptr noundef %add.ptr.i.i) #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino.i, align 8
  %mft_no.i = getelementptr i8, ptr %vi, i32 -460
  %8 = ptrtoint ptr %mft_no.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mft_no.i, align 4
  %state.i = getelementptr i8, ptr %vi, i32 -464
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state.i) #12
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state.i) #12
  %type = getelementptr i8, ptr %vi, i32 -444
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %type, align 4
  %name = getelementptr i8, ptr %vi, i32 -440
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %name, align 8
  %name_len = getelementptr i8, ptr %vi, i32 -436
  %11 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %name_len, align 4
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mft_record_size, align 4
  %itype = getelementptr i8, ptr %vi, i32 -120
  %14 = ptrtoint ptr %itype to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %itype, align 8
  %mft_record_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 16
  %15 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mft_record_size_bits, align 4
  %block_size_bits = getelementptr i8, ptr %vi, i32 -108
  %17 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %block_size_bits, align 4
  %mft_ino = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 34
  %18 = ptrtoint ptr %mft_ino to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vi, ptr %mft_ino, align 8
  %19 = load i32, ptr %mft_record_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %19)
  %cmp = icmp ugt i32 %19, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %19) #12
  br label %err_out

if.end:                                           ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 4097
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end16.i.i, !prof !369

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i.i, label %do.body12.i.i, label %do.end15.i.i, !prof !370

do.body12.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #12, !srcloc !380
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3136, i32 noundef 4096) #18
  br label %ntfs_malloc_nofs.exit

if.end16.i.i:                                     ; preds = %if.end
  %shr.i.i = lshr i32 %22, 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %24 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %24)
  %cmp18.i.i = icmp ult i32 %shr.i.i, %24
  br i1 %cmp18.i.i, label %if.then25.i.i, label %if.end16.i.i.if.then11_crit_edge, !prof !369

if.end16.i.i.if.then11_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then25.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call26.i.i = tail call noalias ptr @__vmalloc(i32 noundef %22, i32 noundef 3138) #16
  br label %ntfs_malloc_nofs.exit

ntfs_malloc_nofs.exit:                            ; preds = %if.then25.i.i, %do.end15.i.i
  %retval.0.i.i = phi ptr [ %call7.i.i.i, %do.end15.i.i ], [ %call26.i.i, %if.then25.i.i ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %ntfs_malloc_nofs.exit.if.then11_crit_edge, label %for.body.lr.ph

ntfs_malloc_nofs.exit.if.then11_crit_edge:        ; preds = %ntfs_malloc_nofs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then11:                                        ; preds = %ntfs_malloc_nofs.exit.if.then11_crit_edge, %if.end16.i.i.if.then11_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.11) #12
  br label %err_out

for.body.lr.ph:                                   ; preds = %ntfs_malloc_nofs.exit
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 13
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %s_blocksize_bits, align 4
  %conv13 = zext i8 %26 to i32
  %27 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mft_record_size, align 4
  %shr18 = lshr i32 %28, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr18)
  %tobool19.not = icmp eq i32 %shr18, 0
  %spec.store.select = select i1 %tobool19.not, i32 1, i32 %shr18
  %mft_lcn = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 21
  %29 = ptrtoint ptr %mft_lcn to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %mft_lcn, align 8
  %31 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %32 to i64
  %shl = shl i64 %30, %sh_prom
  %sh_prom14 = zext i8 %26 to i64
  %shr = ashr i64 %shl, %sh_prom14
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %i.1597 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %brelse.exit.for.body_crit_edge ]
  %block.0596 = phi i64 [ %shr, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %33 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_bdev.i, align 4
  %35 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %34, i64 noundef %block.0596, i32 noundef %36, i32 noundef 8) #12
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.then26, label %brelse.exit

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.12) #12
  br label %err_out

brelse.exit:                                      ; preds = %for.body
  %inc = add i64 %block.0596, 1
  %37 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %s_blocksize_bits, align 4
  %conv29 = zext i8 %38 to i32
  %shl30 = shl i32 %i.1597, %conv29
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 %shl30
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data, align 4
  %41 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize, align 16
  %43 = call ptr @memcpy(ptr %add.ptr, ptr %40, i32 %42)
  tail call void @__brelse(ptr noundef nonnull %call.i) #12
  %inc32 = add nuw i32 %i.1597, 1
  %exitcond.not = icmp eq i32 %inc32, %spec.store.select
  br i1 %exitcond.not, label %for.end, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %brelse.exit
  %bytes_allocated = getelementptr inbounds %struct.MFT_RECORD, ptr %retval.0.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %bytes_allocated to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %bytes_allocated, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mft_record_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp34.not = icmp eq i32 %46, %48
  br i1 %cmp34.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %46, i32 noundef %48) #12
  br label %err_out

if.end39:                                         ; preds = %for.end
  %call41 = tail call i32 @post_read_mst_fixup(ptr noundef nonnull %retval.0.i.i, i32 noundef %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.14) #12
  br label %err_out

if.end44:                                         ; preds = %if.end39
  %sequence_number = getelementptr inbounds %struct.MFT_RECORD, ptr %retval.0.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %sequence_number to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %sequence_number, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %seq_no = getelementptr i8, ptr %vi, i32 -456
  %52 = ptrtoint ptr %seq_no to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %seq_no, align 8
  %conv45 = zext i16 %51 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 49
  %53 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv45, ptr %i_generation, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 9
  %54 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ntfs_mst_aops, ptr %a_ops, align 4
  %call46 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i.i, ptr noundef nonnull %retval.0.i.i) #12
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end44.err_out_crit_edge, label %if.end49

if.end44.err_out_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end49:                                         ; preds = %if.end44
  %call50 = tail call i32 @ntfs_attr_lookup(i32 noundef 536870912, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call46) #12
  %57 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call50, label %if.then57 [
    i32 0, label %if.else
    i32 -2, label %if.end49.if.end203_crit_edge
  ], !prof !377

if.end49.if.end203_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %put_err_out

if.else:                                          ; preds = %if.end49
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1858, ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef nonnull @.str.17) #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #12
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call46, i32 0, i32 1
  %58 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %attr, align 4
  %flags = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %flags, align 1
  %conv59 = zext i16 %61 to i32
  %and = and i32 %conv59, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #12
  br label %put_err_out

if.end62:                                         ; preds = %if.else
  %62 = and i32 %conv59, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %if.end62.if.end75_crit_edge, label %if.then71

if.end62.if.end75_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then71:                                        ; preds = %if.end62
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 2
  %64 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool72.not = icmp eq i8 %65, 0
  br i1 %tobool72.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16) #12
  br label %put_err_out

if.end74:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.20) #12
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end62.if.end75_crit_edge
  %non_resident.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 2
  %66 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i536 = icmp eq i8 %67, 0
  br i1 %tobool.not.i536, label %if.then.i537, label %if.end.i

if.then.i537:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 7
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %data.i, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  br label %ntfs_attr_size.exit

if.end.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %data_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 7, i32 0, i32 6
  %71 = ptrtoint ptr %data_size.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %data_size.i, align 1
  %73 = tail call i64 @llvm.bswap.i64(i64 %72) #12
  %extract.t = trunc i64 %73 to i32
  br label %ntfs_attr_size.exit

ntfs_attr_size.exit:                              ; preds = %if.end.i, %if.then.i537
  %retval.0.i.off0 = phi i32 [ %extract.t, %if.end.i ], [ %70, %if.then.i537 ]
  %attr_list_size = getelementptr i8, ptr %vi, i32 -232
  %74 = ptrtoint ptr %attr_list_size to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.off0, ptr %attr_list_size, align 8
  %call79 = tail call fastcc ptr @ntfs_malloc_nofs(i32 noundef %retval.0.i.off0)
  %attr_list = getelementptr i8, ptr %vi, i32 -228
  %75 = ptrtoint ptr %attr_list to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call79, ptr %attr_list, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.then82, label %if.end83

if.then82:                                        ; preds = %ntfs_attr_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.21) #12
  br label %put_err_out

if.end83:                                         ; preds = %ntfs_attr_size.exit
  %76 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool85.not = icmp eq i8 %77, 0
  br i1 %tobool85.not, label %if.else112, label %if.then86

if.then86:                                        ; preds = %if.end83
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #12
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 7
  %78 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool87.not = icmp eq i64 %79, 0
  br i1 %tobool87.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.22) #12
  br label %put_err_out

if.end89:                                         ; preds = %if.then86
  %call90 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %3, ptr noundef %59, ptr noundef null) #12
  %attr_list_rl = getelementptr i8, ptr %vi, i32 -224
  %80 = ptrtoint ptr %attr_list_rl to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call90, ptr %attr_list_rl, align 8
  %cmp.i = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then94, label %if.end100

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %call90 to i32
  %82 = ptrtoint ptr %attr_list_rl to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %attr_list_rl, align 8
  %sub = sub i32 0, %81
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %sub) #12
  br label %put_err_out

if.end100:                                        ; preds = %if.end89
  %83 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %attr_list, align 4
  %85 = ptrtoint ptr %attr_list_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %attr_list_size, align 8
  %conv104 = zext i32 %86 to i64
  %initialized_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 7, i32 0, i32 7
  %87 = ptrtoint ptr %initialized_size to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %initialized_size, align 1
  %89 = tail call i64 @llvm.bswap.i64(i64 %88) #12
  %call107 = tail call i32 @load_attribute_list(ptr noundef %3, ptr noundef %attr_list_rl, ptr noundef %84, i64 noundef %conv104, i64 noundef %89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end100.if.end131_crit_edge, label %if.then109

if.end100.if.end131_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then109:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %sub110 = sub i32 0, %call107
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %sub110) #12
  br label %put_err_out

if.else112:                                       ; preds = %if.end83
  %data113 = getelementptr inbounds %struct.ATTR_RECORD, ptr %59, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.78, ptr %data113, i32 0, i32 1
  %90 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %value_offset, align 1
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %conv114 = zext i16 %92 to i32
  %add.ptr115 = getelementptr i8, ptr %59, i32 %conv114
  %93 = ptrtoint ptr %data113 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %data113, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %add.ptr117 = getelementptr i8, ptr %add.ptr115, i32 %95
  %96 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call46, align 4
  %98 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mft_record_size, align 4
  %add.ptr119 = getelementptr i8, ptr %97, i32 %99
  %cmp120 = icmp ugt ptr %add.ptr117, %add.ptr119
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.25) #12
  br label %put_err_out

if.end123:                                        ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #14
  %100 = call ptr @memcpy(ptr %call79, ptr %add.ptr115, i32 %95)
  br label %if.end131

if.end131:                                        ; preds = %if.end123, %if.end100.if.end131_crit_edge
  %101 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %attr_list, align 4
  %103 = ptrtoint ptr %attr_list_size to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %attr_list_size, align 8
  %add.ptr134 = getelementptr i8, ptr %102, i32 %104
  br label %for.cond135

for.cond135:                                      ; preds = %if.end169.for.cond135_crit_edge, %if.end131
  %al_entry.0 = phi ptr [ %102, %if.end131 ], [ %add.ptr157, %if.end169.for.cond135_crit_edge ]
  %cmp137 = icmp ult ptr %al_entry.0, %102
  %cmp140 = icmp ugt ptr %al_entry.0, %add.ptr134
  %or.cond528 = select i1 %cmp137, i1 true, i1 %cmp140
  %cmp144 = icmp eq ptr %al_entry.0, %add.ptr134
  %or.cond531 = select i1 %or.cond528, i1 true, i1 %cmp144
  br i1 %or.cond531, label %for.cond135.em_put_err_out_crit_edge, label %if.end147

for.cond135.em_put_err_out_crit_edge:             ; preds = %for.cond135
  call void @__sanitizer_cov_trace_pc() #14
  br label %em_put_err_out

if.end147:                                        ; preds = %for.cond135
  %length = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %al_entry.0, i32 0, i32 1
  %105 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool148.not = icmp eq i16 %106, 0
  %add.ptr151 = getelementptr i8, ptr %al_entry.0, i32 6
  %cmp152 = icmp ugt ptr %add.ptr151, %add.ptr134
  %or.cond532 = select i1 %tobool148.not, i1 true, i1 %cmp152
  br i1 %or.cond532, label %if.end147.em_put_err_out_crit_edge, label %lor.lhs.false154

if.end147.em_put_err_out_crit_edge:               ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %em_put_err_out

lor.lhs.false154:                                 ; preds = %if.end147
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  %conv156 = zext i16 %107 to i32
  %add.ptr157 = getelementptr i8, ptr %al_entry.0, i32 %conv156
  %cmp158 = icmp ugt ptr %add.ptr157, %add.ptr134
  br i1 %cmp158, label %lor.lhs.false154.em_put_err_out_crit_edge, label %if.end161

lor.lhs.false154.em_put_err_out_crit_edge:        ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #14
  br label %em_put_err_out

if.end161:                                        ; preds = %lor.lhs.false154
  %108 = ptrtoint ptr %al_entry.0 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %al_entry.0, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %110)
  %cmp166 = icmp ugt i32 %110, 128
  br i1 %cmp166, label %if.end161.em_put_err_out_crit_edge, label %if.end169

if.end161.em_put_err_out_crit_edge:               ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %em_put_err_out

if.end169:                                        ; preds = %if.end161
  %cmp171.not = icmp eq i32 %109, -2147483648
  br i1 %cmp171.not, label %if.end174, label %if.end169.for.cond135_crit_edge

if.end169.for.cond135_crit_edge:                  ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond135

if.end174:                                        ; preds = %if.end169
  %111 = ptrtoint ptr %add.ptr151 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool175.not = icmp eq i8 %112, 0
  br i1 %tobool175.not, label %if.end177, label %if.end174.em_put_err_out_crit_edge

if.end174.em_put_err_out_crit_edge:               ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %em_put_err_out

if.end177:                                        ; preds = %if.end174
  %lowest_vcn178 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %al_entry.0, i32 0, i32 4
  %113 = ptrtoint ptr %lowest_vcn178 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %lowest_vcn178, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %114)
  %tobool179.not = icmp eq i64 %114, 0
  br i1 %tobool179.not, label %if.end181, label %if.end177.em_put_err_out_crit_edge

if.end177.em_put_err_out_crit_edge:               ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %em_put_err_out

if.end181:                                        ; preds = %if.end177
  %mft_reference = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %al_entry.0, i32 0, i32 5
  %115 = ptrtoint ptr %mft_reference to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %mft_reference, align 1
  %117 = tail call i64 @llvm.bswap.i64(i64 %116)
  %conv183 = trunc i64 %117 to i32
  %118 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %conv183)
  %cmp184.not = icmp eq i32 %119, %conv183
  br i1 %cmp184.not, label %if.else187, label %if.then186

if.then186:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.26) #12
  br label %put_err_out

if.else187:                                       ; preds = %if.end181
  %shr189 = lshr i64 %117, 48
  %conv191 = trunc i64 %shr189 to i32
  %120 = ptrtoint ptr %seq_no to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %seq_no, align 8
  %conv194 = zext i16 %121 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv191, i32 %conv194)
  %cmp195.not = icmp eq i32 %conv191, %conv194
  br i1 %cmp195.not, label %if.else187.if.end203_crit_edge, label %if.else187.em_put_err_out_crit_edge

if.else187.em_put_err_out_crit_edge:              ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %em_put_err_out

if.else187.if.end203_crit_edge:                   ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.end203:                                        ; preds = %if.else187.if.end203_crit_edge, %if.end49.if.end203_crit_edge
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call46) #12
  %attr208 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call46, i32 0, i32 1
  %runlist = getelementptr i8, ptr %vi, i32 -432
  %i_size = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 14
  %initialized_size255 = getelementptr i8, ptr %vi, i32 -480
  %allocated_size259 = getelementptr i8, ptr %vi, i32 -472
  %i_uid = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 3
  %i_op = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 7
  %122 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 44
  br label %while.cond

while.cond:                                       ; preds = %if.end282.while.cond_crit_edge, %if.end203
  %last_vcn.0 = phi i64 [ 0, %if.end203 ], [ %last_vcn.1, %if.end282.while.cond_crit_edge ]
  %highest_vcn.0 = phi i64 [ 0, %if.end203 ], [ %163, %if.end282.while.cond_crit_edge ]
  %a.0 = phi ptr [ null, %if.end203 ], [ %125, %if.end282.while.cond_crit_edge ]
  %next_vcn.0 = phi i64 [ 0, %if.end203 ], [ %add, %if.end282.while.cond_crit_edge ]
  %call204 = tail call i32 @ntfs_attr_lookup(i32 noundef -2147483648, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef %next_vcn.0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call46) #12
  %123 = zext i32 %call204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %call204, label %while.cond.if.then295_crit_edge [
    i32 0, label %while.body
    i32 -2, label %if.end296
  ]

while.cond.if.then295_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then295

while.body:                                       ; preds = %while.cond
  %124 = ptrtoint ptr %attr208 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %attr208, align 4
  %non_resident209 = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %non_resident209 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %non_resident209, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool210.not = icmp eq i8 %127, 0
  br i1 %tobool210.not, label %if.then211, label %if.end212

if.then211:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.27) #12
  br label %put_err_out

if.end212:                                        ; preds = %while.body
  %flags213 = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 5
  %128 = ptrtoint ptr %flags213 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %flags213, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %129)
  %130 = icmp ult i16 %129, 64
  br i1 %130, label %if.end228, label %if.then227

if.then227:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.28) #12
  br label %put_err_out

if.end228:                                        ; preds = %if.end212
  %131 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %runlist, align 8
  %call230 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %3, ptr noundef %125, ptr noundef %132) #12
  %cmp.i539 = icmp ugt ptr %call230, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i539, label %if.then232, label %if.end234

if.then232:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %call230 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %133) #12
  br label %put_err_out

if.end234:                                        ; preds = %if.end228
  %134 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call230, ptr %runlist, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %next_vcn.0)
  %tobool237.not = icmp eq i64 %next_vcn.0, 0
  br i1 %tobool237.not, label %if.then238, label %if.end234.if.end275_crit_edge

if.end234.if.end275_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end275

if.then238:                                       ; preds = %if.end234
  %data239 = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 7
  %135 = ptrtoint ptr %data239 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 8)
  %136 = load i64, ptr %data239, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %136)
  %tobool241.not = icmp eq i64 %136, 0
  br i1 %tobool241.not, label %if.end243, label %if.then242

if.then242:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.30) #12
  br label %put_err_out

if.end243:                                        ; preds = %if.then238
  %allocated_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 7, i32 0, i32 5
  %137 = ptrtoint ptr %allocated_size to i32
  call void @__asan_loadN_noabort(i32 %137, i32 8)
  %138 = load i64, ptr %allocated_size, align 1
  %139 = tail call i64 @llvm.bswap.i64(i64 %138) #12
  %140 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom248 = zext i8 %141 to i64
  %shr249 = ashr i64 %139, %sh_prom248
  %data_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 7, i32 0, i32 6
  %142 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %142, i32 8)
  %143 = load i64, ptr %data_size, align 1
  %144 = tail call i64 @llvm.bswap.i64(i64 %143) #12
  %145 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %i_size, align 8
  %initialized_size253 = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 7, i32 0, i32 7
  %146 = ptrtoint ptr %initialized_size253 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 8)
  %147 = load i64, ptr %initialized_size253, align 1
  %148 = tail call i64 @llvm.bswap.i64(i64 %147) #12
  %149 = ptrtoint ptr %initialized_size255 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %initialized_size255, align 8
  %150 = ptrtoint ptr %allocated_size to i32
  call void @__asan_loadN_noabort(i32 %150, i32 8)
  %151 = load i64, ptr %allocated_size, align 1
  %152 = tail call i64 @llvm.bswap.i64(i64 %151) #12
  %153 = ptrtoint ptr %allocated_size259 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %allocated_size259, align 8
  %154 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %mft_record_size_bits, align 4
  %sh_prom263 = zext i8 %155 to i64
  %shr264 = ashr i64 %144, %sh_prom263
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shr264)
  %cmp265 = icmp ugt i64 %shr264, 4294967295
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.31) #12
  br label %put_err_out

if.end268:                                        ; preds = %if.end243
  %call269 = tail call fastcc i32 @ntfs_read_locked_inode(ptr noundef %vi)
  %call270 = tail call zeroext i1 @is_bad_inode(ptr noundef %vi) #12
  br i1 %call270, label %cleanup290.thread551, label %if.end272

cleanup290.thread551:                             ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.32) #12
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call46) #12
  tail call void @kvfree(ptr noundef nonnull %retval.0.i.i) #12
  br label %cleanup321

if.end272:                                        ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %i_uid, align 4
  %157 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %i_gid, align 8
  %158 = ptrtoint ptr %vi to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -32768, ptr %vi, align 8
  %159 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @ntfs_empty_inode_ops, ptr %i_op, align 8
  %160 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @ntfs_empty_file_ops, ptr %122, align 8
  br label %if.end275

if.end275:                                        ; preds = %if.end272, %if.end234.if.end275_crit_edge
  %last_vcn.1 = phi i64 [ %last_vcn.0, %if.end234.if.end275_crit_edge ], [ %shr249, %if.end272 ]
  %highest_vcn277 = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 7, i32 0, i32 1
  %161 = ptrtoint ptr %highest_vcn277 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 8)
  %162 = load i64, ptr %highest_vcn277, align 1
  %163 = tail call i64 @llvm.bswap.i64(i64 %162) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775806, i64 %163)
  %cmp279 = icmp ugt i64 %163, 9223372036854775806
  br i1 %cmp279, label %if.end275.if.then295_crit_edge, label %if.end282

if.end275.if.then295_crit_edge:                   ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then295

if.end282:                                        ; preds = %if.end275
  %add = add nuw nsw i64 %163, 1
  %data276 = getelementptr inbounds %struct.ATTR_RECORD, ptr %125, i32 0, i32 7
  %164 = ptrtoint ptr %data276 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 8)
  %165 = load i64, ptr %data276, align 1
  %166 = tail call i64 @llvm.bswap.i64(i64 %165) #12
  %cmp286 = icmp slt i64 %add, %166
  br i1 %cmp286, label %if.then288, label %if.end282.while.cond_crit_edge

if.end282.while.cond_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then288:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.33) #12
  br label %put_err_out

if.then295:                                       ; preds = %if.end275.if.then295_crit_edge, %while.cond.if.then295_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.34) #12
  br label %put_err_out

if.end296:                                        ; preds = %while.cond
  %tobool297.not = icmp eq ptr %a.0, null
  br i1 %tobool297.not, label %if.then298, label %if.end299

if.then298:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.35) #12
  br label %put_err_out

if.end299:                                        ; preds = %if.end296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %highest_vcn.0)
  %tobool300.not = icmp eq i64 %highest_vcn.0, 0
  br i1 %tobool300.not, label %if.end299.if.end306_crit_edge, label %land.lhs.true

if.end299.if.end306_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end306

land.lhs.true:                                    ; preds = %if.end299
  %sub301 = add i64 %last_vcn.0, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %highest_vcn.0, i64 %sub301)
  %cmp302.not = icmp eq i64 %highest_vcn.0, %sub301
  br i1 %cmp302.not, label %land.lhs.true.if.end306_crit_edge, label %if.then304

land.lhs.true.if.end306_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end306

if.then304:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.36) #12
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2147, ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef nonnull @.str.37, i64 noundef %highest_vcn.0, i64 noundef %sub301) #12
  br label %put_err_out

if.end306:                                        ; preds = %land.lhs.true.if.end306_crit_edge, %if.end299.if.end306_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call46) #12
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2151, ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef nonnull @.str.38) #12
  tail call void @kvfree(ptr noundef nonnull %retval.0.i.i) #12
  %dep_map = getelementptr i8, ptr %vi, i32 -360
  %wait_type_inner = getelementptr i8, ptr %vi, i32 -343
  %167 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.39, ptr noundef nonnull @mft_ni_runlist_lock_key, i32 noundef 0, i8 noundef zeroext %168, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %dep_map314 = getelementptr i8, ptr %vi, i32 -268
  %wait_type_inner317 = getelementptr i8, ptr %vi, i32 -251
  %169 = ptrtoint ptr %wait_type_inner317 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %wait_type_inner317, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map314, ptr noundef nonnull @.str.40, ptr noundef nonnull @mft_ni_mrec_lock_key, i32 noundef 0, i8 noundef zeroext %170, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %cleanup321

em_put_err_out:                                   ; preds = %if.else187.em_put_err_out_crit_edge, %if.end177.em_put_err_out_crit_edge, %if.end174.em_put_err_out_crit_edge, %if.end161.em_put_err_out_crit_edge, %lor.lhs.false154.em_put_err_out_crit_edge, %if.end147.em_put_err_out_crit_edge, %for.cond135.em_put_err_out_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.41) #12
  br label %put_err_out

put_err_out:                                      ; preds = %em_put_err_out, %if.then304, %if.then298, %if.then295, %if.then288, %if.then267, %if.then242, %if.then232, %if.then227, %if.then211, %if.then186, %if.then122, %if.then109, %if.then94, %if.then88, %if.then82, %if.then73, %if.then61, %if.then57
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call46) #12
  br label %err_out

err_out:                                          ; preds = %put_err_out, %if.end44.err_out_crit_edge, %if.then43, %if.then36, %if.then26, %if.then11, %if.then
  %m.0 = phi ptr [ null, %if.then ], [ %retval.0.i.i, %if.then26 ], [ %retval.0.i.i, %if.then36 ], [ %retval.0.i.i, %if.then43 ], [ %retval.0.i.i, %put_err_out ], [ null, %if.then11 ], [ %retval.0.i.i, %if.end44.err_out_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %1, ptr noundef nonnull @.str.42) #12
  tail call void @make_bad_inode(ptr noundef %vi) #12
  tail call void @kvfree(ptr noundef %m.0) #12
  br label %cleanup321

cleanup321:                                       ; preds = %err_out, %if.end306, %cleanup290.thread551
  %retval.2 = phi i32 [ -1, %err_out ], [ 0, %if.end306 ], [ -1, %cleanup290.thread551 ]
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_malloc_nofs(i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %size)
  %cmp.i = icmp ult i32 %size, 4097
  br i1 %cmp.i, label %do.body.i, label %if.end16.i, !prof !369

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not.i = icmp eq i32 %size, 0
  br i1 %tobool2.not.i, label %do.body12.i, label %do.end15.i, !prof !370

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #12, !srcloc !380
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 4096) #18
  br label %__ntfs_malloc.exit

if.end16.i:                                       ; preds = %entry
  %shr.i = lshr i32 %size, 12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %1)
  %cmp18.i = icmp ult i32 %shr.i, %1
  br i1 %cmp18.i, label %if.then25.i, label %if.end16.i.__ntfs_malloc.exit_crit_edge, !prof !369

if.end16.i.__ntfs_malloc.exit_crit_edge:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ntfs_malloc.exit

if.then25.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call26.i = tail call noalias ptr @__vmalloc(i32 noundef %size, i32 noundef 3138) #16
  br label %__ntfs_malloc.exit

__ntfs_malloc.exit:                               ; preds = %if.then25.i, %if.end16.i.__ntfs_malloc.exit_crit_edge, %do.end15.i
  %retval.0.i = phi ptr [ %call7.i.i, %do.end15.i ], [ %call26.i, %if.then25.i ], [ null, %if.end16.i.__ntfs_malloc.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_read_mst_fixup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_mapping_pairs_decompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @load_attribute_list(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_reinit_search_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_clear_extent_inode(ptr noundef %ni) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2206, ptr noundef nonnull @__func__.ntfs_clear_extent_inode, ptr noundef nonnull @.str.43, i32 noundef %1) #12
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body7, label %do.body3, !prof !369

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2208, 0\0A.popsection", ""() #12, !srcloc !381
  unreachable

do.body7:                                         ; preds = %entry
  %nr_extents = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 20
  %5 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp eq i32 %6, -1
  br i1 %cmp.not, label %do.end20, label %do.body15, !prof !369

do.body15:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2209, 0\0A.popsection", ""() #12, !srcloc !382
  unreachable

do.end20:                                         ; preds = %do.body7
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i37 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i37)
  %tobool22.not = icmp eq i32 %and1.i.i37, 0
  br i1 %tobool22.not, label %do.end20.if.end28_crit_edge, label %if.then23

do.end20.if.end28_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then23:                                        ; preds = %do.end20
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %9 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext, align 8
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %10, i32 0, i32 1
  %call25 = tail call zeroext i1 @is_bad_inode(ptr noundef %vfs_inode.i) #12
  br i1 %call25, label %if.then23.if.end28_crit_edge, label %if.then26

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %vol = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %11 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vol, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_clear_extent_inode, ptr noundef %14, ptr noundef nonnull @.str.44) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23.if.end28_crit_edge, %do.end20.if.end28_crit_edge
  tail call fastcc void @__ntfs_clear_inode(ptr noundef %ni)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @__func__.ntfs_destroy_extent_inode, ptr noundef nonnull @.str.1) #12
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %15 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.end6.i, label %do.body3.i, !prof !369

do.body3.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #12, !srcloc !383
  unreachable

do.end6.i:                                        ; preds = %if.end28
  %count.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !384
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !385
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %ntfs_destroy_extent_inode.exit, label %do.body8.i

do.body8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #12, !srcloc !387
  unreachable

ntfs_destroy_extent_inode.exit:                   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_inode_cache to i32))
  %18 = load ptr, ptr @ntfs_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef %ni) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ntfs_clear_inode(ptr noundef %ni) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runlist = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11, i32 1
  tail call void @down_write(ptr noundef %lock) #12
  %0 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runlist, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef nonnull %1) #12
  %2 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %runlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %lock) #12
  %attr_list = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 16
  %3 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr_list, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef nonnull %4) #12
  %5 = ptrtoint ptr %attr_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %attr_list, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %attr_list_rl = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 17
  %lock13 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 17, i32 1
  tail call void @down_write(ptr noundef %lock13) #12
  %6 = ptrtoint ptr %attr_list_rl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr_list_rl, align 8
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %if.end12.if.end22_crit_edge, label %if.then17

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %attr_list_rl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %attr_list_rl, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end12.if.end22_crit_edge
  tail call void @up_write(ptr noundef %lock13) #12
  %name_len = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %9 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not = icmp eq i32 %10, 0
  br i1 %tobool25.not, label %if.end22.if.end39_crit_edge, label %land.lhs.true

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end22
  %name = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 8
  %cmp.not = icmp eq ptr %12, @I30
  br i1 %cmp.not, label %land.lhs.true.if.end39_crit_edge, label %do.body

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body:                                          ; preds = %land.lhs.true
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %do.body33, label %do.end37, !prof !370

do.body33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2199, 0\0A.popsection", ""() #12, !srcloc !388
  unreachable

do.end37:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %12) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %land.lhs.true.if.end39_crit_edge, %if.end22.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_evict_big_inode(ptr noundef %vi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vi, i32 -528
  %i_data = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #12
  tail call void @clear_inode(ptr noundef %vi) #12
  %state.i = getelementptr i8, ptr %vi, i32 -464
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @is_bad_inode(ptr noundef %vi) #12
  %call.i = tail call zeroext i1 @is_bad_inode(ptr noundef %vi) #12
  br i1 %call.i, label %if.then.ntfs_commit_inode.exit_crit_edge, label %if.then.i

if.then.ntfs_commit_inode.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %ntfs_commit_inode.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @__ntfs_write_inode(ptr noundef %vi, i32 noundef 1) #12
  br label %ntfs_commit_inode.exit

ntfs_commit_inode.exit:                           ; preds = %if.then.i, %if.then.ntfs_commit_inode.exit_crit_edge
  br i1 %call2, label %ntfs_commit_inode.exit.if.end8_crit_edge, label %land.lhs.true

ntfs_commit_inode.exit.if.end8_crit_edge:         ; preds = %ntfs_commit_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %ntfs_commit_inode.exit
  %call4 = tail call zeroext i1 @is_bad_inode(ptr noundef %vi) #12
  br i1 %call4, label %land.lhs.true.if.then7_crit_edge, label %lor.lhs.false

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i69 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i69)
  %tobool6.not = icmp eq i32 %and1.i.i69, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end8_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_evict_big_inode, ptr noundef %5, ptr noundef nonnull @.str.45, i32 noundef %7) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false.if.end8_crit_edge, %ntfs_commit_inode.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %nr_extents = getelementptr i8, ptr %vi, i32 -12
  %8 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.cond.preheader:                               ; preds = %if.end8
  %10 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1172 = icmp sgt i32 %11, 0
  br i1 %cmp1172, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ext = getelementptr i8, ptr %vi, i32 -8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext, align 8
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.073
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void @ntfs_clear_extent_inode(ptr noundef %15)
  %inc = add nuw nsw i32 %i.073, 1
  %16 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_extents, align 4
  %cmp11 = icmp slt i32 %inc, %17
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ext12 = getelementptr i8, ptr %vi, i32 -8
  %18 = ptrtoint ptr %ext12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext12, align 8
  tail call void @kfree(ptr noundef %19) #12
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.end8.if.end13_crit_edge
  tail call fastcc void @__ntfs_clear_inode(ptr noundef %add.ptr.i)
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.end13.do.body_crit_edge, label %if.then16

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then16:                                        ; preds = %if.end13
  %23 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp18 = icmp eq i32 %24, -1
  br i1 %cmp18, label %if.then19, label %if.then16.do.body_crit_edge

if.then16.do.body_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %ext20 = getelementptr i8, ptr %vi, i32 -8
  %25 = ptrtoint ptr %ext20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ext20, align 8
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %26, i32 0, i32 1
  tail call void @iput(ptr noundef %vfs_inode.i) #12
  %27 = ptrtoint ptr %nr_extents to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %nr_extents, align 4
  %28 = ptrtoint ptr %ext20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ext20, align 8
  br label %do.body

do.body:                                          ; preds = %if.then19, %if.then16.do.body_crit_edge, %if.end13.do.body_crit_edge
  %page = getelementptr i8, ptr %vi, i32 -240
  %29 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page, align 8
  %tobool26.not = icmp eq ptr %30, null
  br i1 %tobool26.not, label %do.end36, label %do.body30, !prof !369

do.body30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2277, 0\0A.popsection", ""() #12, !srcloc !389
  unreachable

do.end36:                                         ; preds = %do.body
  %count = getelementptr i8, ptr %vi, i32 -452
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !384
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #12, !srcloc !385
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end45, label %do.body39

do.body39:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2279, 0\0A.popsection", ""() #12, !srcloc !390
  unreachable

if.end45:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_show_options(ptr noundef %sf, ptr nocapture noundef readonly %root) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %uid = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %uid, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.46, i32 noundef %call1) #12
  %gid = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack57 = load i32, ptr %gid, align 8
  %7 = insertvalue [1 x i32] undef, i32 %.unpack57, 0
  %call3 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.47, i32 noundef %call3) #12
  %fmask = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fmask, align 4
  %conv = zext i16 %9 to i32
  %dmask = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %dmask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dmask, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp = icmp eq i16 %9, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.48, i32 noundef %conv) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.49, i32 noundef %conv) #12
  %12 = ptrtoint ptr %dmask to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dmask, align 2
  %conv11 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.50, i32 noundef %conv11) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nls_map = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 54
  %14 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nls_map, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.51, ptr noundef %17) #12
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.52) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not = icmp eq i32 %23, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.53) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not = icmp eq i32 %26, 0
  br i1 %tobool20.not, label %if.then21, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.54) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @on_errors_arr to i32))
  %27 = load i32, ptr @on_errors_arr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool23.not64 = icmp eq i32 %27, 0
  br i1 %tobool23.not64, label %if.end22.for.end_crit_edge, label %for.body.lr.ph

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %on_errors = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %28 = phi i32 [ %27, %for.body.lr.ph ], [ %34, %for.inc.for.body_crit_edge ]
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %on_errors to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %on_errors, align 1
  %conv26 = zext i8 %30 to i32
  %and = and i32 %28, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %if.then28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %str = getelementptr [0 x %struct.option_t], ptr @on_errors_arr, i32 0, i32 %i.065, i32 1
  %31 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %str, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.55, ptr noundef %32) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %inc = add i32 %i.065, 1
  %arrayidx = getelementptr [0 x %struct.option_t], ptr @on_errors_arr, i32 0, i32 %inc
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %tobool23.not = icmp eq i32 %34, 0
  br i1 %tobool23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %mft_zone_multiplier = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %mft_zone_multiplier to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mft_zone_multiplier, align 8
  %conv31 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.56, i32 noundef %conv31) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_truncate(ptr noundef %vi) local_unnamed_addr #2 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vi, i32 -528
  %vol1 = getelementptr i8, ptr %vi, i32 -448
  %0 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol1, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2357, ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef nonnull @.str.43, i32 noundef %3) #12
  %state.i = getelementptr i8, ptr %vi, i32 -464
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body11, label %do.body5, !prof !369

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2358, 0\0A.popsection", ""() #12, !srcloc !391
  unreachable

do.body11:                                        ; preds = %entry
  %7 = ptrtoint ptr %vi to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vi, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp = icmp eq i16 %9, 16384
  br i1 %cmp, label %do.body20, label %do.body29, !prof !370

do.body20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2359, 0\0A.popsection", ""() #12, !srcloc !392
  unreachable

do.body29:                                        ; preds = %do.body11
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not = icmp eq i32 %12, 0
  br i1 %tobool31.not, label %do.body48, label %do.body39, !prof !369

do.body39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2360, 0\0A.popsection", ""() #12, !srcloc !393
  unreachable

do.body48:                                        ; preds = %do.body29
  %nr_extents = getelementptr i8, ptr %vi, i32 -12
  %13 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp49 = icmp slt i32 %14, 0
  br i1 %cmp49, label %do.body58, label %retry_truncate.preheader, !prof !370

retry_truncate.preheader:                         ; preds = %do.body48
  %lock = getelementptr i8, ptr %vi, i32 -428
  %ext = getelementptr i8, ptr %vi, i32 -8
  %type = getelementptr i8, ptr %vi, i32 -444
  %name = getelementptr i8, ptr %vi, i32 -440
  %name_len = getelementptr i8, ptr %vi, i32 -436
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 11
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 12
  %allocated_size = getelementptr i8, ptr %vi, i32 -472
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 14
  br label %retry_truncate

do.body58:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2361, 0\0A.popsection", ""() #12, !srcloc !394
  unreachable

retry_truncate:                                   ; preds = %do.end268.retry_truncate_crit_edge, %retry_truncate.preheader
  tail call void @down_write(ptr noundef %lock) #12
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool68.not = icmp eq i32 %17, 0
  br i1 %tobool68.not, label %retry_truncate.if.end70_crit_edge, label %if.else

retry_truncate.if.end70_crit_edge:                ; preds = %retry_truncate
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.else:                                          ; preds = %retry_truncate
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else, %retry_truncate.if.end70_crit_edge
  %base_ni.0 = phi ptr [ %19, %if.else ], [ %add.ptr.i, %retry_truncate.if.end70_crit_edge ]
  %call71 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #12
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call71 to i32
  %i_sb = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %22, ptr noundef nonnull @.str.58, i32 noundef %24, i32 noundef %20, ptr noundef nonnull @.str.57) #12
  br label %bad_out

if.end76:                                         ; preds = %if.end70
  %call77 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0, ptr noundef %call71) #12
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %bad_out.thread1035, label %if.end90, !prof !370

bad_out.thread1035:                               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb88 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb88, align 4
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %26, ptr noundef nonnull @.str.59, i32 noundef %28, ptr noundef nonnull @.str.57) #12
  br label %if.then658

if.end90:                                         ; preds = %if.end76
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 8
  %33 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %name_len, align 4
  %call91 = tail call i32 @ntfs_attr_lookup(i32 noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call77) #12
  %35 = zext i32 %call91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call91, label %if.else105 [
    i32 0, label %if.end109
    i32 -2, label %if.then102
  ], !prof !374

if.then102:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb103 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb103, align 4
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %37, ptr noundef nonnull @.str.60, i32 noundef %39, ptr noundef nonnull @.str.57) #12
  br label %if.then654

if.else105:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb106 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb106, align 4
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %41, ptr noundef nonnull @.str.61, i32 noundef %43, i32 noundef %call91, ptr noundef nonnull @.str.57) #12
  br label %bad_out

if.end109:                                        ; preds = %if.end90
  %44 = ptrtoint ptr %call77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call77, align 4
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call77, i32 0, i32 1
  %46 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %attr, align 4
  %call110 = tail call fastcc i64 @i_size_read(ptr noundef %vi)
  %non_resident.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 7
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %data.i, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %conv.i = zext i32 %52 to i64
  br label %ntfs_attr_size.exit

if.end.i:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %data_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 7, i32 0, i32 6
  %53 = ptrtoint ptr %data_size.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %data_size.i, align 1
  %55 = tail call i64 @llvm.bswap.i64(i64 %54) #12
  br label %ntfs_attr_size.exit

ntfs_attr_size.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %55, %if.end.i ], [ %conv.i, %if.then.i ]
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i, align 4
  %58 = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool113.not = icmp eq i32 %58, 0
  br i1 %tobool113.not, label %if.else118, label %if.then114

if.then114:                                       ; preds = %ntfs_attr_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cluster_size, align 8
  %conv115 = zext i32 %60 to i64
  %add = add i64 %call110, -1
  %sub = add i64 %add, %conv115
  %61 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cluster_size_mask, align 4
  %conv116 = zext i32 %62 to i64
  %neg = xor i64 %conv116, -1
  %and117 = and i64 %sub, %neg
  br label %do.body122

if.else118:                                       ; preds = %ntfs_attr_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add119 = add i64 %call110, 7
  %and120 = and i64 %add119, -8
  br label %do.body122

do.body122:                                       ; preds = %if.else118, %if.then114
  %new_alloc_size.0 = phi i64 [ %and117, %if.then114 ], [ %and120, %if.else118 ]
  %call125 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #12
  %63 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %allocated_size, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call125) #12
  %sub137 = sub i64 %call110, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub137)
  %cmp138 = icmp sgt i64 %sub137, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %call110, i64 %retval.0.i)
  %cmp141 = icmp ne i64 %call110, %retval.0.i
  %sub146 = sub i64 %new_alloc_size.0, %64
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub146)
  %cmp147 = icmp sgt i64 %sub146, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %new_alloc_size.0, i64 %64)
  %cmp150 = icmp ne i64 %new_alloc_size.0, %64
  %tobool155.not1524 = xor i1 %cmp141, true
  %tobool155.not = and i1 %cmp138, %tobool155.not1524
  %tobool156.not1061 = xor i1 %cmp150, true
  %tobool156.not = and i1 %cmp147, %tobool156.not1061
  %or.cond = select i1 %tobool155.not, i1 %tobool156.not, i1 false
  br i1 %or.cond, label %do.body122.unm_done_crit_edge, label %if.end158

do.body122.unm_done_crit_edge:                    ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_done

if.end158:                                        ; preds = %do.body122
  br i1 %tobool155.not, label %if.end158.if.end184_crit_edge, label %if.then160

if.end158.if.end184_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184

if.then160:                                       ; preds = %if.end158
  %65 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type, align 4
  %call162 = tail call i32 @ntfs_attr_size_bounds_check(ptr noundef %1, i32 noundef %66, i64 noundef %call110) #12
  %67 = zext i32 %call162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %call162, label %if.else178 [
    i32 0, label %if.then160.if.end184_crit_edge
    i32 -34, label %if.then173
  ], !prof !374

if.then160.if.end184_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184

if.then173:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %70 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call110, i64 %retval.0.i)
  %cmp175 = icmp sgt i64 %call110, %retval.0.i
  %cond = select i1 %cmp175, ptr @.str.63, ptr @.str.64
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %69, ptr noundef nonnull @.str.62, i32 noundef %71, ptr noundef nonnull %cond, i32 noundef %74) #12
  br label %if.then666.sink.split

if.else178:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %77 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_ino, align 8
  %79 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %76, ptr noundef nonnull @.str.65, i32 noundef %78, i32 noundef %81) #12
  br label %if.then666.sink.split

if.end184:                                        ; preds = %if.then160.if.end184_crit_edge, %if.end158.if.end184_crit_edge
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state.i, align 4
  %84 = and i32 %83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool186.not = icmp eq i32 %84, 0
  br i1 %tobool186.not, label %lor.lhs.false, label %if.end184.if.then189_crit_edge

if.end184.if.then189_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then189

lor.lhs.false:                                    ; preds = %if.end184
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %state.i, align 4
  %87 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool188.not = icmp eq i32 %87, 0
  br i1 %tobool188.not, label %if.end194, label %lor.lhs.false.if.then189_crit_edge

lor.lhs.false.if.then189_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then189

if.then189:                                       ; preds = %lor.lhs.false.if.then189_crit_edge, %if.end184.if.then189_crit_edge
  %i_sb190 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %88 = ptrtoint ptr %i_sb190 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i_sb190, align 4
  %90 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %state.i, align 4
  %92 = and i32 %91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool192.not = icmp eq i32 %92, 0
  %cond193 = select i1 %tobool192.not, ptr @.str.68, ptr @.str.67
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %89, ptr noundef nonnull @.str.66, ptr noundef nonnull %cond193) #12
  br label %if.else659

if.end194:                                        ; preds = %lor.lhs.false
  %93 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool195.not = icmp eq i8 %94, 0
  br i1 %tobool195.not, label %do.body198, label %do.body310

do.body198:                                       ; preds = %if.end194
  %95 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %state.i, align 4
  %97 = and i32 %96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool200.not = icmp eq i32 %97, 0
  br i1 %tobool200.not, label %do.end216, label %do.body208, !prof !369

do.body208:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2481, 0\0A.popsection", ""() #12, !srcloc !395
  unreachable

do.end216:                                        ; preds = %do.body198
  %98 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mft_record_size, align 4
  %conv217 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call110, i64 %conv217)
  %cmp218 = icmp slt i64 %call110, %conv217
  br i1 %cmp218, label %land.lhs.true220, label %do.end216.do.body250_crit_edge

do.end216.do.body250_crit_edge:                   ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body250

land.lhs.true220:                                 ; preds = %do.end216
  %conv221 = trunc i64 %call110 to i32
  %call222 = tail call i32 @ntfs_resident_attr_value_resize(ptr noundef %45, ptr noundef %47, i32 noundef %conv221) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.then224, label %land.lhs.true220.do.body250_crit_edge

land.lhs.true220.do.body250_crit_edge:            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body250

if.then224:                                       ; preds = %land.lhs.true220
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call77, i32 0, i32 3
  %100 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ntfs_ino, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %103) #12
  %104 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ntfs_ino, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %105, i32 0, i32 3
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i963 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i963, label %if.then.i964, label %if.then224.mark_mft_record_dirty.exit_crit_edge

if.then224.mark_mft_record_dirty.exit_crit_edge:  ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  br label %mark_mft_record_dirty.exit

if.then.i964:                                     ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mark_mft_record_dirty(ptr noundef %105) #12
  br label %mark_mft_record_dirty.exit

mark_mft_record_dirty.exit:                       ; preds = %if.then.i964, %if.then224.mark_mft_record_dirty.exit_crit_edge
  %call233 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i) #12
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 1
  %106 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %length, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.78, ptr %data, i32 0, i32 1
  %109 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %value_offset, align 1
  %111 = tail call i16 @llvm.bswap.i16(i16 %110)
  %conv236 = zext i16 %111 to i32
  %sub237 = sub i32 %108, %conv236
  %conv238 = zext i32 %sub237 to i64
  %112 = ptrtoint ptr %allocated_size to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv238, ptr %allocated_size, align 8
  %initialized_size = getelementptr i8, ptr %vi, i32 -480
  %113 = ptrtoint ptr %initialized_size to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %call110, ptr %initialized_size, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call233) #12
  br label %unm_done

do.body250:                                       ; preds = %land.lhs.true220.do.body250_crit_edge, %do.end216.do.body250_crit_edge
  br i1 %cmp138, label %do.end268, label %do.body260, !prof !369

do.body260:                                       ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2525, 0\0A.popsection", ""() #12, !srcloc !396
  unreachable

do.end268:                                        ; preds = %do.body250
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call77) #12
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #12
  tail call void @up_write(ptr noundef %lock) #12
  %conv271 = trunc i64 %retval.0.i to i32
  %call272 = tail call i32 @ntfs_attr_make_non_resident(ptr noundef %add.ptr.i, i32 noundef %conv271) #12
  %114 = zext i32 %call272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %call272, label %conv_err_out [
    i32 0, label %do.end268.retry_truncate_crit_edge
    i32 -28, label %do.end268.if.else683_crit_edge
    i32 -1, label %if.else683.loopexit1926
  ], !prof !397

do.end268.if.else683_crit_edge:                   ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else683

do.end268.retry_truncate_crit_edge:               ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry_truncate

do.body310:                                       ; preds = %if.end194
  %attr.le = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call77, i32 0, i32 1
  %runlist.le = getelementptr i8, ptr %vi, i32 -432
  %115 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %state.i, align 4
  %117 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool312.not = icmp eq i32 %117, 0
  br i1 %tobool312.not, label %do.body322, label %do.end330, !prof !370

do.body322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2600, 0\0A.popsection", ""() #12, !srcloc !398
  unreachable

do.end330:                                        ; preds = %do.body310
  br i1 %cmp147, label %do.end330.if.end349_crit_edge, label %if.then333

do.end330.if.end349_crit_edge:                    ; preds = %do.end330
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end349

if.then333:                                       ; preds = %do.end330
  %highest_vcn335 = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 7, i32 0, i32 1
  %118 = ptrtoint ptr %highest_vcn335 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %highest_vcn335, align 1
  %120 = tail call i64 @llvm.bswap.i64(i64 %119) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %120)
  %cmp337 = icmp sgt i64 %120, 0
  br i1 %cmp337, label %land.lhs.true339, label %if.then333.if.end349_crit_edge

if.then333.if.end349_crit_edge:                   ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end349

land.lhs.true339:                                 ; preds = %if.then333
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  %121 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %122 to i64
  %shr = ashr i64 %64, %sh_prom
  %add341 = add nuw i64 %120, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %add341)
  %cmp342 = icmp sgt i64 %shr, %add341
  br i1 %cmp342, label %if.then344, label %land.lhs.true339.if.end349_crit_edge

land.lhs.true339.if.end349_crit_edge:             ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end349

if.then344:                                       ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 8
  %125 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %i_ino, align 8
  %127 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %type, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %124, ptr noundef nonnull @.str.72, i32 noundef %126, i32 noundef %129) #12
  br label %if.else659

if.end349:                                        ; preds = %land.lhs.true339.if.end349_crit_edge, %if.then333.if.end349_crit_edge, %do.end330.if.end349_crit_edge
  br i1 %cmp138, label %if.else407, label %do.body353

do.body353:                                       ; preds = %if.end349
  %call360 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i) #12
  %initialized_size363 = getelementptr i8, ptr %vi, i32 -480
  %130 = ptrtoint ptr %initialized_size363 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %initialized_size363, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call110, i64 %131)
  %cmp364 = icmp slt i64 %call110, %131
  br i1 %cmp364, label %if.then366, label %do.body353.if.end371_crit_edge

do.body353.if.end371_crit_edge:                   ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = tail call i64 @llvm.bswap.i64(i64 %call110) #12
  br label %if.end371

if.then366:                                       ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %initialized_size363 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %call110, ptr %initialized_size363, align 8
  %133 = tail call i64 @llvm.bswap.i64(i64 %call110) #12
  %initialized_size370 = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 7, i32 0, i32 7
  %134 = ptrtoint ptr %initialized_size370 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %133, ptr %initialized_size370, align 1
  br label %if.end371

if.end371:                                        ; preds = %if.then366, %do.body353.if.end371_crit_edge
  %.pre-phi = phi i64 [ %.pre, %do.body353.if.end371_crit_edge ], [ %133, %if.then366 ]
  %data_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %47, i32 0, i32 7, i32 0, i32 6
  %135 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %135, i32 8)
  store i64 %.pre-phi, ptr %data_size, align 1
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call360) #12
  %ntfs_ino383 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call77, i32 0, i32 3
  %136 = ptrtoint ptr %ntfs_ino383 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ntfs_ino383, align 4
  %page.i969 = getelementptr inbounds %struct._ntfs_inode, ptr %137, i32 0, i32 13
  %138 = ptrtoint ptr %page.i969 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %page.i969, align 8
  tail call void @flush_dcache_page(ptr noundef %139) #12
  %140 = ptrtoint ptr %ntfs_ino383 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ntfs_ino383, align 4
  %state.i.i970 = getelementptr inbounds %struct._ntfs_inode, ptr %141, i32 0, i32 3
  %call.i.i971 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i970) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i971)
  %tobool.not.i972 = icmp eq i32 %call.i.i971, 0
  br i1 %tobool.not.i972, label %if.then.i973, label %if.end371.mark_mft_record_dirty.exit975_crit_edge

if.end371.mark_mft_record_dirty.exit975_crit_edge: ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #14
  br label %mark_mft_record_dirty.exit975

if.then.i973:                                     ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mark_mft_record_dirty(ptr noundef %141) #12
  br label %mark_mft_record_dirty.exit975

mark_mft_record_dirty.exit975:                    ; preds = %if.then.i973, %if.end371.mark_mft_record_dirty.exit975_crit_edge
  br i1 %tobool156.not, label %mark_mft_record_dirty.exit975.unm_done_crit_edge, label %do.body388

mark_mft_record_dirty.exit975.unm_done_crit_edge: ; preds = %mark_mft_record_dirty.exit975
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_done

do.body388:                                       ; preds = %mark_mft_record_dirty.exit975
  %cmp389 = and i1 %cmp150, %cmp147
  br i1 %cmp389, label %do.body398, label %do.body388.if.end422_crit_edge, !prof !370

do.body388.if.end422_crit_edge:                   ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end422

do.body398:                                       ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2646, 0\0A.popsection", ""() #12, !srcloc !399
  unreachable

if.else407:                                       ; preds = %if.end349
  %cmp408 = and i1 %cmp150, %cmp147
  br i1 %cmp408, label %if.then410, label %if.end418

if.then410:                                       ; preds = %if.else407
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call77) #12
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #12
  tail call void @up_write(ptr noundef %lock) #12
  %spec.select941 = select i1 %tobool155.not, i64 -1, i64 %call110
  %call416 = tail call i64 @ntfs_attr_extend_allocation(ptr noundef %add.ptr.i, i64 noundef %call110, i64 noundef %spec.select941, i64 noundef -1) #12
  %conv417 = trunc i64 %call416 to i32
  br label %done

if.end418:                                        ; preds = %if.else407
  br i1 %tobool156.not, label %if.end418.alloc_done_crit_edge, label %if.end418.if.end422_crit_edge

if.end418.if.end422_crit_edge:                    ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end422

if.end418.alloc_done_crit_edge:                   ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_done

if.end422:                                        ; preds = %if.end418.if.end422_crit_edge, %do.body388.if.end422_crit_edge
  %cluster_size_bits423 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  %142 = ptrtoint ptr %cluster_size_bits423 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %cluster_size_bits423, align 8
  %sh_prom425 = zext i8 %143 to i64
  %shr426 = ashr i64 %new_alloc_size.0, %sh_prom425
  %call.i = tail call i64 @__ntfs_cluster_free(ptr noundef %add.ptr.i, i64 noundef %shr426, i64 noundef -1, ptr noundef nonnull %call77, i1 noundef zeroext false) #12
  %144 = ptrtoint ptr %call77 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call77, align 4
  %146 = ptrtoint ptr %attr.le to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %attr.le, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp430 = icmp slt i64 %call.i, 0
  br i1 %cmp430, label %if.then438, label %if.end422.if.end440_crit_edge, !prof !370

if.end422.if.end440_crit_edge:                    ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end440

if.then438:                                       ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %149, ptr noundef nonnull @.str.73, i64 noundef %call.i) #12
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #12
  br label %if.end440

if.end440:                                        ; preds = %if.then438, %if.end422.if.end440_crit_edge
  %nr_freed.0 = phi i64 [ 0, %if.then438 ], [ %call.i, %if.end422.if.end440_crit_edge ]
  %150 = ptrtoint ptr %cluster_size_bits423 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %cluster_size_bits423, align 8
  %sh_prom444 = zext i8 %151 to i64
  %shr445 = ashr i64 %new_alloc_size.0, %sh_prom444
  %call446 = tail call i32 @ntfs_rl_truncate_nolock(ptr noundef %1, ptr noundef %runlist.le, i64 noundef %shr445) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446)
  %tobool447.not = icmp ne i32 %call446, 0
  %cmp.i976 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  %or.cond1060 = select i1 %tobool447.not, i1 true, i1 %cmp.i976
  br i1 %or.cond1060, label %if.then456, label %if.end468, !prof !400

if.then456:                                       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 8
  %cond460 = select i1 %cmp.i976, ptr @.str.75, ptr @.str.76
  %154 = ptrtoint ptr %145 to i32
  %spec.select = select i1 %cmp.i976, i32 %154, i32 %call446
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %153, ptr noundef nonnull @.str.74, ptr noundef nonnull %cond460, i32 noundef %spec.select, ptr noundef nonnull @.str.162) #12
  br label %if.then654

if.end468:                                        ; preds = %if.end440
  %155 = ptrtoint ptr %runlist.le to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %runlist.le, align 8
  %call470 = tail call i32 @ntfs_get_size_for_mapping_pairs(ptr noundef %1, ptr noundef %156, i64 noundef 0, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call470)
  %cmp471 = icmp slt i32 %call470, 1
  br i1 %cmp471, label %if.then479, label %if.end483, !prof !370

if.then479:                                       ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 8
  %159 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %i_ino, align 8
  %161 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %type, align 4
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %158, ptr noundef nonnull @.str.77, i32 noundef %160, i32 noundef %163, i32 noundef %call470, ptr noundef nonnull @.str.162) #12
  br label %if.then654

if.end483:                                        ; preds = %if.end468
  %mapping_pairs_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %147, i32 0, i32 7, i32 0, i32 2
  %164 = ptrtoint ptr %mapping_pairs_offset to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %mapping_pairs_offset, align 1
  %166 = tail call i16 @llvm.bswap.i16(i16 %165)
  %conv485 = zext i16 %166 to i32
  %add486 = add nuw i32 %call470, %conv485
  %call487 = tail call i32 @ntfs_attr_record_resize(ptr noundef %145, ptr noundef %147, i32 noundef %add486) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call487)
  %tobool489.not = icmp eq i32 %call487, 0
  br i1 %tobool489.not, label %do.end505, label %do.body497, !prof !369

do.body497:                                       ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2731, 0\0A.popsection", ""() #12, !srcloc !401
  unreachable

do.end505:                                        ; preds = %if.end483
  %167 = ptrtoint ptr %mapping_pairs_offset to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %mapping_pairs_offset, align 1
  %169 = tail call i16 @llvm.bswap.i16(i16 %168)
  %conv508 = zext i16 %169 to i32
  %add.ptr = getelementptr i8, ptr %147, i32 %conv508
  %170 = ptrtoint ptr %runlist.le to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %runlist.le, align 8
  %call511 = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %call470, ptr noundef %171, i64 noundef 0, i64 noundef -1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call511)
  %tobool512.not = icmp eq i32 %call511, 0
  br i1 %tobool512.not, label %if.end523, label %if.then519, !prof !369

if.then519:                                       ; preds = %do.end505
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 8
  %174 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %i_ino, align 8
  %176 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %type, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %173, ptr noundef nonnull @.str.78, i32 noundef %175, i32 noundef %178, i32 noundef %call511, ptr noundef nonnull @.str.162) #12
  br label %if.then654

if.end523:                                        ; preds = %do.end505
  %179 = ptrtoint ptr %cluster_size_bits423 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %cluster_size_bits423, align 8
  %sh_prom526 = zext i8 %180 to i64
  %shr527 = ashr i64 %new_alloc_size.0, %sh_prom526
  %sub528 = add i64 %shr527, -1
  %181 = tail call i64 @llvm.bswap.i64(i64 %sub528) #12
  %highest_vcn531 = getelementptr inbounds %struct.ATTR_RECORD, ptr %147, i32 0, i32 7, i32 0, i32 1
  %182 = ptrtoint ptr %highest_vcn531 to i32
  call void @__asan_storeN_noabort(i32 %182, i32 8)
  store i64 %181, ptr %highest_vcn531, align 1
  %call539 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i) #12
  %183 = ptrtoint ptr %allocated_size to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %new_alloc_size.0, ptr %allocated_size, align 8
  %184 = tail call i64 @llvm.bswap.i64(i64 %new_alloc_size.0) #12
  %allocated_size545 = getelementptr inbounds %struct.ATTR_RECORD, ptr %147, i32 0, i32 7, i32 0, i32 5
  %185 = ptrtoint ptr %allocated_size545 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 8)
  store i64 %184, ptr %allocated_size545, align 1
  %186 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %state.i, align 4
  %188 = and i32 %187, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool547.not = icmp eq i32 %188, 0
  br i1 %tobool547.not, label %lor.lhs.false548, label %if.end523.if.then551_crit_edge

if.end523.if.then551_crit_edge:                   ; preds = %if.end523
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then551

lor.lhs.false548:                                 ; preds = %if.end523
  %189 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %state.i, align 4
  %191 = and i32 %190, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool550.not = icmp eq i32 %191, 0
  br i1 %tobool550.not, label %lor.lhs.false548.do.body591.sink.split_crit_edge, label %lor.lhs.false548.if.then551_crit_edge

lor.lhs.false548.if.then551_crit_edge:            ; preds = %lor.lhs.false548
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then551

lor.lhs.false548.do.body591.sink.split_crit_edge: ; preds = %lor.lhs.false548
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body591.sink.split

if.then551:                                       ; preds = %lor.lhs.false548.if.then551_crit_edge, %if.end523.if.then551_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr_freed.0)
  %tobool552.not = icmp eq i64 %nr_freed.0, 0
  br i1 %tobool552.not, label %if.then551.do.body591_crit_edge, label %if.then553

if.then551.do.body591_crit_edge:                  ; preds = %if.then551
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body591

if.then553:                                       ; preds = %if.then551
  %192 = ptrtoint ptr %cluster_size_bits423 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %cluster_size_bits423, align 8
  %sh_prom556 = zext i8 %193 to i64
  %shl = shl i64 %nr_freed.0, %sh_prom556
  %itype = getelementptr i8, ptr %vi, i32 -120
  %194 = ptrtoint ptr %itype to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %itype, align 8
  %sub557 = sub i64 %195, %shl
  store i64 %sub557, ptr %itype, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub557)
  %cmp561 = icmp slt i64 %sub557, 0
  br i1 %cmp561, label %do.body570, label %do.end578, !prof !370

do.body570:                                       ; preds = %if.then553
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2757, 0\0A.popsection", ""() #12, !srcloc !402
  unreachable

do.end578:                                        ; preds = %if.then553
  call void @__sanitizer_cov_trace_pc() #14
  %196 = tail call i64 @llvm.bswap.i64(i64 %sub557) #12
  %compressed_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %147, i32 0, i32 7, i32 0, i32 8
  %197 = ptrtoint ptr %compressed_size to i32
  call void @__asan_storeN_noabort(i32 %197, i32 8)
  store i64 %196, ptr %compressed_size, align 1
  %198 = ptrtoint ptr %itype to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %itype, align 8
  br label %do.body591.sink.split

do.body591.sink.split:                            ; preds = %do.end578, %lor.lhs.false548.do.body591.sink.split_crit_edge
  %new_alloc_size.0.lcssa1723.sink = phi i64 [ %199, %do.end578 ], [ %new_alloc_size.0, %lor.lhs.false548.do.body591.sink.split_crit_edge ]
  %shr588 = ashr i64 %new_alloc_size.0.lcssa1723.sink, 9
  %i_blocks589 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 22
  %200 = ptrtoint ptr %i_blocks589 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %shr588, ptr %i_blocks589, align 8
  br label %do.body591

do.body591:                                       ; preds = %do.body591.sink.split, %if.then551.do.body591_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call539) #12
  br label %alloc_done

alloc_done:                                       ; preds = %do.body591, %if.end418.alloc_done_crit_edge
  %a.0 = phi ptr [ %147, %do.body591 ], [ %47, %if.end418.alloc_done_crit_edge ]
  %cmp600 = and i1 %cmp141, %cmp138
  br i1 %cmp600, label %if.then602, label %alloc_done.if.end606_crit_edge

alloc_done.if.end606_crit_edge:                   ; preds = %alloc_done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end606

if.then602:                                       ; preds = %alloc_done
  call void @__sanitizer_cov_trace_pc() #14
  %201 = tail call i64 @llvm.bswap.i64(i64 %call110) #12
  %data_size605 = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0, i32 0, i32 7, i32 0, i32 6
  %202 = ptrtoint ptr %data_size605 to i32
  call void @__asan_storeN_noabort(i32 %202, i32 8)
  store i64 %201, ptr %data_size605, align 1
  br label %if.end606

if.end606:                                        ; preds = %if.then602, %alloc_done.if.end606_crit_edge
  %ntfs_ino607 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call77, i32 0, i32 3
  %203 = ptrtoint ptr %ntfs_ino607 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ntfs_ino607, align 4
  %page.i985 = getelementptr inbounds %struct._ntfs_inode, ptr %204, i32 0, i32 13
  %205 = ptrtoint ptr %page.i985 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %page.i985, align 8
  tail call void @flush_dcache_page(ptr noundef %206) #12
  %207 = ptrtoint ptr %ntfs_ino607 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ntfs_ino607, align 4
  %state.i.i986 = getelementptr inbounds %struct._ntfs_inode, ptr %208, i32 0, i32 3
  %call.i.i987 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i986) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i987)
  %tobool.not.i988 = icmp eq i32 %call.i.i987, 0
  br i1 %tobool.not.i988, label %if.then.i989, label %if.end606.unm_done_crit_edge

if.end606.unm_done_crit_edge:                     ; preds = %if.end606
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_done

if.then.i989:                                     ; preds = %if.end606
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mark_mft_record_dirty(ptr noundef %208) #12
  br label %unm_done

unm_done:                                         ; preds = %if.then.i989, %if.end606.unm_done_crit_edge, %mark_mft_record_dirty.exit975.unm_done_crit_edge, %mark_mft_record_dirty.exit, %do.body122.unm_done_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call77) #12
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #12
  tail call void @up_write(ptr noundef %lock) #12
  br label %done

done:                                             ; preds = %unm_done, %if.then410
  %err.4 = phi i32 [ 0, %unm_done ], [ %conv417, %if.then410 ]
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1
  %i_flags = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1, i32 4
  %209 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %i_flags, align 4
  %and612 = and i32 %210, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and612)
  %tobool613.not = icmp eq i32 %and612, 0
  br i1 %tobool613.not, label %land.lhs.true614, label %done.if.end637_crit_edge

done.if.end637_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end637

land.lhs.true614:                                 ; preds = %done
  %i_sb616 = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1, i32 8
  %211 = ptrtoint ptr %i_sb616 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %i_sb616, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %212, i32 0, i32 10
  %213 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then618, label %land.lhs.true614.if.end637_crit_edge

land.lhs.true614.if.end637_crit_edge:             ; preds = %land.lhs.true614
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end637

if.then618:                                       ; preds = %land.lhs.true614
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #12
  %215 = call ptr @memset(ptr %now, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %now, ptr noundef %vfs_inode.i) #12
  %i_mtime = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1, i32 16
  %216 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %i_mtime, align 8
  %218 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %217, i64 %219)
  %cmp.i995 = icmp eq i64 %217, %219
  br i1 %cmp.i995, label %timespec64_equal.exit, label %if.then618.if.then634.critedge_crit_edge

if.then618.if.then634.critedge_crit_edge:         ; preds = %if.then618
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then634.critedge

timespec64_equal.exit:                            ; preds = %if.then618
  %tv_nsec.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1, i32 16, i32 1
  %220 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec2.i = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %222 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %tv_nsec2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %223)
  %cmp3.i.not = icmp eq i32 %221, %223
  br i1 %cmp3.i.not, label %lor.lhs.false623, label %timespec64_equal.exit.if.then634.critedge_crit_edge

timespec64_equal.exit.if.then634.critedge_crit_edge: ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then634.critedge

lor.lhs.false623:                                 ; preds = %timespec64_equal.exit
  %i_ctime = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1, i32 17
  %224 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %225, i64 %217)
  %cmp.i997 = icmp eq i64 %225, %217
  br i1 %cmp.i997, label %timespec64_equal.exit1003, label %lor.lhs.false623.if.then634.critedge_crit_edge

lor.lhs.false623.if.then634.critedge_crit_edge:   ; preds = %lor.lhs.false623
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then634.critedge

timespec64_equal.exit1003:                        ; preds = %lor.lhs.false623
  %tv_nsec.i998 = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1, i32 17, i32 1
  %226 = ptrtoint ptr %tv_nsec.i998 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tv_nsec.i998, align 8
  %228 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tv_nsec2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %229)
  %cmp3.i1000.not = icmp eq i32 %227, %229
  br i1 %cmp3.i1000.not, label %if.end628, label %timespec64_equal.exit1003.if.then634.critedge_crit_edge

timespec64_equal.exit1003.if.then634.critedge_crit_edge: ; preds = %timespec64_equal.exit1003
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then634.critedge

if.end628:                                        ; preds = %timespec64_equal.exit1003
  call void @__sanitizer_cov_trace_pc() #14
  %230 = call ptr @memcpy(ptr %i_mtime, ptr %now, i32 16)
  %231 = call ptr @memcpy(ptr %i_ctime, ptr %now, i32 16)
  br label %if.end636

if.then634.critedge:                              ; preds = %timespec64_equal.exit1003.if.then634.critedge_crit_edge, %lor.lhs.false623.if.then634.critedge_crit_edge, %timespec64_equal.exit.if.then634.critedge_crit_edge, %if.then618.if.then634.critedge_crit_edge
  %232 = call ptr @memcpy(ptr %i_mtime, ptr %now, i32 16)
  %i_ctime632.c = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_ni.0, i32 0, i32 1, i32 17
  %233 = call ptr @memcpy(ptr %i_ctime632.c, ptr %now, i32 16)
  call void @__mark_inode_dirty(ptr noundef %vfs_inode.i, i32 noundef 1) #12
  br label %if.end636

if.end636:                                        ; preds = %if.then634.critedge, %if.end628
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #12
  br label %if.end637

if.end637:                                        ; preds = %if.end636, %land.lhs.true614.if.end637_crit_edge, %done.if.end637_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool638.not = icmp eq i32 %err.4, 0
  br i1 %tobool638.not, label %if.then647, label %if.end637.cleanup_crit_edge, !prof !369

if.end637.cleanup_crit_edge:                      ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then647:                                       ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 10, ptr noundef %state.i) #12
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2810, ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef nonnull @.str.38) #12
  br label %cleanup

bad_out:                                          ; preds = %if.else105, %if.then73
  %ctx.1 = phi ptr [ null, %if.then73 ], [ %call77, %if.else105 ]
  %m.1 = phi ptr [ null, %if.then73 ], [ %call71, %if.else105 ]
  %err.6 = phi i32 [ %20, %if.then73 ], [ %call91, %if.else105 ]
  %234 = zext i32 %err.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %err.6, label %bad_out.if.then654_crit_edge [
    i32 -95, label %bad_out.err_out_crit_edge
    i32 -12, label %bad_out.if.then658_crit_edge
  ]

bad_out.if.then658_crit_edge:                     ; preds = %bad_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then658

bad_out.err_out_crit_edge:                        ; preds = %bad_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

bad_out.if.then654_crit_edge:                     ; preds = %bad_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then654

if.then654:                                       ; preds = %bad_out.if.then654_crit_edge, %if.then519, %if.then479, %if.then456, %if.then102
  %err.61025 = phi i32 [ %err.6, %bad_out.if.then654_crit_edge ], [ -5, %if.then456 ], [ -5, %if.then479 ], [ -5, %if.then519 ], [ -5, %if.then102 ]
  %m.11023 = phi ptr [ %m.1, %bad_out.if.then654_crit_edge ], [ %145, %if.then456 ], [ %145, %if.then479 ], [ %145, %if.then519 ], [ %call71, %if.then102 ]
  %ctx.11021 = phi ptr [ %ctx.1, %bad_out.if.then654_crit_edge ], [ %call77, %if.then456 ], [ %call77, %if.then479 ], [ %call77, %if.then519 ], [ %call77, %if.then102 ]
  %flags.i1010 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1010) #12
  br label %if.then658

if.then658:                                       ; preds = %if.then654, %bad_out.if.then658_crit_edge, %bad_out.thread1035
  %err.61024 = phi i32 [ %err.61025, %if.then654 ], [ %err.6, %bad_out.if.then658_crit_edge ], [ -12, %bad_out.thread1035 ]
  %m.11022 = phi ptr [ %m.11023, %if.then654 ], [ %m.1, %bad_out.if.then658_crit_edge ], [ %call71, %bad_out.thread1035 ]
  %ctx.11020 = phi ptr [ %ctx.11021, %if.then654 ], [ %ctx.1, %bad_out.if.then658_crit_edge ], [ null, %bad_out.thread1035 ]
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state.i) #12
  br label %err_out

if.else659:                                       ; preds = %if.then344, %if.then189
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %retval.0.i)
  %cmp660 = icmp sgt i64 %retval.0.i, -1
  br i1 %cmp660, label %if.else659.if.then666.sink.split_crit_edge, label %if.else659.if.then666_crit_edge

if.else659.if.then666_crit_edge:                  ; preds = %if.else659
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then666

if.else659.if.then666.sink.split_crit_edge:       ; preds = %if.else659
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then666.sink.split

err_out:                                          ; preds = %if.then658, %bad_out.err_out_crit_edge
  %ctx.2 = phi ptr [ %ctx.11020, %if.then658 ], [ %ctx.1, %bad_out.err_out_crit_edge ]
  %m.2 = phi ptr [ %m.11022, %if.then658 ], [ %m.1, %bad_out.err_out_crit_edge ]
  %err.7 = phi i32 [ %err.61024, %if.then658 ], [ %err.6, %bad_out.err_out_crit_edge ]
  %tobool665.not = icmp eq ptr %ctx.2, null
  br i1 %tobool665.not, label %err_out.if.end667_crit_edge, label %err_out.if.then666_crit_edge

err_out.if.then666_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then666

err_out.if.end667_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end667

if.then666.sink.split:                            ; preds = %if.else659.if.then666.sink.split_crit_edge, %if.else178, %if.then173
  %err.71051.ph = phi i32 [ -27, %if.then173 ], [ -5, %if.else178 ], [ -95, %if.else659.if.then666.sink.split_crit_edge ]
  tail call fastcc void @i_size_write(ptr noundef %vi, i64 noundef %retval.0.i)
  br label %if.then666

if.then666:                                       ; preds = %if.then666.sink.split, %err_out.if.then666_crit_edge, %if.else659.if.then666_crit_edge
  %err.71051 = phi i32 [ %err.7, %err_out.if.then666_crit_edge ], [ -95, %if.else659.if.then666_crit_edge ], [ %err.71051.ph, %if.then666.sink.split ]
  %m.21049 = phi ptr [ %m.2, %err_out.if.then666_crit_edge ], [ %45, %if.else659.if.then666_crit_edge ], [ %45, %if.then666.sink.split ]
  %ctx.21048 = phi ptr [ %ctx.2, %err_out.if.then666_crit_edge ], [ %call77, %if.else659.if.then666_crit_edge ], [ %call77, %if.then666.sink.split ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.21048) #12
  br label %if.end667

if.end667:                                        ; preds = %if.then666, %err_out.if.end667_crit_edge
  %err.71052 = phi i32 [ %err.71051, %if.then666 ], [ %err.7, %err_out.if.end667_crit_edge ]
  %m.21050 = phi ptr [ %m.21049, %if.then666 ], [ %m.2, %err_out.if.end667_crit_edge ]
  %tobool668.not = icmp eq ptr %m.21050, null
  br i1 %tobool668.not, label %if.end667.if.end670_crit_edge, label %if.then669

if.end667.if.end670_crit_edge:                    ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end670

if.then669:                                       ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #12
  br label %if.end670

if.end670:                                        ; preds = %if.then669, %if.end667.if.end670_crit_edge
  tail call void @up_write(ptr noundef %lock) #12
  br label %out

out:                                              ; preds = %if.else683, %if.then682, %if.end670
  %err.8 = phi i32 [ %err.71052, %if.end670 ], [ %spec.select940, %if.then682 ], [ -95, %if.else683 ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2829, ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef nonnull @.str.79, i32 noundef %err.8) #12
  br label %cleanup

conv_err_out:                                     ; preds = %do.end268
  %235 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %1, align 8
  %237 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %i_ino, align 8
  %239 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %type, align 4
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %236, ptr noundef nonnull @.str.69, i32 noundef %238, i32 noundef %241, i32 noundef %call272) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call272)
  %cmp298.not = icmp eq i32 %call272, -12
  %spec.select940 = select i1 %cmp298.not, i32 -12, i32 -5
  br i1 %cmp298.not, label %conv_err_out.if.then682_crit_edge, label %if.then678

conv_err_out.if.then682_crit_edge:                ; preds = %conv_err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then682

if.then678:                                       ; preds = %conv_err_out
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i1012 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1012) #12
  br label %if.then682

if.then682:                                       ; preds = %if.then678, %conv_err_out.if.then682_crit_edge
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state.i) #12
  br label %out

if.else683.loopexit1926:                          ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else683

if.else683:                                       ; preds = %if.else683.loopexit1926, %do.end268.if.else683_crit_edge
  %.str.70.sink = phi ptr [ @.str.71, %if.else683.loopexit1926 ], [ @.str.70, %do.end268.if.else683_crit_edge ]
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_truncate, ptr noundef %243, ptr noundef nonnull %.str.70.sink) #12
  tail call fastcc void @i_size_write(ptr noundef %vi, i64 noundef %retval.0.i)
  br label %out

cleanup:                                          ; preds = %out, %if.then647, %if.end637.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.8, %out ], [ 0, %if.then647 ], [ %err.4, %if.end637.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !403
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !404
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !370

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !405
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !407
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !408
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !409
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_size_bounds_check(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !359) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !410
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !359) #12
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !411
  %9 = tail call i32 @llvm.read_register.i32(metadata !359) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !412
  %18 = tail call i32 @llvm.read_register.i32(metadata !359) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !359) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !359) #12
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !413
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !414
  %37 = tail call i32 @llvm.read_register.i32(metadata !359) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !369

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.161, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !415
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #12
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #12
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !416
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !417
  %48 = tail call i32 @llvm.read_register.i32(metadata !359) #12
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
declare dso_local i32 @ntfs_resident_attr_value_resize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_make_non_resident(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_attr_extend_allocation(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_rl_truncate_nolock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_size_for_mapping_pairs(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_record_resize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_mapping_pairs_build(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_truncate_vfs(ptr noundef %vi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ntfs_truncate(ptr noundef %vi)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %call2 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup42_crit_edge

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup42

if.end:                                           ; preds = %entry
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_setattr, ptr noundef %5, ptr noundef nonnull @.str.80) #12
  br label %cleanup42

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end29_crit_edge, label %if.then8

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then8:                                         ; preds = %if.end5
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ia_size, align 8
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %call9)
  %cmp.not = icmp eq i64 %7, %call9
  br i1 %cmp.not, label %if.else27, label %if.then10

if.then10:                                        ; preds = %if.then8
  %state.i = getelementptr i8, ptr %1, i32 -464
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.then10.if.end21.thread_crit_edge

if.then10.if.end21.thread_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.thread

lor.lhs.false:                                    ; preds = %if.then10
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.end21, label %lor.lhs.false.if.end21.thread_crit_edge

lor.lhs.false.if.end21.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %lor.lhs.false.if.end21.thread_crit_edge, %if.then10.if.end21.thread_crit_edge
  %i_sb17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb17, align 4
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool19.not, ptr @.str.68, ptr @.str.67
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_setattr, ptr noundef %15, ptr noundef nonnull @.str.66, ptr noundef nonnull %cond) #12
  br label %cleanup42

if.end21:                                         ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %20) #12
  %call.i = tail call i32 @ntfs_truncate(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp24.not = icmp eq i32 %3, 8
  br i1 %cmp24.not, label %if.end21.cleanup42_crit_edge, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end21.cleanup42_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup42

if.else27:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %3, 96
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.end21.if.end29_crit_edge, %if.end5.if.end29_crit_edge
  %ia_valid.0 = phi i32 [ %3, %if.end21.if.end29_crit_edge ], [ %or, %if.else27 ], [ %3, %if.end5.if.end29_crit_edge ]
  %and30 = and i32 %ia_valid.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %i_atime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %21 = call ptr @memcpy(ptr %i_atime, ptr %ia_atime, i32 16)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  %and34 = and i32 %ia_valid.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %22 = call ptr @memcpy(ptr %i_mtime, ptr %ia_mtime, i32 16)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33.if.end37_crit_edge
  %and38 = and i32 %ia_valid.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %23 = call ptr @memcpy(ptr %i_ctime, ptr %ia_ctime, i32 16)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #12
  br label %cleanup42

cleanup42:                                        ; preds = %if.end41, %if.end21.cleanup42_crit_edge, %if.end21.thread, %if.then4, %entry.cleanup42_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup42_crit_edge ], [ -95, %if.then4 ], [ 0, %if.end21.cleanup42_crit_edge ], [ 0, %if.end41 ], [ -95, %if.end21.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ntfs_write_inode(ptr noundef %vi, i32 noundef %sync) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vi, i32 -528
  %state.i = getelementptr i8, ptr %vi, i32 -464
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.83, ptr @.str.82
  %i_ino = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2955, ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef nonnull @.str.81, ptr noundef nonnull %cond, i32 noundef %4) #12
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #12
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2963, ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef nonnull @.str.38) #12
  br label %cleanup128

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @map_mft_record(ptr noundef %add.ptr.i) #12
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call4 to i32
  br label %err_out

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %add.ptr.i, ptr noundef %call4) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.unm_err_out_crit_edge, label %if.end15, !prof !370

if.end8.unm_err_out_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %unm_err_out

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @ntfs_attr_lookup(i32 noundef 268435456, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end25, label %if.then24, !prof !369

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call9) #12
  br label %unm_err_out

if.end25:                                         ; preds = %if.end15
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %10, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.78, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %value_offset, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %i_mtime = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 16
  %14 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack = load i64, ptr %i_mtime, align 8
  %.elt209 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %.elt209 to i32
  call void @__asan_load8_noabort(i32 %15)
  %.unpack210 = load i64, ptr %.elt209, align 8
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack210, 32
  %ts.sroa.2.8.extract.trunc.i = trunc i64 %ts.sroa.2.8.extract.shift.i to i32
  %mul.i = mul i64 %.unpack, 10000000
  %div.i = sdiv i32 %ts.sroa.2.8.extract.trunc.i, 100
  %conv.i = sext i32 %div.i to i64
  %add.i = add i64 %mul.i, 116444736000000000
  %add1.i = add i64 %add.i, %conv.i
  %16 = tail call i64 @llvm.bswap.i64(i64 %add1.i) #12
  %last_data_change_time = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %add.ptr, i32 0, i32 1
  %17 = ptrtoint ptr %last_data_change_time to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %last_data_change_time, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %16)
  %cmp.not = icmp eq i64 %18, %16
  br i1 %cmp.not, label %if.end25.if.end35_crit_edge, label %if.then29

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %18) #12
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2992, ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef nonnull @.str.84, i32 noundef %20, i64 noundef %21, i64 noundef %add1.i) #12
  %22 = ptrtoint ptr %last_data_change_time to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %16, ptr %last_data_change_time, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end25.if.end35_crit_edge
  %23 = xor i1 %cmp.not, true
  %i_ctime = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 17
  %24 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %24)
  %.unpack212 = load i64, ptr %i_ctime, align 8
  %.elt213 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %.elt213 to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack214 = load i64, ptr %.elt213, align 8
  %ts.sroa.2.8.extract.shift.i222 = lshr i64 %.unpack214, 32
  %ts.sroa.2.8.extract.trunc.i223 = trunc i64 %ts.sroa.2.8.extract.shift.i222 to i32
  %mul.i224 = mul i64 %.unpack212, 10000000
  %div.i225 = sdiv i32 %ts.sroa.2.8.extract.trunc.i223, 100
  %conv.i226 = sext i32 %div.i225 to i64
  %add.i227 = add i64 %mul.i224, 116444736000000000
  %add1.i228 = add i64 %add.i227, %conv.i226
  %26 = tail call i64 @llvm.bswap.i64(i64 %add1.i228) #12
  %last_mft_change_time = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %add.ptr, i32 0, i32 2
  %27 = ptrtoint ptr %last_mft_change_time to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %last_mft_change_time, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %26)
  %cmp37.not = icmp eq i64 %28, %26
  br i1 %cmp37.not, label %if.end35.if.end45_crit_edge, label %if.then39

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %28) #12
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 3001, ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef nonnull @.str.85, i32 noundef %30, i64 noundef %31, i64 noundef %add1.i228) #12
  %32 = ptrtoint ptr %last_mft_change_time to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %26, ptr %last_mft_change_time, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %if.end35.if.end45_crit_edge
  %modified.1.off0 = phi i1 [ true, %if.then39 ], [ %23, %if.end35.if.end45_crit_edge ]
  %i_atime = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 15
  %33 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %33)
  %.unpack215 = load i64, ptr %i_atime, align 8
  %.elt216 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 15, i32 1
  %34 = ptrtoint ptr %.elt216 to i32
  call void @__asan_load8_noabort(i32 %34)
  %.unpack217 = load i64, ptr %.elt216, align 8
  %ts.sroa.2.8.extract.shift.i229 = lshr i64 %.unpack217, 32
  %ts.sroa.2.8.extract.trunc.i230 = trunc i64 %ts.sroa.2.8.extract.shift.i229 to i32
  %mul.i231 = mul i64 %.unpack215, 10000000
  %div.i232 = sdiv i32 %ts.sroa.2.8.extract.trunc.i230, 100
  %conv.i233 = sext i32 %div.i232 to i64
  %add.i234 = add i64 %mul.i231, 116444736000000000
  %add1.i235 = add i64 %add.i234, %conv.i233
  %35 = tail call i64 @llvm.bswap.i64(i64 %add1.i235) #12
  %last_access_time = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %add.ptr, i32 0, i32 3
  %36 = ptrtoint ptr %last_access_time to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %last_access_time, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %35)
  %cmp47.not = icmp eq i64 %37, %35
  br i1 %cmp47.not, label %if.end55, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %37) #12
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 3010, ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef nonnull @.str.86, i32 noundef %39, i64 noundef %40, i64 noundef %add1.i235) #12
  %41 = ptrtoint ptr %last_access_time to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %35, ptr %last_access_time, align 1
  br label %if.then57

if.end55:                                         ; preds = %if.end45
  br i1 %modified.1.off0, label %if.end55.if.then57_crit_edge, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end55.if.then57_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

if.then57:                                        ; preds = %if.end55.if.then57_crit_edge, %if.then49
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call9, i32 0, i32 3
  %42 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ntfs_ino, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %45) #12
  %46 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ntfs_ino, align 4
  %state.i236 = getelementptr inbounds %struct._ntfs_inode, ptr %47, i32 0, i32 3
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i236) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.then61, label %if.then57.if.end65_crit_edge

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ntfs_ino, align 4
  %page = getelementptr inbounds %struct._ntfs_inode, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %page, align 8
  %page_ofs = getelementptr inbounds %struct._ntfs_inode, ptr %49, i32 0, i32 14
  %52 = ptrtoint ptr %page_ofs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page_ofs, align 4
  tail call void @mark_ntfs_record_dirty(ptr noundef %51, i32 noundef %53) #12
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.then57.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call9) #12
  %54 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i, align 4
  %and1.i.i238 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i238)
  %tobool67.not = icmp eq i32 %and1.i.i238, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %call69 = tail call fastcc i32 @write_mft_record(ptr noundef %add.ptr.i, ptr noundef %call4, i32 noundef %sync)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %err.0 = phi i32 [ %call69, %if.then68 ], [ 0, %if.end65.if.end70_crit_edge ]
  %extent_lock = getelementptr i8, ptr %vi, i32 -104
  tail call void @mutex_lock_nested(ptr noundef %extent_lock, i32 noundef 0) #12
  %nr_extents = getelementptr i8, ptr %vi, i32 -12
  %56 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp71 = icmp sgt i32 %57, 0
  br i1 %cmp71, label %if.then73, label %if.end70.if.end112_crit_edge

if.end70.if.end112_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then73:                                        ; preds = %if.end70
  %ext = getelementptr i8, ptr %vi, i32 -8
  %58 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ext, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 3046, ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef nonnull @.str.87, i32 noundef %57) #12
  %60 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp76242 = icmp sgt i32 %61, 0
  br i1 %cmp76242, label %if.then73.for.body_crit_edge, label %if.then73.if.end112_crit_edge

if.then73.if.end112_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then73.for.body_crit_edge:                     ; preds = %if.then73
  br label %for.body

for.body:                                         ; preds = %cleanup109.for.body_crit_edge, %if.then73.for.body_crit_edge
  %i.0244 = phi i32 [ %inc, %cleanup109.for.body_crit_edge ], [ 0, %if.then73.for.body_crit_edge ]
  %err.1243 = phi i32 [ %err.6, %cleanup109.for.body_crit_edge ], [ %err.0, %if.then73.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %59, i32 %i.0244
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %state.i239 = getelementptr inbounds %struct._ntfs_inode, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %state.i239 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %state.i239, align 4
  %and1.i.i240 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i240)
  %tobool79.not = icmp eq i32 %and1.i.i240, 0
  br i1 %tobool79.not, label %for.body.cleanup109_crit_edge, label %if.then80

for.body.cleanup109_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup109

if.then80:                                        ; preds = %for.body
  %call81 = tail call ptr @map_mft_record(ptr noundef %63) #12
  %cmp.i241 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then83, label %if.end90

if.then83:                                        ; preds = %if.then80
  %66 = zext i32 %err.1243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %err.1243, label %if.then83.cleanup109_crit_edge [
    i32 0, label %if.then83.if.then87_crit_edge
    i32 -12, label %if.then83.if.then87_crit_edge245
  ]

if.then83.if.then87_crit_edge245:                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then87

if.then83.if.then87_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then87

if.then83.cleanup109_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup109

if.then87:                                        ; preds = %if.then83.if.then87_crit_edge, %if.then83.if.then87_crit_edge245
  %67 = ptrtoint ptr %call81 to i32
  br label %cleanup109

if.end90:                                         ; preds = %if.then80
  %call91 = tail call fastcc i32 @write_mft_record(ptr noundef %63, ptr noundef %call81, i32 noundef %sync)
  tail call void @unmap_mft_record(ptr noundef %63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.cleanup109_crit_edge, label %if.then99, !prof !369

if.end90.cleanup109_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup109

if.then99:                                        ; preds = %if.end90
  %68 = zext i32 %err.1243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %err.1243, label %if.then99.cleanup109_crit_edge [
    i32 0, label %if.then99.if.then104_crit_edge
    i32 -12, label %if.then99.if.then104_crit_edge246
  ]

if.then99.if.then104_crit_edge246:                ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104

if.then99.if.then104_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104

if.then99.cleanup109_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup109

if.then104:                                       ; preds = %if.then99.if.then104_crit_edge, %if.then99.if.then104_crit_edge246
  br label %cleanup109

cleanup109:                                       ; preds = %if.then104, %if.then99.cleanup109_crit_edge, %if.end90.cleanup109_crit_edge, %if.then87, %if.then83.cleanup109_crit_edge, %for.body.cleanup109_crit_edge
  %err.6 = phi i32 [ %err.1243, %for.body.cleanup109_crit_edge ], [ %67, %if.then87 ], [ %err.1243, %if.then83.cleanup109_crit_edge ], [ %call91, %if.then104 ], [ %err.1243, %if.end90.cleanup109_crit_edge ], [ %err.1243, %if.then99.cleanup109_crit_edge ]
  %inc = add nuw nsw i32 %i.0244, 1
  %69 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_extents, align 4
  %cmp76 = icmp slt i32 %inc, %70
  br i1 %cmp76, label %cleanup109.for.body_crit_edge, label %cleanup109.if.end112_crit_edge

cleanup109.if.end112_crit_edge:                   ; preds = %cleanup109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

cleanup109.for.body_crit_edge:                    ; preds = %cleanup109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end112:                                        ; preds = %cleanup109.if.end112_crit_edge, %if.then73.if.end112_crit_edge, %if.end70.if.end112_crit_edge
  %err.7 = phi i32 [ %err.0, %if.end70.if.end112_crit_edge ], [ %err.0, %if.then73.if.end112_crit_edge ], [ %err.6, %cleanup109.if.end112_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %extent_lock) #12
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.7)
  %tobool114.not = icmp eq i32 %err.7, 0
  br i1 %tobool114.not, label %if.end122, label %if.end112.err_out_crit_edge, !prof !369

if.end112.err_out_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end122:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef nonnull @.str.38) #12
  br label %cleanup128

unm_err_out:                                      ; preds = %if.then24, %if.end8.unm_err_out_crit_edge
  %err.8 = phi i32 [ %call16, %if.then24 ], [ -12, %if.end8.unm_err_out_crit_edge ]
  tail call void @unmap_mft_record(ptr noundef %add.ptr.i) #12
  br label %err_out

err_out:                                          ; preds = %unm_err_out, %if.end112.err_out_crit_edge, %if.then6
  %err.9 = phi i32 [ %8, %if.then6 ], [ %err.8, %unm_err_out ], [ %err.7, %if.end112.err_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.9)
  %cmp123 = icmp eq i32 %err.9, -12
  %i_sb = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %71 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb, align 4
  br i1 %cmp123, label %if.then125, label %if.else

if.then125:                                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef %72, ptr noundef nonnull @.str.88) #12
  tail call void @__mark_inode_dirty(ptr noundef %vi, i32 noundef 7) #12
  br label %cleanup128

if.else:                                          ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 0, %err.9
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_write_inode, ptr noundef %72, ptr noundef nonnull @.str.89, i32 noundef %sub) #12
  %vol = getelementptr i8, ptr %vi, i32 -448
  %73 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vol, align 8
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %74, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #12
  br label %cleanup128

cleanup128:                                       ; preds = %if.else, %if.then125, %if.end122, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end122 ], [ %err.9, %if.else ], [ -12, %if.then125 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_ntfs_record_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_mft_record(ptr noundef %ni, ptr noundef %m, i32 noundef %sync) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %page1 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 13
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !370

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #12, !srcloc !418
  unreachable

do.end10:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.163, i32 noundef 788) #12
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !369

if.then.i.i:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !369

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.164) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !419
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #12
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #12, !srcloc !420
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !421
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %6) #12
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call = tail call i32 @write_mft_record_nolock(ptr noundef %ni, ptr noundef %m, i32 noundef %sync) #12
  tail call void @unlock_page(ptr noundef nonnull %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_is_extended_system_file(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef %ctx) #12
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %link_count = getelementptr inbounds %struct.MFT_RECORD, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %link_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %link_count, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %attr1 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %entry
  %nr_links.0 = phi i32 [ %conv, %entry ], [ %dec, %cleanup.while.cond_crit_edge ]
  %call = tail call i32 @ntfs_attr_lookup(i32 noundef 805306368, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %ctx) #12
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %call, label %while.cond.cleanup69_crit_edge [
    i32 0, label %while.body
    i32 -2, label %if.end56
  ], !prof !377

while.cond.cleanup69_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %attr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr1, align 4
  %dec = add i32 %nr_links.0, -1
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %length, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %add.ptr = getelementptr i8, ptr %7, i32 %10
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %cmp = icmp ult ptr %add.ptr, %12
  br i1 %cmp, label %while.body.cleanup69.sink.split_crit_edge, label %lor.lhs.false

while.body.cleanup69.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69.sink.split

lor.lhs.false:                                    ; preds = %while.body
  %bytes_in_use = getelementptr inbounds %struct.MFT_RECORD, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %bytes_in_use to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %bytes_in_use, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add.ptr6 = getelementptr i8, ptr %12, i32 %15
  %cmp7 = icmp ugt ptr %add.ptr, %add.ptr6
  br i1 %cmp7, label %lor.lhs.false.cleanup69.sink.split_crit_edge, label %if.end

lor.lhs.false.cleanup69.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.end14, label %if.end.cleanup69.sink.split_crit_edge

if.end.cleanup69.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69.sink.split

if.end14:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.ATTR_RECORD, ptr %7, i32 0, i32 5
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool15.not = icmp eq i16 %19, 0
  br i1 %tobool15.not, label %if.end20, label %if.end14.cleanup69.sink.split_crit_edge

if.end14.cleanup69.sink.split_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69.sink.split

if.end20:                                         ; preds = %if.end14
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %7, i32 0, i32 7
  %flags21 = getelementptr inbounds %struct.anon.78, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %flags21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags21, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %if.end20.cleanup69.sink.split_crit_edge, label %if.end28

if.end20.cleanup69.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69.sink.split

if.end28:                                         ; preds = %if.end20
  %value_offset = getelementptr inbounds %struct.anon.78, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %value_offset, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv30 = zext i16 %25 to i32
  %add.ptr31 = getelementptr i8, ptr %7, i32 %conv30
  %26 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %data, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %add.ptr33 = getelementptr i8, ptr %add.ptr31, i32 %28
  %cmp34 = icmp ult ptr %add.ptr33, %7
  %cmp37 = icmp ugt ptr %add.ptr33, %add.ptr
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp37
  br i1 %or.cond, label %if.end28.cleanup69.sink.split_crit_edge, label %cleanup

if.end28.cleanup69.sink.split_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69.sink.split

cleanup:                                          ; preds = %if.end28
  %29 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %add.ptr31, align 1
  %31 = and i64 %30, -65536
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %conv42 = trunc i64 %32 to i32
  %cmp43 = icmp eq i32 %conv42, 11
  br i1 %cmp43, label %cleanup.cleanup69_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

cleanup.cleanup69_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69

if.end56:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_links.0)
  %tobool57.not = icmp eq i32 %nr_links.0, 0
  br i1 %tobool57.not, label %if.end56.cleanup69_crit_edge, label %if.end56.cleanup69.sink.split_crit_edge, !prof !369

if.end56.cleanup69.sink.split_crit_edge:          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69.sink.split

if.end56.cleanup69_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup69

cleanup69.sink.split:                             ; preds = %if.end56.cleanup69.sink.split_crit_edge, %if.end28.cleanup69.sink.split_crit_edge, %if.end20.cleanup69.sink.split_crit_edge, %if.end14.cleanup69.sink.split_crit_edge, %if.end.cleanup69.sink.split_crit_edge, %lor.lhs.false.cleanup69.sink.split_crit_edge, %while.body.cleanup69.sink.split_crit_edge
  %.str.140.sink = phi ptr [ @.str.141, %if.end56.cleanup69.sink.split_crit_edge ], [ @.str.137, %if.end28.cleanup69.sink.split_crit_edge ], [ @.str.137, %while.body.cleanup69.sink.split_crit_edge ], [ @.str.137, %lor.lhs.false.cleanup69.sink.split_crit_edge ], [ @.str.138, %if.end.cleanup69.sink.split_crit_edge ], [ @.str.139, %if.end14.cleanup69.sink.split_crit_edge ], [ @.str.140, %if.end20.cleanup69.sink.split_crit_edge ]
  %ntfs_ino25 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 3
  %33 = ptrtoint ptr %ntfs_ino25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ntfs_ino25, align 4
  %vol26 = getelementptr inbounds %struct._ntfs_inode, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %vol26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vol26, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_is_extended_system_file, ptr noundef %38, ptr noundef nonnull %.str.140.sink) #12
  br label %cleanup69

cleanup69:                                        ; preds = %cleanup69.sink.split, %if.end56.cleanup69_crit_edge, %cleanup.cleanup69_crit_edge, %while.cond.cleanup69_crit_edge
  %retval.2 = phi i32 [ 0, %if.end56.cleanup69_crit_edge ], [ -5, %cleanup69.sink.split ], [ %call, %while.cond.cleanup69_crit_edge ], [ 1, %cleanup.cleanup69_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_mft_record_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ntfs_cluster_free(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_mft_record_nolock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !141, !143, !144, !145, !147, !149, !151, !153, !155, !157, !158, !159, !161, !163, !165, !167, !168, !170, !171, !172, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !198, !200, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !344, !346, !348, !349, !351, !353, !355, !357}
!llvm.named.register.sp = !{!359}
!llvm.module.flags = !{!360, !361, !362, !363, !364, !365, !366, !367}
!llvm.ident = !{!368}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/inode.c", i32 312, i32 2}
!2 = !{ptr @__func__.ntfs_alloc_big_inode, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/inode.c", i32 318, i32 2}
!6 = !{ptr @__func__.__ntfs_init_inode, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/inode.c", i32 370, i32 2}
!8 = !{ptr @__ntfs_init_inode.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/ntfs/inode.c", i32 371, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ntfs_init_inode.__key.4, !12, !"__key", i1 false, i1 false}
!12 = !{!"../fs/ntfs/inode.c", i32 377, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/inode.c", i32 383, i32 2}
!16 = !{ptr @__ntfs_init_inode.__key.7, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/ntfs/inode.c", i32 390, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__func__.ntfs_new_extent_inode, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ntfs/inode.c", i32 407, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ntfs/inode.c", i32 410, i32 3}
!23 = !{ptr @__func__.ntfs_read_inode_mount, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ntfs/inode.c", i32 1761, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ntfs/inode.c", i32 1787, i32 3}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ntfs/inode.c", i32 1796, i32 3}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ntfs/inode.c", i32 1811, i32 4}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ntfs/inode.c", i32 1820, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ntfs/inode.c", i32 1828, i32 3}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ntfs/inode.c", i32 1848, i32 4}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs/inode.c", i32 1855, i32 27}
!39 = distinct !{null, !40, !"es", i1 false, i1 false}
!40 = !{!"../fs/ntfs/inode.c", i32 1855, i32 22}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ntfs/inode.c", i32 1858, i32 3}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ntfs/inode.c", i32 1862, i32 4}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ntfs/inode.c", i32 1869, i32 5}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ntfs/inode.c", i32 1874, i32 4}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ntfs/inode.c", i32 1886, i32 4}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ntfs/inode.c", i32 1893, i32 5}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ntfs/inode.c", i32 1904, i32 5}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ntfs/inode.c", i32 1914, i32 5}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ntfs/inode.c", i32 1925, i32 5}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ntfs/inode.c", i32 1977, i32 5}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ntfs/inode.c", i32 2008, i32 4}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ntfs/inode.c", i32 2017, i32 4}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ntfs/inode.c", i32 2032, i32 4}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ntfs/inode.c", i32 2042, i32 5}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ntfs/inode.c", i32 2065, i32 5}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ntfs/inode.c", i32 2089, i32 5}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ntfs/inode.c", i32 2126, i32 4}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ntfs/inode.c", i32 2132, i32 3}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ntfs/inode.c", i32 2137, i32 3}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ntfs/inode.c", i32 2142, i32 3}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ntfs/inode.c", i32 2145, i32 3}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ntfs/inode.c", i32 2151, i32 2}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ntfs/inode.c", i32 2158, i32 2}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ntfs/inode.c", i32 2159, i32 2}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ntfs/inode.c", i32 2164, i32 2}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ntfs/inode.c", i32 2169, i32 2}
!93 = !{ptr @__func__.ntfs_clear_extent_inode, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ntfs/inode.c", i32 2206, i32 2}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ntfs/inode.c", i32 2214, i32 4}
!98 = !{ptr @__func__.ntfs_evict_big_inode, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ntfs/inode.c", i32 2251, i32 4}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ntfs/inode.c", i32 2298, i32 17}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ntfs/inode.c", i32 2299, i32 17}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ntfs/inode.c", i32 2301, i32 18}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ntfs/inode.c", i32 2303, i32 18}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ntfs/inode.c", i32 2304, i32 18}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ntfs/inode.c", i32 2306, i32 17}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ntfs/inode.c", i32 2308, i32 18}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ntfs/inode.c", i32 2310, i32 18}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ntfs/inode.c", i32 2312, i32 18}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ntfs/inode.c", i32 2315, i32 19}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ntfs/inode.c", i32 2317, i32 17}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ntfs/inode.c", i32 2354, i32 19}
!125 = !{ptr @__func__.ntfs_truncate, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ntfs/inode.c", i32 2357, i32 2}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ntfs/inode.c", i32 2375, i32 3}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ntfs/inode.c", i32 2383, i32 3}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ntfs/inode.c", i32 2393, i32 4}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ntfs/inode.c", i32 2398, i32 4}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ntfs/inode.c", i32 2449, i32 5}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ntfs/inode.c", i32 2459, i32 5}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ntfs/inode.c", i32 2472, i32 3}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ntfs/inode.c", i32 2551, i32 3}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ntfs/inode.c", i32 2562, i32 3}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ntfs/inode.c", i32 2566, i32 3}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ntfs/inode.c", i32 2610, i32 4}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ntfs/inode.c", i32 2689, i32 3}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/ntfs/inode.c", i32 2705, i32 3}
!157 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ntfs/inode.c", i32 2716, i32 3}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ntfs/inode.c", i32 2739, i32 3}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ntfs/inode.c", i32 2829, i32 2}
!165 = !{ptr @__func__.ntfs_setattr, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ntfs/inode.c", i32 2882, i32 3}
!167 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @__func__.__ntfs_write_inode, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ntfs/inode.c", i32 2954, i32 2}
!170 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/ntfs/inode.c", i32 2989, i32 3}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ntfs/inode.c", i32 2998, i32 3}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ntfs/inode.c", i32 3007, i32 3}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ntfs/inode.c", i32 3046, i32 3}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/ntfs/inode.c", i32 3078, i32 3}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/ntfs/inode.c", i32 3083, i32 3}
!185 = !{ptr @attr_list_rl_lock_class, !186, !"attr_list_rl_lock_class", i1 false, i1 false}
!186 = !{!"../fs/ntfs/inode.c", i32 354, i32 30}
!187 = !{ptr @extent_inode_mrec_lock_key, !188, !"extent_inode_mrec_lock_key", i1 false, i1 false}
!188 = !{!"../fs/ntfs/inode.c", i32 400, i32 30}
!189 = !{ptr @mft_ni_runlist_lock_key, !190, !"mft_ni_runlist_lock_key", i1 false, i1 false}
!190 = !{!"../fs/ntfs/inode.c", i32 1719, i32 30}
!191 = !{ptr @mft_ni_mrec_lock_key, !192, !"mft_ni_mrec_lock_key", i1 false, i1 false}
!192 = !{!"../fs/ntfs/inode.c", i32 1719, i32 55}
!193 = !{ptr @ntfs_init_runlist.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../fs/ntfs/runlist.h", i32 48, i32 2}
!195 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @__func__.ntfs_alloc_extent_inode, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ntfs/inode.c", i32 331, i32 2}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ntfs/inode.c", i32 337, i32 2}
!200 = !{ptr @__func__.ntfs_read_locked_inode, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ntfs/inode.c", i32 535, i32 2}
!202 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ntfs/inode.c", i32 562, i32 3}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ntfs/inode.c", i32 566, i32 3}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ntfs/inode.c", i32 625, i32 4}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ntfs/inode.c", i32 635, i32 3}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ntfs/inode.c", i32 669, i32 4}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ntfs/inode.c", i32 676, i32 3}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ntfs/inode.c", i32 680, i32 4}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ntfs/inode.c", i32 687, i32 5}
!219 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ntfs/inode.c", i32 692, i32 4}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/ntfs/inode.c", i32 713, i32 5}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ntfs/inode.c", i32 726, i32 5}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/ntfs/inode.c", i32 735, i32 5}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ntfs/inode.c", i32 744, i32 5}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ntfs/inode.c", i32 775, i32 5}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ntfs/inode.c", i32 783, i32 4}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ntfs/inode.c", i32 790, i32 4}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ntfs/inode.c", i32 804, i32 5}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ntfs/inode.c", i32 816, i32 4}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ntfs/inode.c", i32 823, i32 4}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ntfs/inode.c", i32 827, i32 4}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ntfs/inode.c", i32 832, i32 4}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ntfs/inode.c", i32 840, i32 4}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ntfs/inode.c", i32 846, i32 4}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ntfs/inode.c", i32 855, i32 4}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ntfs/inode.c", i32 898, i32 5}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/ntfs/inode.c", i32 902, i32 5}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ntfs/inode.c", i32 909, i32 4}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ntfs/inode.c", i32 920, i32 4}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ntfs/inode.c", i32 926, i32 4}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/ntfs/inode.c", i32 931, i32 4}
!263 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/ntfs/inode.c", i32 936, i32 4}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/ntfs/inode.c", i32 941, i32 4}
!267 = !{ptr @.str.125, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/ntfs/inode.c", i32 962, i32 4}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ntfs/inode.c", i32 969, i32 4}
!271 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/ntfs/inode.c", i32 977, i32 4}
!273 = !{ptr @.str.128, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/ntfs/inode.c", i32 1004, i32 5}
!275 = !{ptr @.str.129, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/ntfs/inode.c", i32 1027, i32 4}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/ntfs/inode.c", i32 1036, i32 6}
!279 = !{ptr @.str.131, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/ntfs/inode.c", i32 1047, i32 6}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/ntfs/inode.c", i32 1058, i32 5}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/ntfs/inode.c", i32 1069, i32 6}
!285 = !{ptr @.str.134, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/ntfs/inode.c", i32 1104, i32 5}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/ntfs/inode.c", i32 1122, i32 5}
!289 = !{ptr @.str.136, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/ntfs/inode.c", i32 1170, i32 2}
!291 = !{ptr @__func__.ntfs_is_extended_system_file, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ntfs/inode.c", i32 458, i32 4}
!293 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.138, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/ntfs/inode.c", i32 463, i32 4}
!296 = !{ptr @.str.139, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/ntfs/inode.c", i32 468, i32 4}
!298 = !{ptr @.str.140, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/ntfs/inode.c", i32 474, i32 4}
!300 = !{ptr @.str.141, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/ntfs/inode.c", i32 490, i32 3}
!302 = !{ptr @__func__.ntfs_read_locked_attr_inode, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/ntfs/inode.c", i32 1209, i32 2}
!304 = !{ptr @.str.142, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/ntfs/inode.c", i32 1249, i32 5}
!306 = !{ptr @.str.143, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ntfs/inode.c", i32 1258, i32 5}
!308 = !{ptr @.str.144, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/ntfs/inode.c", i32 1267, i32 5}
!310 = !{ptr @.str.145, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/ntfs/inode.c", i32 1277, i32 4}
!312 = !{ptr @.str.146, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.147, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/ntfs/inode.c", i32 1299, i32 4}
!315 = !{ptr @.str.148, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/ntfs/inode.c", i32 1307, i32 4}
!317 = !{ptr @.str.149, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/ntfs/inode.c", i32 1317, i32 4}
!319 = !{ptr @.str.150, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/ntfs/inode.c", i32 1322, i32 4}
!321 = !{ptr @.str.151, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/ntfs/inode.c", i32 1333, i32 4}
!323 = !{ptr @.str.152, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/ntfs/inode.c", i32 1346, i32 4}
!325 = !{ptr @.str.153, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/ntfs/inode.c", i32 1381, i32 4}
!327 = !{ptr @.str.154, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/ntfs/inode.c", i32 1421, i32 2}
!329 = !{ptr @__func__.ntfs_read_locked_index_inode, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/ntfs/inode.c", i32 1478, i32 2}
!331 = !{ptr @.str.155, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/ntfs/inode.c", i32 1531, i32 3}
!333 = !{ptr @.str.156, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/ntfs/inode.c", i32 1543, i32 3}
!335 = !{ptr @.str.157, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/ntfs/inode.c", i32 1547, i32 3}
!337 = !{ptr @.str.158, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/ntfs/inode.c", i32 1552, i32 2}
!339 = !{ptr @.str.159, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/ntfs/inode.c", i32 1703, i32 2}
!341 = !{ptr @.str.160, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/ntfs/inode.h", i32 274, i32 2}
!343 = !{ptr @__func__.ntfs_init_big_inode, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @__func__.ntfs_destroy_extent_inode, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../fs/ntfs/inode.c", i32 343, i32 2}
!346 = distinct !{null, !347, !"__already_done", i1 false, i1 false}
!347 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!348 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.162, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/ntfs/inode.c", i32 2323, i32 25}
!351 = distinct !{null, !352, !"es", i1 false, i1 false}
!352 = !{!"../fs/ntfs/inode.c", i32 2323, i32 20}
!353 = !{ptr @.str.163, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!355 = !{ptr @.str.164, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!357 = distinct !{null, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!359 = !{!"sp"}
!360 = !{i32 1, !"wchar_size", i32 2}
!361 = !{i32 1, !"min_enum_size", i32 4}
!362 = !{i32 8, !"branch-target-enforcement", i32 0}
!363 = !{i32 8, !"sign-return-address", i32 0}
!364 = !{i32 8, !"sign-return-address-all", i32 0}
!365 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!366 = !{i32 7, !"uwtable", i32 1}
!367 = !{i32 7, !"frame-pointer", i32 2}
!368 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!369 = !{!"branch_weights", i32 2000, i32 1}
!370 = !{!"branch_weights", i32 1, i32 2000}
!371 = !{i64 2154276849, i64 2154277329, i64 2154276886, i64 2154276942, i64 2154276976, i64 2154277000, i64 2154277041, i64 2154277062, i64 2154277090, i64 2154277124}
!372 = !{i64 2154278417, i64 2154278897, i64 2154278454, i64 2154278510, i64 2154278544, i64 2154278568, i64 2154278609, i64 2154278630, i64 2154278658, i64 2154278692}
!373 = !{i64 2154279979, i64 2154280459, i64 2154280016, i64 2154280072, i64 2154280106, i64 2154280130, i64 2154280171, i64 2154280192, i64 2154280220, i64 2154280254}
!374 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!375 = !{i64 1126396, i64 1126423}
!376 = !{i64 1127091, i64 1127118, i64 1127151, i64 1127172, i64 1127199, i64 1127225}
!377 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!378 = !{i32 0, i32 33}
!379 = !{i64 2154281851, i64 2154282331, i64 2154281888, i64 2154281944, i64 2154281978, i64 2154282002, i64 2154282043, i64 2154282064, i64 2154282092, i64 2154282126}
!380 = !{i64 2154125331, i64 2154125811, i64 2154125368, i64 2154125424, i64 2154125458, i64 2154125482, i64 2154125523, i64 2154125544, i64 2154125572, i64 2154125606}
!381 = !{i64 2154319165, i64 2154319646, i64 2154319202, i64 2154319258, i64 2154319292, i64 2154319316, i64 2154319357, i64 2154319378, i64 2154319406, i64 2154319440}
!382 = !{i64 2154320752, i64 2154321233, i64 2154320789, i64 2154320845, i64 2154320879, i64 2154320903, i64 2154320944, i64 2154320965, i64 2154320993, i64 2154321027}
!383 = !{i64 2154284602, i64 2154285082, i64 2154284639, i64 2154284695, i64 2154284729, i64 2154284753, i64 2154284794, i64 2154284815, i64 2154284843, i64 2154284877}
!384 = !{i64 2148850918}
!385 = !{i64 2148765627, i64 2148765659, i64 2148765688, i64 2148765722, i64 2148765753, i64 2148765776}
!386 = !{i64 2148851147}
!387 = !{i64 2154286068, i64 2154286548, i64 2154286105, i64 2154286161, i64 2154286195, i64 2154286219, i64 2154286260, i64 2154286281, i64 2154286309, i64 2154286343}
!388 = !{i64 2154317481, i64 2154317962, i64 2154317518, i64 2154317574, i64 2154317608, i64 2154317632, i64 2154317673, i64 2154317694, i64 2154317722, i64 2154317756}
!389 = !{i64 2154322559, i64 2154323040, i64 2154322596, i64 2154322652, i64 2154322686, i64 2154322710, i64 2154322751, i64 2154322772, i64 2154322800, i64 2154322834}
!390 = !{i64 2154324028, i64 2154324509, i64 2154324065, i64 2154324121, i64 2154324155, i64 2154324179, i64 2154324220, i64 2154324241, i64 2154324269, i64 2154324303}
!391 = !{i64 2154325711, i64 2154326192, i64 2154325748, i64 2154325804, i64 2154325838, i64 2154325862, i64 2154325903, i64 2154325924, i64 2154325952, i64 2154325986}
!392 = !{i64 2154327398, i64 2154327879, i64 2154327435, i64 2154327491, i64 2154327525, i64 2154327549, i64 2154327590, i64 2154327611, i64 2154327639, i64 2154327673}
!393 = !{i64 2154328985, i64 2154329466, i64 2154329022, i64 2154329078, i64 2154329112, i64 2154329136, i64 2154329177, i64 2154329198, i64 2154329226, i64 2154329260}
!394 = !{i64 2154334629, i64 2154335110, i64 2154334666, i64 2154334722, i64 2154334756, i64 2154334780, i64 2154334821, i64 2154334842, i64 2154334870, i64 2154334904}
!395 = !{i64 2154338309, i64 2154338790, i64 2154338346, i64 2154338402, i64 2154338436, i64 2154338460, i64 2154338501, i64 2154338522, i64 2154338550, i64 2154338584}
!396 = !{i64 2154340678, i64 2154341159, i64 2154340715, i64 2154340771, i64 2154340805, i64 2154340829, i64 2154340870, i64 2154340891, i64 2154340919, i64 2154340953}
!397 = !{!"branch_weights", i32 1, i32 4000, i32 1, i32 1}
!398 = !{i64 2154343063, i64 2154343544, i64 2154343100, i64 2154343156, i64 2154343190, i64 2154343214, i64 2154343255, i64 2154343276, i64 2154343304, i64 2154343338}
!399 = !{i64 2154345550, i64 2154346031, i64 2154345587, i64 2154345643, i64 2154345677, i64 2154345701, i64 2154345742, i64 2154345763, i64 2154345791, i64 2154345825}
!400 = !{!"branch_weights", i32 4001, i32 4000000}
!401 = !{i64 2154348208, i64 2154348689, i64 2154348245, i64 2154348301, i64 2154348335, i64 2154348359, i64 2154348400, i64 2154348421, i64 2154348449, i64 2154348483}
!402 = !{i64 2154350670, i64 2154351151, i64 2154350707, i64 2154350763, i64 2154350797, i64 2154350821, i64 2154350862, i64 2154350883, i64 2154350911, i64 2154350945}
!403 = !{i64 1167122, i64 1167183}
!404 = !{i64 1169854}
!405 = !{i64 1170139}
!406 = !{i64 2152605273}
!407 = !{i64 2152605115}
!408 = !{i64 2152605443}
!409 = !{i64 2150191257}
!410 = !{i64 2152607204}
!411 = !{i64 2150083509}
!412 = !{i64 2150088443}
!413 = !{i64 2150110161}
!414 = !{i64 2150115055}
!415 = !{i64 2150191582}
!416 = !{i64 2150191907}
!417 = !{i64 2152619066}
!418 = !{i64 2154131928, i64 2154132405, i64 2154131965, i64 2154132021, i64 2154132055, i64 2154132079, i64 2154132120, i64 2154132141, i64 2154132169, i64 2154132203}
!419 = !{i64 2150671187, i64 2150671678, i64 2150671224, i64 2150671280, i64 2150671314, i64 2150671338, i64 2150671379, i64 2150671400, i64 2150671428, i64 2150671462}
!420 = !{i64 2148771300, i64 2148771332, i64 2148771361, i64 2148771395, i64 2148771426, i64 2148771449}
!421 = !{i64 2148860405}
