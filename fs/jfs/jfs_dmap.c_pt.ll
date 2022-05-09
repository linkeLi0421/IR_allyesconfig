; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_dmap.c_pt.bc'
source_filename = "../fs/jfs/jfs_dmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dbmap_disk = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i64], i64, i8, [3007 x i8] }
%struct.dbmap = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i64], i64, i8 }
%struct.bmap = type { %struct.dbmap, ptr, %struct.mutex, [128 x %struct.atomic_t], ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.dmap = type { i32, i32, i64, %struct.dmaptree, [1672 x i8], [256 x i32], [256 x i32] }
%struct.dmaptree = type { i32, i32, i32, i32, i8, [341 x i8], [2 x i8] }
%struct.tblock = type { i16, i16, i16, i32, %struct.list_head, ptr, i16, i16, %struct.wait_queue_head, i32, %struct.list_head, i32, ptr, i32, i32, %struct.wait_queue_head, %union.anon.70, i32 }
%union.anon.70 = type { %struct.pxd_t }
%struct.jfs_log = type { %struct.list_head, %struct.list_head, ptr, i32, i64, i32, i32, i32, ptr, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, ptr, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.uuid_t, i32 }
%struct.dmapctl = type { i32, i32, i32, i32, i8, [1365 x i8], [2714 x i8] }
%struct.range2trim = type { i64, i64 }

@dbMount.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&bmp->db_bmaplock\00", [46 x i8] zeroinitializer }, align 32
@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@dbSync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013dbSync: read_metapage failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dbSync\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/jfs/jfs_dmap.c\00", [46 x i8] zeroinitializer }, align 32
@dbSync._entry_ptr = internal global ptr @dbSync._entry, section ".printk_index", align 4
@dbFree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013blkno = %Lx, nblocks = %Lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dbFree\00", [25 x i8] zeroinitializer }, align 32
@dbFree._entry_ptr = internal global ptr @dbFree._entry, section ".printk_index", align 4
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"block to be freed is outside the map\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error in block map\0A\00", [44 x i8] zeroinitializer }, align 32
@dbUpdatePMap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.8, ptr @.str.3, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dbUpdatePMap\00", [19 x i8] zeroinitializer }, align 32
@dbUpdatePMap._entry_ptr = internal global ptr @dbUpdatePMap._entry, section ".printk_index", align 4
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"blocks are outside the map\0A\00", [36 x i8] zeroinitializer }, align 32
@dbAlloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dbAlloc\00", [24 x i8] zeroinitializer }, align 32
@dbAlloc._entry_ptr = internal global ptr @dbAlloc._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nblocks > 0\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"the hint is outside the map\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no memory for trim array\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-EIO\0A\00", [26 x i8] zeroinitializer }, align 32
@dbAllocBottomUp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.16, ptr @.str.3, i32 3211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dbAllocBottomUp\00", [16 x i8] zeroinitializer }, align 32
@dbAllocBottomUp._entry_ptr = internal global ptr @dbAllocBottomUp._entry, section ".printk_index", align 4
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nblocks <= bmp->db_bmap.dn_mapsize - blkno\00", [53 x i8] zeroinitializer }, align 32
@dbExtendFS._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 3393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016dbExtendFS: blkno:%Ld nblocks:%Ld newsize:%Ld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbExtendFS\00", [21 x i8] zeroinitializer }, align 32
@dbExtendFS._entry_ptr = internal global ptr @dbExtendFS._entry, section ".printk_index", align 4
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"L2 page could not be read\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"function has not returned as expected\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot find ag with average freespace\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"the block is outside the filesystem\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Corrupt dmap page\0A\00", [45 x i8] zeroinitializer }, align 32
@dbAllocBits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.25, ptr @.str.3, i32 2182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dbAllocBits\00", [20 x i8] zeroinitializer }, align 32
@dbAllocBits._entry_ptr = internal global ptr @dbAllocBits._entry, section ".printk_index", align 4
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dbitno + nblocks <= BPERDMAP\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"leaf page corrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@budtab = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\00\02\01\01\01\01\00\00\00\01\00\00\00\01\00\00\FF", [64 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Corrupt dmapctl page\0A\00", [42 x i8] zeroinitializer }, align 32
@dbAdjCtl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.29, ptr @.str.3, i32 2616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbAdjCtl\00", [23 x i8] zeroinitializer }, align 32
@dbAdjCtl._entry_ptr = internal global ptr @dbAdjCtl._entry, section ".printk_index", align 4
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"level == bmp->db_maxlevel\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"the maximum free buddy is not the old root\0A\00", [52 x i8] zeroinitializer }, align 32
@dbBackSplit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.32, ptr @.str.3, i32 2725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dbBackSplit\00", [20 x i8] zeroinitializer }, align 32
@dbBackSplit._entry_ptr = internal global ptr @dbBackSplit._entry, section ".printk_index", align 4
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"leaf[leafno] == NOFREE\00", [41 x i8] zeroinitializer }, align 32
@dbBackSplit._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.3, i32 2752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013JFS: block map error in dbBackSplit\0A\00", [57 x i8] zeroinitializer }, align 32
@dbBackSplit._entry_ptr.36 = internal global ptr @dbBackSplit._entry.34, section ".printk_index", align 4
@dbBackSplit._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 2774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013JFS: wrong leaf value in dbBackSplit\0A\00", [56 x i8] zeroinitializer }, align 32
@dbBackSplit._entry_ptr.39 = internal global ptr @dbBackSplit._entry.37, section ".printk_index", align 4
@dbFreeBits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.40, ptr @.str.3, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbFreeBits\00", [21 x i8] zeroinitializer }, align 32
@dbFreeBits._entry_ptr = internal global ptr @dbFreeBits._entry, section ".printk_index", align 4
@dbFindBits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.41, ptr @.str.3, i32 3029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbFindBits\00", [21 x i8] zeroinitializer }, align 32
@dbFindBits._entry_ptr = internal global ptr @dbFindBits._entry, section ".printk_index", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nb <= DBWORD\00", [19 x i8] zeroinitializer }, align 32
@dbFindBits._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.41, ptr @.str.3, i32 3044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dbFindBits._entry_ptr.44 = internal global ptr @dbFindBits._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bitno < 32\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"allocation request is larger than the allocation group size\0A\00", [35 x i8] zeroinitializer }, align 32
@dbAllocAG._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013blkno = %Lx, blocks = %Lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dbAllocAG\00", [22 x i8] zeroinitializer }, align 32
@dbAllocAG._entry_ptr = internal global ptr @dbAllocAG._entry, section ".printk_index", align 4
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dbAllocCtl failed in free AG\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed descending stree\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"control page inconsistent\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate blocks\0A\00", [37 x i8] zeroinitializer }, align 32
@dbAllocCtl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.53, ptr @.str.3, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbAllocCtl\00", [21 x i8] zeroinitializer }, align 32
@dbAllocCtl._entry_ptr = internal global ptr @dbAllocCtl._entry, section ".printk_index", align 4
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(blkno & (BPERDMAP - 1)) == 0\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"the dmap is not all free\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I/O Error: Block Leakage\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Block Leakage\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmap inconsistent\0A\00", [45 x i8] zeroinitializer }, align 32
@dbFindLeaf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.59, ptr @.str.3, i32 2993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbFindLeaf\00", [21 x i8] zeroinitializer }, align 32
@dbFindLeaf._entry_ptr = internal global ptr @dbFindLeaf._entry, section ".printk_index", align 4
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"n < 4\00", [26 x i8] zeroinitializer }, align 32
@dbAllocDmapLev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.61, ptr @.str.3, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dbAllocDmapLev\00", [17 x i8] zeroinitializer }, align 32
@dbAllocDmapLev._entry_ptr = internal global ptr @dbAllocDmapLev._entry, section ".printk_index", align 4
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2nb <= L2BPERDMAP\00", [45 x i8] zeroinitializer }, align 32
@blkstol2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.63, ptr @.str.3, i32 3176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blkstol2\00", [23 x i8] zeroinitializer }, align 32
@blkstol2._entry_ptr = internal global ptr @blkstol2._entry, section ".printk_index", align 4
@.str.64 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@dbAllocDmapBU._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.65, ptr @.str.3, i32 3274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dbAllocDmapBU\00", [18 x i8] zeroinitializer }, align 32
@dbAllocDmapBU._entry_ptr = internal global ptr @dbAllocDmapBU._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 207, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 265, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 333, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 336, i32 23 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 373, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 427, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 430, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 700, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 714, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1633, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1662, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3211, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3392, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3461, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3626, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3696, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1045, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1121, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2182, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2241, i32 9 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"budtab\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 117, i32 17 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2514, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2616, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2619, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2725, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2752, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2774, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2327, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3029, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3044, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1366, i32 6 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1397, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1401, i32 7 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1458, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1498, i32 9 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1510, i32 7 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1865, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1885, i32 7 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1932, i32 7 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1944, i32 36 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1761, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 2993, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1991, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3176, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.318 = private constant [21 x i8] c"../fs/jfs/jfs_dmap.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 3274, i32 2 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @blkstol2._entry, ptr @blkstol2._entry_ptr, ptr @dbAdjCtl._entry, ptr @dbAdjCtl._entry_ptr, ptr @dbAlloc._entry, ptr @dbAlloc._entry_ptr, ptr @dbAllocAG._entry, ptr @dbAllocAG._entry_ptr, ptr @dbAllocBits._entry, ptr @dbAllocBits._entry_ptr, ptr @dbAllocBottomUp._entry, ptr @dbAllocBottomUp._entry_ptr, ptr @dbAllocCtl._entry, ptr @dbAllocCtl._entry_ptr, ptr @dbAllocDmapBU._entry, ptr @dbAllocDmapBU._entry_ptr, ptr @dbAllocDmapLev._entry, ptr @dbAllocDmapLev._entry_ptr, ptr @dbBackSplit._entry, ptr @dbBackSplit._entry.34, ptr @dbBackSplit._entry.37, ptr @dbBackSplit._entry_ptr, ptr @dbBackSplit._entry_ptr.36, ptr @dbBackSplit._entry_ptr.39, ptr @dbExtendFS._entry, ptr @dbExtendFS._entry_ptr, ptr @dbFindBits._entry, ptr @dbFindBits._entry.43, ptr @dbFindBits._entry_ptr, ptr @dbFindBits._entry_ptr.44, ptr @dbFindLeaf._entry, ptr @dbFindLeaf._entry_ptr, ptr @dbFree._entry, ptr @dbFree._entry_ptr, ptr @dbFreeBits._entry, ptr @dbFreeBits._entry_ptr, ptr @dbSync._entry, ptr @dbSync._entry_ptr, ptr @dbUpdatePMap._entry, ptr @dbUpdatePMap._entry_ptr, ptr @dbMount.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @budtab, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbMount.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbSync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbFree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbUpdatePMap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAlloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAllocBottomUp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbExtendFS._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAllocBits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @budtab to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAdjCtl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbBackSplit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbBackSplit._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbBackSplit._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbFreeBits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbFindBits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbFindBits._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAllocAG._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAllocCtl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbFindLeaf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAllocDmapLev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkstol2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbAllocDmapBU._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbMount(ptr noundef %ipbmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1712) #13
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %call2 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.metapage, ptr %call2, i32 0, i32 7
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %call7.i, align 8
  %dn_nfree = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dn_nfree, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %dn_nfree9 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %dn_nfree9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %dn_nfree9, align 8
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dn_l2nbperpage, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %dn_l2nbperpage11 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %dn_l2nbperpage11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dn_l2nbperpage11, align 8
  %dn_numag = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dn_numag, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %dn_numag13 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 3
  %18 = ptrtoint ptr %dn_numag13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dn_numag13, align 4
  %dn_maxlevel = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 4
  %19 = ptrtoint ptr %dn_maxlevel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dn_maxlevel, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %dn_maxlevel15 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 4
  %22 = ptrtoint ptr %dn_maxlevel15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dn_maxlevel15, align 8
  %dn_maxag = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 5
  %23 = ptrtoint ptr %dn_maxag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dn_maxag, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %dn_maxag17 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 5
  %26 = ptrtoint ptr %dn_maxag17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dn_maxag17, align 4
  %dn_agpref = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 6
  %27 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dn_agpref, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %dn_agpref19 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 6
  %30 = ptrtoint ptr %dn_agpref19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dn_agpref19, align 8
  %dn_aglevel = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 7
  %31 = ptrtoint ptr %dn_aglevel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dn_aglevel, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %dn_aglevel21 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 7
  %34 = ptrtoint ptr %dn_aglevel21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dn_aglevel21, align 4
  %dn_agheight = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 8
  %35 = ptrtoint ptr %dn_agheight to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dn_agheight, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %dn_agheight23 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 8
  %38 = ptrtoint ptr %dn_agheight23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dn_agheight23, align 8
  %dn_agwidth = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 9
  %39 = ptrtoint ptr %dn_agwidth to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dn_agwidth, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %dn_agwidth25 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 9
  %42 = ptrtoint ptr %dn_agwidth25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dn_agwidth25, align 4
  %dn_agstart = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 10
  %43 = ptrtoint ptr %dn_agstart to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dn_agstart, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %dn_agstart27 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 10
  %46 = ptrtoint ptr %dn_agstart27 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dn_agstart27, align 8
  %dn_agl2size = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 11
  %47 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dn_agl2size, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %dn_agl2size29 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 11
  %50 = ptrtoint ptr %dn_agl2size29 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dn_agl2size29, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6
  %i.087 = phi i32 [ 0, %if.end6 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dbmap_disk, ptr %2, i32 0, i32 12, i32 %i.087
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx, align 8
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  %arrayidx34 = getelementptr %struct.dbmap, ptr %call7.i, i32 0, i32 12, i32 %i.087
  %54 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx34, align 8
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dn_agsize = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 13
  %55 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %dn_agsize, align 8
  %57 = tail call i64 @llvm.bswap.i64(i64 %56)
  %dn_agsize36 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 13
  %58 = ptrtoint ptr %dn_agsize36 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %dn_agsize36, align 8
  %dn_maxfreebud = getelementptr inbounds %struct.dbmap_disk, ptr %2, i32 0, i32 14
  %59 = ptrtoint ptr %dn_maxfreebud to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dn_maxfreebud, align 8
  %dn_maxfreebud38 = getelementptr inbounds %struct.dbmap, ptr %call7.i, i32 0, i32 14
  %61 = ptrtoint ptr %dn_maxfreebud38 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %dn_maxfreebud38, align 8
  tail call void @release_metapage(ptr noundef nonnull %call2) #10
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %call7.i, i32 0, i32 1
  %62 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ipbmap, ptr %db_ipbmap, align 8
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i86 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 33
  %65 = ptrtoint ptr %s_fs_info.i86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i86, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %66, i32 0, i32 23
  %67 = ptrtoint ptr %bmap to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i, ptr %bmap, align 4
  %db_active = getelementptr inbounds %struct.bmap, ptr %call7.i, i32 0, i32 3
  %68 = call ptr @memset(ptr %db_active, i32 0, i32 512)
  %db_bmaplock = getelementptr inbounds %struct.bmap, ptr %call7.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %db_bmaplock, ptr noundef nonnull @.str, ptr noundef nonnull @dbMount.__key) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then5 ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_metapage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_metapage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbUnmount(ptr noundef %ipbmap, i32 noundef %mounterror) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mounterror)
  %tobool.not = icmp eq i32 %mounterror, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log.i, align 4
  %tobool.not.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.not, label %lor.lhs.false.if.end_crit_edge, label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @dbSync(ptr noundef %ipbmap)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %9, i64 noundef 0) #10
  tail call void @kfree(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbSync(ptr noundef %ipbmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmap, align 4
  %call3 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %6 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.metapage, ptr %call3, i32 0, i32 7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %5, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %8, align 8
  %dn_nfree = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dn_nfree, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %dn_nfree15 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %dn_nfree15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %dn_nfree15, align 8
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dn_l2nbperpage, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %dn_l2nbperpage17 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 2
  %20 = ptrtoint ptr %dn_l2nbperpage17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dn_l2nbperpage17, align 8
  %dn_numag = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dn_numag, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %dn_numag19 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 3
  %24 = ptrtoint ptr %dn_numag19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dn_numag19, align 4
  %dn_maxlevel = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %dn_maxlevel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dn_maxlevel, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %dn_maxlevel21 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 4
  %28 = ptrtoint ptr %dn_maxlevel21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dn_maxlevel21, align 8
  %dn_maxag = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %dn_maxag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dn_maxag, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %dn_maxag23 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 5
  %32 = ptrtoint ptr %dn_maxag23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dn_maxag23, align 4
  %dn_agpref = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dn_agpref, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %dn_agpref25 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 6
  %36 = ptrtoint ptr %dn_agpref25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dn_agpref25, align 8
  %dn_aglevel = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 7
  %37 = ptrtoint ptr %dn_aglevel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dn_aglevel, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %dn_aglevel27 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 7
  %40 = ptrtoint ptr %dn_aglevel27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dn_aglevel27, align 4
  %dn_agheight = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 8
  %41 = ptrtoint ptr %dn_agheight to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dn_agheight, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %dn_agheight29 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 8
  %44 = ptrtoint ptr %dn_agheight29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dn_agheight29, align 8
  %dn_agwidth = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 9
  %45 = ptrtoint ptr %dn_agwidth to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dn_agwidth, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %dn_agwidth31 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 9
  %48 = ptrtoint ptr %dn_agwidth31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %dn_agwidth31, align 4
  %dn_agstart = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 10
  %49 = ptrtoint ptr %dn_agstart to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dn_agstart, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %dn_agstart33 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 10
  %52 = ptrtoint ptr %dn_agstart33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dn_agstart33, align 8
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 11
  %53 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dn_agl2size, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %dn_agl2size35 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 11
  %56 = ptrtoint ptr %dn_agl2size35 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dn_agl2size35, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12
  %i.087 = phi i32 [ 0, %if.end12 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dbmap, ptr %5, i32 0, i32 12, i32 %i.087
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58)
  %arrayidx40 = getelementptr %struct.dbmap_disk, ptr %8, i32 0, i32 12, i32 %i.087
  %60 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx40, align 8
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dn_agsize = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 13
  %61 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %dn_agsize, align 8
  %63 = tail call i64 @llvm.bswap.i64(i64 %62)
  %dn_agsize42 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 13
  %64 = ptrtoint ptr %dn_agsize42 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %dn_agsize42, align 8
  %dn_maxfreebud = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 14
  %65 = ptrtoint ptr %dn_maxfreebud to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dn_maxfreebud, align 8
  %dn_maxfreebud44 = getelementptr inbounds %struct.dbmap_disk, ptr %8, i32 0, i32 14
  %67 = ptrtoint ptr %dn_maxfreebud44 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %dn_maxfreebud44, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  tail call void @release_metapage(ptr noundef nonnull %call3) #10
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 9
  %68 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %69, i64 noundef 0, i64 noundef 9223372036854775807) #10
  tail call void @diWriteSpecial(ptr noundef %ipbmap, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @diWriteSpecial(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbFree(ptr nocapture noundef readonly %ip, i64 noundef %blkno, i64 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipbmap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipbmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipbmap1, align 4
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmap, align 4
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb4, align 4
  %rdwrlock = getelementptr i8, ptr %5, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blkno)
  %cmp = icmp eq i64 %blkno, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.rhs, !prof !156

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %add = add i64 %nblocks, %blkno
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp6 = icmp sgt i64 %add, %11
  br i1 %cmp6, label %lor.rhs.if.then_crit_edge, label %if.end, !prof !156

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @up_read(ptr noundef %rdwrlock) #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %blkno, i64 noundef %nblocks) #14
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %13, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %s_fs_info.i107 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i107 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i107, align 16
  %flag = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flag, align 4
  %and = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.if.end20_crit_edge, label %if.then14

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.end
  %minblks_trim = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 32
  %18 = ptrtoint ptr %minblks_trim to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %minblks_trim, align 4
  %conv = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %nblocks)
  %cmp16.not = icmp sgt i64 %conv, %nblocks
  br i1 %cmp16.not, label %if.then14.if.end20_crit_edge, label %if.then18

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @jfs_issue_discard(ptr noundef %5, i64 noundef %blkno, i64 noundef %nblocks) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then14.if.end20_crit_edge, %if.end.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks)
  %cmp21129 = icmp sgt i64 %nblocks, 0
  br i1 %cmp21129, label %for.body.lr.ph, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %blkno.addr.0132 = phi i64 [ %blkno, %for.body.lr.ph ], [ %add56, %for.inc.for.body_crit_edge ]
  %rem.0131 = phi i64 [ %nblocks, %for.body.lr.ph ], [ %sub54, %for.inc.for.body_crit_edge ]
  %mp.0130 = phi ptr [ null, %for.body.lr.ph ], [ %call34, %for.inc.for.body_crit_edge ]
  %tobool23.not = icmp eq ptr %mp.0130, null
  br i1 %tobool23.not, label %for.body.if.end25_crit_edge, label %if.then24

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp.0130, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  tail call void @release_metapage(ptr noundef nonnull %mp.0130) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.body.if.end25_crit_edge
  %20 = lshr i64 %blkno.addr.0132, 13
  %21 = lshr i64 %blkno.addr.0132, 23
  %shr28 = ashr i64 %blkno.addr.0132, 33
  %add27 = add nuw nsw i64 %21, 4
  %add29 = add nuw nsw i64 %add27, %20
  %add31 = add nsw i64 %add29, %shr28
  %22 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom = zext i32 %23 to i64
  %shl = shl i64 %add31, %sh_prom
  %conv33 = trunc i64 %shl to i32
  %call34 = tail call ptr @__get_metapage(ptr noundef %5, i32 noundef %conv33, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp35 = icmp eq ptr %call34, null
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %rdwrlock) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end25
  %data = getelementptr inbounds %struct.metapage, ptr %call34, i32 0, i32 7
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %and41 = and i64 %blkno.addr.0132, 8191
  %sub = sub nuw nsw i64 8192, %and41
  %26 = tail call i64 @llvm.umin.i64(i64 %rem.0131, i64 %sub)
  %cond.off0 = trunc i64 %26 to i32
  %stree.i = getelementptr inbounds %struct.dmap, ptr %25, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stree.i, align 1
  %call.i = tail call fastcc i32 @dbFreeBits(ptr noundef %7, ptr noundef %25, i64 noundef %blkno.addr.0132, i32 noundef %cond.off0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end40.if.then48_crit_edge

if.end40.if.then48_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false.i:                                  ; preds = %if.end40
  %29 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stree.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %28)
  %cmp.i = icmp eq i8 %30, %28
  br i1 %cmp.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %conv.i = sext i8 %30 to i32
  %call10.i = tail call fastcc i32 @dbAdjCtl(ptr noundef %7, i64 noundef %blkno.addr.0132, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.for.inc_crit_edge, label %if.then12.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then12.i:                                      ; preds = %if.end.i
  %cond.off0.le = trunc i64 %26 to i32
  %31 = trunc i64 %blkno.addr.0132 to i32
  %32 = lshr i32 %31, 5
  %conv13.i = and i32 %32, 255
  %arrayidx16.i = getelementptr %struct.dmap, ptr %25, i32 0, i32 3, i32 5, i32 %conv13.i
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp18.i = icmp eq i8 %34, -1
  br i1 %cmp18.i, label %if.then20.i, label %if.then12.i.if.end23.i_crit_edge

if.then12.i.if.end23.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %tree.i.le = getelementptr inbounds %struct.dmap, ptr %25, i32 0, i32 3
  %call22.i = tail call fastcc i32 @dbBackSplit(ptr noundef %tree.i.le, i32 noundef %conv13.i) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then12.i.if.end23.i_crit_edge
  tail call fastcc void @dbAllocBits(ptr noundef %7, ptr noundef %25, i64 noundef %blkno.addr.0132, i32 noundef %cond.off0.le) #10
  br label %if.then48

if.then48:                                        ; preds = %if.end23.i, %if.end40.if.then48_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end23.i ], [ %call.i, %if.end40.if.then48_crit_edge ]
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %36, ptr noundef nonnull @.str.7) #10
  tail call void @release_metapage(ptr noundef nonnull %call34) #10
  tail call void @up_read(ptr noundef %rdwrlock) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge
  %sub54 = sub nsw i64 %rem.0131, %26
  %add56 = add i64 %26, %blkno.addr.0132
  %cmp21 = icmp sgt i64 %sub54, 0
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  %mp.0.lcssa = phi ptr [ null, %if.end20.for.end_crit_edge ], [ %call34, %for.inc.for.end_crit_edge ]
  %flag.i111 = getelementptr inbounds %struct.metapage, ptr %mp.0.lcssa, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i111) #10
  tail call void @release_metapage(ptr noundef %mp.0.lcssa) #10
  tail call void @up_read(ptr noundef %rdwrlock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then48, %if.then37, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then37 ], [ %retval.0.i, %if.then48 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_issue_discard(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbUpdatePMap(ptr nocapture noundef readonly %ipbmap, i32 noundef %free, i64 noundef %blkno, i64 noundef %nblocks, ptr noundef %tblk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmap, align 4
  %add = add i64 %nblocks, %blkno
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %7)
  %cmp = icmp sgt i64 %add, %7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %blkno, i64 noundef %nblocks) #14
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %9, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lsn3 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 3
  %10 = ptrtoint ptr %lsn3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lsn3, align 4
  %sb = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 5
  %12 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sb, align 4
  %s_fs_info.i263 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i263 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i263, align 16
  %log5 = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %log5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log5, align 4
  %syncpt = getelementptr inbounds %struct.jfs_log, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %syncpt, align 4
  %sub = sub i32 %11, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %logsize = getelementptr inbounds %struct.jfs_log, ptr %17, i32 0, i32 24
  %20 = ptrtoint ptr %logsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %logsize, align 8
  %add8 = add i32 %21, %sub
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %difft.0 = phi i32 [ %add8, %if.then7 ], [ %sub, %if.end.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks)
  %cmp10277 = icmp sgt i64 %nblocks, 0
  br i1 %cmp10277, label %for.body.lr.ph, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 2
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %5, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free)
  %tobool65.not = icmp eq i32 %free, 0
  %synclock = getelementptr inbounds %struct.jfs_log, ptr %17, i32 0, i32 30
  %logsize103 = getelementptr inbounds %struct.jfs_log, ptr %17, i32 0, i32 24
  %synclist110 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4
  %clsn = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 11
  %count = getelementptr inbounds %struct.jfs_log, ptr %17, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc144.for.body_crit_edge, %for.body.lr.ph
  %blkno.addr.0282 = phi i64 [ %blkno, %for.body.lr.ph ], [ %add148, %for.inc144.for.body_crit_edge ]
  %difft.1281 = phi i32 [ %difft.0, %for.body.lr.ph ], [ %difft.4, %for.inc144.for.body_crit_edge ]
  %mp.0280 = phi ptr [ null, %for.body.lr.ph ], [ %mp.1, %for.inc144.for.body_crit_edge ]
  %lastlblkno.0279 = phi i64 [ 0, %for.body.lr.ph ], [ %lastlblkno.1, %for.inc144.for.body_crit_edge ]
  %rem.0278 = phi i64 [ %nblocks, %for.body.lr.ph ], [ %sub146, %for.inc144.for.body_crit_edge ]
  %shr = ashr i64 %blkno.addr.0282, 13
  %shr11 = ashr i64 %blkno.addr.0282, 23
  %shr13 = ashr i64 %blkno.addr.0282, 33
  %add12 = add nsw i64 %shr11, 4
  %add14 = add nsw i64 %add12, %shr
  %add16 = add nsw i64 %add14, %shr13
  %22 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom = zext i32 %23 to i64
  %shl = shl i64 %add16, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %lastlblkno.0279)
  %cmp18.not = icmp eq i64 %shl, %lastlblkno.0279
  br i1 %cmp18.not, label %for.body.if.end27_crit_edge, label %if.then19

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19:                                        ; preds = %for.body
  %tobool.not = icmp eq ptr %mp.0280, null
  br i1 %tobool.not, label %if.then19.if.end21_crit_edge, label %if.then20

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp.0280, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  tail call void @release_metapage(ptr noundef nonnull %mp.0280) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then19.if.end21_crit_edge
  %24 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %db_ipbmap, align 8
  %conv = trunc i64 %shl to i32
  %call22 = tail call ptr @__get_metapage(ptr noundef %25, i32 noundef %conv, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %flag.i264 = getelementptr inbounds %struct.metapage, ptr %call22, i32 0, i32 5
  %26 = ptrtoint ptr %flag.i264 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flag.i264, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end26.if.end27_crit_edge, label %if.then.i

if.end26.if.end27_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %page.i = getelementptr inbounds %struct.metapage, ptr %call22, i32 0, i32 10
  %29 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page.i, align 4
  tail call void @wait_on_page_writeback(ptr noundef %30) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then.i, %if.end26.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %mp.1 = phi ptr [ %mp.0280, %for.body.if.end27_crit_edge ], [ %call22, %if.end26.if.end27_crit_edge ], [ %call22, %if.then.i ]
  %data = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 7
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = trunc i64 %blkno.addr.0282 to i32
  %conv28 = and i32 %33, 8191
  %narrow = sub nuw nsw i32 8192, %conv28
  %sub31 = zext i32 %narrow to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %rem.0278, i64 %sub31)
  %cmp33 = icmp ult i64 %rem.0278, %sub31
  %extract.t = trunc i64 %rem.0278 to i32
  %cond.off0 = select i1 %cmp33, i32 %extract.t, i32 %narrow
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.off0)
  %cmp37270 = icmp sgt i32 %cond.off0, 0
  br i1 %cmp37270, label %for.body39.preheader, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body39.preheader:                             ; preds = %if.end27
  %34 = lshr i32 %conv28, 5
  br label %for.body39

for.body39:                                       ; preds = %for.inc.for.body39_crit_edge, %for.body39.preheader
  %dbitno.0276 = phi i32 [ %add77, %for.inc.for.body39_crit_edge ], [ %conv28, %for.body39.preheader ]
  %word.0273 = phi i32 [ %add61, %for.inc.for.body39_crit_edge ], [ %34, %for.body39.preheader ]
  %rbits.0271 = phi i32 [ %sub76, %for.inc.for.body39_crit_edge ], [ %cond.off0, %for.body39.preheader ]
  %and40 = and i32 %dbitno.0276, 31
  %sub41 = sub nuw nsw i32 32, %and40
  %35 = tail call i32 @llvm.umin.i32(i32 %rbits.0271, i32 %sub41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %35)
  %cmp49 = icmp ult i32 %35, 32
  br i1 %cmp49, label %if.then51, label %if.else62

if.then51:                                        ; preds = %for.body39
  %sub52 = sub nuw nsw i32 32, %35
  %shl53 = shl nsw i32 -1, %sub52
  %shr54 = lshr i32 %shl53, %and40
  br i1 %tobool65.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shr54, -1
  %36 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %arrayidx = getelementptr %struct.dmap, ptr %32, i32 0, i32 6, i32 %word.0273
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %and57 = and i32 %38, %36
  store i32 %and57, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %shr54)
  %arrayidx59 = getelementptr %struct.dmap, ptr %32, i32 0, i32 6, i32 %word.0273
  %40 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx59, align 4
  %or = or i32 %41, %39
  store i32 %or, ptr %arrayidx59, align 4
  br label %for.inc

if.else62:                                        ; preds = %for.body39
  %shr63268 = lshr i32 %rbits.0271, 5
  %shl64 = and i32 %rbits.0271, -32
  %arrayidx71 = getelementptr %struct.dmap, ptr %32, i32 0, i32 6, i32 %word.0273
  %mul72 = shl nuw nsw i32 %shr63268, 2
  br i1 %tobool65.not, label %if.else69, label %if.then66

if.then66:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  %42 = call ptr @memset(ptr %arrayidx71, i32 0, i32 %mul72)
  br label %for.inc

if.else69:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  %43 = call ptr @memset(ptr %arrayidx71, i32 255, i32 %mul72)
  br label %for.inc

for.inc:                                          ; preds = %if.else69, %if.then66, %if.else, %if.then56
  %.sink = phi i32 [ 1, %if.else ], [ 1, %if.then56 ], [ %shr63268, %if.else69 ], [ %shr63268, %if.then66 ]
  %nbits.0 = phi i32 [ %35, %if.else ], [ %35, %if.then56 ], [ %shl64, %if.else69 ], [ %shl64, %if.then66 ]
  %add61 = add i32 %word.0273, %.sink
  %sub76 = sub i32 %rbits.0271, %nbits.0
  %add77 = add i32 %nbits.0, %dbitno.0276
  %cmp37 = icmp sgt i32 %sub76, 0
  br i1 %cmp37, label %for.inc.for.body39_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body39_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge
  br i1 %cmp18.not, label %for.end.for.inc144_crit_edge, label %if.end81

for.end.for.inc144_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc144

if.end81:                                         ; preds = %for.end
  %call88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock) #10
  %lsn93 = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 3
  %44 = ptrtoint ptr %lsn93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lsn93, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp94.not = icmp eq i32 %45, 0
  br i1 %cmp94.not, label %if.else135, label %if.then96

if.then96:                                        ; preds = %if.end81
  %46 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %syncpt, align 4
  %sub99 = sub i32 %45, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub99)
  %cmp100 = icmp slt i32 %sub99, 0
  br i1 %cmp100, label %if.then102, label %if.then96.if.end105_crit_edge

if.then96.if.end105_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then102:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %logsize103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %logsize103, align 8
  %add104 = add i32 %49, %sub99
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.then96.if.end105_crit_edge
  %diffp.0 = phi i32 [ %add104, %if.then102 ], [ %sub99, %if.then96.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %difft.1281, i32 %diffp.0)
  %cmp106 = icmp slt i32 %difft.1281, %diffp.0
  br i1 %cmp106, label %if.then108, label %if.end105.if.end111_crit_edge

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then108:                                       ; preds = %if.end105
  %50 = ptrtoint ptr %lsn93 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %11, ptr %lsn93, align 8
  %synclist = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then108.__list_del_entry.exit.i_crit_edge

if.then108.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %synclist to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %synclist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then108.__list_del_entry.exit.i_crit_edge
  %57 = ptrtoint ptr %synclist110 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %synclist110, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %synclist, ptr noundef %synclist110, ptr noundef %58) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end111_crit_edge

__list_del_entry.exit.i.if.end111_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %synclist, ptr %prev1.i.i2.i, align 4
  %60 = ptrtoint ptr %synclist to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %synclist, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %synclist110, ptr %prev3.i.i.i, align 4
  %62 = ptrtoint ptr %synclist110 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %synclist, ptr %synclist110, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end111_crit_edge, %if.end105.if.end111_crit_edge
  %63 = ptrtoint ptr %clsn to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %clsn, align 4
  %65 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncpt, align 4
  %sub113 = sub i32 %64, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub113)
  %cmp114 = icmp slt i32 %sub113, 0
  br i1 %cmp114, label %if.then116, label %if.end111.if.end119_crit_edge

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %logsize103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %logsize103, align 8
  %add118 = add i32 %68, %sub113
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.end111.if.end119_crit_edge
  %difft.2 = phi i32 [ %add118, %if.then116 ], [ %sub113, %if.end111.if.end119_crit_edge ]
  %clsn120 = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 13
  %69 = ptrtoint ptr %clsn120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clsn120, align 8
  %sub122 = sub i32 %70, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub122)
  %cmp123 = icmp slt i32 %sub122, 0
  br i1 %cmp123, label %if.then125, label %if.end119.if.end128_crit_edge

if.end119.if.end128_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then125:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %logsize103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %logsize103, align 8
  %add127 = add i32 %72, %sub122
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.end119.if.end128_crit_edge
  %diffp.1 = phi i32 [ %add127, %if.then125 ], [ %sub122, %if.end119.if.end128_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %difft.2, i32 %diffp.1)
  %cmp129 = icmp sgt i32 %difft.2, %diffp.1
  br i1 %cmp129, label %if.then131, label %if.end128.if.end142_crit_edge

if.end128.if.end142_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %clsn120 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %64, ptr %clsn120, align 8
  br label %if.end142

if.else135:                                       ; preds = %if.end81
  %log136 = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 15
  %74 = ptrtoint ptr %log136 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %17, ptr %log136, align 8
  %75 = ptrtoint ptr %lsn93 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %11, ptr %lsn93, align 8
  %76 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %count, align 4
  %synclist138 = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 4
  %78 = ptrtoint ptr %synclist110 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %synclist110, align 4
  %call.i.i265 = tail call zeroext i1 @__list_add_valid(ptr noundef %synclist138, ptr noundef %synclist110, ptr noundef %79) #10
  br i1 %call.i.i265, label %if.end.i.i266, label %if.else135.list_add.exit_crit_edge

if.else135.list_add.exit_crit_edge:               ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i266:                                    ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %synclist138, ptr %prev1.i.i, align 4
  %81 = ptrtoint ptr %synclist138 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %synclist138, align 4
  %prev3.i.i = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %synclist110, ptr %prev3.i.i, align 4
  %83 = ptrtoint ptr %synclist110 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %synclist138, ptr %synclist110, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i266, %if.else135.list_add.exit_crit_edge
  %84 = ptrtoint ptr %clsn to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %clsn, align 4
  %clsn141 = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 13
  %86 = ptrtoint ptr %clsn141 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %clsn141, align 8
  br label %if.end142

if.end142:                                        ; preds = %list_add.exit, %if.then131, %if.end128.if.end142_crit_edge
  %difft.3 = phi i32 [ %difft.2, %if.then131 ], [ %difft.2, %if.end128.if.end142_crit_edge ], [ %difft.1281, %list_add.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock, i32 noundef %call88) #10
  br label %for.inc144

for.inc144:                                       ; preds = %if.end142, %for.end.for.inc144_crit_edge
  %lastlblkno.1 = phi i64 [ %lastlblkno.0279, %for.end.for.inc144_crit_edge ], [ %shl, %if.end142 ]
  %difft.4 = phi i32 [ %difft.1281, %for.end.for.inc144_crit_edge ], [ %difft.3, %if.end142 ]
  %87 = zext i32 %cond.off0 to i64
  %sub146 = sub i64 %rem.0278, %87
  %add148 = add i64 %blkno.addr.0282, %87
  %cmp10 = icmp sgt i64 %sub146, 0
  br i1 %cmp10, label %for.inc144.for.body_crit_edge, label %for.end149

for.inc144.for.body_crit_edge:                    ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end149:                                       ; preds = %for.inc144
  %tobool150.not = icmp eq ptr %mp.1, null
  br i1 %tobool150.not, label %for.end149.cleanup_crit_edge, label %if.then151

for.end149.cleanup_crit_edge:                     ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then151:                                       ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #12
  %flag.i267 = getelementptr inbounds %struct.metapage, ptr %mp.1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i267) #10
  tail call void @release_metapage(ptr noundef nonnull %mp.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %for.end149.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then151 ], [ 0, %for.end149.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbNextAG(ptr nocapture noundef readonly %ipbmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmap, align 4
  %db_bmaplock = getelementptr inbounds %struct.bmap, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %db_bmaplock, i32 noundef 0) #10
  %dn_nfree = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dn_nfree, align 8
  %conv = trunc i64 %7 to i32
  %dn_numag = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dn_numag, align 4
  %div = udiv i32 %conv, %9
  %conv2 = zext i32 %div to i64
  %dn_agpref = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dn_agpref, align 8
  %arrayidx = getelementptr %struct.bmap, ptr %5, i32 0, i32 3, i32 %11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx7 = getelementptr %struct.dbmap, ptr %5, i32 0, i32 12, i32 %11
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv2)
  %cmp8.not = icmp slt i64 %15, %conv2
  br i1 %cmp8.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dn_numag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1285 = icmp sgt i32 %17, 0
  br i1 %cmp1285, label %if.end.for.body_crit_edge, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %18 = phi i32 [ %25, %for.inc.for.body_crit_edge ], [ %17, %if.end.for.body_crit_edge ]
  %next_best.089 = phi i32 [ %next_best.1, %for.inc.for.body_crit_edge ], [ -1, %if.end.for.body_crit_edge ]
  %i.088 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %hwm.087 = phi i64 [ %hwm.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %agpref.086 = phi i32 [ %inc44, %for.inc.for.body_crit_edge ], [ %11, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %agpref.086, i32 %18)
  %cmp16 = icmp eq i32 %agpref.086, %18
  %spec.store.select = select i1 %cmp16, i32 0, i32 %agpref.086
  %arrayidx21 = getelementptr %struct.bmap, ptr %5, i32 0, i32 3, i32 %spec.store.select
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx21, i32 noundef 4) #10
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %arrayidx27 = getelementptr %struct.dbmap, ptr %5, i32 0, i32 12, i32 %spec.store.select
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx27, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv2)
  %cmp28.not = icmp slt i64 %22, %conv2
  br i1 %cmp28.not, label %if.else, label %if.end24.unlock.sink.split_crit_edge

if.end24.unlock.sink.split_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %hwm.087)
  %cmp36 = icmp sgt i64 %22, %hwm.087
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 %hwm.087)
  %spec.select82 = select i1 %cmp36, i32 %spec.store.select, i32 %next_best.089
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %hwm.1 = phi i64 [ %hwm.087, %for.body.for.inc_crit_edge ], [ %23, %if.else ]
  %next_best.1 = phi i32 [ %next_best.089, %for.body.for.inc_crit_edge ], [ %spec.select82, %if.else ]
  %inc = add nuw nsw i32 %i.088, 1
  %inc44 = add i32 %spec.store.select, 1
  %24 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dn_numag, align 4
  %cmp12 = icmp slt i32 %inc, %25
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %next_best.1)
  %cmp45.not = icmp eq i32 %next_best.1, -1
  br i1 %cmp45.not, label %for.end.unlock_crit_edge, label %for.end.unlock.sink.split_crit_edge

for.end.unlock.sink.split_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

for.end.unlock_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

unlock.sink.split:                                ; preds = %for.end.unlock.sink.split_crit_edge, %if.end24.unlock.sink.split_crit_edge
  %next_best.1.lcssa.sink = phi i32 [ %next_best.1, %for.end.unlock.sink.split_crit_edge ], [ %spec.store.select, %if.end24.unlock.sink.split_crit_edge ]
  %26 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %next_best.1.lcssa.sink, ptr %dn_agpref, align 8
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %for.end.unlock_crit_edge, %if.end.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %db_bmaplock) #10
  %27 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dn_agpref, align 8
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbAlloc(ptr nocapture noundef readonly %ip, i64 noundef %hint, i64 noundef %nblocks, ptr nocapture noundef writeonly %results) local_unnamed_addr #0 align 64 {
entry:
  %blkno.i235 = alloca i64, align 8
  %blkno.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipbmap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipbmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipbmap1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks)
  %cmp = icmp sgt i64 %nblocks, 0
  br i1 %cmp, label %entry.for.body.i_crit_edge, label %do.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 700, ptr noundef nonnull @.str.12) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 700, 0\0A.popsection", ""() #10, !srcloc !157
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %l2nb.026.i = phi i32 [ %inc5.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %mask.025.i = phi i64 [ %shr.i, %for.inc.i.for.body.i_crit_edge ], [ -9223372036854775808, %entry.for.body.i_crit_edge ]
  %and.i = and i64 %mask.025.i, %nblocks
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %blkstol2.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc5.i = add nuw nsw i32 %l2nb.026.i, 1
  %shr.i = ashr i64 %mask.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, 64
  br i1 %exitcond.not.i, label %do.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3176, ptr noundef nonnull @.str.64) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3176, 0\0A.popsection", ""() #10, !srcloc !158
  unreachable

blkstol2.exit:                                    ; preds = %for.body.i
  %neg.i = xor i64 %mask.025.i, -1
  %and1.i = and i64 %neg.i, %nblocks
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 63, i32 64
  %l2nb.1.i = sub nsw i32 %spec.select.i, %l2nb.026.i
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmap, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %hint)
  %cmp15.not = icmp sgt i64 %9, %hint
  br i1 %cmp15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %blkstol2.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %1, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end18:                                         ; preds = %blkstol2.exit
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dn_agl2size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %l2nb.1.i, i32 %11)
  %cmp20 = icmp sgt i32 %l2nb.1.i, %11
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %rdwrlock = getelementptr i8, ptr %5, i32 -688
  tail call void @down_write_nested(ptr noundef %rdwrlock, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno.i) #10
  %12 = ptrtoint ptr %blkno.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %blkno.i, align 8
  %dn_maxlevel.i = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %dn_maxlevel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dn_maxlevel.i, align 8
  %call.i226 = call fastcc i32 @dbFindCtl(ptr noundef %7, i32 noundef %l2nb.1.i, i32 noundef %14, ptr noundef nonnull %blkno.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool.not.i227 = icmp eq i32 %call.i226, 0
  br i1 %tobool.not.i227, label %if.end.i, label %if.then21.dbAllocAny.exit_crit_edge

if.then21.dbAllocAny.exit_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAllocAny.exit

if.end.i:                                         ; preds = %if.then21
  %15 = ptrtoint ptr %blkno.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %blkno.i, align 8
  %call1.i = tail call fastcc i32 @dbAllocCtl(ptr noundef %7, i64 noundef %nblocks, i32 noundef %l2nb.1.i, i64 noundef %16, ptr noundef %results) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, -28
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.dbAllocAny.exit_crit_edge

if.end.i.dbAllocAny.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAllocAny.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %db_ipbmap.i = getelementptr inbounds %struct.bmap, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %db_ipbmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %db_ipbmap.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %20, ptr noundef nonnull @.str.52) #10
  br label %dbAllocAny.exit

dbAllocAny.exit:                                  ; preds = %if.then2.i, %if.end.i.dbAllocAny.exit_crit_edge, %if.then21.dbAllocAny.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %if.then2.i ], [ %call.i226, %if.then21.dbAllocAny.exit_crit_edge ], [ %call1.i, %if.end.i.dbAllocAny.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i) #10
  br label %write_unlock

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hint)
  %cmp25 = icmp eq i64 %hint, 0
  br i1 %cmp25, label %if.end24.pref_ag_crit_edge, label %if.end27

if.end24.pref_ag_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %pref_ag

if.end27:                                         ; preds = %if.end24
  %add = add nsw i64 %hint, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp30.not = icmp slt i64 %add, %9
  br i1 %cmp30.not, label %if.end32, label %if.end27.pref_ag_crit_edge

if.end27.pref_ag_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %pref_ag

if.end32:                                         ; preds = %if.end27
  %sh_prom = zext i32 %11 to i64
  %shr = ashr i64 %add, %sh_prom
  %conv = trunc i64 %shr to i32
  %dn_agsize = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 13
  %21 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dn_agsize, align 8
  %sub = add i64 %22, -1
  %and = and i64 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp36 = icmp eq i64 %and, 0
  br i1 %cmp36, label %if.then38, label %if.end32.if.end42_crit_edge

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then38:                                        ; preds = %if.end32
  %arrayidx = getelementptr %struct.bmap, ptr %7, i32 0, i32 3, i32 %conv
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #10
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.then38.if.end42_crit_edge, label %if.then38.pref_ag_crit_edge

if.then38.pref_ag_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %pref_ag

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %if.then38.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 8193, i64 %nblocks)
  %cmp43 = icmp slt i64 %nblocks, 8193
  br i1 %cmp43, label %if.then45, label %if.end42.if.end112_crit_edge

if.end42.if.end112_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then45:                                        ; preds = %if.end42
  %rdwrlock47 = getelementptr i8, ptr %5, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock47, i32 noundef 2) #10
  %25 = lshr i64 %add, 13
  %26 = lshr i64 %add, 23
  %shr51 = ashr i64 %add, 33
  %add50 = add nuw nsw i64 %26, 4
  %add52 = add nuw nsw i64 %add50, %25
  %add54 = add nsw i64 %add52, %shr51
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom56 = zext i32 %28 to i64
  %shl = shl i64 %add54, %sh_prom56
  %conv57 = trunc i64 %shl to i32
  %call58 = tail call ptr @__get_metapage(ptr noundef %5, i32 noundef %conv57, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %if.then45.read_unlock_crit_edge, label %if.end62

if.then45.read_unlock_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_unlock

if.end62:                                         ; preds = %if.then45
  %data = getelementptr inbounds %struct.metapage, ptr %call58, i32 0, i32 7
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %conv63 = trunc i64 %nblocks to i32
  %call64 = tail call fastcc i32 @dbAllocNext(ptr noundef %7, ptr noundef %30, i64 noundef %add, i32 noundef %conv63)
  %31 = zext i32 %call64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call64, label %if.end62.read_unlock.sink.split_crit_edge [
    i32 -28, label %if.end72
    i32 0, label %if.then70
  ]

if.end62.read_unlock.sink.split_crit_edge:        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_unlock.sink.split

if.then70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %results to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add, ptr %results, align 8
  br label %read_unlock.sink.split.sink.split

if.end72:                                         ; preds = %if.end62
  %arrayidx74 = getelementptr %struct.bmap, ptr %7, i32 0, i32 3, i32 %conv
  %call.i.i224 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx74, i32 noundef 4) #10
  %33 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp76 = icmp sgt i32 %34, 1
  br i1 %cmp76, label %if.end72.if.then84_crit_edge, label %lor.lhs.false

if.end72.if.then84_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

lor.lhs.false:                                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp78 = icmp eq i32 %34, 1
  br i1 %cmp78, label %land.lhs.true, label %lor.lhs.false.if.end87_crit_edge

lor.lhs.false.if.end87_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true:                                    ; preds = %lor.lhs.false
  %active_ag = getelementptr i8, ptr %ip, i32 -749
  %35 = ptrtoint ptr %active_ag to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %active_ag, align 1
  %conv81 = sext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv81, i32 %conv)
  %cmp82.not = icmp eq i32 %conv81, %conv
  br i1 %cmp82.not, label %land.lhs.true.if.end87_crit_edge, label %land.lhs.true.if.then84_crit_edge

land.lhs.true.if.then84_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then84:                                        ; preds = %land.lhs.true.if.then84_crit_edge, %if.end72.if.then84_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call58) #10
  tail call void @up_read(ptr noundef %rdwrlock47) #10
  br label %pref_ag

if.end87:                                         ; preds = %land.lhs.true.if.end87_crit_edge, %lor.lhs.false.if.end87_crit_edge
  %call89 = tail call fastcc i32 @dbAllocNear(ptr noundef %7, ptr noundef %30, i64 noundef %add, i32 noundef %conv63, i32 noundef %l2nb.1.i, ptr noundef %results)
  %37 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call89, label %if.end87.read_unlock.sink.split_crit_edge [
    i32 -28, label %if.end98
    i32 0, label %if.end87.read_unlock.sink.split.sink.split_crit_edge
  ]

if.end87.read_unlock.sink.split.sink.split_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_unlock.sink.split.sink.split

if.end87.read_unlock.sink.split_crit_edge:        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_unlock.sink.split

if.end98:                                         ; preds = %if.end87
  %call100 = tail call fastcc i32 @dbAllocDmapLev(ptr noundef %7, ptr noundef %30, i32 noundef %conv63, i32 noundef %l2nb.1.i, ptr noundef %results)
  %38 = zext i32 %call100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call100, label %if.end98.read_unlock.sink.split_crit_edge [
    i32 -28, label %if.end109
    i32 0, label %if.end98.read_unlock.sink.split.sink.split_crit_edge
  ]

if.end98.read_unlock.sink.split.sink.split_crit_edge: ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_unlock.sink.split.sink.split

if.end98.read_unlock.sink.split_crit_edge:        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_unlock.sink.split

if.end109:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_metapage(ptr noundef nonnull %call58) #10
  tail call void @up_read(ptr noundef %rdwrlock47) #10
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %if.end42.if.end112_crit_edge
  %rdwrlock114 = getelementptr i8, ptr %5, i32 -688
  tail call void @down_write_nested(ptr noundef %rdwrlock114, i32 noundef 2) #10
  %call115 = tail call fastcc i32 @dbAllocAG(ptr noundef %7, i32 noundef %conv, i64 noundef %nblocks, i32 noundef %l2nb.1.i, ptr noundef %results)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call115)
  %cmp116.not = icmp eq i32 %call115, -28
  br i1 %cmp116.not, label %if.end119, label %if.end112.write_unlock_crit_edge

if.end112.write_unlock_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_unlock

if.end119:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %rdwrlock114) #10
  br label %pref_ag

pref_ag:                                          ; preds = %if.end119, %if.then84, %if.then38.pref_ag_crit_edge, %if.end27.pref_ag_crit_edge, %if.end24.pref_ag_crit_edge
  %call122 = tail call i32 @dbNextAG(ptr noundef %5)
  %rdwrlock124 = getelementptr i8, ptr %5, i32 -688
  tail call void @down_write_nested(ptr noundef %rdwrlock124, i32 noundef 2) #10
  %call125 = tail call fastcc i32 @dbAllocAG(ptr noundef %7, i32 noundef %call122, i64 noundef %nblocks, i32 noundef %l2nb.1.i, ptr noundef %results)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call125)
  %cmp126 = icmp eq i32 %call125, -28
  br i1 %cmp126, label %if.then128, label %pref_ag.write_unlock_crit_edge

pref_ag.write_unlock_crit_edge:                   ; preds = %pref_ag
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_unlock

if.then128:                                       ; preds = %pref_ag
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno.i235) #10
  %39 = ptrtoint ptr %blkno.i235 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %blkno.i235, align 8
  %dn_maxlevel.i236 = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 4
  %40 = ptrtoint ptr %dn_maxlevel.i236 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dn_maxlevel.i236, align 8
  %call.i237 = call fastcc i32 @dbFindCtl(ptr noundef %7, i32 noundef %l2nb.1.i, i32 noundef %41, ptr noundef nonnull %blkno.i235) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool.not.i238 = icmp eq i32 %call.i237, 0
  br i1 %tobool.not.i238, label %if.end.i241, label %if.then128.dbAllocAny.exit246_crit_edge

if.then128.dbAllocAny.exit246_crit_edge:          ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAllocAny.exit246

if.end.i241:                                      ; preds = %if.then128
  %42 = ptrtoint ptr %blkno.i235 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %blkno.i235, align 8
  %call1.i239 = tail call fastcc i32 @dbAllocCtl(ptr noundef %7, i64 noundef %nblocks, i32 noundef %l2nb.1.i, i64 noundef %43, ptr noundef %results) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call1.i239)
  %cmp.i240 = icmp eq i32 %call1.i239, -28
  br i1 %cmp.i240, label %if.then2.i244, label %if.end.i241.dbAllocAny.exit246_crit_edge

if.end.i241.dbAllocAny.exit246_crit_edge:         ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAllocAny.exit246

if.then2.i244:                                    ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #12
  %db_ipbmap.i242 = getelementptr inbounds %struct.bmap, ptr %7, i32 0, i32 1
  %44 = ptrtoint ptr %db_ipbmap.i242 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %db_ipbmap.i242, align 8
  %i_sb.i243 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %i_sb.i243 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb.i243, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %47, ptr noundef nonnull @.str.52) #10
  br label %dbAllocAny.exit246

dbAllocAny.exit246:                               ; preds = %if.then2.i244, %if.end.i241.dbAllocAny.exit246_crit_edge, %if.then128.dbAllocAny.exit246_crit_edge
  %retval.0.i245 = phi i32 [ -5, %if.then2.i244 ], [ %call.i237, %if.then128.dbAllocAny.exit246_crit_edge ], [ %call1.i239, %if.end.i241.dbAllocAny.exit246_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno.i235) #10
  br label %write_unlock

write_unlock:                                     ; preds = %dbAllocAny.exit246, %pref_ag.write_unlock_crit_edge, %if.end112.write_unlock_crit_edge, %dbAllocAny.exit
  %rc.0 = phi i32 [ %retval.0.i, %dbAllocAny.exit ], [ %retval.0.i245, %dbAllocAny.exit246 ], [ %call125, %pref_ag.write_unlock_crit_edge ], [ %call115, %if.end112.write_unlock_crit_edge ]
  %rdwrlock132 = getelementptr i8, ptr %5, i32 -688
  tail call void @up_write(ptr noundef %rdwrlock132) #10
  br label %cleanup

read_unlock.sink.split.sink.split:                ; preds = %if.end98.read_unlock.sink.split.sink.split_crit_edge, %if.end87.read_unlock.sink.split.sink.split_crit_edge, %if.then70
  %rc.1.ph.ph = phi i32 [ %call64, %if.then70 ], [ %call89, %if.end87.read_unlock.sink.split.sink.split_crit_edge ], [ %call100, %if.end98.read_unlock.sink.split.sink.split_crit_edge ]
  %flag107 = getelementptr inbounds %struct.metapage, ptr %call58, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag107) #10
  br label %read_unlock.sink.split

read_unlock.sink.split:                           ; preds = %read_unlock.sink.split.sink.split, %if.end98.read_unlock.sink.split_crit_edge, %if.end87.read_unlock.sink.split_crit_edge, %if.end62.read_unlock.sink.split_crit_edge
  %rc.1.ph = phi i32 [ %call64, %if.end62.read_unlock.sink.split_crit_edge ], [ %call89, %if.end87.read_unlock.sink.split_crit_edge ], [ %call100, %if.end98.read_unlock.sink.split_crit_edge ], [ %rc.1.ph.ph, %read_unlock.sink.split.sink.split ]
  tail call void @release_metapage(ptr noundef nonnull %call58) #10
  br label %read_unlock

read_unlock:                                      ; preds = %read_unlock.sink.split, %if.then45.read_unlock_crit_edge
  %rc.1 = phi i32 [ -5, %if.then45.read_unlock_crit_edge ], [ %rc.1.ph, %read_unlock.sink.split ]
  tail call void @up_read(ptr noundef %rdwrlock47) #10
  br label %cleanup

cleanup:                                          ; preds = %read_unlock, %write_unlock, %if.then16
  %retval.0 = phi i32 [ -5, %if.then16 ], [ %rc.0, %write_unlock ], [ %rc.1, %read_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbAllocNext(ptr noundef %bmp, ptr nocapture noundef %dp, i64 noundef %blkno, i32 noundef %nblocks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %leafidx = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leafidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1426063360, i32 %1)
  %cmp.not = icmp eq i32 %1, 1426063360
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  %2 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_ipbmap, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %5, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.dmap, ptr %dp, i32 0, i32 3, i32 5, i32 85
  %6 = trunc i64 %blkno to i32
  %conv = and i32 %6, 8191
  %add = add i32 %conv, %nblocks
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add)
  %cmp4 = icmp sgt i32 %add, 8192
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = lshr i32 %conv, 5
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp9 = icmp eq i8 %9, -1
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblocks)
  %cmp13108 = icmp sgt i32 %nblocks, 0
  br i1 %cmp13108, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dbitno.0112 = phi i32 [ %add57, %for.inc.for.body_crit_edge ], [ %conv, %for.cond.preheader.for.body_crit_edge ]
  %rembits.0110 = phi i32 [ %sub56, %for.inc.for.body_crit_edge ], [ %nblocks, %for.cond.preheader.for.body_crit_edge ]
  %word.0109 = phi i32 [ %word.2, %for.inc.for.body_crit_edge ], [ %7, %for.cond.preheader.for.body_crit_edge ]
  %and15 = and i32 %dbitno.0112, 31
  %sub = sub nuw nsw i32 32, %and15
  %10 = tail call i32 @llvm.umin.i32(i32 %rembits.0110, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp18 = icmp ult i32 %10, 32
  br i1 %cmp18, label %if.then20, label %while.body.preheader

if.then20:                                        ; preds = %for.body
  %sub21 = sub nuw nsw i32 32, %10
  %shl = shl nsw i32 -1, %sub21
  %shr22 = lshr i32 %shl, %and15
  %arrayidx23 = getelementptr %struct.dmap, ptr %dp, i32 0, i32 5, i32 %word.0109
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx23, align 4
  %13 = xor i32 %12, -1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %and24 = and i32 %14, %shr22
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %shr22)
  %cmp25.not = icmp eq i32 %and24, %shr22
  br i1 %cmp25.not, label %if.end28, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %add29 = add i32 %word.0109, 1
  br label %for.inc

while.body.preheader:                             ; preds = %for.body
  %shl31 = and i32 %rembits.0110, -32
  %shr30102 = lshr i32 %rembits.0110, 5
  br label %while.body

while.body:                                       ; preds = %cntlz.exit.while.body_crit_edge, %while.body.preheader
  %nwords.0107 = phi i32 [ %sub53, %cntlz.exit.while.body_crit_edge ], [ %shr30102, %while.body.preheader ]
  %word.1106 = phi i32 [ %add54, %cntlz.exit.while.body_crit_edge ], [ %word.0109, %while.body.preheader ]
  %arrayidx34 = getelementptr i8, ptr %add.ptr, i32 %word.1106
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp36 = icmp slt i8 %16, 5
  br i1 %cmp36, label %while.body.cleanup_crit_edge, label %while.body.for.inc.i_crit_edge

while.body.for.inc.i_crit_edge:                   ; preds = %while.body
  br label %for.inc.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %while.body.for.inc.i_crit_edge
  %n.06.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %while.body.for.inc.i_crit_edge ]
  %value.addr.05.i = phi i32 [ %shl.i, %for.inc.i.for.inc.i_crit_edge ], [ %nwords.0107, %while.body.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.06.i, 1
  %shl.i = shl nuw i32 %value.addr.05.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n.06.i)
  %cmp.i = icmp ult i32 %n.06.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl.i)
  %tobool.not.i = icmp sgt i32 %shl.i, -1
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.inc.i_crit_edge, label %cntlz.exit

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cntlz.exit:                                       ; preds = %for.inc.i
  %add43 = sub nuw nsw i32 35, %n.06.i
  %17 = tail call i32 @llvm.smin.i32(i32 %add43, i32 %conv35)
  %sub51 = add i32 %17, -5
  %shl52 = shl nuw nsw i32 1, %sub51
  %sub53 = sub i32 %nwords.0107, %shl52
  %add54 = add i32 %shl52, %word.1106
  %cmp32 = icmp sgt i32 %sub53, 0
  br i1 %cmp32, label %cntlz.exit.while.body_crit_edge, label %cntlz.exit.for.inc_crit_edge

cntlz.exit.for.inc_crit_edge:                     ; preds = %cntlz.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cntlz.exit.while.body_crit_edge:                  ; preds = %cntlz.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc:                                          ; preds = %cntlz.exit.for.inc_crit_edge, %if.end28
  %word.2 = phi i32 [ %add29, %if.end28 ], [ %add54, %cntlz.exit.for.inc_crit_edge ]
  %nb.0 = phi i32 [ %10, %if.end28 ], [ %shl31, %cntlz.exit.for.inc_crit_edge ]
  %sub56 = sub i32 %rembits.0110, %nb.0
  %add57 = add i32 %nb.0, %dbitno.0112
  %cmp13 = icmp sgt i32 %sub56, 0
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call58 = tail call fastcc i32 @dbAllocDmap(ptr noundef %bmp, ptr noundef %dp, i64 noundef %blkno, i32 noundef %nblocks)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %while.body.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %call58, %for.end ], [ -28, %if.end.cleanup_crit_edge ], [ -28, %if.end7.cleanup_crit_edge ], [ -28, %while.body.cleanup_crit_edge ], [ -28, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbAllocNear(ptr noundef %bmp, ptr nocapture noundef %dp, i64 noundef %blkno, i32 noundef %nblocks, i32 noundef %l2nb, ptr nocapture noundef writeonly %results) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %leafidx = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leafidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1426063360, i32 %1)
  %cmp.not = icmp eq i32 %1, 1426063360
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  %2 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_ipbmap, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %5, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.dmap, ptr %dp, i32 0, i32 3, i32 5, i32 85
  %6 = trunc i64 %blkno to i32
  %7 = lshr i32 %6, 5
  %conv = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %conv)
  %cmp4 = icmp ult i32 %conv, 252
  %add = add nuw nsw i32 %conv, 4
  %cond = select i1 %cmp4, i32 %add, i32 256
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %word.057 = phi i32 [ %conv, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %word.057
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv8 = sext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %l2nb)
  %cmp9 = icmp slt i32 %conv8, %l2nb
  br i1 %cmp9, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  %start = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 2
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %shl = shl i32 %word.057, 5
  %13 = zext i32 %shl to i64
  %add14 = add i64 %12, %13
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp17 = icmp slt i8 %9, 5
  br i1 %cmp17, label %if.then19, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %if.end12
  %shl.i = shl nuw i32 1, %l2nb
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %shl.i)
  %cmp.i = icmp slt i32 %shl.i, 33
  br i1 %cmp.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3029, ptr noundef nonnull @.str.42) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3029, 0\0A.popsection", ""() #10, !srcloc !159
  unreachable

do.end9.i:                                        ; preds = %if.then19
  %arrayidx20 = getelementptr %struct.dmap, ptr %dp, i32 0, i32 5, i32 %word.057
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %16 = xor i32 %15, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %sub.i = sub i32 32, %shl.i
  %shl10.i = shl nsw i32 -1, %sub.i
  %and41.i = and i32 %17, %shl10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.i, i32 %shl10.i)
  %cmp1242.i = icmp eq i32 %and41.i, %shl10.i
  br i1 %cmp1242.i, label %do.end9.i.dbFindBits.exit_crit_edge, label %do.end9.i.for.inc.i_crit_edge

do.end9.i.for.inc.i_crit_edge:                    ; preds = %do.end9.i
  br label %for.inc.i

do.end9.i.dbFindBits.exit_crit_edge:              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbFindBits.exit

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %do.end9.i.for.inc.i_crit_edge
  %bitno.044.i = phi i32 [ %add.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %do.end9.i.for.inc.i_crit_edge ]
  %mask.043.i = phi i32 [ %shr.i, %for.inc.i.for.inc.i_crit_edge ], [ %shl10.i, %do.end9.i.for.inc.i_crit_edge ]
  %add.i = add i32 %bitno.044.i, %shl.i
  %shr.i = lshr i32 %mask.043.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp11.not.i = icmp eq i32 %shr.i, 0
  %and.i = and i32 %shr.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shr.i)
  %cmp12.i = icmp eq i32 %and.i, %shr.i
  %or.cond.i = or i1 %cmp11.not.i, %cmp12.i
  br i1 %or.cond.i, label %do.body15.i, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body15.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp16.i = icmp slt i32 %add.i, 32
  br i1 %cmp16.i, label %do.body15.i.dbFindBits.exit_crit_edge, label %do.end20.i

do.body15.i.dbFindBits.exit_crit_edge:            ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbFindBits.exit

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3044, ptr noundef nonnull @.str.45) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3044, 0\0A.popsection", ""() #10, !srcloc !160
  unreachable

dbFindBits.exit:                                  ; preds = %do.body15.i.dbFindBits.exit_crit_edge, %do.end9.i.dbFindBits.exit_crit_edge
  %bitno.0.lcssa47.i = phi i32 [ %add.i, %do.body15.i.dbFindBits.exit_crit_edge ], [ 0, %do.end9.i.dbFindBits.exit_crit_edge ]
  %conv21 = sext i32 %bitno.0.lcssa47.i to i64
  %add22 = add i64 %add14, %conv21
  br label %if.end23

if.end23:                                         ; preds = %dbFindBits.exit, %if.end12.if.end23_crit_edge
  %blkno.addr.0 = phi i64 [ %add22, %dbFindBits.exit ], [ %add14, %if.end12.if.end23_crit_edge ]
  %stree.i = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stree.i, align 1
  tail call fastcc void @dbAllocBits(ptr noundef %bmp, ptr noundef %dp, i64 noundef %blkno.addr.0, i32 noundef %nblocks) #10
  %20 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stree.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %19)
  %cmp.i51 = icmp eq i8 %21, %19
  br i1 %cmp.i51, label %if.end23.if.then27_crit_edge, label %if.end.i

if.end23.if.then27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.i:                                         ; preds = %if.end23
  %conv.i = sext i8 %21 to i32
  %call.i52 = tail call fastcc i32 @dbAdjCtl(ptr noundef %bmp, i64 noundef %blkno.addr.0, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i, label %if.end.i.if.then27_crit_edge, label %dbAllocDmap.exit

if.end.i.if.then27_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

dbAllocDmap.exit:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = tail call fastcc i32 @dbFreeBits(ptr noundef %bmp, ptr noundef %dp, i64 noundef %blkno.addr.0, i32 noundef %nblocks) #10
  br label %cleanup

if.then27:                                        ; preds = %if.end.i.if.then27_crit_edge, %if.end23.if.then27_crit_edge
  %22 = ptrtoint ptr %results to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %blkno.addr.0, ptr %results, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %word.057, 1
  %cmp6 = icmp ult i32 %inc, %cond
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then27, %dbAllocDmap.exit, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.then27 ], [ %call.i52, %dbAllocDmap.exit ], [ -28, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbAllocDmapLev(ptr noundef %bmp, ptr nocapture noundef %dp, i32 noundef %nblocks, i32 noundef %l2nb, ptr nocapture noundef writeonly %results) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %l2nb)
  %cmp = icmp slt i32 %l2nb, 14
  br i1 %cmp, label %do.end9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 1991, ptr noundef nonnull @.str.62) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1991, 0\0A.popsection", ""() #10, !srcloc !161
  unreachable

do.end9:                                          ; preds = %entry
  %tree = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3
  %stree.i = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stree.i, align 1
  %conv.i = sext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %l2nb)
  %cmp.i = icmp slt i32 %conv.i, %l2nb
  br i1 %cmp.i, label %do.end9.cleanup_crit_edge, label %if.end.i

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %do.end9
  %height.i = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp253.i = icmp sgt i32 %4, 0
  br i1 %cmp253.i, label %if.end.i.for.cond4.preheader.i_crit_edge, label %if.end.i.if.end12_crit_edge

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.i.for.cond4.preheader.i_crit_edge:         ; preds = %if.end.i
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc28.i.for.cond4.preheader.i_crit_edge, %if.end.i.for.cond4.preheader.i_crit_edge
  %k.055.i = phi i32 [ %dec.i, %for.inc28.i.for.cond4.preheader.i_crit_edge ], [ %4, %if.end.i.for.cond4.preheader.i_crit_edge ]
  %ti.054.i = phi i32 [ %add30.i, %for.inc28.i.for.cond4.preheader.i_crit_edge ], [ 1, %if.end.i.for.cond4.preheader.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.dmapctl, ptr %tree, i32 0, i32 5, i32 %ti.054.i
  %5 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = sext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i, i32 %l2nb)
  %cmp11.not.i = icmp slt i32 %conv10.i, %l2nb
  br i1 %cmp11.not.i, label %for.inc.i, label %for.cond4.preheader.i.for.inc28.i_crit_edge

for.cond4.preheader.i.for.inc28.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.i:                                        ; preds = %for.cond4.preheader.i
  %add.1.i = add nuw nsw i32 %ti.054.i, 1
  %arrayidx9.1.i = getelementptr %struct.dmapctl, ptr %tree, i32 0, i32 5, i32 %add.1.i
  %7 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9.1.i, align 1
  %conv10.1.i = sext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.1.i, i32 %l2nb)
  %cmp11.not.1.i = icmp slt i32 %conv10.1.i, %l2nb
  br i1 %cmp11.not.1.i, label %for.inc.1.i, label %for.inc.i.for.inc28.i_crit_edge

for.inc.i.for.inc28.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %add.2.i = add nuw nsw i32 %ti.054.i, 2
  %arrayidx9.2.i = getelementptr %struct.dmapctl, ptr %tree, i32 0, i32 5, i32 %add.2.i
  %9 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.2.i, align 1
  %conv10.2.i = sext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.2.i, i32 %l2nb)
  %cmp11.not.2.i = icmp slt i32 %conv10.2.i, %l2nb
  br i1 %cmp11.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.inc28.i_crit_edge

for.inc.1.i.for.inc28.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %add.3.i = add i32 %ti.054.i, 3
  %arrayidx9.3.i = getelementptr %struct.dmapctl, ptr %tree, i32 0, i32 5, i32 %add.3.i
  %11 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9.3.i, align 1
  %conv10.3.i = sext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.3.i, i32 %l2nb)
  %cmp11.not.3.i = icmp slt i32 %conv10.3.i, %l2nb
  br i1 %cmp11.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.inc28.i_crit_edge

for.inc.2.i.for.inc28.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 2993, ptr noundef nonnull @.str.60) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2993, 0\0A.popsection", ""() #10, !srcloc !162
  unreachable

for.inc28.i:                                      ; preds = %for.inc.2.i.for.inc28.i_crit_edge, %for.inc.1.i.for.inc28.i_crit_edge, %for.inc.i.for.inc28.i_crit_edge, %for.cond4.preheader.i.for.inc28.i_crit_edge
  %n.152.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.inc28.i_crit_edge ], [ 1, %for.inc.i.for.inc28.i_crit_edge ], [ 2, %for.inc.1.i.for.inc28.i_crit_edge ], [ 3, %for.inc.2.i.for.inc28.i_crit_edge ]
  %add.lcssa.i = phi i32 [ %ti.054.i, %for.cond4.preheader.i.for.inc28.i_crit_edge ], [ %add.1.i, %for.inc.i.for.inc28.i_crit_edge ], [ %add.2.i, %for.inc.1.i.for.inc28.i_crit_edge ], [ %add.3.i, %for.inc.2.i.for.inc28.i_crit_edge ]
  %dec.i = add nsw i32 %k.055.i, -1
  %shl.i = shl i32 %add.lcssa.i, 2
  %add30.i = or i32 %shl.i, 1
  %cmp2.i = icmp sgt i32 %k.055.i, 1
  br i1 %cmp2.i, label %for.inc28.i.for.cond4.preheader.i_crit_edge, label %for.end31.loopexit.i

for.inc28.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.end31.loopexit.i:                             ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = add i32 %n.152.lcssa.i, %ti.054.i
  br label %if.end12

if.end12:                                         ; preds = %for.end31.loopexit.i, %if.end.i.if.end12_crit_edge
  %add32.i = phi i32 [ %13, %for.end31.loopexit.i ], [ 0, %if.end.i.if.end12_crit_edge ]
  %leafidx33.i = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %leafidx33.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leafidx33.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %sub.i = sub i32 %add32.i, %16
  %start = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 2
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %shl = shl i32 %sub.i, 5
  %conv = sext i32 %shl to i64
  %add = add i64 %19, %conv
  %add14 = add i32 %sub.i, 85
  %arrayidx = getelementptr %struct.dmap, ptr %dp, i32 0, i32 3, i32 5, i32 %add14
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp16 = icmp slt i8 %21, 5
  br i1 %cmp16, label %if.then18, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.end12
  %shl.i39 = shl nuw i32 1, %l2nb
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %shl.i39)
  %cmp.i40 = icmp slt i32 %shl.i39, 33
  br i1 %cmp.i40, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3029, ptr noundef nonnull @.str.42) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3029, 0\0A.popsection", ""() #10, !srcloc !159
  unreachable

do.end9.i:                                        ; preds = %if.then18
  %arrayidx19 = getelementptr %struct.dmap, ptr %dp, i32 0, i32 5, i32 %sub.i
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %24 = xor i32 %23, -1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %sub.i42 = sub i32 32, %shl.i39
  %shl10.i = shl nsw i32 -1, %sub.i42
  %and41.i = and i32 %25, %shl10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.i, i32 %shl10.i)
  %cmp1242.i = icmp eq i32 %and41.i, %shl10.i
  br i1 %cmp1242.i, label %do.end9.i.dbFindBits.exit_crit_edge, label %do.end9.i.for.inc.i44_crit_edge

do.end9.i.for.inc.i44_crit_edge:                  ; preds = %do.end9.i
  br label %for.inc.i44

do.end9.i.dbFindBits.exit_crit_edge:              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbFindBits.exit

for.inc.i44:                                      ; preds = %for.inc.i44.for.inc.i44_crit_edge, %do.end9.i.for.inc.i44_crit_edge
  %bitno.044.i = phi i32 [ %add.i, %for.inc.i44.for.inc.i44_crit_edge ], [ 0, %do.end9.i.for.inc.i44_crit_edge ]
  %mask.043.i = phi i32 [ %shr.i, %for.inc.i44.for.inc.i44_crit_edge ], [ %shl10.i, %do.end9.i.for.inc.i44_crit_edge ]
  %add.i = add i32 %bitno.044.i, %shl.i39
  %shr.i = lshr i32 %mask.043.i, %shl.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp11.not.i43 = icmp eq i32 %shr.i, 0
  %and.i = and i32 %shr.i, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shr.i)
  %cmp12.i = icmp eq i32 %and.i, %shr.i
  %or.cond.i = or i1 %cmp11.not.i43, %cmp12.i
  br i1 %or.cond.i, label %do.body15.i, label %for.inc.i44.for.inc.i44_crit_edge

for.inc.i44.for.inc.i44_crit_edge:                ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i44

do.body15.i:                                      ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp16.i = icmp slt i32 %add.i, 32
  br i1 %cmp16.i, label %do.body15.i.dbFindBits.exit_crit_edge, label %do.end20.i

do.body15.i.dbFindBits.exit_crit_edge:            ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbFindBits.exit

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3044, ptr noundef nonnull @.str.45) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3044, 0\0A.popsection", ""() #10, !srcloc !160
  unreachable

dbFindBits.exit:                                  ; preds = %do.body15.i.dbFindBits.exit_crit_edge, %do.end9.i.dbFindBits.exit_crit_edge
  %bitno.0.lcssa47.i = phi i32 [ %add.i, %do.body15.i.dbFindBits.exit_crit_edge ], [ 0, %do.end9.i.dbFindBits.exit_crit_edge ]
  %conv21 = sext i32 %bitno.0.lcssa47.i to i64
  %add22 = add i64 %add, %conv21
  br label %if.end23

if.end23:                                         ; preds = %dbFindBits.exit, %if.end12.if.end23_crit_edge
  %blkno.0 = phi i64 [ %add22, %dbFindBits.exit ], [ %add, %if.end12.if.end23_crit_edge ]
  %26 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stree.i, align 1
  tail call fastcc void @dbAllocBits(ptr noundef %bmp, ptr noundef %dp, i64 noundef %blkno.0, i32 noundef %nblocks) #10
  %28 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stree.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %27)
  %cmp.i46 = icmp eq i8 %29, %27
  br i1 %cmp.i46, label %if.end23.if.then27_crit_edge, label %if.end.i49

if.end23.if.then27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.i49:                                       ; preds = %if.end23
  %conv.i47 = sext i8 %29 to i32
  %call.i48 = tail call fastcc i32 @dbAdjCtl(ptr noundef %bmp, i64 noundef %blkno.0, i32 noundef %conv.i47, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i, label %if.end.i49.if.then27_crit_edge, label %dbAllocDmap.exit

if.end.i49.if.then27_crit_edge:                   ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

dbAllocDmap.exit:                                 ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = tail call fastcc i32 @dbFreeBits(ptr noundef %bmp, ptr noundef %dp, i64 noundef %blkno.0, i32 noundef %nblocks) #10
  br label %cleanup

if.then27:                                        ; preds = %if.end.i49.if.then27_crit_edge, %if.end23.if.then27_crit_edge
  %30 = ptrtoint ptr %results to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %blkno.0, ptr %results, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %dbAllocDmap.exit, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then27 ], [ %call.i48, %dbAllocDmap.exit ], [ -28, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbAllocAG(ptr noundef %bmp, i32 noundef %agno, i64 noundef %nblocks, i32 noundef %l2nb, ptr nocapture noundef writeonly %results) unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno) #10
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 11
  %0 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dn_agl2size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %l2nb)
  %cmp = icmp slt i32 %1, %l2nb
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  %2 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_ipbmap, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %5, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %agno to i64
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %conv, %sh_prom
  %dn_agsize = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 13
  %6 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dn_agsize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %7)
  %cmp4 = icmp eq i64 %7, 8192
  br i1 %cmp4, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx = getelementptr %struct.dbmap, ptr %bmp, i32 0, i32 12, i32 %agno
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %7)
  %cmp9 = icmp eq i64 %9, %7
  br i1 %cmp9, label %lor.lhs.false.if.then11_crit_edge, label %if.end26

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %call = tail call fastcc i32 @dbAllocCtl(ptr noundef %bmp, i64 noundef %nblocks, i32 noundef %l2nb, i64 noundef %shl, ptr noundef %results)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp12 = icmp eq i32 %call, -28
  br i1 %cmp12, label %land.lhs.true, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then11
  %arrayidx16 = getelementptr %struct.dbmap, ptr %bmp, i32 0, i32 12, i32 %agno
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx16, align 8
  %12 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dn_agsize, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp19 = icmp eq i64 %11, %13
  br i1 %cmp19, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i64 noundef %shl, i64 noundef %nblocks) #14
  %db_ipbmap23 = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  %14 = ptrtoint ptr %db_ipbmap23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db_ipbmap23, align 8
  %i_sb24 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb24, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %17, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %dn_aglevel = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 7
  %18 = ptrtoint ptr %dn_aglevel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dn_aglevel, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %19, label %cond.false45 [
    i32 2, label %if.end26.cond.end58_crit_edge
    i32 1, label %cond.true34
  ]

if.end26.cond.end58_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end58

cond.true34:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %shr = ashr i64 %shl, 33
  %add39 = mul nsw i64 %shr, 1049601
  %add41 = add nsw i64 %add39, 2
  br label %cond.end58.sink.split

cond.false45:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %21 = lshr i64 %shl, 23
  %add49 = mul nuw nsw i64 %21, 1025
  %shr50 = ashr i64 %shl, 33
  %add51 = add nsw i64 %shr50, 3
  %add53 = add nsw i64 %add51, %add49
  br label %cond.end58.sink.split

cond.end58.sink.split:                            ; preds = %cond.false45, %cond.true34
  %add41.sink = phi i64 [ %add41, %cond.true34 ], [ %add53, %cond.false45 ]
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 2
  %22 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom43 = zext i32 %23 to i64
  %shl44 = shl i64 %add41.sink, %sh_prom43
  %extract.t = trunc i64 %shl44 to i32
  br label %cond.end58

cond.end58:                                       ; preds = %cond.end58.sink.split, %if.end26.cond.end58_crit_edge
  %cond59.off0 = phi i32 [ 1, %if.end26.cond.end58_crit_edge ], [ %extract.t, %cond.end58.sink.split ]
  %db_ipbmap60 = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  %24 = ptrtoint ptr %db_ipbmap60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %db_ipbmap60, align 8
  %call62 = tail call ptr @__get_metapage(ptr noundef %25, i32 noundef %cond59.off0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp63 = icmp eq ptr %call62, null
  br i1 %cmp63, label %cond.end58.cleanup_crit_edge, label %if.end66

cond.end58.cleanup_crit_edge:                     ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %cond.end58
  %data = getelementptr inbounds %struct.metapage, ptr %call62, i32 0, i32 7
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %budmin67 = getelementptr inbounds %struct.dmapctl, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %budmin67 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %budmin67, align 4
  %conv68 = sext i8 %29 to i32
  %leafidx = getelementptr inbounds %struct.dmapctl, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %leafidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1426128896, i32 %31)
  %cmp69.not = icmp eq i32 %31, 1426128896
  br i1 %cmp69.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %db_ipbmap60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %db_ipbmap60, align 8
  %i_sb73 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb73, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %35, ptr noundef nonnull @.str.28) #10
  tail call void @release_metapage(ptr noundef nonnull %call62) #10
  br label %cleanup

if.end74:                                         ; preds = %if.end66
  %dn_agheight = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 8
  %36 = ptrtoint ptr %dn_agheight to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dn_agheight, align 8
  %dn_agwidth = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 9
  %38 = ptrtoint ptr %dn_agwidth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dn_agwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp86258 = icmp sgt i32 %39, 0
  br i1 %cmp86258, label %for.body.preheader, label %if.end74.for.end170_crit_edge

if.end74.for.end170_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end170

for.body.preheader:                               ; preds = %if.end74
  %shl76.neg = mul i32 %37, -2
  %sub = add i32 %shl76.neg, 10
  %shl77 = shl nuw i32 1, %sub
  %div = sdiv i32 %shl77, %39
  %sub82 = add i32 %div, -1
  %and = and i32 %sub82, %agno
  %mul = mul i32 %and, %39
  %dn_agstart = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 10
  %40 = ptrtoint ptr %dn_agstart to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dn_agstart, align 8
  %add83 = add i32 %mul, %41
  br label %for.body

for.body:                                         ; preds = %for.inc167.for.body_crit_edge, %for.body.preheader
  %i.0260 = phi i32 [ %inc168, %for.inc167.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ti.0259 = phi i32 [ %inc169, %for.inc167.for.body_crit_edge ], [ %add83, %for.body.preheader ]
  %arrayidx88 = getelementptr %struct.dmapctl, ptr %27, i32 0, i32 5, i32 %ti.0259
  %42 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv89, i32 %l2nb)
  %cmp90 = icmp slt i32 %conv89, %l2nb
  br i1 %cmp90, label %for.inc167, label %for.cond96.preheader

for.cond96.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp97262 = icmp sgt i32 %37, 0
  br i1 %cmp97262, label %for.cond96.preheader.for.body99_crit_edge, label %for.cond96.preheader.for.end122_crit_edge

for.cond96.preheader.for.end122_crit_edge:        ; preds = %for.cond96.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end122

for.cond96.preheader.for.body99_crit_edge:        ; preds = %for.cond96.preheader
  br label %for.body99

for.body99:                                       ; preds = %for.inc121.for.body99_crit_edge, %for.cond96.preheader.for.body99_crit_edge
  %k.0264 = phi i32 [ %dec, %for.inc121.for.body99_crit_edge ], [ %37, %for.cond96.preheader.for.body99_crit_edge ]
  %ti.1263 = phi i32 [ %add107.lcssa, %for.inc121.for.body99_crit_edge ], [ %ti.0259, %for.cond96.preheader.for.body99_crit_edge ]
  %shl100 = shl i32 %ti.1263, 2
  %add101 = or i32 %shl100, 1
  %arrayidx108 = getelementptr %struct.dmapctl, ptr %27, i32 0, i32 5, i32 %add101
  %44 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx108, align 1
  %conv109 = sext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv109, i32 %l2nb)
  %cmp110.not = icmp slt i32 %conv109, %l2nb
  br i1 %cmp110.not, label %for.inc, label %for.body99.for.inc121_crit_edge

for.body99.for.inc121_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

for.inc:                                          ; preds = %for.body99
  %add107.1 = or i32 %shl100, 2
  %arrayidx108.1 = getelementptr %struct.dmapctl, ptr %27, i32 0, i32 5, i32 %add107.1
  %46 = ptrtoint ptr %arrayidx108.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx108.1, align 1
  %conv109.1 = sext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv109.1, i32 %l2nb)
  %cmp110.not.1 = icmp slt i32 %conv109.1, %l2nb
  br i1 %cmp110.not.1, label %for.inc.1, label %for.inc.for.inc121_crit_edge

for.inc.for.inc121_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

for.inc.1:                                        ; preds = %for.inc
  %add107.2 = or i32 %shl100, 3
  %arrayidx108.2 = getelementptr %struct.dmapctl, ptr %27, i32 0, i32 5, i32 %add107.2
  %48 = ptrtoint ptr %arrayidx108.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx108.2, align 1
  %conv109.2 = sext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv109.2, i32 %l2nb)
  %cmp110.not.2 = icmp slt i32 %conv109.2, %l2nb
  br i1 %cmp110.not.2, label %for.inc.2, label %for.inc.1.for.inc121_crit_edge

for.inc.1.for.inc121_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

for.inc.2:                                        ; preds = %for.inc.1
  %add107.3 = add i32 %shl100, 4
  %arrayidx108.3 = getelementptr %struct.dmapctl, ptr %27, i32 0, i32 5, i32 %add107.3
  %50 = ptrtoint ptr %arrayidx108.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx108.3, align 1
  %conv109.3 = sext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv109.3, i32 %l2nb)
  %cmp110.not.3 = icmp slt i32 %conv109.3, %l2nb
  br i1 %cmp110.not.3, label %if.then117, label %for.inc.2.for.inc121_crit_edge

for.inc.2.for.inc121_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

if.then117:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %db_ipbmap60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %db_ipbmap60, align 8
  %i_sb119 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb119, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %55, ptr noundef nonnull @.str.50) #10
  tail call void @release_metapage(ptr noundef nonnull %call62) #10
  br label %cleanup

for.inc121:                                       ; preds = %for.inc.2.for.inc121_crit_edge, %for.inc.1.for.inc121_crit_edge, %for.inc.for.inc121_crit_edge, %for.body99.for.inc121_crit_edge
  %add107.lcssa = phi i32 [ %add101, %for.body99.for.inc121_crit_edge ], [ %add107.1, %for.inc.for.inc121_crit_edge ], [ %add107.2, %for.inc.1.for.inc121_crit_edge ], [ %add107.3, %for.inc.2.for.inc121_crit_edge ]
  %dec = add nsw i32 %k.0264, -1
  %cmp97 = icmp sgt i32 %k.0264, 1
  br i1 %cmp97, label %for.inc121.for.body99_crit_edge, label %for.inc121.for.end122_crit_edge

for.inc121.for.end122_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end122

for.inc121.for.body99_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body99

for.end122:                                       ; preds = %for.inc121.for.end122_crit_edge, %for.cond96.preheader.for.end122_crit_edge
  %ti.1.lcssa = phi i32 [ %ti.0259, %for.cond96.preheader.for.end122_crit_edge ], [ %add107.lcssa, %for.inc121.for.end122_crit_edge ]
  %56 = ptrtoint ptr %dn_aglevel to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dn_aglevel, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %57, label %if.else134 [
    i32 2, label %if.then127
    i32 1, label %if.then132
  ]

if.then127:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %blkno, align 8
  br label %if.end137

if.then132:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #12
  %and133 = and i64 %shl, -8589934592
  %60 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %and133, ptr %blkno, align 8
  br label %if.end137

if.else134:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #12
  %and135 = and i64 %shl, -8388608
  %61 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %and135, ptr %blkno, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.else134, %if.then132, %if.then127
  %sub139 = add i32 %ti.1.lcssa, -341
  %conv140 = zext i32 %sub139 to i64
  %sh_prom141 = zext i32 %conv68 to i64
  %shl142 = shl i64 %conv140, %sh_prom141
  %62 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %blkno, align 8
  %add143 = add i64 %63, %shl142
  store i64 %add143, ptr %blkno, align 8
  tail call void @release_metapage(ptr noundef nonnull %call62) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %conv68, i32 %l2nb)
  %cmp144 = icmp sgt i32 %conv68, %l2nb
  br i1 %cmp144, label %if.then146, label %if.end137.if.end159_crit_edge

if.end137.if.end159_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then146:                                       ; preds = %if.end137
  %64 = ptrtoint ptr %dn_aglevel to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dn_aglevel, align 4
  %sub149 = add i32 %65, -1
  %call150 = call fastcc i32 @dbFindCtl(ptr noundef %bmp, i32 noundef %l2nb, i32 noundef %sub149, ptr noundef nonnull %blkno)
  %66 = zext i32 %call150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call150, label %if.then146.cleanup_crit_edge [
    i32 0, label %if.then146.if.end159_crit_edge
    i32 -28, label %if.then154
  ]

if.then146.if.end159_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then146.cleanup_crit_edge:                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then154:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %db_ipbmap60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %db_ipbmap60, align 8
  %i_sb156 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %i_sb156 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_sb156, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %70, ptr noundef nonnull @.str.51) #10
  br label %cleanup

if.end159:                                        ; preds = %if.then146.if.end159_crit_edge, %if.end137.if.end159_crit_edge
  %71 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %blkno, align 8
  %call160 = tail call fastcc i32 @dbAllocCtl(ptr noundef %bmp, i64 noundef %nblocks, i32 noundef %l2nb, i64 noundef %72, ptr noundef %results)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call160)
  %cmp161 = icmp eq i32 %call160, -28
  br i1 %cmp161, label %if.then163, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then163:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %db_ipbmap60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %db_ipbmap60, align 8
  %i_sb165 = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %i_sb165 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb165, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %76, ptr noundef nonnull @.str.52) #10
  br label %cleanup

for.inc167:                                       ; preds = %for.body
  %inc168 = add nuw nsw i32 %i.0260, 1
  %inc169 = add i32 %ti.0259, 1
  %exitcond.not = icmp eq i32 %inc168, %39
  br i1 %exitcond.not, label %for.inc167.for.end170_crit_edge, label %for.inc167.for.body_crit_edge

for.inc167.for.body_crit_edge:                    ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc167.for.end170_crit_edge:                  ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end170

for.end170:                                       ; preds = %for.inc167.for.end170_crit_edge, %if.end74.for.end170_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call62) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end170, %if.then163, %if.end159.cleanup_crit_edge, %if.then154, %if.then146.cleanup_crit_edge, %if.then117, %if.then71, %cond.end58.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then71 ], [ -5, %if.then117 ], [ -5, %if.then154 ], [ -28, %for.end170 ], [ -28, %do.end ], [ -28, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.then11.cleanup_crit_edge ], [ -5, %cond.end58.cleanup_crit_edge ], [ %call150, %if.then146.cleanup_crit_edge ], [ -5, %if.then163 ], [ %call160, %if.end159.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbReAlloc(ptr nocapture noundef readonly %ip, i64 noundef %blkno, i64 noundef %nblocks, i64 noundef %addnblocks, ptr nocapture noundef writeonly %results) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %ipbmap1.i = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipbmap1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipbmap1.i, align 4
  %nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nbperpage.i, align 4
  %conv.i = sext i16 %7 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %8 = trunc i64 %blkno to i32
  %conv3.i = and i32 %sub.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %tobool.not.i = icmp eq i32 %conv3.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %conv4.i = zext i32 %conv3.i to i64
  %add.i = add i64 %addnblocks, %nblocks
  %add5.i = add i64 %add.i, %conv4.i
  %conv7.i = sext i16 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add5.i, i64 %conv7.i)
  %cmp.i = icmp sgt i64 %add5.i, %conv7.i
  br i1 %cmp.i, label %land.lhs.true.i.if.end3_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i64 %nblocks, %blkno
  %.pre20 = add i64 %.pre, -1
  br label %if.end3

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %add9.i = add i64 %nblocks, %blkno
  %sub10.i = add i64 %add9.i, -1
  %rdwrlock.i = getelementptr i8, ptr %5, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock.i, i32 noundef 2) #10
  %bmap.i = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %9 = ptrtoint ptr %bmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub10.i)
  %cmp13.i = icmp slt i64 %sub10.i, 0
  br i1 %cmp13.i, label %if.end.i.if.then17.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub10.i, i64 %12)
  %cmp15.not.i = icmp slt i64 %sub10.i, %12
  br i1 %cmp15.not.i, label %if.end21.i, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %if.end.i.if.then17.i_crit_edge
  tail call void @up_read(ptr noundef %rdwrlock.i) #10
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %14, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end21.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 8193, i64 %addnblocks)
  %cmp22.i = icmp slt i64 %addnblocks, 8193
  call void @__sanitizer_cov_trace_cmp8(i64 %add9.i, i64 %12)
  %cmp27.not.i = icmp slt i64 %add9.i, %12
  %or.cond.i = select i1 %cmp22.i, i1 %cmp27.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false29.i, label %if.end21.i.if.then35.i_crit_edge

if.end21.i.if.then35.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i

lor.lhs.false29.i:                                ; preds = %if.end21.i
  %dn_agsize.i = getelementptr inbounds %struct.dbmap, ptr %10, i32 0, i32 13
  %15 = ptrtoint ptr %dn_agsize.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dn_agsize.i, align 8
  %sub31.i = add i64 %16, -1
  %and32.i = and i64 %sub31.i, %add9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i)
  %cmp33.i = icmp eq i64 %and32.i, 0
  br i1 %cmp33.i, label %lor.lhs.false29.i.if.then35.i_crit_edge, label %if.end38.i

lor.lhs.false29.i.if.then35.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false29.i.if.then35.i_crit_edge, %if.end21.i.if.then35.i_crit_edge
  tail call void @up_read(ptr noundef %rdwrlock.i) #10
  br label %if.end3

if.end38.i:                                       ; preds = %lor.lhs.false29.i
  %17 = lshr i64 %add9.i, 13
  %18 = lshr i64 %add9.i, 23
  %shr41104.i = lshr i64 %add9.i, 33
  %add40.i = add nuw nsw i64 %18, 4
  %add42.i = add nuw nsw i64 %add40.i, %17
  %add44.i = add nuw nsw i64 %add42.i, %shr41104.i
  %dn_l2nbperpage.i = getelementptr inbounds %struct.dbmap, ptr %10, i32 0, i32 2
  %19 = ptrtoint ptr %dn_l2nbperpage.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dn_l2nbperpage.i, align 8
  %sh_prom.i = zext i32 %20 to i64
  %shl.i = shl i64 %add44.i, %sh_prom.i
  %conv46.i = trunc i64 %shl.i to i32
  %call47.i = tail call ptr @__get_metapage(ptr noundef %5, i32 noundef %conv46.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp48.i = icmp eq ptr %call47.i, null
  br i1 %cmp48.i, label %if.then50.i, label %if.end53.i

if.then50.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %rdwrlock.i) #10
  br label %cleanup

if.end53.i:                                       ; preds = %if.end38.i
  %data.i = getelementptr inbounds %struct.metapage, ptr %call47.i, i32 0, i32 7
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %conv54.i = trunc i64 %addnblocks to i32
  %call55.i = tail call fastcc i32 @dbAllocNext(ptr noundef %10, ptr noundef %22, i64 noundef %add9.i, i32 noundef %conv54.i) #10
  tail call void @up_read(ptr noundef %rdwrlock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp58.i = icmp eq i32 %call55.i, 0
  br i1 %cmp58.i, label %dbExtend.exit.thread18, label %dbExtend.exit

dbExtend.exit.thread18:                           ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %flag.i.i = getelementptr inbounds %struct.metapage, ptr %call47.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i.i) #10
  tail call void @release_metapage(ptr noundef nonnull %call47.i) #10
  %23 = ptrtoint ptr %results to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %blkno, ptr %results, align 8
  br label %cleanup

dbExtend.exit:                                    ; preds = %if.end53.i
  tail call void @release_metapage(ptr noundef nonnull %call47.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call55.i)
  %cond = icmp eq i32 %call55.i, -28
  br i1 %cond, label %dbExtend.exit.if.end3_crit_edge, label %dbExtend.exit.cleanup_crit_edge

dbExtend.exit.cleanup_crit_edge:                  ; preds = %dbExtend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dbExtend.exit.if.end3_crit_edge:                  ; preds = %dbExtend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %dbExtend.exit.if.end3_crit_edge, %if.then35.i, %land.lhs.true.i.if.end3_crit_edge
  %sub.pre-phi = phi i64 [ %.pre20, %land.lhs.true.i.if.end3_crit_edge ], [ %sub10.i, %dbExtend.exit.if.end3_crit_edge ], [ %sub10.i, %if.then35.i ]
  %add4 = add i64 %addnblocks, %nblocks
  %call5 = tail call i32 @dbAlloc(ptr noundef %ip, i64 noundef %sub.pre-phi, i64 noundef %add4, ptr noundef %results)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %dbExtend.exit.cleanup_crit_edge, %dbExtend.exit.thread18, %if.then50.i, %if.then17.i
  %retval.0 = phi i32 [ 0, %dbExtend.exit.thread18 ], [ %call5, %if.end3 ], [ %call55.i, %dbExtend.exit.cleanup_crit_edge ], [ -5, %if.then17.i ], [ -5, %if.then50.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dbDiscardAG(ptr noundef %ip, i32 noundef %agno, i64 noundef %minlen) local_unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipbmap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipbmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipbmap1, align 4
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmap, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno) #10
  %8 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %blkno, align 8, !annotation !163
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb4, align 4
  %rdwrlock = getelementptr i8, ptr %5, i32 -688
  tail call void @down_write_nested(ptr noundef %rdwrlock, i32 noundef 2) #10
  %arrayidx = getelementptr %struct.dbmap, ptr %7, i32 0, i32 12, i32 %agno
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %minlen to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %12)
  %cmp172 = icmp ult i64 %12, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !164

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv177 = trunc i64 %12 to i32
  %div180 = udiv i32 %conv177, %conv
  %conv181 = zext i32 %div180 to i64
  br label %if.end186

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %12) #15, !srcloc !165
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then176
  %max_ranges.0 = phi i64 [ %conv181, %if.then176 ], [ %asmresult1.i, %if.else182 ]
  %add188 = add i64 %max_ranges.0, 1
  %14 = tail call i64 @llvm.umin.i64(i64 %add188, i64 32768)
  %15 = trunc i64 %14 to i32
  %16 = shl nuw nsw i32 %15, 4
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3136) #16
  %cmp198 = icmp eq ptr %call8.i, null
  br i1 %cmp198, label %if.then200, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end186
  %sub237 = add nsw i32 %15, -1
  br label %while.cond.outer

if.then200:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %db_ipbmap, align 8
  %i_sb201 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb201 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb201, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %20, ptr noundef nonnull @.str.14) #10
  tail call void @up_write(ptr noundef %rdwrlock) #10
  br label %cleanup

while.cond:                                       ; preds = %blkstol2.exit419.while.cond_crit_edge, %while.cond.outer
  %nblocks.0 = phi i64 [ %shl231, %blkstol2.exit419.while.cond_crit_edge ], [ %nblocks.0.ph, %while.cond.outer ]
  call void @__sanitizer_cov_trace_cmp8(i64 %nblocks.0, i64 %minlen)
  %cmp205.not = icmp slt i64 %nblocks.0, %minlen
  br i1 %cmp205.not, label %while.cond.while.end_crit_edge, label %while.cond.for.body.i_crit_edge

while.cond.for.body.i_crit_edge:                  ; preds = %while.cond
  br label %for.body.i

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.cond.for.body.i_crit_edge
  %l2nb.026.i = phi i32 [ %inc5.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.cond.for.body.i_crit_edge ]
  %mask.025.i = phi i64 [ %shr.i, %for.inc.i.for.body.i_crit_edge ], [ -9223372036854775808, %while.cond.for.body.i_crit_edge ]
  %and.i402 = and i64 %mask.025.i, %nblocks.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i402)
  %tobool.not.i = icmp eq i64 %and.i402, 0
  br i1 %tobool.not.i, label %for.inc.i, label %blkstol2.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc5.i = add nuw nsw i32 %l2nb.026.i, 1
  %shr.i = ashr i64 %mask.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, 64
  br i1 %exitcond.not.i, label %do.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3176, ptr noundef nonnull @.str.64) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3176, 0\0A.popsection", ""() #10, !srcloc !158
  unreachable

blkstol2.exit:                                    ; preds = %for.body.i
  %neg.i = xor i64 %mask.025.i, -1
  %and1.i = and i64 %nblocks.0, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 63, i32 64
  %l2nb.1.i = sub nsw i32 %spec.select.i, %l2nb.026.i
  %call208 = call fastcc i32 @dbAllocAG(ptr noundef %7, i32 noundef %agno, i64 noundef %nblocks.0, i32 noundef %l2nb.1.i, ptr noundef nonnull %blkno)
  %21 = zext i32 %call208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call208, label %if.else232 [
    i32 0, label %if.then211
    i32 -28, label %blkstol2.exit.for.body.i407_crit_edge
  ]

blkstol2.exit.for.body.i407_crit_edge:            ; preds = %blkstol2.exit
  br label %for.body.i407

if.then211:                                       ; preds = %blkstol2.exit
  %22 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %blkno, align 8
  %24 = ptrtoint ptr %tt.0.ph to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %tt.0.ph, align 8
  %nblocks213 = getelementptr inbounds %struct.range2trim, ptr %tt.0.ph, i32 0, i32 1
  %25 = ptrtoint ptr %nblocks213 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %nblocks.0, ptr %nblocks213, align 8
  %incdec.ptr = getelementptr %struct.range2trim, ptr %tt.0.ph, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx, align 8
  %cmp217 = icmp eq i64 %27, 0
  %inc = add i32 %count.0.ph, 1
  br i1 %cmp217, label %if.then211.while.end_crit_edge, label %if.then211.while.cond.outer_crit_edge

if.then211.while.cond.outer_crit_edge:            ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer

if.then211.while.end_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.outer:                                 ; preds = %if.then211.while.cond.outer_crit_edge, %while.cond.preheader
  %nblocks.0.ph = phi i64 [ %12, %while.cond.preheader ], [ %27, %if.then211.while.cond.outer_crit_edge ]
  %tt.0.ph = phi ptr [ %call8.i, %while.cond.preheader ], [ %incdec.ptr, %if.then211.while.cond.outer_crit_edge ]
  %count.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %inc, %if.then211.while.cond.outer_crit_edge ]
  %cmp238.not = icmp slt i32 %count.0.ph, %sub237
  br label %while.cond

for.body.i407:                                    ; preds = %for.inc.i416.for.body.i407_crit_edge, %blkstol2.exit.for.body.i407_crit_edge
  %l2nb.026.i403 = phi i32 [ %inc5.i413, %for.inc.i416.for.body.i407_crit_edge ], [ 0, %blkstol2.exit.for.body.i407_crit_edge ]
  %mask.025.i404 = phi i64 [ %shr.i414, %for.inc.i416.for.body.i407_crit_edge ], [ -9223372036854775808, %blkstol2.exit.for.body.i407_crit_edge ]
  %and.i405 = and i64 %mask.025.i404, %nblocks.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i405)
  %tobool.not.i406 = icmp eq i64 %and.i405, 0
  br i1 %tobool.not.i406, label %for.inc.i416, label %blkstol2.exit419

for.inc.i416:                                     ; preds = %for.body.i407
  %inc5.i413 = add nuw nsw i32 %l2nb.026.i403, 1
  %shr.i414 = ashr i64 %mask.025.i404, 1
  %exitcond.not.i415 = icmp eq i32 %inc5.i413, 64
  br i1 %exitcond.not.i415, label %do.end.i418, label %for.inc.i416.for.body.i407_crit_edge

for.inc.i416.for.body.i407_crit_edge:             ; preds = %for.inc.i416
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i407

do.end.i418:                                      ; preds = %for.inc.i416
  call void @__sanitizer_cov_trace_pc() #12
  %call.i417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3176, ptr noundef nonnull @.str.64) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3176, 0\0A.popsection", ""() #10, !srcloc !158
  unreachable

blkstol2.exit419:                                 ; preds = %for.body.i407
  %neg.i408 = xor i64 %mask.025.i404, -1
  %and1.i409 = and i64 %nblocks.0, %neg.i408
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i409)
  %tobool2.not.i410 = icmp eq i64 %and1.i409, 0
  %spec.select.i411 = select i1 %tobool2.not.i410, i32 63, i32 64
  %28 = xor i32 %l2nb.026.i403, -1
  %sub229 = add nsw i32 %spec.select.i411, %28
  %sh_prom230 = zext i32 %sub229 to i64
  %shl231 = shl nuw i64 1, %sh_prom230
  br i1 %cmp238.not, label %blkstol2.exit419.while.cond_crit_edge, label %blkstol2.exit419.while.end_crit_edge, !prof !164

blkstol2.exit419.while.end_crit_edge:             ; preds = %blkstol2.exit419
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

blkstol2.exit419.while.cond_crit_edge:            ; preds = %blkstol2.exit419
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.else232:                                       ; preds = %blkstol2.exit
  call void @__sanitizer_cov_trace_pc() #12
  %db_ipbmap233 = getelementptr inbounds %struct.bmap, ptr %7, i32 0, i32 1
  %29 = ptrtoint ptr %db_ipbmap233 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %db_ipbmap233, align 8
  %i_sb234 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb234 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb234, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %32, ptr noundef nonnull @.str.15) #10
  br label %while.end

while.end:                                        ; preds = %if.else232, %blkstol2.exit419.while.end_crit_edge, %if.then211.while.end_crit_edge, %while.cond.while.end_crit_edge
  %tt.1 = phi ptr [ %tt.0.ph, %if.else232 ], [ %tt.0.ph, %while.cond.while.end_crit_edge ], [ %tt.0.ph, %blkstol2.exit419.while.end_crit_edge ], [ %incdec.ptr, %if.then211.while.end_crit_edge ]
  tail call void @up_write(ptr noundef %rdwrlock) #10
  %nblocks250 = getelementptr inbounds %struct.range2trim, ptr %tt.1, i32 0, i32 1
  %33 = ptrtoint ptr %nblocks250 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %nblocks250, align 8
  %nblocks251460 = getelementptr inbounds %struct.range2trim, ptr %call8.i, i32 0, i32 1
  %34 = ptrtoint ptr %nblocks251460 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %nblocks251460, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp252.not461 = icmp eq i64 %35, 0
  br i1 %cmp252.not461, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %s_fs_info.i421 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %if.end260.for.body_crit_edge, %for.body.lr.ph
  %36 = phi i64 [ %35, %for.body.lr.ph ], [ %50, %if.end260.for.body_crit_edge ]
  %nblocks251465 = phi ptr [ %nblocks251460, %for.body.lr.ph ], [ %nblocks251, %if.end260.for.body_crit_edge ]
  %tt.2463 = phi ptr [ %call8.i, %for.body.lr.ph ], [ %incdec.ptr266, %if.end260.for.body_crit_edge ]
  %trimmed.0462 = phi i64 [ 0, %for.body.lr.ph ], [ %add265, %if.end260.for.body_crit_edge ]
  %37 = ptrtoint ptr %s_fs_info.i421 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i421, align 16
  %flag = getelementptr inbounds %struct.jfs_sb_info, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flag, align 4
  %and255 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.then257, label %for.body.if.end260_crit_edge

for.body.if.end260_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end260

if.then257:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %tt.2463 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tt.2463, align 8
  tail call void @jfs_issue_discard(ptr noundef %ip, i64 noundef %42, i64 noundef %36) #10
  br label %if.end260

if.end260:                                        ; preds = %if.then257, %for.body.if.end260_crit_edge
  %43 = ptrtoint ptr %tt.2463 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tt.2463, align 8
  %45 = ptrtoint ptr %nblocks251465 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %nblocks251465, align 8
  %call263 = tail call i32 @dbFree(ptr noundef %ip, i64 noundef %44, i64 noundef %46)
  %47 = ptrtoint ptr %nblocks251465 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %nblocks251465, align 8
  %add265 = add i64 %48, %trimmed.0462
  %incdec.ptr266 = getelementptr %struct.range2trim, ptr %tt.2463, i32 1
  %nblocks251 = getelementptr %struct.range2trim, ptr %tt.2463, i32 1, i32 1
  %49 = ptrtoint ptr %nblocks251 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %nblocks251, align 8
  %cmp252.not = icmp eq i64 %50, 0
  br i1 %cmp252.not, label %if.end260.for.end_crit_edge, label %if.end260.for.body_crit_edge

if.end260.for.body_crit_edge:                     ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end260.for.end_crit_edge:                      ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end260.for.end_crit_edge, %while.end.for.end_crit_edge
  %trimmed.0.lcssa = phi i64 [ 0, %while.end.for.end_crit_edge ], [ %add265, %if.end260.for.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then200
  %retval.0 = phi i64 [ 0, %if.then200 ], [ %trimmed.0.lcssa, %for.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno) #10
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbAllocBottomUp(ptr nocapture noundef readonly %ip, i64 noundef %blkno, i64 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipbmap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ipbmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipbmap1, align 4
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmap, align 4
  %rdwrlock = getelementptr i8, ptr %5, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock, i32 noundef 2) #10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %sub = sub i64 %9, %blkno
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %nblocks)
  %cmp.not = icmp slt i64 %sub, %nblocks
  br i1 %cmp.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks)
  %cmp1598 = icmp sgt i64 %nblocks, 0
  br i1 %cmp1598, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 2
  %db_bmaplock.i = getelementptr inbounds %struct.bmap, ptr %7, i32 0, i32 2
  %dn_agl2size.i = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 11
  %dn_maxag.i = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 5
  %dn_nfree.i = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3211, ptr noundef nonnull @.str.17) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3211, 0\0A.popsection", ""() #10, !srcloc !166
  unreachable

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %blkno.addr.0101 = phi i64 [ %blkno, %for.body.lr.ph ], [ %add45, %for.inc.for.body_crit_edge ]
  %rem.0100 = phi i64 [ %nblocks, %for.body.lr.ph ], [ %sub43, %for.inc.for.body_crit_edge ]
  %mp.099 = phi ptr [ null, %for.body.lr.ph ], [ %call24, %for.inc.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %mp.099, null
  br i1 %tobool.not, label %for.body.if.end17_crit_edge, label %if.then16

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %flag.i = getelementptr inbounds %struct.metapage, ptr %mp.099, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  tail call void @release_metapage(ptr noundef nonnull %mp.099) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.body.if.end17_crit_edge
  %10 = lshr i64 %blkno.addr.0101, 13
  %11 = lshr i64 %blkno.addr.0101, 23
  %shr19 = ashr i64 %blkno.addr.0101, 33
  %add = add nuw nsw i64 %11, 4
  %add20 = add nuw nsw i64 %add, %10
  %add22 = add nsw i64 %add20, %shr19
  %12 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 %add22, %sh_prom
  %conv = trunc i64 %shl to i32
  %call24 = tail call ptr @__get_metapage(ptr noundef %5, i32 noundef %conv, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.end17.cleanup_crit_edge, label %if.end30

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  %data = getelementptr inbounds %struct.metapage, ptr %call24, i32 0, i32 7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %and = and i64 %blkno.addr.0101, 8191
  %sub31 = sub nuw nsw i64 8192, %and
  %16 = tail call i64 @llvm.umin.i64(i64 %rem.0100, i64 %sub31)
  %cond.off0 = trunc i64 %16 to i32
  %stree.i = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stree.i, align 1
  %19 = trunc i64 %blkno.addr.0101 to i32
  %conv.i = and i32 %19, 8191
  %add.i = add nuw nsw i32 %conv.i, %cond.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 8193
  br i1 %cmp.i, label %for.body.preheader.i, label %do.end.i

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 3274, ptr noundef nonnull @.str.26) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3274, 0\0A.popsection", ""() #10, !srcloc !167
  unreachable

for.body.preheader.i:                             ; preds = %if.end30
  %20 = lshr i32 %conv.i, 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %rembits.0120.i = phi i32 [ %sub29.i, %for.inc.i.for.body.i_crit_edge ], [ %cond.off0, %for.body.preheader.i ]
  %word.0119.i = phi i32 [ %word.1.i, %for.inc.i.for.body.i_crit_edge ], [ %20, %for.body.preheader.i ]
  %dbitno.0118.i = phi i32 [ %add30.i, %for.inc.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %and13.i = and i32 %dbitno.0118.i, 31
  %sub.i = sub nuw nsw i32 32, %and13.i
  %21 = tail call i32 @llvm.umin.i32(i32 %rembits.0120.i, i32 %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp17.i = icmp ult i32 %21, 32
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub20.i = sub nuw nsw i32 32, %21
  %shl.i = shl nsw i32 -1, %sub20.i
  %shr21.i = lshr i32 %shl.i, %and13.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %shr21.i) #10
  %arrayidx22.i = getelementptr %struct.dmap, ptr %15, i32 0, i32 5, i32 %word.0119.i
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx22.i, align 4
  %or.i = or i32 %24, %22
  store i32 %or.i, ptr %arrayidx22.i, align 4
  %inc.i = add i32 %word.0119.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr23116.i = lshr i32 %rembits.0120.i, 5
  %arrayidx25.i = getelementptr %struct.dmap, ptr %15, i32 0, i32 5, i32 %word.0119.i
  %mul.i = shl nuw nsw i32 %shr23116.i, 2
  %25 = call ptr @memset(ptr %arrayidx25.i, i32 255, i32 %mul.i)
  %shl26.i = and i32 %rembits.0120.i, -32
  %add27.i = add i32 %shr23116.i, %word.0119.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then19.i
  %word.1.i = phi i32 [ %inc.i, %if.then19.i ], [ %add27.i, %if.else.i ]
  %nb.0.i = phi i32 [ %21, %if.then19.i ], [ %shl26.i, %if.else.i ]
  %sub29.i = sub nsw i32 %rembits.0120.i, %nb.0.i
  %add30.i = add i32 %nb.0.i, %dbitno.0118.i
  %cmp11.i = icmp sgt i32 %sub29.i, 0
  br i1 %cmp11.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %nfree.i = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 1
  %26 = ptrtoint ptr %nfree.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nfree.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %add.i.i = sub i32 %28, %cond.off0
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #10
  %30 = ptrtoint ptr %nfree.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nfree.i, align 4
  %tree.i.i = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 3
  %31 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65536, ptr %tree.i.i, align 4
  %l2nleafs.i.i = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %l2nleafs.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 134217728, ptr %l2nleafs.i.i, align 4
  %leafidx.i.i = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %leafidx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1426063360, ptr %leafidx.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 67108864, ptr %height.i.i, align 4
  %budmin.i.i = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %budmin.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %budmin.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dmap, ptr %15, i32 0, i32 3, i32 5, i32 85
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %dbMaxBud.exit.i.i.for.body.i.i_crit_edge, %for.end.i
  %i.014.i.i = phi i32 [ 0, %for.end.i ], [ %inc.i.i, %dbMaxBud.exit.i.i.for.body.i.i_crit_edge ]
  %cp.013.i.i = phi ptr [ %add.ptr.i.i, %for.end.i ], [ %incdec.ptr.i.i, %dbMaxBud.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dmap, ptr %15, i32 0, i32 5, i32 %i.014.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.dbMaxBud.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.dbMaxBud.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp1.i.i.i = icmp eq i16 %39, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %add.ptr.i.i.i = getelementptr i16, ptr %arrayidx.i.i, i32 1
  %40 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp4.i.i.i = icmp eq i16 %41, 0
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge, label %if.end7.i.i.i

lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit.i.i

if.end7.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %43 to i32
  %arrayidx8.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom.i.i.i
  %44 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx8.i.i.i, align 1
  %arrayidx9.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 3
  %46 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx9.i.i.i, align 1
  %idxprom10.i.i.i = zext i8 %47 to i32
  %arrayidx11.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom10.i.i.i
  %48 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx11.i.i.i, align 1
  %50 = tail call i8 @llvm.smax.i8(i8 %45, i8 %49) #10
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom20.i.i.i = zext i8 %52 to i32
  %arrayidx21.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom20.i.i.i
  %53 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx21.i.i.i, align 1
  %arrayidx22.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 1
  %55 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx22.i.i.i, align 1
  %idxprom23.i.i.i = zext i8 %56 to i32
  %arrayidx24.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom23.i.i.i
  %57 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx24.i.i.i, align 1
  %59 = tail call i8 @llvm.smax.i8(i8 %54, i8 %58) #10
  %60 = tail call i8 @llvm.smax.i8(i8 %50, i8 %59) #10
  br label %dbMaxBud.exit.i.i

dbMaxBud.exit.i.i:                                ; preds = %if.end7.i.i.i, %lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge, %if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge, %for.body.i.i.dbMaxBud.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %60, %if.end7.i.i.i ], [ 5, %for.body.i.i.dbMaxBud.exit.i.i_crit_edge ], [ 4, %lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge ], [ 4, %if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %cp.013.i.i, i32 1
  %61 = ptrtoint ptr %cp.013.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %retval.0.i.i.i, ptr %cp.013.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %dbInitDmapTree.exit.i, label %dbMaxBud.exit.i.i.for.body.i.i_crit_edge

dbMaxBud.exit.i.i.for.body.i.i_crit_edge:         ; preds = %dbMaxBud.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

dbInitDmapTree.exit.i:                            ; preds = %dbMaxBud.exit.i.i
  %call2.i.i = tail call fastcc i32 @dbInitTree(ptr noundef %tree.i.i) #10
  tail call void @mutex_lock_nested(ptr noundef %db_bmaplock.i, i32 noundef 0) #10
  %62 = ptrtoint ptr %dn_agl2size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dn_agl2size.i, align 4
  %sh_prom.i = zext i32 %63 to i64
  %shr33.i = ashr i64 %blkno.addr.0101, %sh_prom.i
  %conv34.i = trunc i64 %shr33.i to i32
  %64 = ptrtoint ptr %dn_maxag.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dn_maxag.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv34.i)
  %cmp36.i = icmp slt i32 %65, %conv34.i
  br i1 %cmp36.i, label %if.then38.i, label %dbInitDmapTree.exit.i.if.end41.i_crit_edge

dbInitDmapTree.exit.i.if.end41.i_crit_edge:       ; preds = %dbInitDmapTree.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then38.i:                                      ; preds = %dbInitDmapTree.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dn_maxag.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv34.i, ptr %dn_maxag.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %dbInitDmapTree.exit.i.if.end41.i_crit_edge
  %arrayidx44.i = getelementptr %struct.dbmap, ptr %7, i32 0, i32 12, i32 %conv34.i
  %67 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx44.i, align 8
  %sub45.i = sub i64 %68, %16
  store i64 %sub45.i, ptr %arrayidx44.i, align 8
  %69 = ptrtoint ptr %dn_nfree.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dn_nfree.i, align 8
  %sub48.i = sub i64 %70, %16
  store i64 %sub48.i, ptr %dn_nfree.i, align 8
  tail call void @mutex_unlock(ptr noundef %db_bmaplock.i) #10
  %71 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %stree.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %18)
  %cmp54.i = icmp eq i8 %72, %18
  br i1 %cmp54.i, label %if.end41.i.for.inc_crit_edge, label %if.end57.i

if.end41.i.for.inc_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end57.i:                                       ; preds = %if.end41.i
  %conv52.i = sext i8 %72 to i32
  %call61.i = tail call fastcc i32 @dbAdjCtl(ptr noundef %7, i64 noundef %blkno.addr.0101, i32 noundef %conv52.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool.not.i, label %if.end57.i.for.inc_crit_edge, label %if.then38

if.end57.i.for.inc_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then38:                                        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond.off0.le = trunc i64 %16 to i32
  %call63.i = tail call fastcc i32 @dbFreeBits(ptr noundef %7, ptr noundef %15, i64 noundef %blkno.addr.0101, i32 noundef %cond.off0.le) #10
  tail call void @release_metapage(ptr noundef nonnull %call24) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end57.i.for.inc_crit_edge, %if.end41.i.for.inc_crit_edge
  %sub43 = sub i64 %rem.0100, %16
  %add45 = add i64 %16, %blkno.addr.0101
  %cmp15 = icmp sgt i64 %sub43, 0
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mp.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %call24, %for.inc.for.end_crit_edge ]
  %flag.i84 = getelementptr inbounds %struct.metapage, ptr %mp.0.lcssa, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i84) #10
  tail call void @release_metapage(ptr noundef %mp.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then38, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61.i, %if.then38 ], [ 0, %for.end ], [ -5, %if.end17.cleanup_crit_edge ]
  tail call void @up_read(ptr noundef %rdwrlock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbExtendFS(ptr noundef %ipbmap, i64 noundef %blkno, i64 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %nbperpage1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %nbperpage1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nbperpage1, align 4
  %conv = sext i16 %5 to i32
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmap, align 4
  %add = add i64 %nblocks, %blkno
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %blkno, i64 noundef %nblocks, i64 noundef %add) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388609, i64 %add)
  %cmp9 = icmp slt i64 %add, 8388609
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934593, i64 %add)
  %cmp13 = icmp slt i64 %add, 8589934593
  %cond = select i1 %cmp13, i32 1, i32 2
  %cond15 = select i1 %cmp9, i32 0, i32 %cond
  %dn_maxlevel = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %dn_maxlevel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond15, ptr %dn_maxlevel, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %add)
  %cmp.i = icmp slt i64 %add, 1048576
  br i1 %cmp.i, label %do.end6.dbGetL2AGSize.exit_crit_edge, label %do.end6.for.inc.i_crit_edge

do.end6.for.inc.i_crit_edge:                      ; preds = %do.end6
  br label %for.inc.i

do.end6.dbGetL2AGSize.exit_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbGetL2AGSize.exit

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %do.end6.for.inc.i_crit_edge
  %l2sz.019.i = phi i32 [ %dec.i, %for.inc.i.for.inc.i_crit_edge ], [ 64, %do.end6.for.inc.i_crit_edge ]
  %m.018.i = phi i64 [ %shr.i, %for.inc.i.for.inc.i_crit_edge ], [ -9223372036854775808, %do.end6.for.inc.i_crit_edge ]
  %dec.i = add nsw i32 %l2sz.019.i, -1
  %shr.i = ashr i64 %m.018.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l2sz.019.i)
  %cmp1.i = icmp ne i32 %l2sz.019.i, 0
  %and.i = and i64 %shr.i, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %or.cond.i = select i1 %cmp1.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.inc.i_crit_edge, label %for.end.i

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom.i = zext i32 %dec.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %add)
  %cmp4.i = icmp slt i64 %shl.i, %add
  %add.i = zext i1 %cmp4.i to i32
  %spec.select.i = add i32 %l2sz.019.i, -8
  %sub.i = add i32 %spec.select.i, %add.i
  br label %dbGetL2AGSize.exit

dbGetL2AGSize.exit:                               ; preds = %for.end.i, %do.end6.dbGetL2AGSize.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %for.end.i ], [ 13, %do.end6.dbGetL2AGSize.exit_crit_edge ]
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 11
  %11 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dn_agl2size, align 4
  store i32 %retval.0.i, ptr %dn_agl2size, align 4
  %shl = shl nuw i32 1, %retval.0.i
  %conv21 = sext i32 %shl to i64
  %dn_agsize = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 13
  %13 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv21, ptr %dn_agsize, align 8
  %dn_numag = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dn_numag, align 4
  %sh_prom = zext i32 %retval.0.i to i64
  %shr = ashr i64 %add, %sh_prom
  %conv24 = trunc i64 %shr to i32
  %conv27 = trunc i64 %add to i32
  %16 = add i32 %shl, -1
  %rem = and i32 %16, %conv27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp ne i32 %rem, 0
  %cond31 = zext i1 %tobool.not to i32
  %add34 = add i32 %cond31, %conv24
  %17 = ptrtoint ptr %dn_numag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add34, ptr %dn_numag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %12)
  %cmp35 = icmp eq i32 %retval.0.i, %12
  br i1 %cmp35, label %dbGetL2AGSize.exit.extend_crit_edge, label %if.end38

dbGetL2AGSize.exit.extend_crit_edge:              ; preds = %dbGetL2AGSize.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %extend

if.end38:                                         ; preds = %dbGetL2AGSize.exit
  %sub = sub i32 %retval.0.i, %12
  %shl39 = shl nuw i32 1, %sub
  %dn_agfree = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 12
  %18 = ptrtoint ptr %dn_agfree to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dn_agfree, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp41554 = icmp sgt i32 %15, 0
  br i1 %cmp41554, label %for.body.lr.ph, label %for.end62.thread

for.end62.thread:                                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dn_agfree to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dn_agfree, align 8
  %add66620 = add i64 %21, %19
  store i64 %add66620, ptr %dn_agfree, align 8
  br label %for.body70.preheader

for.body.lr.ph:                                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %cmp47549 = icmp ne i32 %sub, 31
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %for.body.lr.ph
  %n.0556 = phi i32 [ 0, %for.body.lr.ph ], [ %inc61, %for.inc60.for.body_crit_edge ]
  %i.0555 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1.lcssa, %for.inc60.for.body_crit_edge ]
  %arrayidx45 = getelementptr %struct.dbmap, ptr %7, i32 0, i32 12, i32 %n.0556
  %22 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %arrayidx45, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0555, i32 %15)
  %cmp49550 = icmp slt i32 %i.0555, %15
  %or.cond551 = select i1 %cmp47549, i1 %cmp49550, i1 false
  br i1 %or.cond551, label %for.body.for.body51_crit_edge, label %for.body.for.inc60_crit_edge

for.body.for.inc60_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60

for.body.for.body51_crit_edge:                    ; preds = %for.body
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body.for.body51_crit_edge
  %j.0553 = phi i32 [ %inc, %for.body51.for.body51_crit_edge ], [ 0, %for.body.for.body51_crit_edge ]
  %i.1552 = phi i32 [ %inc59, %for.body51.for.body51_crit_edge ], [ %i.0555, %for.body.for.body51_crit_edge ]
  %arrayidx54 = getelementptr %struct.dbmap, ptr %7, i32 0, i32 12, i32 %i.1552
  %23 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx54, align 8
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx45, align 8
  %add58 = add i64 %26, %24
  store i64 %add58, ptr %arrayidx45, align 8
  %inc = add nuw nsw i32 %j.0553, 1
  %inc59 = add nsw i32 %i.1552, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shl39)
  %cmp47 = icmp slt i32 %inc, %shl39
  call void @__sanitizer_cov_trace_cmp4(i32 %inc59, i32 %15)
  %cmp49 = icmp slt i32 %inc59, %15
  %or.cond = select i1 %cmp47, i1 %cmp49, i1 false
  br i1 %or.cond, label %for.body51.for.body51_crit_edge, label %for.body51.for.inc60_crit_edge

for.body51.for.inc60_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body51

for.inc60:                                        ; preds = %for.body51.for.inc60_crit_edge, %for.body.for.inc60_crit_edge
  %i.1.lcssa = phi i32 [ %i.0555, %for.body.for.inc60_crit_edge ], [ %inc59, %for.body51.for.inc60_crit_edge ]
  %inc61 = add i32 %n.0556, 1
  %cmp41 = icmp slt i32 %i.1.lcssa, %15
  br i1 %cmp41, label %for.inc60.for.body_crit_edge, label %for.end62

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end62:                                        ; preds = %for.inc60
  %27 = ptrtoint ptr %dn_agfree to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dn_agfree, align 8
  %add66 = add i64 %28, %19
  store i64 %add66, ptr %dn_agfree, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc61)
  %cmp68558 = icmp slt i32 %inc61, 128
  br i1 %cmp68558, label %for.end62.for.body70.preheader_crit_edge, label %for.end62.for.end76_crit_edge

for.end62.for.end76_crit_edge:                    ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end76

for.end62.for.body70.preheader_crit_edge:         ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body70.preheader

for.body70.preheader:                             ; preds = %for.end62.for.body70.preheader_crit_edge, %for.end62.thread
  %n.0.lcssa622 = phi i32 [ 0, %for.end62.thread ], [ %inc61, %for.end62.for.body70.preheader_crit_edge ]
  %29 = shl i32 %n.0.lcssa622, 3
  %30 = add i32 %29, 56
  %uglygep = getelementptr i8, ptr %7, i32 %30
  %31 = sub i32 1024, %29
  %32 = call ptr @memset(ptr %uglygep, i32 0, i32 %31)
  br label %for.end76

for.end76:                                        ; preds = %for.body70.preheader, %for.end62.for.end76_crit_edge
  %dn_maxag = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 5
  %33 = ptrtoint ptr %dn_maxag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dn_maxag, align 4
  %div = sdiv i32 %34, %shl39
  store i32 %div, ptr %dn_maxag, align 4
  br label %extend

extend:                                           ; preds = %for.end76, %dbGetL2AGSize.exit.extend_crit_edge
  %conv81 = sext i16 %5 to i64
  %call83 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef %conv, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.then85, label %if.end87

if.then85:                                        ; preds = %extend
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %36, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end87:                                         ; preds = %extend
  %shr88 = ashr i64 %blkno, 33
  %conv89 = trunc i64 %shr88 to i32
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %conv89)
  %cmp104577 = icmp slt i32 %conv89, 1024
  br i1 %cmp104577, label %for.body106.lr.ph, label %if.end87.for.end293_crit_edge

if.end87.for.end293_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end293

for.body106.lr.ph:                                ; preds = %if.end87
  %add97 = mul nsw i64 %shr88, 1049601
  %add99 = add nsw i64 %add97, 2
  %37 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %l2nbperpage, align 2
  %conv100 = sext i16 %38 to i32
  %sh_prom101 = zext i32 %conv100 to i64
  %shl102 = shl i64 %add99, %sh_prom101
  %data = getelementptr inbounds %struct.metapage, ptr %call83, i32 0, i32 7
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.dmapctl, ptr %40, i32 0, i32 5, i32 341
  %add.ptr90 = getelementptr i8, ptr %add.ptr, i32 %conv89
  %dn_nfree = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 1
  br label %for.body106

for.body106:                                      ; preds = %if.then279.for.body106_crit_edge, %for.body106.lr.ph
  %blkno.addr.0584 = phi i64 [ %blkno, %for.body106.lr.ph ], [ %add249, %if.then279.for.body106_crit_edge ]
  %nblocks.addr.0583 = phi i64 [ %nblocks, %for.body106.lr.ph ], [ %sub251, %if.then279.for.body106_crit_edge ]
  %l2leaf.0582 = phi ptr [ %add.ptr90, %for.body106.lr.ph ], [ %incdec.ptr280, %if.then279.for.body106_crit_edge ]
  %p.0581 = phi i64 [ %shl102, %for.body106.lr.ph ], [ %add292, %if.then279.for.body106_crit_edge ]
  %k.0580 = phi i32 [ %conv89, %for.body106.lr.ph ], [ %inc290, %if.then279.for.body106_crit_edge ]
  %tobool107.not579 = phi i1 [ false, %for.body106.lr.ph ], [ true, %if.then279.for.body106_crit_edge ]
  %i0.0578 = phi i32 [ 1, %for.body106.lr.ph ], [ 0, %if.then279.for.body106_crit_edge ]
  %conv134 = trunc i64 %p.0581 to i32
  br i1 %tobool107.not579, label %if.else, label %if.then108

if.then108:                                       ; preds = %for.body106
  %call110 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef %conv134, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp111 = icmp eq ptr %call110, null
  br i1 %cmp111, label %if.then108.if.end300_crit_edge, label %if.end114

if.then108.if.end300_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end300

if.end114:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %data115 = getelementptr inbounds %struct.metapage, ptr %call110, i32 0, i32 7
  %41 = ptrtoint ptr %data115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data115, align 4
  %and = lshr i64 %blkno.addr.0584, 23
  %43 = trunc i64 %and to i32
  %conv117 = and i32 %43, 1023
  %add.ptr120 = getelementptr %struct.dmapctl, ptr %42, i32 0, i32 5, i32 341
  %add.ptr121 = getelementptr i8, ptr %add.ptr120, i32 %conv117
  %shr122 = ashr i64 %blkno.addr.0584, 23
  %add125 = mul nsw i64 %shr122, 1025
  %shr126 = ashr i64 %blkno.addr.0584, 33
  %add127 = add nsw i64 %shr126, 3
  %add129 = add nsw i64 %add127, %add125
  %44 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %l2nbperpage, align 2
  %conv131 = sext i16 %45 to i32
  %sh_prom132 = zext i32 %conv131 to i64
  %shl133 = shl i64 %add129, %sh_prom132
  br label %if.end146

if.else:                                          ; preds = %for.body106
  %call135 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef %conv134, i32 noundef 4096, i32 noundef 0, i32 noundef 1) #10
  %cmp136 = icmp eq ptr %call135, null
  br i1 %cmp136, label %if.else.if.end300_crit_edge, label %if.end139

if.else.if.end300_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end300

if.end139:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %data140 = getelementptr inbounds %struct.metapage, ptr %call135, i32 0, i32 7
  %46 = ptrtoint ptr %data140 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data140, align 4
  %add.ptr143 = getelementptr %struct.dmapctl, ptr %47, i32 0, i32 5, i32 341
  %add145 = add i64 %p.0581, %conv81
  br label %if.end146

if.end146:                                        ; preds = %if.end139, %if.end114
  %j.1 = phi i32 [ %conv117, %if.end114 ], [ 0, %if.end139 ]
  %p.1 = phi i64 [ %shl133, %if.end114 ], [ %add145, %if.end139 ]
  %l1mp.1 = phi ptr [ %call110, %if.end114 ], [ %call135, %if.end139 ]
  %l1dcp.0 = phi ptr [ %42, %if.end114 ], [ %47, %if.end139 ]
  %l1leaf.0 = phi ptr [ %add.ptr121, %if.end114 ], [ %add.ptr143, %if.end139 ]
  br label %for.body150

for.body150:                                      ; preds = %if.then263.for.body150_crit_edge, %if.end146
  %blkno.addr.1576 = phi i64 [ %blkno.addr.0584, %if.end146 ], [ %add249, %if.then263.for.body150_crit_edge ]
  %nblocks.addr.1575 = phi i64 [ %nblocks.addr.0583, %if.end146 ], [ %sub251, %if.then263.for.body150_crit_edge ]
  %l1leaf.1574 = phi ptr [ %l1leaf.0, %if.end146 ], [ %incdec.ptr264, %if.then263.for.body150_crit_edge ]
  %p.2573 = phi i64 [ %p.1, %if.end146 ], [ %add247, %if.then263.for.body150_crit_edge ]
  %j.2572 = phi i32 [ %j.1, %if.end146 ], [ %inc273, %if.then263.for.body150_crit_edge ]
  %i0.1571 = phi i32 [ %i0.0578, %if.end146 ], [ 0, %if.then263.for.body150_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i0.1571)
  %tobool151.not = icmp eq i32 %i0.1571, 0
  %conv179 = trunc i64 %p.2573 to i32
  br i1 %tobool151.not, label %if.else178, label %if.then152

if.then152:                                       ; preds = %for.body150
  %call154 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef %conv179, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp155 = icmp eq ptr %call154, null
  br i1 %cmp155, label %if.then152.if.then299_crit_edge, label %if.end158

if.then152.if.then299_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then299

if.end158:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  %data159 = getelementptr inbounds %struct.metapage, ptr %call154, i32 0, i32 7
  %48 = ptrtoint ptr %data159 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data159, align 4
  %50 = trunc i64 %blkno.addr.1576 to i32
  %51 = lshr i32 %50, 13
  %conv162 = and i32 %51, 1023
  %add.ptr165 = getelementptr %struct.dmapctl, ptr %49, i32 0, i32 5, i32 341
  %add.ptr166 = getelementptr i8, ptr %add.ptr165, i32 %conv162
  %shr167 = ashr i64 %blkno.addr.1576, 13
  %shr168 = ashr i64 %blkno.addr.1576, 23
  %shr170 = ashr i64 %blkno.addr.1576, 33
  %add169 = add nsw i64 %shr168, 4
  %add171 = add nsw i64 %add169, %shr167
  %add173 = add nsw i64 %add171, %shr170
  %52 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %l2nbperpage, align 2
  %conv175 = sext i16 %53 to i32
  %sh_prom176 = zext i32 %conv175 to i64
  %shl177 = shl i64 %add173, %sh_prom176
  br label %if.end191

if.else178:                                       ; preds = %for.body150
  %call180 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef %conv179, i32 noundef 4096, i32 noundef 0, i32 noundef 1) #10
  %cmp181 = icmp eq ptr %call180, null
  br i1 %cmp181, label %if.else178.if.then299_crit_edge, label %if.end184

if.else178.if.then299_crit_edge:                  ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then299

if.end184:                                        ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  %data185 = getelementptr inbounds %struct.metapage, ptr %call180, i32 0, i32 7
  %54 = ptrtoint ptr %data185 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data185, align 4
  %add.ptr188 = getelementptr %struct.dmapctl, ptr %55, i32 0, i32 5, i32 341
  %add190 = add i64 %p.2573, %conv81
  br label %if.end191

if.end191:                                        ; preds = %if.end184, %if.end158
  %i.2 = phi i32 [ %conv162, %if.end158 ], [ 0, %if.end184 ]
  %p.3 = phi i64 [ %shl177, %if.end158 ], [ %add190, %if.end184 ]
  %l0mp.2 = phi ptr [ %call154, %if.end158 ], [ %call180, %if.end184 ]
  %l0dcp.0 = phi ptr [ %49, %if.end158 ], [ %55, %if.end184 ]
  %l0leaf.0 = phi ptr [ %add.ptr166, %if.end158 ], [ %add.ptr188, %if.end184 ]
  br label %for.body195

for.body195:                                      ; preds = %for.inc256.for.body195_crit_edge, %if.end191
  %blkno.addr.2568 = phi i64 [ %blkno.addr.1576, %if.end191 ], [ %add249, %for.inc256.for.body195_crit_edge ]
  %nblocks.addr.2565 = phi i64 [ %nblocks.addr.1575, %if.end191 ], [ %sub251, %for.inc256.for.body195_crit_edge ]
  %l0leaf.1564 = phi ptr [ %l0leaf.0, %if.end191 ], [ %incdec.ptr, %for.inc256.for.body195_crit_edge ]
  %p.4561 = phi i64 [ %p.3, %if.end191 ], [ %add247, %for.inc256.for.body195_crit_edge ]
  %i.3560 = phi i32 [ %i.2, %if.end191 ], [ %inc257, %for.inc256.for.body195_crit_edge ]
  %56 = trunc i64 %blkno.addr.2568 to i32
  %conv197 = and i32 %56, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv197)
  %tobool198.not = icmp eq i32 %conv197, 0
  %conv217 = trunc i64 %p.4561 to i32
  %call218 = tail call ptr @__get_metapage(ptr noundef %ipbmap, i32 noundef %conv217, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp219 = icmp eq ptr %call218, null
  br i1 %tobool198.not, label %if.else216, label %if.then199

if.then199:                                       ; preds = %for.body195
  br i1 %cmp219, label %if.then199.if.then296_crit_edge, label %if.else.i

if.then199.if.then296_crit_edge:                  ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then296

if.else216:                                       ; preds = %for.body195
  br i1 %cmp219, label %if.else216.if.then296_crit_edge, label %if.then.i

if.else216.if.then296_crit_edge:                  ; preds = %if.else216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then296

if.then.i:                                        ; preds = %if.else216
  %extract.t = trunc i64 %nblocks.addr.2565 to i32
  %57 = tail call i64 @llvm.smin.i64(i64 %nblocks.addr.2565, i64 8192)
  %58 = trunc i64 %57 to i32
  %data232500 = getelementptr inbounds %struct.metapage, ptr %call218, i32 0, i32 7
  %59 = ptrtoint ptr %data232500 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data232500, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %nfree.i = getelementptr inbounds %struct.dmap, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %nfree.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %nfree.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %60, align 8
  %64 = tail call i64 @llvm.bswap.i64(i64 %blkno.addr.2568) #10
  %start.i = getelementptr inbounds %struct.dmap, ptr %60, i32 0, i32 2
  %65 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %58)
  %cmp3.i = icmp eq i32 %58, 8192
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %wmap.i = getelementptr inbounds %struct.dmap, ptr %60, i32 0, i32 5
  %66 = call ptr @memset(ptr %wmap.i, i32 0, i32 2048)
  br label %initTree.i

if.else.i:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  %narrow = sub nuw nsw i32 8192, %conv197
  %sub207 = zext i32 %narrow to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %nblocks.addr.2565, i64 %sub207)
  %cmp209 = icmp slt i64 %nblocks.addr.2565, %sub207
  %extract.t474 = trunc i64 %nblocks.addr.2565 to i32
  %cond214.off0 = select i1 %cmp209, i32 %extract.t474, i32 %narrow
  %data232 = getelementptr inbounds %struct.metapage, ptr %call218, i32 0, i32 7
  %67 = ptrtoint ptr %data232 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data232, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #10
  %add.i.i = add i32 %71, %cond214.off0
  %72 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #10
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %68, align 4
  %nfree8.i = getelementptr inbounds %struct.dmap, ptr %68, i32 0, i32 1
  %74 = ptrtoint ptr %nfree8.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nfree8.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  %add.i120.i = add i32 %76, %cond214.off0
  %77 = tail call i32 @llvm.bswap.i32(i32 %add.i120.i) #10
  %78 = ptrtoint ptr %nfree8.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %nfree8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then.i.if.end9.i_crit_edge
  %79 = phi ptr [ %68, %if.else.i ], [ %60, %if.then.i.if.end9.i_crit_edge ]
  %n.2502 = phi i32 [ %cond214.off0, %if.else.i ], [ %extract.t, %if.then.i.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.2502)
  %cmp10122.i = icmp sgt i32 %n.2502, 0
  br i1 %cmp10122.i, label %for.body.preheader.i, label %if.end9.i.if.end44.i_crit_edge

if.end9.i.if.end44.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

for.body.preheader.i:                             ; preds = %if.end9.i
  %80 = lshr i32 %conv197, 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i480.for.body.i_crit_edge, %for.body.preheader.i
  %blkno.0126.i = phi i32 [ %add40.i, %for.inc.i480.for.body.i_crit_edge ], [ %conv197, %for.body.preheader.i ]
  %r.0124.i = phi i32 [ %sub39.i, %for.inc.i480.for.body.i_crit_edge ], [ %n.2502, %for.body.preheader.i ]
  %w.0123.i = phi i32 [ %w.1.i, %for.inc.i480.for.body.i_crit_edge ], [ %80, %for.body.preheader.i ]
  %and12.i = and i32 %blkno.0126.i, 31
  %sub.i477 = sub nuw nsw i32 32, %and12.i
  %81 = tail call i32 @llvm.umin.i32(i32 %r.0124.i, i32 %sub.i477) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %81)
  %cmp15.i = icmp ult i32 %81, 32
  br i1 %cmp15.i, label %if.then17.i, label %if.else30.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub18.i = sub nuw nsw i32 32, %81
  %shl.i478 = shl nsw i32 -1, %sub18.i
  %shr19.i = lshr i32 %shl.i478, %and12.i
  %neg.i = xor i32 %shr19.i, -1
  %82 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #10
  %arrayidx21.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 5, i32 %w.0123.i
  %83 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx21.i, align 4
  %and22.i = and i32 %84, %82
  store i32 %and22.i, ptr %arrayidx21.i, align 4
  %arrayidx28.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 6, i32 %w.0123.i
  %85 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx28.i, align 4
  %and29.i = and i32 %86, %82
  store i32 %and29.i, ptr %arrayidx28.i, align 4
  %inc.i = add i32 %w.0123.i, 1
  br label %for.inc.i480

if.else30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr31121.i = lshr i32 %r.0124.i, 5
  %arrayidx33.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 5, i32 %w.0123.i
  %mul.i = shl nuw nsw i32 %shr31121.i, 2
  %87 = call ptr @memset(ptr %arrayidx33.i, i32 0, i32 %mul.i)
  %arrayidx35.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 6, i32 %w.0123.i
  %88 = call ptr @memset(ptr %arrayidx35.i, i32 0, i32 %mul.i)
  %shl37.i = and i32 %r.0124.i, -32
  %add.i479 = add i32 %shr31121.i, %w.0123.i
  br label %for.inc.i480

for.inc.i480:                                     ; preds = %if.else30.i, %if.then17.i
  %w.1.i = phi i32 [ %inc.i, %if.then17.i ], [ %add.i479, %if.else30.i ]
  %nb.0.i = phi i32 [ %81, %if.then17.i ], [ %shl37.i, %if.else30.i ]
  %sub39.i = sub i32 %r.0124.i, %nb.0.i
  %add40.i = add i32 %nb.0.i, %blkno.0126.i
  %cmp10.i = icmp sgt i32 %sub39.i, 0
  br i1 %cmp10.i, label %for.inc.i480.for.body.i_crit_edge, label %for.end.i481

for.inc.i480.for.body.i_crit_edge:                ; preds = %for.inc.i480
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i481:                                     ; preds = %for.inc.i480
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add40.i)
  %cmp41.i = icmp eq i32 %add40.i, 8192
  br i1 %cmp41.i, label %for.end.i481.initTree.i_crit_edge, label %for.end.i481.if.end44.i_crit_edge

for.end.i481.if.end44.i_crit_edge:                ; preds = %for.end.i481
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

for.end.i481.initTree.i_crit_edge:                ; preds = %for.end.i481
  call void @__sanitizer_cov_trace_pc() #12
  br label %initTree.i

if.end44.i:                                       ; preds = %for.end.i481.if.end44.i_crit_edge, %if.end9.i.if.end44.i_crit_edge
  %blkno.0.lcssa131.i = phi i32 [ %add40.i, %for.end.i481.if.end44.i_crit_edge ], [ %conv197, %if.end9.i.if.end44.i_crit_edge ]
  %shr45.i = ashr i32 %blkno.0.lcssa131.i, 5
  %and46.i = and i32 %blkno.0.lcssa131.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool.not.i482 = icmp eq i32 %and46.i, 0
  br i1 %tobool.not.i482, label %if.end44.i.if.end54.i_crit_edge, label %if.then47.i

if.end44.i.if.end54.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr48.i = lshr i32 -1, %and46.i
  %89 = tail call i32 @llvm.bswap.i32(i32 %shr48.i) #10
  %arrayidx50.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 6, i32 %shr45.i
  %90 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx50.i, align 4
  %arrayidx52.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 5, i32 %shr45.i
  %91 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %89, ptr %arrayidx52.i, align 4
  %inc53.i = add nsw i32 %shr45.i, 1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then47.i, %if.end44.i.if.end54.i_crit_edge
  %w.2.i = phi i32 [ %inc53.i, %if.then47.i ], [ %shr45.i, %if.end44.i.if.end54.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %w.2.i)
  %cmp56127.i = icmp slt i32 %w.2.i, 256
  br i1 %cmp56127.i, label %if.end54.i.for.body58.i_crit_edge, label %if.end54.i.initTree.i_crit_edge

if.end54.i.initTree.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %initTree.i

if.end54.i.for.body58.i_crit_edge:                ; preds = %if.end54.i
  br label %for.body58.i

for.body58.i:                                     ; preds = %for.body58.i.for.body58.i_crit_edge, %if.end54.i.for.body58.i_crit_edge
  %i.0128.i = phi i32 [ %inc64.i, %for.body58.i.for.body58.i_crit_edge ], [ %w.2.i, %if.end54.i.for.body58.i_crit_edge ]
  %arrayidx60.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 5, i32 %i.0128.i
  %92 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %arrayidx60.i, align 4
  %arrayidx62.i = getelementptr %struct.dmap, ptr %79, i32 0, i32 6, i32 %i.0128.i
  %93 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %arrayidx62.i, align 4
  %inc64.i = add nsw i32 %i.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc64.i, 256
  br i1 %exitcond.not.i, label %for.body58.i.initTree.i_crit_edge, label %for.body58.i.for.body58.i_crit_edge

for.body58.i.for.body58.i_crit_edge:              ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body58.i

for.body58.i.initTree.i_crit_edge:                ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %initTree.i

initTree.i:                                       ; preds = %for.body58.i.initTree.i_crit_edge, %if.end54.i.initTree.i_crit_edge, %for.end.i481.initTree.i_crit_edge, %if.then5.i
  %94 = phi ptr [ %79, %if.end54.i.initTree.i_crit_edge ], [ %79, %for.end.i481.initTree.i_crit_edge ], [ %60, %if.then5.i ], [ %79, %for.body58.i.initTree.i_crit_edge ]
  %n.2501 = phi i32 [ %n.2502, %if.end54.i.initTree.i_crit_edge ], [ %n.2502, %for.end.i481.initTree.i_crit_edge ], [ 8192, %if.then5.i ], [ %n.2502, %for.body58.i.initTree.i_crit_edge ]
  %tree.i.i = getelementptr inbounds %struct.dmap, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 65536, ptr %tree.i.i, align 4
  %l2nleafs.i.i = getelementptr inbounds %struct.dmap, ptr %94, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %l2nleafs.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 134217728, ptr %l2nleafs.i.i, align 4
  %leafidx.i.i = getelementptr inbounds %struct.dmap, ptr %94, i32 0, i32 3, i32 2
  %97 = ptrtoint ptr %leafidx.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1426063360, ptr %leafidx.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.dmap, ptr %94, i32 0, i32 3, i32 3
  %98 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 67108864, ptr %height.i.i, align 4
  %budmin.i.i = getelementptr inbounds %struct.dmap, ptr %94, i32 0, i32 3, i32 4
  %99 = ptrtoint ptr %budmin.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 5, ptr %budmin.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dmap, ptr %94, i32 0, i32 3, i32 5, i32 85
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %dbMaxBud.exit.i.i.for.body.i.i_crit_edge, %initTree.i
  %i.014.i.i = phi i32 [ 0, %initTree.i ], [ %inc.i.i, %dbMaxBud.exit.i.i.for.body.i.i_crit_edge ]
  %cp.013.i.i = phi ptr [ %add.ptr.i.i, %initTree.i ], [ %incdec.ptr.i.i, %dbMaxBud.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dmap, ptr %94, i32 0, i32 5, i32 %i.014.i.i
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i.i.i = icmp eq i32 %101, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.dbMaxBud.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.dbMaxBud.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %cmp1.i.i.i = icmp eq i16 %103, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %add.ptr.i.i.i = getelementptr i16, ptr %arrayidx.i.i, i32 1
  %104 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp4.i.i.i = icmp eq i16 %105, 0
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge, label %if.end7.i.i.i

lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit.i.i

if.end7.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %add.ptr.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %107 to i32
  %arrayidx8.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom.i.i.i
  %108 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx8.i.i.i, align 1
  %arrayidx9.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 3
  %110 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx9.i.i.i, align 1
  %idxprom10.i.i.i = zext i8 %111 to i32
  %arrayidx11.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom10.i.i.i
  %112 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx11.i.i.i, align 1
  %114 = tail call i8 @llvm.smax.i8(i8 %109, i8 %113) #10
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom20.i.i.i = zext i8 %116 to i32
  %arrayidx21.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom20.i.i.i
  %117 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx21.i.i.i, align 1
  %arrayidx22.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 1
  %119 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx22.i.i.i, align 1
  %idxprom23.i.i.i = zext i8 %120 to i32
  %arrayidx24.i.i.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom23.i.i.i
  %121 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx24.i.i.i, align 1
  %123 = tail call i8 @llvm.smax.i8(i8 %118, i8 %122) #10
  %124 = tail call i8 @llvm.smax.i8(i8 %114, i8 %123) #10
  br label %dbMaxBud.exit.i.i

dbMaxBud.exit.i.i:                                ; preds = %if.end7.i.i.i, %lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge, %if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge, %for.body.i.i.dbMaxBud.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %124, %if.end7.i.i.i ], [ 5, %for.body.i.i.dbMaxBud.exit.i.i_crit_edge ], [ 4, %lor.lhs.false.i.i.i.dbMaxBud.exit.i.i_crit_edge ], [ 4, %if.end.i.i.i.dbMaxBud.exit.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %cp.013.i.i, i32 1
  %125 = ptrtoint ptr %cp.013.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %retval.0.i.i.i, ptr %cp.013.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %dbInitDmap.exit, label %dbMaxBud.exit.i.i.for.body.i.i_crit_edge

dbMaxBud.exit.i.i.for.body.i.i_crit_edge:         ; preds = %dbMaxBud.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

dbInitDmap.exit:                                  ; preds = %dbMaxBud.exit.i.i
  %call2.i.i = tail call fastcc i32 @dbInitTree(ptr noundef %tree.i.i) #10
  %conv234 = trunc i32 %call2.i.i to i8
  %126 = ptrtoint ptr %l0leaf.1564 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv234, ptr %l0leaf.1564, align 1
  %conv235 = sext i32 %n.2501 to i64
  %127 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %dn_nfree, align 8
  %add237 = add i64 %128, %conv235
  store i64 %add237, ptr %dn_nfree, align 8
  %start = getelementptr inbounds %struct.dmap, ptr %94, i32 0, i32 2
  %129 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %start, align 8
  %131 = tail call i64 @llvm.bswap.i64(i64 %130)
  %shr239 = lshr i64 %131, %sh_prom
  %conv240 = trunc i64 %shr239 to i32
  %arrayidx244 = getelementptr %struct.dbmap, ptr %7, i32 0, i32 12, i32 %conv240
  %132 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx244, align 8
  %add245 = add i64 %133, %conv235
  store i64 %add245, ptr %arrayidx244, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call218, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  tail call void @release_metapage(ptr noundef %call218) #10
  %add247 = add i64 %p.4561, %conv81
  %add249 = add i64 %blkno.addr.2568, %conv235
  %sub251 = sub i64 %nblocks.addr.2565, %conv235
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub251)
  %cmp252 = icmp eq i64 %sub251, 0
  br i1 %cmp252, label %dbInitDmap.exit.for.end258_crit_edge, label %for.inc256

dbInitDmap.exit.for.end258_crit_edge:             ; preds = %dbInitDmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end258

for.inc256:                                       ; preds = %dbInitDmap.exit
  %incdec.ptr = getelementptr i8, ptr %l0leaf.1564, i32 1
  %inc257 = add nuw nsw i32 %i.3560, 1
  %exitcond.not = icmp eq i32 %inc257, 1024
  br i1 %exitcond.not, label %for.inc256.for.end258_crit_edge, label %for.inc256.for.body195_crit_edge

for.inc256.for.body195_crit_edge:                 ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body195

for.inc256.for.end258_crit_edge:                  ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end258

for.end258:                                       ; preds = %for.inc256.for.end258_crit_edge, %dbInitDmap.exit.for.end258_crit_edge
  %i.3.lcssa = phi i32 [ %i.3560, %dbInitDmap.exit.for.end258_crit_edge ], [ 1024, %for.inc256.for.end258_crit_edge ]
  %inc259 = add i32 %i.3.lcssa, 1
  %134 = ptrtoint ptr %l0dcp.0 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 262144, ptr %l0dcp.0, align 4
  %l2nleafs.i = getelementptr inbounds %struct.dmapctl, ptr %l0dcp.0, i32 0, i32 1
  %135 = ptrtoint ptr %l2nleafs.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 167772160, ptr %l2nleafs.i, align 4
  %leafidx.i = getelementptr inbounds %struct.dmapctl, ptr %l0dcp.0, i32 0, i32 2
  %136 = ptrtoint ptr %leafidx.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1426128896, ptr %leafidx.i, align 4
  %height.i = getelementptr inbounds %struct.dmapctl, ptr %l0dcp.0, i32 0, i32 3
  %137 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 83886080, ptr %height.i, align 4
  %budmin.i = getelementptr inbounds %struct.dmapctl, ptr %l0dcp.0, i32 0, i32 4
  %138 = ptrtoint ptr %budmin.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 13, ptr %budmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc259)
  %cmp11.i = icmp slt i32 %inc259, 1024
  br i1 %cmp11.i, label %for.body.preheader.i483, label %for.end258.dbInitDmapCtl.exit_crit_edge

for.end258.dbInitDmapCtl.exit_crit_edge:          ; preds = %for.end258
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbInitDmapCtl.exit

for.body.preheader.i483:                          ; preds = %for.end258
  call void @__sanitizer_cov_trace_pc() #12
  %add1.i = add i32 %i.3.lcssa, 342
  %arrayidx.i = getelementptr %struct.dmapctl, ptr %l0dcp.0, i32 0, i32 5, i32 %add1.i
  %139 = sub i32 1023, %i.3.lcssa
  %140 = call ptr @memset(ptr %arrayidx.i, i32 255, i32 %139)
  br label %dbInitDmapCtl.exit

dbInitDmapCtl.exit:                               ; preds = %for.body.preheader.i483, %for.end258.dbInitDmapCtl.exit_crit_edge
  %call.i = tail call fastcc i32 @dbInitTree(ptr noundef %l0dcp.0) #10
  %conv261 = trunc i32 %call.i to i8
  %141 = ptrtoint ptr %l1leaf.1574 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv261, ptr %l1leaf.1574, align 1
  %flag.i485 = getelementptr inbounds %struct.metapage, ptr %l0mp.2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i485) #10
  tail call void @release_metapage(ptr noundef nonnull %l0mp.2) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub251)
  %tobool262.not = icmp eq i64 %sub251, 0
  br i1 %tobool262.not, label %if.else265, label %if.then263

if.then263:                                       ; preds = %dbInitDmapCtl.exit
  %incdec.ptr264 = getelementptr i8, ptr %l1leaf.1574, i32 1
  %inc273 = add nuw nsw i32 %j.2572, 1
  %exitcond617.not = icmp eq i32 %inc273, 1024
  br i1 %exitcond617.not, label %if.then263.for.end274_crit_edge, label %if.then263.for.body150_crit_edge

if.then263.for.body150_crit_edge:                 ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body150

if.then263.for.end274_crit_edge:                  ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end274

if.else265:                                       ; preds = %dbInitDmapCtl.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.2572)
  %cmp266.not = icmp eq i32 %j.2572, 0
  br i1 %cmp266.not, label %if.else269, label %if.else265.for.end274_crit_edge

if.else265.for.end274_crit_edge:                  ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end274

if.else269:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %l1leaf.1574 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %l1leaf.1574, align 1
  %dn_maxfreebud = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 14
  %144 = ptrtoint ptr %dn_maxfreebud to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %dn_maxfreebud, align 8
  tail call void @release_metapage(ptr noundef nonnull %l1mp.1) #10
  tail call void @release_metapage(ptr noundef nonnull %call83) #10
  br label %cleanup

for.end274:                                       ; preds = %if.else265.for.end274_crit_edge, %if.then263.for.end274_crit_edge
  %j.2530 = phi i32 [ %j.2572, %if.else265.for.end274_crit_edge ], [ 1024, %if.then263.for.end274_crit_edge ]
  %inc275 = add nuw i32 %j.2530, 1
  %145 = ptrtoint ptr %l1dcp.0 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 262144, ptr %l1dcp.0, align 4
  %l2nleafs.i486 = getelementptr inbounds %struct.dmapctl, ptr %l1dcp.0, i32 0, i32 1
  %146 = ptrtoint ptr %l2nleafs.i486 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 167772160, ptr %l2nleafs.i486, align 4
  %leafidx.i487 = getelementptr inbounds %struct.dmapctl, ptr %l1dcp.0, i32 0, i32 2
  %147 = ptrtoint ptr %leafidx.i487 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1426128896, ptr %leafidx.i487, align 4
  %height.i488 = getelementptr inbounds %struct.dmapctl, ptr %l1dcp.0, i32 0, i32 3
  %148 = ptrtoint ptr %height.i488 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 83886080, ptr %height.i488, align 4
  %budmin.i489 = getelementptr inbounds %struct.dmapctl, ptr %l1dcp.0, i32 0, i32 4
  %149 = ptrtoint ptr %budmin.i489 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 23, ptr %budmin.i489, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc275)
  %cmp11.i490 = icmp slt i32 %inc275, 1024
  br i1 %cmp11.i490, label %for.body.preheader.i493, label %for.end274.dbInitDmapCtl.exit496_crit_edge

for.end274.dbInitDmapCtl.exit496_crit_edge:       ; preds = %for.end274
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbInitDmapCtl.exit496

for.body.preheader.i493:                          ; preds = %for.end274
  call void @__sanitizer_cov_trace_pc() #12
  %add1.i491 = add nuw i32 %j.2530, 342
  %arrayidx.i492 = getelementptr %struct.dmapctl, ptr %l1dcp.0, i32 0, i32 5, i32 %add1.i491
  %150 = sub i32 1023, %j.2530
  %151 = call ptr @memset(ptr %arrayidx.i492, i32 255, i32 %150)
  br label %dbInitDmapCtl.exit496

dbInitDmapCtl.exit496:                            ; preds = %for.body.preheader.i493, %for.end274.dbInitDmapCtl.exit496_crit_edge
  %call.i494 = tail call fastcc i32 @dbInitTree(ptr noundef %l1dcp.0) #10
  %conv277 = trunc i32 %call.i494 to i8
  %152 = ptrtoint ptr %l2leaf.0582 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv277, ptr %l2leaf.0582, align 1
  %flag.i497 = getelementptr inbounds %struct.metapage, ptr %l1mp.1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i497) #10
  tail call void @release_metapage(ptr noundef nonnull %l1mp.1) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub251)
  %tobool278.not = icmp eq i64 %sub251, 0
  br i1 %tobool278.not, label %if.else281, label %if.then279

if.then279:                                       ; preds = %dbInitDmapCtl.exit496
  %incdec.ptr280 = getelementptr i8, ptr %l2leaf.0582, i32 1
  %inc290 = add nsw i32 %k.0580, 1
  %add292 = add i64 %add247, %conv81
  %exitcond618.not = icmp eq i32 %inc290, 1024
  br i1 %exitcond618.not, label %if.then279.for.end293_crit_edge, label %if.then279.for.body106_crit_edge

if.then279.for.body106_crit_edge:                 ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body106

if.then279.for.end293_crit_edge:                  ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end293

if.else281:                                       ; preds = %dbInitDmapCtl.exit496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0580)
  %cmp282 = icmp sgt i32 %k.0580, 0
  br i1 %cmp282, label %if.else281.for.end293_crit_edge, label %if.else285

if.else281.for.end293_crit_edge:                  ; preds = %if.else281
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end293

if.else285:                                       ; preds = %if.else281
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %l2leaf.0582 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %l2leaf.0582, align 1
  %dn_maxfreebud287 = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 14
  %155 = ptrtoint ptr %dn_maxfreebud287 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %dn_maxfreebud287, align 8
  tail call void @release_metapage(ptr noundef nonnull %call83) #10
  br label %cleanup

for.end293:                                       ; preds = %if.else281.for.end293_crit_edge, %if.then279.for.end293_crit_edge, %if.end87.for.end293_crit_edge
  %156 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %157, ptr noundef nonnull @.str.21) #10
  br label %if.end300

if.then296:                                       ; preds = %if.else216.if.then296_crit_edge, %if.then199.if.then296_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %l0mp.2) #10
  br label %if.then299

if.then299:                                       ; preds = %if.then296, %if.else178.if.then299_crit_edge, %if.then152.if.then299_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %l1mp.1) #10
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %for.end293, %if.else.if.end300_crit_edge, %if.then108.if.end300_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call83) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end300, %if.else285, %if.else269, %if.then85
  %retval.0 = phi i32 [ -5, %if.end300 ], [ -5, %if.then85 ], [ 0, %if.else285 ], [ 0, %if.else269 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dbFinalizeBmap(ptr nocapture noundef readonly %ipbmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmap, align 4
  %dn_maxag = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dn_maxag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dn_maxag, align 4
  %add = add i32 %7, 1
  %dn_numag = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dn_numag, align 4
  %sub = sub i32 %9, %add
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %5, align 8
  %dn_agsize = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dn_agsize, align 8
  %sub4 = add i64 %13, -1
  %and = and i64 %sub4, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %tobool.not = icmp eq i32 %9, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool5.not = icmp eq i64 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub6 = add i32 %sub, -1
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dn_agl2size, align 4
  %shl = shl i32 %sub6, %15
  %conv130 = zext i32 %shl to i64
  %add8 = add i64 %and, %conv130
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dn_agl2size10 = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 11
  %16 = ptrtoint ptr %dn_agl2size10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dn_agl2size10, align 4
  %shl11 = shl i32 %sub, %17
  %conv12131 = zext i32 %shl11 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add8, %cond.true ], [ %conv12131, %cond.false ]
  %dn_nfree = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dn_nfree, align 8
  %sub14 = sub i64 %19, %cond
  %conv15 = trunc i64 %sub14 to i32
  %div = udiv i32 %conv15, %add
  %conv16 = zext i32 %div to i64
  %dn_agpref = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dn_agpref, align 8
  %arrayidx = getelementptr %struct.dbmap, ptr %5, i32 0, i32 12, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv16)
  %cmp = icmp slt i64 %23, %conv16
  br i1 %cmp, label %for.cond.preheader, label %cond.end.if.end45_crit_edge

cond.end.if.end45_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

for.cond.preheader:                               ; preds = %cond.end
  %24 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dn_agpref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %7)
  %cmp24124 = icmp ult i32 %7, 2147483647
  br i1 %cmp24124, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %storemerge125 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.dbmap, ptr %5, i32 0, i32 12, i32 %storemerge125
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx30, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv16)
  %cmp31.not = icmp slt i64 %26, %conv16
  br i1 %cmp31.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %storemerge125, 1
  %27 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %dn_agpref, align 8
  %exitcond.not = icmp eq i32 %storemerge125, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %storemerge.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %storemerge125, %for.body.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa, i32 %9)
  %cmp40.not = icmp slt i32 %storemerge.lcssa, %9
  br i1 %cmp40.not, label %for.end.if.end45_crit_edge, label %if.then42

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %29, ptr noundef nonnull @.str.22) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %for.end.if.end45_crit_edge, %cond.end.if.end45_crit_edge
  %30 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dn_agsize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388609, i64 %31)
  %cmp48 = icmp slt i64 %31, 8388609
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934593, i64 %31)
  %cmp54 = icmp slt i64 %31, 8589934593
  %cond56 = select i1 %cmp54, i32 1, i32 2
  %cond58 = select i1 %cmp48, i32 0, i32 %cond56
  %dn_aglevel = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %dn_aglevel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond58, ptr %dn_aglevel, align 4
  %dn_agl2size61 = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 11
  %33 = ptrtoint ptr %dn_agl2size61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dn_agl2size61, align 4
  %mul.neg = mul nsw i32 %cond58, -10
  %add64.neg = add i32 %34, -13
  %sub65 = add i32 %add64.neg, %mul.neg
  %shr = ashr i32 %sub65, 1
  %dn_agheight = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 8
  %35 = ptrtoint ptr %dn_agheight to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr, ptr %dn_agheight, align 8
  %sub70 = and i32 %sub65, 1
  %shl71 = shl nuw nsw i32 1, %sub70
  %dn_agwidth = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 9
  %36 = ptrtoint ptr %dn_agwidth to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl71, ptr %dn_agwidth, align 4
  %dn_agstart = getelementptr inbounds %struct.dbmap, ptr %5, i32 0, i32 10
  %37 = ptrtoint ptr %dn_agstart to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dn_agstart, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub65)
  %cmp78127 = icmp slt i32 %sub65, 10
  br i1 %cmp78127, label %for.body80.lr.ph, label %if.end45.for.end86_crit_edge

if.end45.for.end86_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end86

for.body80.lr.ph:                                 ; preds = %if.end45
  %sub75 = sub nsw i32 5, %shr
  %38 = ptrtoint ptr %dn_agstart to i32
  call void @__asan_load4_noabort(i32 %38)
  %dn_agstart.promoted = load i32, ptr %dn_agstart, align 8
  br label %for.body80

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %for.body80.lr.ph
  %39 = phi i32 [ %dn_agstart.promoted, %for.body80.lr.ph ], [ %add83, %for.body80.for.body80_crit_edge ]
  %n.0129 = phi i32 [ 1, %for.body80.lr.ph ], [ %shl84, %for.body80.for.body80_crit_edge ]
  %i.0128 = phi i32 [ %sub75, %for.body80.lr.ph ], [ %dec, %for.body80.for.body80_crit_edge ]
  %add83 = add i32 %39, %n.0129
  %shl84 = shl i32 %n.0129, 2
  %dec = add nsw i32 %i.0128, -1
  %cmp78 = icmp sgt i32 %i.0128, 1
  br i1 %cmp78, label %for.body80.for.body80_crit_edge, label %for.cond77.for.end86_crit_edge

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body80

for.cond77.for.end86_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dn_agstart to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add83, ptr %dn_agstart, align 8
  br label %for.end86

for.end86:                                        ; preds = %for.cond77.for.end86_crit_edge, %if.end45.for.end86_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dbMapFileSizeToMapSize(ptr nocapture noundef readonly %ipbmap) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %l2bsize, align 2
  %conv = sext i16 %7 to i32
  %sh_prom = zext i32 %conv to i64
  %shr = ashr i64 %1, %sh_prom
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %l2nbperpage, align 2
  %conv2 = sext i16 %9 to i32
  %sh_prom3 = zext i32 %conv2 to i64
  %shr4 = ashr i64 %shr, %sh_prom3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1029, i64 %shr4)
  %cmp = icmp slt i64 %shr4, 1029
  call void @__sanitizer_cov_trace_const_cmp8(i64 1049604, i64 %shr4)
  %cmp6 = icmp slt i64 %shr4, 1049604
  %cond = select i1 %cmp6, i32 1, i32 2
  %cond8 = select i1 %cmp, i32 0, i32 %cond
  %sub = sub nuw nsw i32 2, %cond8
  %10 = zext i32 %sub to i64
  %11 = xor i64 %10, -1
  %sub10 = add i64 %shr4, %11
  %extract.t = trunc i64 %sub10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond8)
  %cmp14 = icmp eq i32 %cond8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond8)
  %cmp18 = icmp eq i32 %cond8, 1
  %cond20 = select i1 %cmp18, i32 1025, i32 1
  %cond22 = select i1 %cmp14, i32 1049601, i32 %cond20
  %conv23 = add i32 %extract.t, -1
  %conv23.frozen = freeze i32 %conv23
  %cond22.frozen = freeze i32 %cond22
  %div = udiv i32 %conv23.frozen, %cond22.frozen
  %cond30 = select i1 %cmp18, i32 1024, i32 1
  %cond32 = select i1 %cmp14, i32 1048576, i32 %cond30
  %mul = mul i32 %div, %cond32
  %conv33 = sext i32 %mul to i64
  br i1 %cmp, label %entry.for.end_crit_edge, label %for.body.1

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %entry
  %dec37 = add nsw i32 %cond8, -1
  %12 = mul i32 %div, %cond22.frozen
  %rem.decomposed = sub i32 %conv23.frozen, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec37)
  %cmp14.1 = icmp eq i32 %dec37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec37)
  %cmp18.1 = icmp eq i32 %dec37, 1
  %cond20.1 = select i1 %cmp18.1, i32 1025, i32 1
  %cond22.1 = select i1 %cmp14.1, i32 1049601, i32 %cond20.1
  %conv23.1 = add nsw i32 %rem.decomposed, -1
  %conv23.1.frozen = freeze i32 %conv23.1
  %cond22.1.frozen = freeze i32 %cond22.1
  %div.1 = udiv i32 %conv23.1.frozen, %cond22.1.frozen
  %cond30.1 = select i1 %cmp18.1, i32 1024, i32 1
  %cond32.1 = select i1 %cmp14.1, i32 1048576, i32 %cond30.1
  %mul.1 = mul i32 %div.1, %cond32.1
  %conv33.1 = sext i32 %mul.1 to i64
  %add.1 = add nsw i64 %conv33, %conv33.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37)
  %cmp12.not.1 = icmp eq i32 %dec37, 0
  br i1 %cmp12.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %dec37.1 = add nsw i32 %cond8, -2
  %13 = mul i32 %div.1, %cond22.1.frozen
  %rem.1.decomposed = sub i32 %conv23.1.frozen, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec37.1)
  %cmp14.2 = icmp eq i32 %dec37.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec37.1)
  %cmp18.2 = icmp eq i32 %dec37.1, 1
  %cond20.2 = select i1 %cmp18.2, i32 1025, i32 1
  %cond22.2 = select i1 %cmp14.2, i32 1049601, i32 %cond20.2
  %conv23.2 = add nsw i32 %rem.1.decomposed, -1
  %conv23.2.frozen = freeze i32 %conv23.2
  %cond22.2.frozen = freeze i32 %cond22.2
  %div.2 = udiv i32 %conv23.2.frozen, %cond22.2.frozen
  %cond30.2 = select i1 %cmp18.2, i32 1024, i32 1
  %cond32.2 = select i1 %cmp14.2, i32 1048576, i32 %cond30.2
  %mul.2 = mul i32 %div.2, %cond32.2
  %conv33.2 = sext i32 %mul.2 to i64
  %add.2 = add nsw i64 %add.1, %conv33.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37.1)
  %cmp12.not.2 = icmp eq i32 %dec37.1, 0
  br i1 %cmp12.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %dec37.2 = add nsw i32 %cond8, -3
  %14 = mul i32 %div.2, %cond22.2.frozen
  %rem.2.decomposed = sub i32 %conv23.2.frozen, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec37.2)
  %cmp14.3 = icmp eq i32 %dec37.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec37.2)
  %cmp18.3 = icmp eq i32 %dec37.2, 1
  %cond20.3 = select i1 %cmp18.3, i32 1025, i32 1
  %cond22.3 = select i1 %cmp14.3, i32 1049601, i32 %cond20.3
  %conv23.3 = add nsw i32 %rem.2.decomposed, -1
  %div.3 = udiv i32 %conv23.3, %cond22.3
  %cond30.3 = select i1 %cmp18.3, i32 1024, i32 1
  %cond32.3 = select i1 %cmp14.3, i32 1048576, i32 %cond30.3
  %mul.3 = mul i32 %div.3, %cond32.3
  %conv33.3 = sext i32 %mul.3 to i64
  %add.3 = add nsw i64 %add.2, %conv33.3
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %entry.for.end_crit_edge
  %add.lcssa = phi i64 [ %conv33, %entry.for.end_crit_edge ], [ %add.1, %for.body.1.for.end_crit_edge ], [ %add.2, %for.body.2.for.end_crit_edge ], [ %add.3, %for.body.3 ]
  %shl = shl nsw i64 %add.lcssa, 13
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbAllocDmap(ptr noundef %bmp, ptr nocapture noundef %dp, i64 noundef %blkno, i32 noundef %nblocks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stree = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stree, align 1
  tail call fastcc void @dbAllocBits(ptr noundef %bmp, ptr noundef %dp, i64 noundef %blkno, i32 noundef %nblocks)
  %2 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stree, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp = icmp eq i8 %3, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i8 %3 to i32
  %call = tail call fastcc i32 @dbAdjCtl(ptr noundef %bmp, i64 noundef %blkno, i32 noundef %conv, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call fastcc i32 @dbFreeBits(ptr noundef %bmp, ptr noundef %dp, i64 noundef %blkno, i32 noundef %nblocks)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbAllocBits(ptr noundef %bmp, ptr nocapture noundef %dp, i64 noundef %blkno, i32 noundef %nblocks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tree = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3
  %add.ptr = getelementptr %struct.dmap, ptr %dp, i32 0, i32 3, i32 5, i32 85
  %0 = trunc i64 %blkno to i32
  %conv = and i32 %0, 8191
  %add = add i32 %conv, %nblocks
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add)
  %cmp = icmp slt i32 %add, 8193
  br i1 %cmp, label %do.end11, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 2182, ptr noundef nonnull @.str.26) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2182, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblocks)
  %cmp12135 = icmp sgt i32 %nblocks, 0
  br i1 %cmp12135, label %for.body.lr.ph, label %do.end11.for.end61_crit_edge

do.end11.for.end61_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

for.body.lr.ph:                                   ; preds = %do.end11
  %1 = lshr i32 %conv, 5
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc58.for.body_crit_edge, %for.body.lr.ph
  %dbitno.0139 = phi i32 [ %conv, %for.body.lr.ph ], [ %add60, %for.inc58.for.body_crit_edge ]
  %word.0138 = phi i32 [ %1, %for.body.lr.ph ], [ %word.2, %for.inc58.for.body_crit_edge ]
  %rembits.0136 = phi i32 [ %nblocks, %for.body.lr.ph ], [ %sub59, %for.inc58.for.body_crit_edge ]
  %and14 = and i32 %dbitno.0139, 31
  %sub = sub nuw nsw i32 32, %and14
  %2 = tail call i32 @llvm.umin.i32(i32 %rembits.0136, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp18 = icmp ult i32 %2, 32
  br i1 %cmp18, label %if.then20, label %for.body34.preheader

if.then20:                                        ; preds = %for.body
  %sub21 = sub nuw nsw i32 32, %2
  %shl = shl nsw i32 -1, %sub21
  %shr22 = lshr i32 %shl, %and14
  %3 = tail call i32 @llvm.bswap.i32(i32 %shr22)
  %arrayidx = getelementptr %struct.dmap, ptr %dp, i32 0, i32 5, i32 %word.0138
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %or = or i32 %5, %3
  store i32 %or, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp.i = icmp eq i32 %or, 0
  br i1 %cmp.i, label %if.then20.dbMaxBud.exit_crit_edge, label %if.end.i

if.then20.dbMaxBud.exit_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit

if.end.i:                                         ; preds = %if.then20
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1.i = icmp eq i16 %7, 0
  br i1 %cmp1.i, label %if.end.i.dbMaxBud.exit_crit_edge, label %lor.lhs.false.i

if.end.i.dbMaxBud.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %add.ptr.i = getelementptr i16, ptr %arrayidx, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp4.i = icmp eq i16 %9, 0
  br i1 %cmp4.i, label %lor.lhs.false.i.dbMaxBud.exit_crit_edge, label %if.end7.i

lor.lhs.false.i.dbMaxBud.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit

if.end7.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  %idxprom.i = zext i8 %11 to i32
  %arrayidx8.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %arrayidx, i32 3
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9.i, align 1
  %idxprom10.i = zext i8 %15 to i32
  %arrayidx11.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom10.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %18 = tail call i8 @llvm.smax.i8(i8 %13, i8 %17) #10
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %idxprom20.i = zext i8 %20 to i32
  %arrayidx21.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom20.i
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %arrayidx, i32 1
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22.i, align 1
  %idxprom23.i = zext i8 %24 to i32
  %arrayidx24.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom23.i
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24.i, align 1
  %27 = tail call i8 @llvm.smax.i8(i8 %22, i8 %26) #10
  %28 = tail call i8 @llvm.smax.i8(i8 %18, i8 %27) #10
  %cond47.i = sext i8 %28 to i32
  br label %dbMaxBud.exit

dbMaxBud.exit:                                    ; preds = %if.end7.i, %lor.lhs.false.i.dbMaxBud.exit_crit_edge, %if.end.i.dbMaxBud.exit_crit_edge, %if.then20.dbMaxBud.exit_crit_edge
  %retval.0.i = phi i32 [ %cond47.i, %if.end7.i ], [ 5, %if.then20.dbMaxBud.exit_crit_edge ], [ 4, %lor.lhs.false.i.dbMaxBud.exit_crit_edge ], [ 4, %if.end.i.dbMaxBud.exit_crit_edge ]
  tail call fastcc void @dbSplit(ptr noundef %tree, i32 noundef %word.0138, i32 noundef 5, i32 noundef %retval.0.i)
  %add26 = add i32 %word.0138, 1
  br label %for.inc58

for.body34.preheader:                             ; preds = %for.body
  %shr27130 = lshr i32 %rembits.0136, 5
  %arrayidx29 = getelementptr %struct.dmap, ptr %dp, i32 0, i32 5, i32 %word.0138
  %mul = shl nuw nsw i32 %shr27130, 2
  %29 = call ptr @memset(ptr %arrayidx29, i32 255, i32 %mul)
  %shl30 = and i32 %rembits.0136, -32
  br label %for.body34

for.body34:                                       ; preds = %cntlz.exit.for.body34_crit_edge, %for.body34.preheader
  %word.1134 = phi i32 [ %add55, %cntlz.exit.for.body34_crit_edge ], [ %word.0138, %for.body34.preheader ]
  %nwords.0133 = phi i32 [ %sub56, %cntlz.exit.for.body34_crit_edge ], [ %shr27130, %for.body34.preheader ]
  %arrayidx35 = getelementptr i8, ptr %add.ptr, i32 %word.1134
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp37 = icmp slt i8 %31, 5
  br i1 %cmp37, label %if.then39, label %for.body34.for.inc.i_crit_edge

for.body34.for.inc.i_crit_edge:                   ; preds = %for.body34
  br label %for.inc.i

if.then39:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %db_ipbmap, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %35, ptr noundef nonnull @.str.27) #10
  br label %for.inc58

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %for.body34.for.inc.i_crit_edge
  %n.06.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %for.body34.for.inc.i_crit_edge ]
  %value.addr.05.i = phi i32 [ %shl.i, %for.inc.i.for.inc.i_crit_edge ], [ %nwords.0133, %for.body34.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.06.i, 1
  %shl.i = shl nuw i32 %value.addr.05.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n.06.i)
  %cmp.i129 = icmp ult i32 %n.06.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl.i)
  %tobool.not.i = icmp sgt i32 %shl.i, -1
  %or.cond.i = select i1 %cmp.i129, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.inc.i_crit_edge, label %cntlz.exit

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cntlz.exit:                                       ; preds = %for.inc.i
  %add45 = sub nuw nsw i32 35, %n.06.i
  %36 = tail call i32 @llvm.smin.i32(i32 %add45, i32 %conv36)
  tail call fastcc void @dbSplit(ptr noundef %tree, i32 noundef %word.1134, i32 noundef %36, i32 noundef -1)
  %sub53 = add i32 %36, -5
  %shl54 = shl nuw nsw i32 1, %sub53
  %add55 = add i32 %shl54, %word.1134
  %sub56 = sub i32 %nwords.0133, %shl54
  %cmp32 = icmp sgt i32 %sub56, 0
  br i1 %cmp32, label %cntlz.exit.for.body34_crit_edge, label %cntlz.exit.for.inc58_crit_edge

cntlz.exit.for.inc58_crit_edge:                   ; preds = %cntlz.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc58

cntlz.exit.for.body34_crit_edge:                  ; preds = %cntlz.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34

for.inc58:                                        ; preds = %cntlz.exit.for.inc58_crit_edge, %if.then39, %dbMaxBud.exit
  %nb.0 = phi i32 [ %2, %dbMaxBud.exit ], [ %shl30, %if.then39 ], [ %shl30, %cntlz.exit.for.inc58_crit_edge ]
  %word.2 = phi i32 [ %add26, %dbMaxBud.exit ], [ %word.1134, %if.then39 ], [ %add55, %cntlz.exit.for.inc58_crit_edge ]
  %sub59 = sub i32 %rembits.0136, %nb.0
  %add60 = add i32 %nb.0, %dbitno.0139
  %cmp12 = icmp sgt i32 %sub59, 0
  br i1 %cmp12, label %for.inc58.for.body_crit_edge, label %for.inc58.for.end61_crit_edge

for.inc58.for.end61_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

for.inc58.for.body_crit_edge:                     ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end61:                                        ; preds = %for.inc58.for.end61_crit_edge, %do.end11.for.end61_crit_edge
  %nfree = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 1
  %37 = ptrtoint ptr %nfree to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nfree, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %add.i = sub i32 %39, %nblocks
  %40 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %41 = ptrtoint ptr %nfree to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %nfree, align 4
  %db_bmaplock = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %db_bmaplock, i32 noundef 0) #10
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 11
  %42 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dn_agl2size, align 4
  %sh_prom = zext i32 %43 to i64
  %shr63 = ashr i64 %blkno, %sh_prom
  %conv64 = trunc i64 %shr63 to i32
  %dn_maxag = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 5
  %44 = ptrtoint ptr %dn_maxag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dn_maxag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv64)
  %cmp66 = icmp slt i32 %45, %conv64
  br i1 %cmp66, label %if.then68, label %for.end61.if.end71_crit_edge

for.end61.if.end71_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then68:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %dn_maxag to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv64, ptr %dn_maxag, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %for.end61.if.end71_crit_edge
  %conv72 = sext i32 %nblocks to i64
  %arrayidx74 = getelementptr %struct.dbmap, ptr %bmp, i32 0, i32 12, i32 %conv64
  %47 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx74, align 8
  %sub75 = sub i64 %48, %conv72
  store i64 %sub75, ptr %arrayidx74, align 8
  %dn_nfree = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 1
  %49 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dn_nfree, align 8
  %sub78 = sub i64 %50, %conv72
  store i64 %sub78, ptr %dn_nfree, align 8
  tail call void @mutex_unlock(ptr noundef %db_bmaplock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbAdjCtl(ptr nocapture noundef %bmp, i64 noundef %blkno, i32 noundef %newval, i32 noundef %alloc, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %level, label %cond.false10 [
    i32 2, label %entry.cond.end23_crit_edge
    i32 1, label %cond.true2
  ]

entry.cond.end23_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end23

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr = ashr i64 %blkno, 33
  %add6 = mul nsw i64 %shr, 1049601
  %add8 = add nsw i64 %add6, 2
  br label %cond.end23.sink.split

cond.false10:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = lshr i64 %blkno, 23
  %add14 = mul nuw nsw i64 %1, 1025
  %shr15 = ashr i64 %blkno, 33
  %add16 = add nsw i64 %shr15, 3
  %add18 = add nsw i64 %add16, %add14
  br label %cond.end23.sink.split

cond.end23.sink.split:                            ; preds = %cond.false10, %cond.true2
  %add8.sink = phi i64 [ %add8, %cond.true2 ], [ %add18, %cond.false10 ]
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 2
  %2 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom = zext i32 %3 to i64
  %shl9 = shl i64 %add8.sink, %sh_prom
  %extract.t = trunc i64 %shl9 to i32
  br label %cond.end23

cond.end23:                                       ; preds = %cond.end23.sink.split, %entry.cond.end23_crit_edge
  %cond24.off0 = phi i32 [ 1, %entry.cond.end23_crit_edge ], [ %extract.t, %cond.end23.sink.split ]
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  %4 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_ipbmap, align 8
  %call = tail call ptr @__get_metapage(ptr noundef %5, i32 noundef %cond24.off0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp25 = icmp eq ptr %call, null
  br i1 %cmp25, label %cond.end23.cleanup_crit_edge, label %if.end

cond.end23.cleanup_crit_edge:                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end23
  %data = getelementptr inbounds %struct.metapage, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %leafidx = getelementptr inbounds %struct.dmapctl, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %leafidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1426128896, i32 %9)
  %cmp27.not = icmp eq i32 %9, 1426128896
  br i1 %cmp27.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_ipbmap, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %13, ptr noundef nonnull @.str.28) #10
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end
  %budmin = getelementptr inbounds %struct.dmapctl, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %budmin to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %budmin, align 4
  %conv32 = sext i8 %15 to i32
  %add33 = add nsw i32 %conv32, 10
  %sh_prom34 = zext i32 %add33 to i64
  %notmask = shl nsw i64 -1, %sh_prom34
  %sub = xor i64 %notmask, -1
  %and = and i64 %sub, %blkno
  %sh_prom38 = zext i32 %conv32 to i64
  %shr39 = ashr i64 %and, %sh_prom38
  %conv40 = trunc i64 %shr39 to i32
  %add42 = add i32 %conv40, 341
  %stree = getelementptr inbounds %struct.dmapctl, ptr %7, i32 0, i32 5
  %arrayidx = getelementptr %struct.dmapctl, ptr %7, i32 0, i32 5, i32 %add42
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv43 = sext i8 %17 to i32
  %18 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stree, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc)
  %tobool.not = icmp eq i32 %alloc, 0
  br i1 %tobool.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp47 = icmp eq i8 %17, -1
  br i1 %cmp47, label %if.then49, label %if.then46.if.end57_crit_edge

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then49:                                        ; preds = %if.then46
  %call50 = tail call fastcc i32 @dbBackSplit(ptr noundef %7, i32 noundef %conv40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then49.cleanup.sink.split_crit_edge

if.then49.cleanup.sink.split_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end53:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv56 = sext i8 %21 to i32
  br label %if.end57

if.end57:                                         ; preds = %if.end53, %if.then46.if.end57_crit_edge
  %oldval.0 = phi i32 [ %conv56, %if.end53 ], [ %conv43, %if.then46.if.end57_crit_edge ]
  %22 = ptrtoint ptr %budmin to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %budmin, align 4
  %conv59 = sext i8 %23 to i32
  tail call fastcc void @dbSplit(ptr noundef %7, i32 noundef %conv40, i32 noundef %conv59, i32 noundef %newval)
  br label %if.end64

if.else:                                          ; preds = %if.end31
  %call60 = tail call fastcc i32 @dbJoin(ptr noundef %7, i32 noundef %conv40, i32 noundef %newval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else.if.end64_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.end64:                                         ; preds = %if.else.if.end64_crit_edge, %if.end57
  %oldval.1 = phi i32 [ %oldval.0, %if.end57 ], [ %conv43, %if.else.if.end64_crit_edge ]
  %24 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stree, align 1
  %conv67 = sext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %19)
  %cmp69.not = icmp eq i8 %25, %19
  br i1 %cmp69.not, label %if.end64.if.end130_crit_edge, label %if.then71

if.end64.if.end130_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then71:                                        ; preds = %if.end64
  %dn_maxlevel = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 4
  %26 = ptrtoint ptr %dn_maxlevel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dn_maxlevel, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %level)
  %cmp73 = icmp sgt i32 %27, %level
  br i1 %cmp73, label %if.then75, label %do.body

if.then75:                                        ; preds = %if.then71
  %add79 = add nsw i32 %level, 1
  %call80 = tail call fastcc i32 @dbAdjCtl(ptr noundef %bmp, i64 noundef %blkno, i32 noundef %conv67, i32 noundef %alloc, i32 noundef %add79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then75.if.end130_crit_edge, label %if.then82

if.then75.if.end130_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then82:                                        ; preds = %if.then75
  br i1 %tobool.not, label %if.else86, label %if.then84

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = tail call fastcc i32 @dbJoin(ptr noundef %7, i32 noundef %conv40, i32 noundef %oldval.1)
  br label %cleanup.sink.split

if.else86:                                        ; preds = %if.then82
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp90 = icmp eq i8 %29, -1
  br i1 %cmp90, label %if.then92, label %if.else86.if.end94_crit_edge

if.else86.if.end94_crit_edge:                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then92:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #12
  %call93 = tail call fastcc i32 @dbBackSplit(ptr noundef %7, i32 noundef %conv40)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.else86.if.end94_crit_edge
  %30 = ptrtoint ptr %budmin to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %budmin, align 4
  %conv96 = sext i8 %31 to i32
  tail call fastcc void @dbSplit(ptr noundef %7, i32 noundef %conv40, i32 noundef %conv96, i32 noundef %oldval.1)
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %level)
  %cmp102 = icmp eq i32 %27, %level
  br i1 %cmp102, label %do.end115, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 2616, ptr noundef nonnull @.str.30) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2616, 0\0A.popsection", ""() #10, !srcloc !169
  unreachable

do.end115:                                        ; preds = %do.body
  %dn_maxfreebud = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 14
  %32 = ptrtoint ptr %dn_maxfreebud to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dn_maxfreebud, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %19)
  %cmp119.not = icmp eq i8 %33, %19
  br i1 %cmp119.not, label %do.end115.if.end124_crit_edge, label %if.then121

do.end115.if.end124_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then121:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db_ipbmap, align 8
  %i_sb123 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb123 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb123, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %37, ptr noundef nonnull @.str.31) #10
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %do.end115.if.end124_crit_edge
  %38 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stree, align 1
  %40 = ptrtoint ptr %dn_maxfreebud to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %dn_maxfreebud, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.end124, %if.then75.if.end130_crit_edge, %if.end64.if.end130_crit_edge
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end130, %if.end94, %if.then84, %if.else.cleanup.sink.split_crit_edge, %if.then49.cleanup.sink.split_crit_edge, %if.then29
  %retval.0.ph = phi i32 [ 0, %if.end130 ], [ -5, %if.then29 ], [ %call50, %if.then49.cleanup.sink.split_crit_edge ], [ %call60, %if.else.cleanup.sink.split_crit_edge ], [ %call80, %if.end94 ], [ %call80, %if.then84 ]
  tail call void @release_metapage(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %cond.end23.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbFreeBits(ptr noundef %bmp, ptr nocapture noundef %dp, i64 noundef %blkno, i32 noundef %nblocks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tree = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 3
  %0 = trunc i64 %blkno to i32
  %conv = and i32 %0, 8191
  %add = add i32 %conv, %nblocks
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add)
  %cmp = icmp slt i32 %add, 8193
  br i1 %cmp, label %do.end10, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 2327, ptr noundef nonnull @.str.26) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2327, 0\0A.popsection", ""() #10, !srcloc !170
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblocks)
  %cmp11221 = icmp sgt i32 %nblocks, 0
  br i1 %cmp11221, label %for.body.preheader, label %do.end10.for.end68_crit_edge

do.end10.for.end68_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68

for.body.preheader:                               ; preds = %do.end10
  %1 = lshr i32 %conv, 5
  br label %for.body

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %for.body.preheader
  %dbitno.0225 = phi i32 [ %add67, %for.inc65.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %word.0224 = phi i32 [ %word.2, %for.inc65.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %rembits.0222 = phi i32 [ %sub66, %for.inc65.for.body_crit_edge ], [ %nblocks, %for.body.preheader ]
  %and13 = and i32 %dbitno.0225, 31
  %sub = sub nuw nsw i32 32, %and13
  %2 = tail call i32 @llvm.umin.i32(i32 %rembits.0222, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp17 = icmp ult i32 %2, 32
  br i1 %cmp17, label %if.then19, label %for.body37.preheader

if.then19:                                        ; preds = %for.body
  %sub20 = sub nuw nsw i32 32, %2
  %shl = shl nsw i32 -1, %sub20
  %shr21 = lshr i32 %shl, %and13
  %neg = xor i32 %shr21, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %arrayidx = getelementptr %struct.dmap, ptr %dp, i32 0, i32 5, i32 %word.0224
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and22 = and i32 %5, %3
  store i32 %and22, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp.i = icmp eq i32 %and22, 0
  br i1 %cmp.i, label %if.then19.dbMaxBud.exit_crit_edge, label %if.end.i

if.then19.dbMaxBud.exit_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit

if.end.i:                                         ; preds = %if.then19
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1.i = icmp eq i16 %7, 0
  br i1 %cmp1.i, label %if.end.i.dbMaxBud.exit_crit_edge, label %lor.lhs.false.i

if.end.i.dbMaxBud.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %add.ptr.i = getelementptr i16, ptr %arrayidx, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp4.i = icmp eq i16 %9, 0
  br i1 %cmp4.i, label %lor.lhs.false.i.dbMaxBud.exit_crit_edge, label %if.end7.i

lor.lhs.false.i.dbMaxBud.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbMaxBud.exit

if.end7.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  %idxprom.i = zext i8 %11 to i32
  %arrayidx8.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %arrayidx, i32 3
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9.i, align 1
  %idxprom10.i = zext i8 %15 to i32
  %arrayidx11.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom10.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %18 = tail call i8 @llvm.smax.i8(i8 %13, i8 %17) #10
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %idxprom20.i = zext i8 %20 to i32
  %arrayidx21.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom20.i
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %arrayidx, i32 1
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22.i, align 1
  %idxprom23.i = zext i8 %24 to i32
  %arrayidx24.i = getelementptr [256 x i8], ptr @budtab, i32 0, i32 %idxprom23.i
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24.i, align 1
  %27 = tail call i8 @llvm.smax.i8(i8 %22, i8 %26) #10
  %28 = tail call i8 @llvm.smax.i8(i8 %18, i8 %27) #10
  %cond47.i = sext i8 %28 to i32
  br label %dbMaxBud.exit

dbMaxBud.exit:                                    ; preds = %if.end7.i, %lor.lhs.false.i.dbMaxBud.exit_crit_edge, %if.end.i.dbMaxBud.exit_crit_edge, %if.then19.dbMaxBud.exit_crit_edge
  %retval.0.i = phi i32 [ %cond47.i, %if.end7.i ], [ 5, %if.then19.dbMaxBud.exit_crit_edge ], [ 4, %lor.lhs.false.i.dbMaxBud.exit_crit_edge ], [ 4, %if.end.i.dbMaxBud.exit_crit_edge ]
  %call26 = tail call fastcc i32 @dbJoin(ptr noundef %tree, i32 noundef %word.0224, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end28, label %dbMaxBud.exit.cleanup_crit_edge

dbMaxBud.exit.cleanup_crit_edge:                  ; preds = %dbMaxBud.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %dbMaxBud.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add29 = add i32 %word.0224, 1
  br label %for.inc65

for.body37.preheader:                             ; preds = %for.body
  %shr30213 = lshr i32 %rembits.0222, 5
  %arrayidx32 = getelementptr %struct.dmap, ptr %dp, i32 0, i32 5, i32 %word.0224
  %mul = shl nuw nsw i32 %shr30213, 2
  %29 = call ptr @memset(ptr %arrayidx32, i32 0, i32 %mul)
  %shl33 = and i32 %rembits.0222, -32
  br label %for.body37

for.body37:                                       ; preds = %if.end59.for.body37_crit_edge, %for.body37.preheader
  %word.1219 = phi i32 [ %add62, %if.end59.for.body37_crit_edge ], [ %word.0224, %for.body37.preheader ]
  %nwords.0217 = phi i32 [ %sub63, %if.end59.for.body37_crit_edge ], [ %shr30213, %for.body37.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word.1219)
  %cmp38 = icmp eq i32 %word.1219, 0
  br i1 %cmp38, label %for.body37.for.inc.i211.preheader_crit_edge, label %cond.false41

for.body37.for.inc.i211.preheader_crit_edge:      ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i211.preheader

cond.false41:                                     ; preds = %for.body37
  %and4.i = and i32 %word.1219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not5.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not5.i, label %cond.false41.for.inc.i_crit_edge, label %cond.false41.for.inc.i211.preheader_crit_edge

cond.false41.for.inc.i211.preheader_crit_edge:    ; preds = %cond.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i211.preheader

cond.false41.for.inc.i_crit_edge:                 ; preds = %cond.false41
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %cond.false41.for.inc.i_crit_edge
  %n.07.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %cond.false41.for.inc.i_crit_edge ]
  %word.addr.06.i = phi i32 [ %shr.i, %for.inc.i.for.inc.i_crit_edge ], [ %word.1219, %cond.false41.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.07.i, 1
  %shr.i = lshr i32 %word.addr.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n.07.i)
  %cmp.i206 = icmp ult i32 %n.07.i, 31
  %30 = and i32 %word.addr.06.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  %or.cond.i = select i1 %cmp.i206, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.inc.i_crit_edge, label %cond.end43

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cond.end43:                                       ; preds = %for.inc.i
  %add45 = add nuw nsw i32 %n.07.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nwords.0217)
  %tobool.not4.i = icmp sgt i32 %nwords.0217, -1
  br i1 %tobool.not4.i, label %cond.end43.for.inc.i211.preheader_crit_edge, label %cond.end43.cntlz.exit_crit_edge

cond.end43.cntlz.exit_crit_edge:                  ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cntlz.exit

cond.end43.for.inc.i211.preheader_crit_edge:      ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i211.preheader

for.inc.i211.preheader:                           ; preds = %cond.end43.for.inc.i211.preheader_crit_edge, %cond.false41.for.inc.i211.preheader_crit_edge, %for.body37.for.inc.i211.preheader_crit_edge
  %add45232 = phi i32 [ %add45, %cond.end43.for.inc.i211.preheader_crit_edge ], [ 5, %cond.false41.for.inc.i211.preheader_crit_edge ], [ 13, %for.body37.for.inc.i211.preheader_crit_edge ]
  br label %for.inc.i211

for.inc.i211:                                     ; preds = %for.inc.i211.for.inc.i211_crit_edge, %for.inc.i211.preheader
  %n.06.i = phi i32 [ %inc.i207, %for.inc.i211.for.inc.i211_crit_edge ], [ 0, %for.inc.i211.preheader ]
  %value.addr.05.i = phi i32 [ %shl.i, %for.inc.i211.for.inc.i211_crit_edge ], [ %nwords.0217, %for.inc.i211.preheader ]
  %inc.i207 = add nuw nsw i32 %n.06.i, 1
  %shl.i = shl nuw i32 %value.addr.05.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n.06.i)
  %cmp.i208 = icmp ult i32 %n.06.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl.i)
  %tobool.not.i209 = icmp sgt i32 %shl.i, -1
  %or.cond.i210 = select i1 %cmp.i208, i1 %tobool.not.i209, i1 false
  br i1 %or.cond.i210, label %for.inc.i211.for.inc.i211_crit_edge, label %for.inc.i211.cntlz.exit_crit_edge

for.inc.i211.cntlz.exit_crit_edge:                ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %cntlz.exit

for.inc.i211.for.inc.i211_crit_edge:              ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i211

cntlz.exit:                                       ; preds = %for.inc.i211.cntlz.exit_crit_edge, %cond.end43.cntlz.exit_crit_edge
  %add45231 = phi i32 [ %add45, %cond.end43.cntlz.exit_crit_edge ], [ %add45232, %for.inc.i211.cntlz.exit_crit_edge ]
  %n.0.lcssa.i212 = phi i32 [ 0, %cond.end43.cntlz.exit_crit_edge ], [ %inc.i207, %for.inc.i211.cntlz.exit_crit_edge ]
  %add48 = sub nuw nsw i32 36, %n.0.lcssa.i212
  %31 = tail call i32 @llvm.smin.i32(i32 %add45231, i32 %add48)
  %call56 = tail call fastcc i32 @dbJoin(ptr noundef %tree, i32 noundef %word.1219, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %cntlz.exit.cleanup_crit_edge

cntlz.exit.cleanup_crit_edge:                     ; preds = %cntlz.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %cntlz.exit
  %sub60 = add i32 %31, -5
  %shl61 = shl nuw i32 1, %sub60
  %add62 = add i32 %shl61, %word.1219
  %sub63 = sub i32 %nwords.0217, %shl61
  %cmp35 = icmp sgt i32 %sub63, 0
  br i1 %cmp35, label %if.end59.for.body37_crit_edge, label %if.end59.for.inc65_crit_edge

if.end59.for.inc65_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc65

if.end59.for.body37_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37

for.inc65:                                        ; preds = %if.end59.for.inc65_crit_edge, %if.end28
  %nb.0 = phi i32 [ %2, %if.end28 ], [ %shl33, %if.end59.for.inc65_crit_edge ]
  %word.2 = phi i32 [ %add29, %if.end28 ], [ %add62, %if.end59.for.inc65_crit_edge ]
  %sub66 = sub i32 %rembits.0222, %nb.0
  %add67 = add i32 %nb.0, %dbitno.0225
  %cmp11 = icmp sgt i32 %sub66, 0
  br i1 %cmp11, label %for.inc65.for.body_crit_edge, label %for.inc65.for.end68_crit_edge

for.inc65.for.end68_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end68:                                        ; preds = %for.inc65.for.end68_crit_edge, %do.end10.for.end68_crit_edge
  %nfree = getelementptr inbounds %struct.dmap, ptr %dp, i32 0, i32 1
  %32 = ptrtoint ptr %nfree to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nfree, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %add.i = add i32 %34, %nblocks
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %36 = ptrtoint ptr %nfree to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %nfree, align 4
  %db_bmaplock = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %db_bmaplock, i32 noundef 0) #10
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 11
  %37 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dn_agl2size, align 4
  %sh_prom = zext i32 %38 to i64
  %shr69 = ashr i64 %blkno, %sh_prom
  %conv70 = trunc i64 %shr69 to i32
  %conv71 = sext i32 %nblocks to i64
  %dn_nfree = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 1
  %39 = ptrtoint ptr %dn_nfree to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dn_nfree, align 8
  %add73 = add i64 %40, %conv71
  store i64 %add73, ptr %dn_nfree, align 8
  %arrayidx76 = getelementptr %struct.dbmap, ptr %bmp, i32 0, i32 12, i32 %conv70
  %41 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx76, align 8
  %add77 = add i64 %42, %conv71
  store i64 %add77, ptr %arrayidx76, align 8
  %dn_agsize = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 13
  %43 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dn_agsize, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add77, i64 %44)
  %cmp82 = icmp eq i64 %add77, %44
  br i1 %cmp82, label %land.lhs.true, label %for.end68.lor.lhs.false_crit_edge

for.end68.lor.lhs.false_crit_edge:                ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end68
  %dn_maxag = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 5
  %45 = ptrtoint ptr %dn_maxag to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dn_maxag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv70)
  %cmp85 = icmp eq i32 %46, %conv70
  br i1 %cmp85, label %land.lhs.true.if.then99_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true.if.then99_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then99

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %for.end68.lor.lhs.false_crit_edge
  %dn_numag = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 3
  %47 = ptrtoint ptr %dn_numag to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dn_numag, align 4
  %sub88 = add i32 %48, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub88, i32 %conv70)
  %cmp89 = icmp eq i32 %sub88, %conv70
  br i1 %cmp89, label %land.lhs.true91, label %lor.lhs.false.if.end129_crit_edge

lor.lhs.false.if.end129_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

land.lhs.true91:                                  ; preds = %lor.lhs.false
  %49 = ptrtoint ptr %bmp to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bmp, align 8
  %and96 = and i64 %50, 8191
  call void @__sanitizer_cov_trace_cmp8(i64 %add77, i64 %and96)
  %cmp97 = icmp eq i64 %add77, %and96
  br i1 %cmp97, label %land.lhs.true91.if.then99_crit_edge, label %land.lhs.true91.if.end129_crit_edge

land.lhs.true91.if.end129_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

land.lhs.true91.if.then99_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then99

if.then99:                                        ; preds = %land.lhs.true91.if.then99_crit_edge, %land.lhs.true.if.then99_crit_edge
  %dn_maxag101 = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 5
  %51 = ptrtoint ptr %dn_maxag101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %dn_maxag101, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then99
  %52 = phi i32 [ %sub106, %while.body.while.cond_crit_edge ], [ %.pr, %if.then99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp102 = icmp sgt i32 %52, 0
  br i1 %cmp102, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %sub106 = add nsw i32 %52, -1
  %53 = ptrtoint ptr %dn_maxag101 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub106, ptr %dn_maxag101, align 4
  %arrayidx111 = getelementptr %struct.dbmap, ptr %bmp, i32 0, i32 12, i32 %sub106
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx111, align 8
  %cmp114.not = icmp eq i64 %55, %44
  br i1 %cmp114.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %dn_agpref = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 6
  %56 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dn_agpref, align 8
  %58 = ptrtoint ptr %dn_maxag101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dn_maxag101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp121 = icmp sgt i32 %57, %59
  br i1 %cmp121, label %if.then123, label %while.end.if.end129_crit_edge

while.end.if.end129_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then123:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %dn_agpref to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %dn_agpref, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then123, %while.end.if.end129_crit_edge, %land.lhs.true91.if.end129_crit_edge, %lor.lhs.false.if.end129_crit_edge
  tail call void @mutex_unlock(ptr noundef %db_bmaplock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %cntlz.exit.cleanup_crit_edge, %dbMaxBud.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end129 ], [ %call56, %cntlz.exit.cleanup_crit_edge ], [ %call26, %dbMaxBud.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbSplit(ptr nocapture noundef %tp, i32 noundef %leafno, i32 noundef %splitsz, i32 noundef %newval) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stree = getelementptr inbounds %struct.dmapctl, ptr %tp, i32 0, i32 5
  %leafidx = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 2
  %0 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leafidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %stree, i32 %2
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %leafno
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %budmin = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 4
  %5 = ptrtoint ptr %budmin to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %budmin, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp sgt i8 %4, %6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %splitsz)
  %cmp8.not50.not = icmp sgt i32 %conv, %splitsz
  br i1 %cmp8.not50.not, label %while.body.lr.ph, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.lr.ph:                                 ; preds = %if.then
  %sub = add nsw i32 %conv, -1
  %conv1 = sext i8 %6 to i32
  %sub7 = sub nsw i32 %sub, %conv1
  %shl = shl nuw i32 1, %sub7
  %height.i = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %dbAdjTree.exit.while.body_crit_edge, %while.body.lr.ph
  %cursz.052 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub10, %dbAdjTree.exit.while.body_crit_edge ]
  %budsz.051 = phi i32 [ %shl, %while.body.lr.ph ], [ %shr, %dbAdjTree.exit.while.body_crit_edge ]
  %xor = xor i32 %budsz.051, %leafno
  %7 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leafidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %add.i = add i32 %9, %xor
  %arrayidx.i = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = sext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cursz.052, i32 %conv.i)
  %cmp.i = icmp eq i32 %cursz.052, %conv.i
  br i1 %cmp.i, label %while.body.dbAdjTree.exit_crit_edge, label %if.end.i

while.body.dbAdjTree.exit_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit

if.end.i:                                         ; preds = %while.body
  %conv2.i = trunc i32 %cursz.052 to i8
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp540.not.i = icmp eq i32 %14, 0
  br i1 %cmp540.not.i, label %if.end.i.dbAdjTree.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.dbAdjTree.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %k.042.i = phi i32 [ %inc.i, %if.end18.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %lp.041.i = phi i32 [ %shr.i, %if.end18.i.for.body.i_crit_edge ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %sub.i = add i32 %lp.041.i, -1
  %and.i = and i32 %sub.i, -4
  %add7.i = or i32 %and.i, 1
  %shr.i = ashr i32 %sub.i, 2
  %arrayidx10.i = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add7.i
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx10.i, i32 2
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i, align 1
  %add.ptr1.i.i = getelementptr i8, ptr %arrayidx10.i, i32 3
  %17 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr1.i.i, align 1
  %19 = tail call i8 @llvm.smax.i8(i8 %16, i8 %18) #10
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx10.i, align 1
  %add.ptr7.i.i = getelementptr i8, ptr %arrayidx10.i, i32 1
  %22 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr7.i.i, align 1
  %24 = tail call i8 @llvm.smax.i8(i8 %21, i8 %23) #10
  %25 = tail call i8 @llvm.smax.i8(i8 %19, i8 %24) #10
  %arrayidx13.i = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %shr.i
  %26 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %25)
  %cmp15.i = icmp eq i8 %27, %25
  br i1 %cmp15.i, label %for.body.i.dbAdjTree.exit_crit_edge, label %if.end18.i

for.body.i.dbAdjTree.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit

if.end18.i:                                       ; preds = %for.body.i
  %28 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %arrayidx13.i, align 1
  %inc.i = add nuw i32 %k.042.i, 1
  %29 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %cmp5.i = icmp ult i32 %inc.i, %31
  br i1 %cmp5.i, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.dbAdjTree.exit_crit_edge

if.end18.i.dbAdjTree.exit_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

dbAdjTree.exit:                                   ; preds = %if.end18.i.dbAdjTree.exit_crit_edge, %for.body.i.dbAdjTree.exit_crit_edge, %if.end.i.dbAdjTree.exit_crit_edge, %while.body.dbAdjTree.exit_crit_edge
  %sub10 = add i32 %cursz.052, -1
  %shr = ashr i32 %budsz.051, 1
  %cmp8.not = icmp slt i32 %sub10, %splitsz
  br i1 %cmp8.not, label %dbAdjTree.exit.if.end_crit_edge, label %dbAdjTree.exit.while.body_crit_edge

dbAdjTree.exit.while.body_crit_edge:              ; preds = %dbAdjTree.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

dbAdjTree.exit.if.end_crit_edge:                  ; preds = %dbAdjTree.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %dbAdjTree.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %32 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %leafidx, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %add.i25 = add i32 %34, %leafno
  %arrayidx.i26 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add.i25
  %35 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i26, align 1
  %conv.i27 = sext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i27, i32 %newval)
  %cmp.i28 = icmp eq i32 %conv.i27, %newval
  br i1 %cmp.i28, label %if.end.dbAdjTree.exit49_crit_edge, label %if.end.i32

if.end.dbAdjTree.exit49_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit49

if.end.i32:                                       ; preds = %if.end
  %conv2.i29 = trunc i32 %newval to i8
  %37 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv2.i29, ptr %arrayidx.i26, align 1
  %height.i30 = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 3
  %38 = ptrtoint ptr %height.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp540.not.i31 = icmp eq i32 %39, 0
  br i1 %cmp540.not.i31, label %if.end.i32.dbAdjTree.exit49_crit_edge, label %if.end.i32.for.body.i45_crit_edge

if.end.i32.for.body.i45_crit_edge:                ; preds = %if.end.i32
  br label %for.body.i45

if.end.i32.dbAdjTree.exit49_crit_edge:            ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit49

for.body.i45:                                     ; preds = %if.end18.i48.for.body.i45_crit_edge, %if.end.i32.for.body.i45_crit_edge
  %k.042.i33 = phi i32 [ %inc.i46, %if.end18.i48.for.body.i45_crit_edge ], [ 0, %if.end.i32.for.body.i45_crit_edge ]
  %lp.041.i34 = phi i32 [ %shr.i38, %if.end18.i48.for.body.i45_crit_edge ], [ %add.i25, %if.end.i32.for.body.i45_crit_edge ]
  %sub.i35 = add i32 %lp.041.i34, -1
  %and.i36 = and i32 %sub.i35, -4
  %add7.i37 = or i32 %and.i36, 1
  %shr.i38 = ashr i32 %sub.i35, 2
  %arrayidx10.i39 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add7.i37
  %add.ptr.i.i40 = getelementptr i8, ptr %arrayidx10.i39, i32 2
  %40 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i.i40, align 1
  %add.ptr1.i.i41 = getelementptr i8, ptr %arrayidx10.i39, i32 3
  %42 = ptrtoint ptr %add.ptr1.i.i41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr1.i.i41, align 1
  %44 = tail call i8 @llvm.smax.i8(i8 %41, i8 %43) #10
  %45 = ptrtoint ptr %arrayidx10.i39 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx10.i39, align 1
  %add.ptr7.i.i42 = getelementptr i8, ptr %arrayidx10.i39, i32 1
  %47 = ptrtoint ptr %add.ptr7.i.i42 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr7.i.i42, align 1
  %49 = tail call i8 @llvm.smax.i8(i8 %46, i8 %48) #10
  %50 = tail call i8 @llvm.smax.i8(i8 %44, i8 %49) #10
  %arrayidx13.i43 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %shr.i38
  %51 = ptrtoint ptr %arrayidx13.i43 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx13.i43, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %50)
  %cmp15.i44 = icmp eq i8 %52, %50
  br i1 %cmp15.i44, label %for.body.i45.dbAdjTree.exit49_crit_edge, label %if.end18.i48

for.body.i45.dbAdjTree.exit49_crit_edge:          ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit49

if.end18.i48:                                     ; preds = %for.body.i45
  %53 = ptrtoint ptr %arrayidx13.i43 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %50, ptr %arrayidx13.i43, align 1
  %inc.i46 = add nuw i32 %k.042.i33, 1
  %54 = ptrtoint ptr %height.i30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i30, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  %cmp5.i47 = icmp ult i32 %inc.i46, %56
  br i1 %cmp5.i47, label %if.end18.i48.for.body.i45_crit_edge, label %if.end18.i48.dbAdjTree.exit49_crit_edge

if.end18.i48.dbAdjTree.exit49_crit_edge:          ; preds = %if.end18.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %dbAdjTree.exit49

if.end18.i48.for.body.i45_crit_edge:              ; preds = %if.end18.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45

dbAdjTree.exit49:                                 ; preds = %if.end18.i48.dbAdjTree.exit49_crit_edge, %for.body.i45.dbAdjTree.exit49_crit_edge, %if.end.i32.dbAdjTree.exit49_crit_edge, %if.end.dbAdjTree.exit49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbBackSplit(ptr nocapture noundef %tp, i32 noundef %leafno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stree = getelementptr inbounds %struct.dmapctl, ptr %tp, i32 0, i32 5
  %leafidx = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 2
  %0 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leafidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %stree, i32 %2
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %leafno
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp eq i8 %4, -1
  br i1 %cmp, label %do.end10, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 2725, ptr noundef nonnull @.str.33) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2725, 0\0A.popsection", ""() #10, !srcloc !171
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leafno)
  %cmp11 = icmp eq i32 %leafno, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %l2nleafs = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 1
  %5 = ptrtoint ptr %l2nleafs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l2nleafs, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  br label %cond.end

cond.false:                                       ; preds = %do.end10
  %and4.i = and i32 %leafno, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not5.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not5.i, label %cond.false.for.inc.i_crit_edge, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false.for.inc.i_crit_edge:                   ; preds = %cond.false
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %cond.false.for.inc.i_crit_edge
  %n.07.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %cond.false.for.inc.i_crit_edge ]
  %word.addr.06.i = phi i32 [ %shr.i, %for.inc.i.for.inc.i_crit_edge ], [ %leafno, %cond.false.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.07.i, 1
  %shr.i = lshr i32 %word.addr.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n.07.i)
  %cmp.i = icmp ult i32 %n.07.i, 31
  %8 = and i32 %word.addr.06.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.inc.i_crit_edge, label %for.inc.i.cond.end_crit_edge

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cond.end:                                         ; preds = %for.inc.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false.cond.end_crit_edge ], [ %inc.i, %for.inc.i.cond.end_crit_edge ]
  %budmin = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 4
  %9 = ptrtoint ptr %budmin to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %budmin, align 4
  %conv14 = sext i8 %10 to i32
  %add = add i32 %cond, %conv14
  %shl = shl nuw i32 1, %cond
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp19107 = icmp eq i8 %12, -1
  br i1 %cmp19107, label %cond.end.for.cond.preheader_crit_edge, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cond.end.for.cond.preheader_crit_edge:            ; preds = %cond.end
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then41.for.cond.preheader_crit_edge, %cond.end.for.cond.preheader_crit_edge
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tp, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %15)
  %cmp21.not104 = icmp ult i32 %shl, %15
  br i1 %cmp21.not104, label %for.cond.preheader.if.end36_crit_edge, label %for.cond.preheader.do.body24_crit_edge

for.cond.preheader.do.body24_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

for.cond.preheader.if.end36_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end36

do.body24:                                        ; preds = %for.inc.do.body24_crit_edge, %for.cond.preheader.do.body24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %16 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25 = icmp sgt i32 %16, 0
  br i1 %cmp25, label %do.body24.cleanup.sink.split_crit_edge, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body24.cleanup.sink.split_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end36:                                         ; preds = %for.inc.if.end36_crit_edge, %for.cond.preheader.if.end36_crit_edge
  %bsz.0106 = phi i32 [ %shl46, %for.inc.if.end36_crit_edge ], [ %shl, %for.cond.preheader.if.end36_crit_edge ]
  %w.0105 = phi i32 [ %21, %for.inc.if.end36_crit_edge ], [ %leafno, %for.cond.preheader.if.end36_crit_edge ]
  %xor = xor i32 %bsz.0106, %w.0105
  %arrayidx37 = getelementptr i8, ptr %add.ptr, i32 %xor
  %17 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp39.not = icmp eq i8 %18, -1
  br i1 %cmp39.not, label %for.inc, label %if.then41

if.then41:                                        ; preds = %if.end36
  %conv38 = sext i8 %18 to i32
  %sub44 = add nsw i32 %conv38, -1
  tail call fastcc void @dbSplit(ptr noundef %tp, i32 noundef %xor, i32 noundef %sub44, i32 noundef %sub44)
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %cmp19 = icmp eq i8 %20, -1
  br i1 %cmp19, label %if.then41.for.cond.preheader_crit_edge, label %if.then41.while.end_crit_edge

if.then41.while.end_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then41.for.cond.preheader_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.inc:                                          ; preds = %if.end36
  %shl46 = shl i32 %bsz.0106, 1
  %21 = tail call i32 @llvm.smin.i32(i32 %w.0105, i32 %xor)
  %cmp21.not = icmp ult i32 %shl46, %15
  br i1 %cmp21.not, label %for.inc.if.end36_crit_edge, label %for.inc.do.body24_crit_edge

for.inc.do.body24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

for.inc.if.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

while.end:                                        ; preds = %if.then41.while.end_crit_edge, %cond.end.while.end_crit_edge
  %.lcssa102 = phi i8 [ %12, %cond.end.while.end_crit_edge ], [ %20, %if.then41.while.end_crit_edge ]
  %conv18 = sext i8 %.lcssa102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv18)
  %cmp55.not = icmp eq i32 %add, %conv18
  br i1 %cmp55.not, label %while.end.cleanup_crit_edge, label %do.body58

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body58:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %22 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp59 = icmp sgt i32 %22, 0
  br i1 %cmp59, label %do.body58.cleanup.sink.split_crit_edge, label %do.body58.cleanup_crit_edge

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body58.cleanup.sink.split_crit_edge:           ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body58.cleanup.sink.split_crit_edge, %do.body24.cleanup.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.35, %do.body24.cleanup.sink.split_crit_edge ], [ @.str.38, %do.body58.cleanup.sink.split_crit_edge ]
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.38.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body58.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.body24.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.body24.cleanup_crit_edge ], [ -5, %do.body58.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbJoin(ptr nocapture noundef %tp, i32 noundef %leafno, i32 noundef %newval) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %budmin = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 4
  %0 = ptrtoint ptr %budmin to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %budmin, align 4
  %conv = sext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %newval)
  %cmp.not = icmp sgt i32 %conv, %newval
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry
  %stree = getelementptr inbounds %struct.dmapctl, ptr %tp, i32 0, i32 5
  %leafidx = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 2
  %2 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leafidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add.ptr = getelementptr i8, ptr %stree, i32 %4
  %sub = sub i32 %newval, %conv
  %shl = shl nuw i32 1, %sub
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tp, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %7)
  %cmp4100 = icmp ult i32 %shl, %7
  br i1 %cmp4100, label %while.body.lr.ph, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

while.body.lr.ph:                                 ; preds = %if.then
  %height.i51 = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %budsz.0103 = phi i32 [ %shl, %while.body.lr.ph ], [ %shl20, %if.end19.while.body_crit_edge ]
  %newval.addr.0102 = phi i32 [ %newval, %while.body.lr.ph ], [ %add, %if.end19.while.body_crit_edge ]
  %leafno.addr.0101 = phi i32 [ %leafno, %while.body.lr.ph ], [ %leafno.addr.1, %if.end19.while.body_crit_edge ]
  %xor = xor i32 %budsz.0103, %leafno.addr.0101
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %xor
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv6 = sext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %newval.addr.0102, i32 %conv6)
  %cmp7 = icmp sgt i32 %newval.addr.0102, %conv6
  br i1 %cmp7, label %while.body.if.end21_crit_edge, label %if.end

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %newval.addr.0102, i32 %conv6)
  %cmp12 = icmp slt i32 %newval.addr.0102, %conv6
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %leafno.addr.0101, i32 %xor)
  %cmp16 = icmp slt i32 %leafno.addr.0101, %xor
  %10 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leafidx, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %add.i = add i32 %12, %xor
  %arrayidx.i = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp.i = icmp eq i8 %14, -1
  br i1 %cmp.i, label %if.then18.if.end19_crit_edge, label %if.end.i

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i:                                         ; preds = %if.then18
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %height.i51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp540.not.i = icmp eq i32 %17, 0
  br i1 %cmp540.not.i, label %if.end.i.if.end19_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %k.042.i = phi i32 [ %inc.i, %if.end18.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %lp.041.i = phi i32 [ %shr.i, %if.end18.i.for.body.i_crit_edge ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %sub.i = add i32 %lp.041.i, -1
  %and.i = and i32 %sub.i, -4
  %add7.i = or i32 %and.i, 1
  %shr.i = ashr i32 %sub.i, 2
  %arrayidx10.i = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add7.i
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx10.i, i32 2
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i, align 1
  %add.ptr1.i.i = getelementptr i8, ptr %arrayidx10.i, i32 3
  %20 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr1.i.i, align 1
  %22 = tail call i8 @llvm.smax.i8(i8 %19, i8 %21) #10
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx10.i, align 1
  %add.ptr7.i.i = getelementptr i8, ptr %arrayidx10.i, i32 1
  %25 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr7.i.i, align 1
  %27 = tail call i8 @llvm.smax.i8(i8 %24, i8 %26) #10
  %28 = tail call i8 @llvm.smax.i8(i8 %22, i8 %27) #10
  %arrayidx13.i = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %shr.i
  %29 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %28)
  %cmp15.i = icmp eq i8 %30, %28
  br i1 %cmp15.i, label %for.body.i.if.end19_crit_edge, label %if.end18.i

for.body.i.if.end19_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end18.i:                                       ; preds = %for.body.i
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %arrayidx13.i, align 1
  %inc.i = add nuw i32 %k.042.i, 1
  %32 = ptrtoint ptr %height.i51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height.i51, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %cmp5.i = icmp ult i32 %inc.i, %34
  br i1 %cmp5.i, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.if.end19_crit_edge

if.end18.i.if.end19_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.else:                                          ; preds = %if.end15
  %add.i47 = add i32 %12, %leafno.addr.0101
  %arrayidx.i48 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add.i47
  %35 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.i50 = icmp eq i8 %36, -1
  br i1 %cmp.i50, label %if.else.if.end19_crit_edge, label %if.end.i53

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i53:                                       ; preds = %if.else
  %37 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %arrayidx.i48, align 1
  %38 = ptrtoint ptr %height.i51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp540.not.i52 = icmp eq i32 %39, 0
  br i1 %cmp540.not.i52, label %if.end.i53.if.end19_crit_edge, label %if.end.i53.for.body.i66_crit_edge

if.end.i53.for.body.i66_crit_edge:                ; preds = %if.end.i53
  br label %for.body.i66

if.end.i53.if.end19_crit_edge:                    ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i66:                                     ; preds = %if.end18.i69.for.body.i66_crit_edge, %if.end.i53.for.body.i66_crit_edge
  %k.042.i54 = phi i32 [ %inc.i67, %if.end18.i69.for.body.i66_crit_edge ], [ 0, %if.end.i53.for.body.i66_crit_edge ]
  %lp.041.i55 = phi i32 [ %shr.i59, %if.end18.i69.for.body.i66_crit_edge ], [ %add.i47, %if.end.i53.for.body.i66_crit_edge ]
  %sub.i56 = add i32 %lp.041.i55, -1
  %and.i57 = and i32 %sub.i56, -4
  %add7.i58 = or i32 %and.i57, 1
  %shr.i59 = ashr i32 %sub.i56, 2
  %arrayidx10.i60 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add7.i58
  %add.ptr.i.i61 = getelementptr i8, ptr %arrayidx10.i60, i32 2
  %40 = ptrtoint ptr %add.ptr.i.i61 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i.i61, align 1
  %add.ptr1.i.i62 = getelementptr i8, ptr %arrayidx10.i60, i32 3
  %42 = ptrtoint ptr %add.ptr1.i.i62 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr1.i.i62, align 1
  %44 = tail call i8 @llvm.smax.i8(i8 %41, i8 %43) #10
  %45 = ptrtoint ptr %arrayidx10.i60 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx10.i60, align 1
  %add.ptr7.i.i63 = getelementptr i8, ptr %arrayidx10.i60, i32 1
  %47 = ptrtoint ptr %add.ptr7.i.i63 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr7.i.i63, align 1
  %49 = tail call i8 @llvm.smax.i8(i8 %46, i8 %48) #10
  %50 = tail call i8 @llvm.smax.i8(i8 %44, i8 %49) #10
  %arrayidx13.i64 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %shr.i59
  %51 = ptrtoint ptr %arrayidx13.i64 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx13.i64, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %50)
  %cmp15.i65 = icmp eq i8 %52, %50
  br i1 %cmp15.i65, label %for.body.i66.if.end19_crit_edge, label %if.end18.i69

for.body.i66.if.end19_crit_edge:                  ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end18.i69:                                     ; preds = %for.body.i66
  %53 = ptrtoint ptr %arrayidx13.i64 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %50, ptr %arrayidx13.i64, align 1
  %inc.i67 = add nuw i32 %k.042.i54, 1
  %54 = ptrtoint ptr %height.i51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i51, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  %cmp5.i68 = icmp ult i32 %inc.i67, %56
  br i1 %cmp5.i68, label %if.end18.i69.for.body.i66_crit_edge, label %if.end18.i69.if.end19_crit_edge

if.end18.i69.if.end19_crit_edge:                  ; preds = %if.end18.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end18.i69.for.body.i66_crit_edge:              ; preds = %if.end18.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i66

if.end19:                                         ; preds = %if.end18.i69.if.end19_crit_edge, %for.body.i66.if.end19_crit_edge, %if.end.i53.if.end19_crit_edge, %if.else.if.end19_crit_edge, %if.end18.i.if.end19_crit_edge, %for.body.i.if.end19_crit_edge, %if.end.i.if.end19_crit_edge, %if.then18.if.end19_crit_edge
  %leafno.addr.1 = phi i32 [ %leafno.addr.0101, %if.then18.if.end19_crit_edge ], [ %leafno.addr.0101, %if.end.i.if.end19_crit_edge ], [ %xor, %if.else.if.end19_crit_edge ], [ %xor, %if.end.i53.if.end19_crit_edge ], [ %leafno.addr.0101, %for.body.i.if.end19_crit_edge ], [ %leafno.addr.0101, %if.end18.i.if.end19_crit_edge ], [ %xor, %for.body.i66.if.end19_crit_edge ], [ %xor, %if.end18.i69.if.end19_crit_edge ]
  %add = add i32 %newval.addr.0102, 1
  %shl20 = shl i32 %budsz.0103, 1
  %57 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tp, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %cmp4 = icmp ult i32 %shl20, %59
  br i1 %cmp4, label %if.end19.while.body_crit_edge, label %if.end19.if.end21_crit_edge

if.end19.if.end21_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end21:                                         ; preds = %if.end19.if.end21_crit_edge, %while.body.if.end21_crit_edge, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %leafno.addr.2 = phi i32 [ %leafno, %entry.if.end21_crit_edge ], [ %leafno, %if.then.if.end21_crit_edge ], [ %leafno.addr.0101, %while.body.if.end21_crit_edge ], [ %leafno.addr.1, %if.end19.if.end21_crit_edge ]
  %newval.addr.1 = phi i32 [ %newval, %entry.if.end21_crit_edge ], [ %newval, %if.then.if.end21_crit_edge ], [ %newval.addr.0102, %while.body.if.end21_crit_edge ], [ %add, %if.end19.if.end21_crit_edge ]
  %leafidx.i71 = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 2
  %60 = ptrtoint ptr %leafidx.i71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %leafidx.i71, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %add.i72 = add i32 %62, %leafno.addr.2
  %arrayidx.i73 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add.i72
  %63 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i73, align 1
  %conv.i74 = sext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %newval.addr.1, i32 %conv.i74)
  %cmp.i75 = icmp eq i32 %newval.addr.1, %conv.i74
  br i1 %cmp.i75, label %if.end21.cleanup_crit_edge, label %if.end.i78

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i78:                                       ; preds = %if.end21
  %conv2.i = trunc i32 %newval.addr.1 to i8
  %65 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv2.i, ptr %arrayidx.i73, align 1
  %height.i76 = getelementptr inbounds %struct.dmaptree, ptr %tp, i32 0, i32 3
  %66 = ptrtoint ptr %height.i76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp540.not.i77 = icmp eq i32 %67, 0
  br i1 %cmp540.not.i77, label %if.end.i78.cleanup_crit_edge, label %if.end.i78.for.body.i91_crit_edge

if.end.i78.for.body.i91_crit_edge:                ; preds = %if.end.i78
  br label %for.body.i91

if.end.i78.cleanup_crit_edge:                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i91:                                     ; preds = %if.end18.i94.for.body.i91_crit_edge, %if.end.i78.for.body.i91_crit_edge
  %k.042.i79 = phi i32 [ %inc.i92, %if.end18.i94.for.body.i91_crit_edge ], [ 0, %if.end.i78.for.body.i91_crit_edge ]
  %lp.041.i80 = phi i32 [ %shr.i84, %if.end18.i94.for.body.i91_crit_edge ], [ %add.i72, %if.end.i78.for.body.i91_crit_edge ]
  %sub.i81 = add i32 %lp.041.i80, -1
  %and.i82 = and i32 %sub.i81, -4
  %add7.i83 = or i32 %and.i82, 1
  %shr.i84 = ashr i32 %sub.i81, 2
  %arrayidx10.i85 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %add7.i83
  %add.ptr.i.i86 = getelementptr i8, ptr %arrayidx10.i85, i32 2
  %68 = ptrtoint ptr %add.ptr.i.i86 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr.i.i86, align 1
  %add.ptr1.i.i87 = getelementptr i8, ptr %arrayidx10.i85, i32 3
  %70 = ptrtoint ptr %add.ptr1.i.i87 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr1.i.i87, align 1
  %72 = tail call i8 @llvm.smax.i8(i8 %69, i8 %71) #10
  %73 = ptrtoint ptr %arrayidx10.i85 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx10.i85, align 1
  %add.ptr7.i.i88 = getelementptr i8, ptr %arrayidx10.i85, i32 1
  %75 = ptrtoint ptr %add.ptr7.i.i88 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr7.i.i88, align 1
  %77 = tail call i8 @llvm.smax.i8(i8 %74, i8 %76) #10
  %78 = tail call i8 @llvm.smax.i8(i8 %72, i8 %77) #10
  %arrayidx13.i89 = getelementptr %struct.dmapctl, ptr %tp, i32 0, i32 5, i32 %shr.i84
  %79 = ptrtoint ptr %arrayidx13.i89 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx13.i89, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %78)
  %cmp15.i90 = icmp eq i8 %80, %78
  br i1 %cmp15.i90, label %for.body.i91.cleanup_crit_edge, label %if.end18.i94

for.body.i91.cleanup_crit_edge:                   ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18.i94:                                     ; preds = %for.body.i91
  %81 = ptrtoint ptr %arrayidx13.i89 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %78, ptr %arrayidx13.i89, align 1
  %inc.i92 = add nuw i32 %k.042.i79, 1
  %82 = ptrtoint ptr %height.i76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height.i76, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %cmp5.i93 = icmp ult i32 %inc.i92, %84
  br i1 %cmp5.i93, label %if.end18.i94.for.body.i91_crit_edge, label %if.end18.i94.cleanup_crit_edge

if.end18.i94.cleanup_crit_edge:                   ; preds = %if.end18.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18.i94.for.body.i91_crit_edge:              ; preds = %if.end18.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i91

cleanup:                                          ; preds = %if.end18.i94.cleanup_crit_edge, %for.body.i91.cleanup_crit_edge, %if.end.i78.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end.i78.cleanup_crit_edge ], [ 0, %for.body.i91.cleanup_crit_edge ], [ 0, %if.end18.i94.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbAllocCtl(ptr noundef %bmp, i64 noundef %nblocks, i32 noundef %l2nb, i64 noundef %blkno, ptr nocapture noundef writeonly %results) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %l2nb)
  %cmp = icmp slt i32 %l2nb, 14
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %0 = lshr i64 %blkno, 13
  %1 = lshr i64 %blkno, 23
  %shr2 = ashr i64 %blkno, 33
  %add = add nuw nsw i64 %1, 4
  %add3 = add nuw nsw i64 %add, %0
  %add5 = add nsw i64 %add3, %shr2
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 2
  %2 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %add5, %sh_prom
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  %4 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_ipbmap, align 8
  %conv = trunc i64 %shl to i32
  %call = tail call ptr @__get_metapage(ptr noundef %5, i32 noundef %conv, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp6 = icmp eq ptr %call, null
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.metapage, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %conv9 = trunc i64 %nblocks to i32
  %call10 = tail call fastcc i32 @dbAllocDmapLev(ptr noundef %bmp, ptr noundef %7, i32 noundef %conv9, i32 noundef %l2nb, ptr noundef %results)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flag = getelementptr inbounds %struct.metapage, ptr %call, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call) #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %and = and i64 %blkno, 8191
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp16 = icmp eq i64 %and, 0
  br i1 %cmp16, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks)
  %cmp30201 = icmp sgt i64 %nblocks, 0
  br i1 %cmp30201, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dn_l2nbperpage40 = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 2
  %db_ipbmap43 = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 1865, ptr noundef nonnull @.str.54) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1865, 0\0A.popsection", ""() #10, !srcloc !172
  unreachable

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %for.body.lr.ph
  %n.0204 = phi i64 [ %nblocks, %for.body.lr.ph ], [ %sub, %if.end63.for.body_crit_edge ]
  %b.0202 = phi i64 [ %blkno, %for.body.lr.ph ], [ %add66, %if.end63.for.body_crit_edge ]
  %8 = lshr i64 %b.0202, 13
  %9 = lshr i64 %b.0202, 23
  %shr35 = ashr i64 %b.0202, 33
  %add34 = add nuw nsw i64 %9, 4
  %add36 = add nuw nsw i64 %add34, %8
  %add38 = add nsw i64 %add36, %shr35
  %10 = ptrtoint ptr %dn_l2nbperpage40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dn_l2nbperpage40, align 8
  %sh_prom41 = zext i32 %11 to i64
  %shl42 = shl i64 %add38, %sh_prom41
  %12 = ptrtoint ptr %db_ipbmap43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %db_ipbmap43, align 8
  %conv44 = trunc i64 %shl42 to i32
  %call45 = tail call ptr @__get_metapage(ptr noundef %13, i32 noundef %conv44, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %for.body.backout_crit_edge, label %if.end49

for.body.backout_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %backout

if.end49:                                         ; preds = %for.body
  %data50 = getelementptr inbounds %struct.metapage, ptr %call45, i32 0, i32 7
  %14 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data50, align 4
  %stree = getelementptr inbounds %struct.dmap, ptr %15, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stree, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %17)
  %cmp52.not = icmp eq i8 %17, 13
  br i1 %cmp52.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_metapage(ptr noundef nonnull %call45) #10
  %18 = ptrtoint ptr %db_ipbmap43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_ipbmap43, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %21, ptr noundef nonnull @.str.55) #10
  br label %backout

if.end56:                                         ; preds = %if.end49
  %22 = tail call i64 @llvm.umin.i64(i64 %n.0204, i64 8192)
  %23 = trunc i64 %22 to i32
  tail call fastcc void @dbAllocBits(ptr noundef %bmp, ptr noundef %15, i64 noundef %b.0202, i32 noundef %23) #10
  %24 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stree, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %25)
  %cmp.i = icmp eq i8 %25, 13
  br i1 %cmp.i, label %if.end56.if.end63_crit_edge, label %if.end.i

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.end.i:                                         ; preds = %if.end56
  %conv.i = sext i8 %25 to i32
  %call.i = tail call fastcc i32 @dbAdjCtl(ptr noundef %bmp, i64 noundef %b.0202, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end63_crit_edge, label %if.then62

if.end.i.if.end63_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then62:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = trunc i64 %22 to i32
  %call11.i = tail call fastcc i32 @dbFreeBits(ptr noundef %bmp, ptr noundef %15, i64 noundef %b.0202, i32 noundef %26) #10
  tail call void @release_metapage(ptr noundef nonnull %call45) #10
  br label %backout

if.end63:                                         ; preds = %if.end.i.if.end63_crit_edge, %if.end56.if.end63_crit_edge
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call45, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #10
  tail call void @release_metapage(ptr noundef nonnull %call45) #10
  %sub = sub nsw i64 %n.0204, %22
  %add66 = add i64 %22, %b.0202
  %cmp30 = icmp sgt i64 %sub, 0
  br i1 %cmp30, label %if.end63.for.body_crit_edge, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end63.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = ptrtoint ptr %results to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %blkno, ptr %results, align 8
  br label %cleanup

backout:                                          ; preds = %if.then62, %if.then54, %for.body.backout_crit_edge
  %rc.0 = phi i32 [ -5, %if.then54 ], [ %call.i, %if.then62 ], [ -5, %for.body.backout_crit_edge ]
  %sub67 = sub i64 %nblocks, %n.0204
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub67)
  %cmp69206 = icmp sgt i64 %sub67, 0
  br i1 %cmp69206, label %backout.for.body71_crit_edge, label %backout.cleanup_crit_edge

backout.cleanup_crit_edge:                        ; preds = %backout
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

backout.for.body71_crit_edge:                     ; preds = %backout
  br label %for.body71

for.body71:                                       ; preds = %for.inc99.for.body71_crit_edge, %backout.for.body71_crit_edge
  %n.1211 = phi i64 [ %sub100, %for.inc99.for.body71_crit_edge ], [ %sub67, %backout.for.body71_crit_edge ]
  %b.1207 = phi i64 [ %add101, %for.inc99.for.body71_crit_edge ], [ %blkno, %backout.for.body71_crit_edge ]
  %28 = lshr i64 %b.1207, 13
  %29 = lshr i64 %b.1207, 23
  %shr75 = ashr i64 %b.1207, 33
  %add74 = add nuw nsw i64 %29, 4
  %add76 = add nuw nsw i64 %add74, %28
  %add78 = add nsw i64 %add76, %shr75
  %30 = ptrtoint ptr %dn_l2nbperpage40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dn_l2nbperpage40, align 8
  %sh_prom81 = zext i32 %31 to i64
  %shl82 = shl i64 %add78, %sh_prom81
  %32 = ptrtoint ptr %db_ipbmap43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %db_ipbmap43, align 8
  %conv84 = trunc i64 %shl82 to i32
  %call85 = tail call ptr @__get_metapage(ptr noundef %33, i32 noundef %conv84, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp86 = icmp eq ptr %call85, null
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %db_ipbmap43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db_ipbmap43, align 8
  %i_sb90 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb90, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %37, ptr noundef nonnull @.str.56) #10
  br label %for.inc99

if.end91:                                         ; preds = %for.body71
  %data92 = getelementptr inbounds %struct.metapage, ptr %call85, i32 0, i32 7
  %38 = ptrtoint ptr %data92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data92, align 4
  %tree.i = getelementptr inbounds %struct.dmap, ptr %39, i32 0, i32 3
  %stree.i167 = getelementptr inbounds %struct.dmap, ptr %39, i32 0, i32 3, i32 5
  %40 = ptrtoint ptr %stree.i167 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %stree.i167, align 1
  %call.i168 = tail call fastcc i32 @dbFreeBits(ptr noundef %bmp, ptr noundef %39, i64 noundef %b.1207, i32 noundef 8192) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %lor.lhs.false.i, label %if.end91.if.then95_crit_edge

if.end91.if.then95_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then95

lor.lhs.false.i:                                  ; preds = %if.end91
  %42 = ptrtoint ptr %stree.i167 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stree.i167, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %41)
  %cmp.i170 = icmp eq i8 %43, %41
  br i1 %cmp.i170, label %lor.lhs.false.i.if.end98_crit_edge, label %if.end.i172

lor.lhs.false.i.if.end98_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end.i172:                                      ; preds = %lor.lhs.false.i
  %conv.i171 = sext i8 %43 to i32
  %call10.i = tail call fastcc i32 @dbAdjCtl(ptr noundef %bmp, i64 noundef %b.1207, i32 noundef %conv.i171, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end.i172.if.end98_crit_edge, label %if.then12.i

if.end.i172.if.end98_crit_edge:                   ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then12.i:                                      ; preds = %if.end.i172
  %44 = trunc i64 %b.1207 to i32
  %45 = lshr i32 %44, 5
  %conv13.i = and i32 %45, 255
  %arrayidx16.i = getelementptr %struct.dmap, ptr %39, i32 0, i32 3, i32 5, i32 %conv13.i
  %46 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp18.i = icmp eq i8 %47, -1
  br i1 %cmp18.i, label %if.then20.i, label %if.then12.i.if.end23.i_crit_edge

if.then12.i.if.end23.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i = tail call fastcc i32 @dbBackSplit(ptr noundef %tree.i, i32 noundef %conv13.i) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then12.i.if.end23.i_crit_edge
  tail call fastcc void @dbAllocBits(ptr noundef %bmp, ptr noundef %39, i64 noundef %b.1207, i32 noundef 8192) #10
  br label %if.then95

if.then95:                                        ; preds = %if.end23.i, %if.end91.if.then95_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call85) #10
  %48 = ptrtoint ptr %db_ipbmap43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %db_ipbmap43, align 8
  %i_sb97 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %i_sb97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb97, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %51, ptr noundef nonnull @.str.57) #10
  br label %for.inc99

if.end98:                                         ; preds = %if.end.i172.if.end98_crit_edge, %lor.lhs.false.i.if.end98_crit_edge
  %flag.i174 = getelementptr inbounds %struct.metapage, ptr %call85, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i174) #10
  tail call void @release_metapage(ptr noundef nonnull %call85) #10
  br label %for.inc99

for.inc99:                                        ; preds = %if.end98, %if.then95, %if.then88
  %sub100 = add nsw i64 %n.1211, -8192
  %add101 = add i64 %b.1207, 8192
  %cmp69 = icmp sgt i64 %n.1211, 8192
  br i1 %cmp69, label %for.inc99.for.body71_crit_edge, label %for.inc99.cleanup_crit_edge

for.inc99.cleanup_crit_edge:                      ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc99.for.body71_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body71

cleanup:                                          ; preds = %for.inc99.cleanup_crit_edge, %backout.cleanup_crit_edge, %for.end, %if.end14, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end14 ], [ 0, %for.end ], [ -5, %if.then.cleanup_crit_edge ], [ %rc.0, %backout.cleanup_crit_edge ], [ %rc.0, %for.inc99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbFindCtl(ptr nocapture noundef readonly %bmp, i32 noundef %l2nb, i32 noundef %level, ptr nocapture noundef %blkno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %level)
  %cmp101 = icmp sgt i32 %level, -1
  br i1 %cmp101, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dn_l2nbperpage = getelementptr inbounds %struct.dbmap, ptr %bmp, i32 0, i32 2
  %db_ipbmap = getelementptr inbounds %struct.bmap, ptr %bmp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %b.0103 = phi i64 [ %1, %for.body.lr.ph ], [ %add48, %if.end44.for.body_crit_edge ]
  %lev.0102 = phi i32 [ %level, %for.body.lr.ph ], [ %dec, %if.end44.for.body_crit_edge ]
  %2 = zext i32 %lev.0102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %lev.0102, label %cond.false11 [
    i32 2, label %for.body.cond.end24_crit_edge
    i32 1, label %cond.true3
  ]

for.body.cond.end24_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end24

cond.true3:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %shr = ashr i64 %b.0103, 33
  %add7 = mul nsw i64 %shr, 1049601
  %add9 = add nsw i64 %add7, 2
  br label %cond.end24.sink.split

cond.false11:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = lshr i64 %b.0103, 23
  %add15 = mul nuw nsw i64 %3, 1025
  %shr16 = ashr i64 %b.0103, 33
  %add17 = add nsw i64 %shr16, 3
  %add19 = add nsw i64 %add17, %add15
  br label %cond.end24.sink.split

cond.end24.sink.split:                            ; preds = %cond.false11, %cond.true3
  %add9.sink = phi i64 [ %add9, %cond.true3 ], [ %add19, %cond.false11 ]
  %4 = ptrtoint ptr %dn_l2nbperpage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dn_l2nbperpage, align 8
  %sh_prom = zext i32 %5 to i64
  %shl10 = shl i64 %add9.sink, %sh_prom
  %extract.t = trunc i64 %shl10 to i32
  br label %cond.end24

cond.end24:                                       ; preds = %cond.end24.sink.split, %for.body.cond.end24_crit_edge
  %cond25.off0 = phi i32 [ 1, %for.body.cond.end24_crit_edge ], [ %extract.t, %cond.end24.sink.split ]
  %6 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_ipbmap, align 8
  %call = tail call ptr @__get_metapage(ptr noundef %7, i32 noundef %cond25.off0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %cmp26 = icmp eq ptr %call, null
  br i1 %cmp26, label %cond.end24.cleanup_crit_edge, label %if.end

cond.end24.cleanup_crit_edge:                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  %data = getelementptr inbounds %struct.metapage, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %budmin28 = getelementptr inbounds %struct.dmapctl, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %budmin28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %budmin28, align 4
  %conv29 = sext i8 %11 to i32
  %leafidx30 = getelementptr inbounds %struct.dmapctl, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %leafidx30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leafidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1426128896, i32 %13)
  %cmp31.not = icmp eq i32 %13, 1426128896
  br i1 %cmp31.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db_ipbmap, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %17, ptr noundef nonnull @.str.28) #10
  tail call void @release_metapage(ptr noundef nonnull %call) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %stree.i = getelementptr inbounds %struct.dmapctl, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %stree.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stree.i, align 1
  %conv.i = sext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %l2nb)
  %cmp.i = icmp slt i32 %conv.i, %l2nb
  br i1 %cmp.i, label %if.then37, label %if.end.i

if.end.i:                                         ; preds = %if.end35
  %height.i = getelementptr inbounds %struct.dmaptree, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp253.i = icmp sgt i32 %22, 0
  br i1 %cmp253.i, label %if.end.i.for.cond4.preheader.i_crit_edge, label %if.end.i.if.end44_crit_edge

if.end.i.if.end44_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end.i.for.cond4.preheader.i_crit_edge:         ; preds = %if.end.i
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc28.i.for.cond4.preheader.i_crit_edge, %if.end.i.for.cond4.preheader.i_crit_edge
  %k.055.i = phi i32 [ %dec.i, %for.inc28.i.for.cond4.preheader.i_crit_edge ], [ %22, %if.end.i.for.cond4.preheader.i_crit_edge ]
  %ti.054.i = phi i32 [ %add30.i, %for.inc28.i.for.cond4.preheader.i_crit_edge ], [ 1, %if.end.i.for.cond4.preheader.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.dmapctl, ptr %9, i32 0, i32 5, i32 %ti.054.i
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = sext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i, i32 %l2nb)
  %cmp11.not.i = icmp slt i32 %conv10.i, %l2nb
  br i1 %cmp11.not.i, label %for.inc.i, label %for.cond4.preheader.i.for.inc28.i_crit_edge

for.cond4.preheader.i.for.inc28.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.i:                                        ; preds = %for.cond4.preheader.i
  %add.1.i = add nuw nsw i32 %ti.054.i, 1
  %arrayidx9.1.i = getelementptr %struct.dmapctl, ptr %9, i32 0, i32 5, i32 %add.1.i
  %25 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9.1.i, align 1
  %conv10.1.i = sext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.1.i, i32 %l2nb)
  %cmp11.not.1.i = icmp slt i32 %conv10.1.i, %l2nb
  br i1 %cmp11.not.1.i, label %for.inc.1.i, label %for.inc.i.for.inc28.i_crit_edge

for.inc.i.for.inc28.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %add.2.i = add nuw nsw i32 %ti.054.i, 2
  %arrayidx9.2.i = getelementptr %struct.dmapctl, ptr %9, i32 0, i32 5, i32 %add.2.i
  %27 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx9.2.i, align 1
  %conv10.2.i = sext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.2.i, i32 %l2nb)
  %cmp11.not.2.i = icmp slt i32 %conv10.2.i, %l2nb
  br i1 %cmp11.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.inc28.i_crit_edge

for.inc.1.i.for.inc28.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %add.3.i = add i32 %ti.054.i, 3
  %arrayidx9.3.i = getelementptr %struct.dmapctl, ptr %9, i32 0, i32 5, i32 %add.3.i
  %29 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx9.3.i, align 1
  %conv10.3.i = sext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.3.i, i32 %l2nb)
  %cmp11.not.3.i = icmp slt i32 %conv10.3.i, %l2nb
  br i1 %cmp11.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.inc28.i_crit_edge

for.inc.2.i.for.inc28.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc28.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 2993, ptr noundef nonnull @.str.60) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_dmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2993, 0\0A.popsection", ""() #10, !srcloc !162
  unreachable

for.inc28.i:                                      ; preds = %for.inc.2.i.for.inc28.i_crit_edge, %for.inc.1.i.for.inc28.i_crit_edge, %for.inc.i.for.inc28.i_crit_edge, %for.cond4.preheader.i.for.inc28.i_crit_edge
  %n.152.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.inc28.i_crit_edge ], [ 1, %for.inc.i.for.inc28.i_crit_edge ], [ 2, %for.inc.1.i.for.inc28.i_crit_edge ], [ 3, %for.inc.2.i.for.inc28.i_crit_edge ]
  %add.lcssa.i = phi i32 [ %ti.054.i, %for.cond4.preheader.i.for.inc28.i_crit_edge ], [ %add.1.i, %for.inc.i.for.inc28.i_crit_edge ], [ %add.2.i, %for.inc.1.i.for.inc28.i_crit_edge ], [ %add.3.i, %for.inc.2.i.for.inc28.i_crit_edge ]
  %dec.i = add nsw i32 %k.055.i, -1
  %shl.i = shl i32 %add.lcssa.i, 2
  %add30.i = or i32 %shl.i, 1
  %cmp2.i = icmp sgt i32 %k.055.i, 1
  br i1 %cmp2.i, label %for.inc28.i.for.cond4.preheader.i_crit_edge, label %for.end31.loopexit.i

for.inc28.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.end31.loopexit.i:                             ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = add i32 %n.152.lcssa.i, %ti.054.i
  br label %if.end44

if.then37:                                        ; preds = %if.end35
  tail call void @release_metapage(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %lev.0102, i32 %level)
  %cmp38.not = icmp eq i32 %lev.0102, %level
  br i1 %cmp38.not, label %if.then37.cleanup_crit_edge, label %if.then40

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %db_ipbmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %db_ipbmap, align 8
  %i_sb42 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb42, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %35, ptr noundef nonnull @.str.58) #10
  br label %cleanup

if.end44:                                         ; preds = %for.end31.loopexit.i, %if.end.i.if.end44_crit_edge
  %add32.i = phi i32 [ %31, %for.end31.loopexit.i ], [ 0, %if.end.i.if.end44_crit_edge ]
  %36 = ptrtoint ptr %leafidx30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %leafidx30, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %sub.i = sub i32 %add32.i, %38
  tail call void @release_metapage(ptr noundef nonnull %call) #10
  %conv45 = sext i32 %sub.i to i64
  %sh_prom46 = zext i32 %conv29 to i64
  %shl47 = shl i64 %conv45, %sh_prom46
  %add48 = add i64 %shl47, %b.0103
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %l2nb)
  %cmp49.not = icmp sgt i32 %conv29, %l2nb
  %dec = add nsw i32 %lev.0102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lev.0102)
  %cmp = icmp sgt i32 %lev.0102, 0
  %or.cond = select i1 %cmp49.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end44.for.body_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %entry.for.end_crit_edge
  %b.1 = phi i64 [ %1, %entry.for.end_crit_edge ], [ %add48, %if.end44.for.end_crit_edge ]
  %39 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %b.1, ptr %blkno, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then40, %if.then37.cleanup_crit_edge, %if.then33, %cond.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then33 ], [ -5, %if.then40 ], [ 0, %for.end ], [ -28, %if.then37.cleanup_crit_edge ], [ -5, %cond.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbInitTree(ptr nocapture noundef %dtp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stree = getelementptr inbounds %struct.dmaptree, ptr %dtp, i32 0, i32 5
  %l2nleafs = getelementptr inbounds %struct.dmaptree, ptr %dtp, i32 0, i32 1
  %0 = ptrtoint ptr %l2nleafs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l2nleafs, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %budmin = getelementptr inbounds %struct.dmaptree, ptr %dtp, i32 0, i32 4
  %3 = ptrtoint ptr %budmin to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %budmin, align 4
  %conv = sext i8 %4 to i32
  %add = add i32 %2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp78 = icmp sgt i32 %add, %conv
  br i1 %cmp78, label %for.body.lr.ph, label %entry.for.end21_crit_edge

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %leafidx = getelementptr inbounds %struct.dmaptree, ptr %dtp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %for.body.lr.ph
  %bsize.081 = phi i32 [ 1, %for.body.lr.ph ], [ %shl, %for.inc20.for.body_crit_edge ]
  %l2free.079 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc20.for.body_crit_edge ]
  %shl = shl i32 %bsize.081, 1
  %5 = ptrtoint ptr %dtp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp575.not = icmp eq i32 %6, 0
  br i1 %cmp575.not, label %for.body.for.inc20_crit_edge, label %for.body7.lr.ph

for.body.for.inc20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20

for.body7.lr.ph:                                  ; preds = %for.body
  %7 = ptrtoint ptr %leafidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leafidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add.ptr = getelementptr i8, ptr %stree, i32 %9
  %10 = trunc i32 %l2free.079 to i8
  %conv16 = add i8 %10, 1
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %cp.077 = phi ptr [ %add.ptr, %for.body7.lr.ph ], [ %add.ptr19, %for.inc.for.body7_crit_edge ]
  %i.076 = phi i32 [ 0, %for.body7.lr.ph ], [ %add18, %for.inc.for.body7_crit_edge ]
  %11 = ptrtoint ptr %cp.077 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cp.077, align 1
  %conv8 = sext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %l2free.079, i32 %conv8)
  %cmp9 = icmp eq i32 %l2free.079, %conv8
  br i1 %cmp9, label %land.lhs.true, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body7
  %add.ptr11 = getelementptr i8, ptr %cp.077, i32 %bsize.081
  %13 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr11, align 1
  %conv12 = sext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %l2free.079, i32 %conv12)
  %cmp13 = icmp eq i32 %l2free.079, %conv12
  br i1 %cmp13, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %cp.077 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv16, ptr %cp.077, align 1
  %16 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %add.ptr11, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body7.for.inc_crit_edge
  %add18 = add i32 %i.076, %shl
  %add.ptr19 = getelementptr i8, ptr %cp.077, i32 %shl
  %17 = ptrtoint ptr %dtp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dtp, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %cmp5 = icmp ult i32 %add18, %19
  br i1 %cmp5, label %for.inc.for.body7_crit_edge, label %for.inc.for.inc20_crit_edge

for.inc.for.inc20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.inc20:                                        ; preds = %for.inc.for.inc20_crit_edge, %for.body.for.inc20_crit_edge
  %inc = add nsw i32 %l2free.079, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc20.for.end21_crit_edge, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc20.for.end21_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.end21:                                        ; preds = %for.inc20.for.end21_crit_edge, %entry.for.end21_crit_edge
  %20 = ptrtoint ptr %dtp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dtp, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp25.not87 = icmp ult i32 %22, 4
  br i1 %cmp25.not87, label %for.end21.for.end41_crit_edge, label %for.body27.preheader

for.end21.for.end41_crit_edge:                    ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.body27.preheader:                             ; preds = %for.end21
  %leafidx22 = getelementptr inbounds %struct.dmaptree, ptr %dtp, i32 0, i32 2
  %23 = ptrtoint ptr %leafidx22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %leafidx22, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  br label %for.body27

for.cond24.loopexit:                              ; preds = %for.body34
  %cmp25.not = icmp ult i32 %nparent.089.in, 16
  br i1 %cmp25.not, label %for.cond24.loopexit.for.end41_crit_edge, label %for.cond24.loopexit.for.body27_crit_edge

for.cond24.loopexit.for.body27_crit_edge:         ; preds = %for.cond24.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

for.cond24.loopexit.for.end41_crit_edge:          ; preds = %for.cond24.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.body27:                                       ; preds = %for.cond24.loopexit.for.body27_crit_edge, %for.body27.preheader
  %nparent.089.in = phi i32 [ %nparent.089, %for.cond24.loopexit.for.body27_crit_edge ], [ %22, %for.body27.preheader ]
  %child.088 = phi i32 [ %shr28, %for.cond24.loopexit.for.body27_crit_edge ], [ %25, %for.body27.preheader ]
  %nparent.089 = lshr i32 %nparent.089.in, 2
  %sub = add i32 %child.088, -1
  %shr28 = ashr i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nparent.089.in)
  %cmp3282.not = icmp ult i32 %nparent.089.in, 4
  br i1 %cmp3282.not, label %for.body27.for.end41_crit_edge, label %for.body34.preheader

for.body27.for.end41_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.body34.preheader:                             ; preds = %for.body27
  %add.ptr30 = getelementptr i8, ptr %stree, i32 %shr28
  %add.ptr29 = getelementptr i8, ptr %stree, i32 %child.088
  %umax = call i32 @llvm.umax.i32(i32 %nparent.089, i32 1)
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.preheader
  %cp1.085 = phi ptr [ %incdec.ptr, %for.body34.for.body34_crit_edge ], [ %add.ptr30, %for.body34.preheader ]
  %cp.184 = phi ptr [ %add.ptr37, %for.body34.for.body34_crit_edge ], [ %add.ptr29, %for.body34.preheader ]
  %i.183 = phi i32 [ %inc36, %for.body34.for.body34_crit_edge ], [ 0, %for.body34.preheader ]
  %add.ptr.i = getelementptr i8, ptr %cp.184, i32 2
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i, align 1
  %add.ptr1.i = getelementptr i8, ptr %cp.184, i32 3
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr1.i, align 1
  %30 = tail call i8 @llvm.smax.i8(i8 %27, i8 %29) #10
  %31 = ptrtoint ptr %cp.184 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cp.184, align 1
  %add.ptr7.i = getelementptr i8, ptr %cp.184, i32 1
  %33 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr7.i, align 1
  %35 = tail call i8 @llvm.smax.i8(i8 %32, i8 %34) #10
  %36 = tail call i8 @llvm.smax.i8(i8 %30, i8 %35) #10
  %37 = ptrtoint ptr %cp1.085 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %cp1.085, align 1
  %inc36 = add nuw nsw i32 %i.183, 1
  %add.ptr37 = getelementptr i8, ptr %cp.184, i32 4
  %incdec.ptr = getelementptr i8, ptr %cp1.085, i32 1
  %exitcond90.not = icmp eq i32 %inc36, %umax
  br i1 %exitcond90.not, label %for.cond24.loopexit, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34

for.end41:                                        ; preds = %for.body27.for.end41_crit_edge, %for.cond24.loopexit.for.end41_crit_edge, %for.end21.for.end41_crit_edge
  %38 = ptrtoint ptr %stree to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stree, align 1
  %conv42 = sext i8 %39 to i32
  ret i32 %conv42
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @dbMount.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_dmap.c", i32 207, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/jfs/jfs_dmap.c", i32 265, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dbSync._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @dbSync._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/jfs/jfs_dmap.c", i32 333, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dbFree._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @dbFree._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jfs/jfs_dmap.c", i32 336, i32 23}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/jfs/jfs_dmap.c", i32 373, i32 24}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jfs/jfs_dmap.c", i32 427, i32 3}
!20 = !{ptr @dbUpdatePMap._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dbUpdatePMap._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/jfs/jfs_dmap.c", i32 430, i32 27}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jfs/jfs_dmap.c", i32 700, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dbAlloc._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dbAlloc._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/jfs/jfs_dmap.c", i32 714, i32 23}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/jfs/jfs_dmap.c", i32 1633, i32 35}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jfs/jfs_dmap.c", i32 1662, i32 36}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/jfs/jfs_dmap.c", i32 3211, i32 2}
!38 = !{ptr @dbAllocBottomUp._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dbAllocBottomUp._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/jfs/jfs_dmap.c", i32 3392, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dbExtendFS._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dbExtendFS._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/jfs/jfs_dmap.c", i32 3461, i32 27}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/jfs/jfs_dmap.c", i32 3626, i32 26}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/jfs/jfs_dmap.c", i32 3696, i32 7}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jfs/jfs_dmap.c", i32 1045, i32 23}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/jfs/jfs_dmap.c", i32 1121, i32 35}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/jfs/jfs_dmap.c", i32 2182, i32 2}
!58 = !{ptr @dbAllocBits._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dbAllocBits._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/jfs/jfs_dmap.c", i32 2241, i32 9}
!63 = !{ptr @budtab, !64, !"budtab", i1 false, i1 false}
!64 = !{!"../fs/jfs/jfs_dmap.c", i32 117, i32 17}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/jfs/jfs_dmap.c", i32 2514, i32 35}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/jfs/jfs_dmap.c", i32 2616, i32 4}
!69 = !{ptr @dbAdjCtl._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dbAdjCtl._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/jfs/jfs_dmap.c", i32 2619, i32 8}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/jfs/jfs_dmap.c", i32 2725, i32 2}
!76 = !{ptr @dbBackSplit._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @dbBackSplit._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/jfs/jfs_dmap.c", i32 2752, i32 5}
!81 = !{ptr @dbBackSplit._entry.34, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @dbBackSplit._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/jfs/jfs_dmap.c", i32 2774, i32 3}
!85 = !{ptr @dbBackSplit._entry.37, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dbBackSplit._entry_ptr.39, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/jfs/jfs_dmap.c", i32 2327, i32 2}
!89 = !{ptr @dbFreeBits._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dbFreeBits._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/jfs/jfs_dmap.c", i32 3029, i32 2}
!93 = !{ptr @dbFindBits._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dbFindBits._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dbFindBits._entry.43, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../fs/jfs/jfs_dmap.c", i32 3044, i32 2}
!98 = !{ptr @dbFindBits._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/jfs/jfs_dmap.c", i32 1366, i32 6}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/jfs/jfs_dmap.c", i32 1397, i32 4}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dbAllocAG._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dbAllocAG._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/jfs/jfs_dmap.c", i32 1401, i32 7}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/jfs/jfs_dmap.c", i32 1458, i32 8}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/jfs/jfs_dmap.c", i32 1498, i32 9}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/jfs/jfs_dmap.c", i32 1510, i32 7}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/jfs/jfs_dmap.c", i32 1865, i32 2}
!117 = !{ptr @dbAllocCtl._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @dbAllocCtl._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/jfs/jfs_dmap.c", i32 1885, i32 7}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/jfs/jfs_dmap.c", i32 1932, i32 7}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/jfs/jfs_dmap.c", i32 1944, i32 36}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/jfs/jfs_dmap.c", i32 1761, i32 8}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/jfs/jfs_dmap.c", i32 2993, i32 3}
!130 = !{ptr @dbFindLeaf._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @dbFindLeaf._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/jfs/jfs_dmap.c", i32 1991, i32 2}
!135 = !{ptr @dbAllocDmapLev._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dbAllocDmapLev._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/jfs/jfs_dmap.c", i32 3176, i32 2}
!140 = !{ptr @blkstol2._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @blkstol2._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/jfs/jfs_dmap.c", i32 3274, i32 2}
!145 = !{ptr @dbAllocDmapBU._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @dbAllocDmapBU._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"branch_weights", i32 1, i32 2000}
!157 = !{i64 2153980907, i64 2153981389, i64 2153980944, i64 2153981000, i64 2153981034, i64 2153981058, i64 2153981099, i64 2153981120, i64 2153981148, i64 2153981182}
!158 = !{i64 2154057545, i64 2154058028, i64 2154057582, i64 2154057638, i64 2154057672, i64 2154057696, i64 2154057737, i64 2154057758, i64 2154057786, i64 2154057820}
!159 = !{i64 2154046927, i64 2154047410, i64 2154046964, i64 2154047020, i64 2154047054, i64 2154047078, i64 2154047119, i64 2154047140, i64 2154047168, i64 2154047202}
!160 = !{i64 2154050101, i64 2154050584, i64 2154050138, i64 2154050194, i64 2154050228, i64 2154050252, i64 2154050293, i64 2154050314, i64 2154050342, i64 2154050376}
!161 = !{i64 2154008536, i64 2154009019, i64 2154008573, i64 2154008629, i64 2154008663, i64 2154008687, i64 2154008728, i64 2154008749, i64 2154008777, i64 2154008811}
!162 = !{i64 2154043624, i64 2154044107, i64 2154043661, i64 2154043717, i64 2154043751, i64 2154043775, i64 2154043816, i64 2154043837, i64 2154043865, i64 2154043899}
!163 = !{!"auto-init"}
!164 = !{!"branch_weights", i32 2000, i32 1}
!165 = !{i64 2148613703, i64 2148613983, i64 2148614317, i64 2148614651}
!166 = !{i64 2154060956, i64 2154061439, i64 2154060993, i64 2154061049, i64 2154061083, i64 2154061107, i64 2154061148, i64 2154061169, i64 2154061197, i64 2154061231}
!167 = !{i64 2154066417, i64 2154066900, i64 2154066454, i64 2154066510, i64 2154066544, i64 2154066568, i64 2154066609, i64 2154066630, i64 2154066658, i64 2154066692}
!168 = !{i64 2154016244, i64 2154016727, i64 2154016281, i64 2154016337, i64 2154016371, i64 2154016395, i64 2154016436, i64 2154016457, i64 2154016485, i64 2154016519}
!169 = !{i64 2154032090, i64 2154032573, i64 2154032127, i64 2154032183, i64 2154032217, i64 2154032241, i64 2154032282, i64 2154032303, i64 2154032331, i64 2154032365}
!170 = !{i64 2154023438, i64 2154023921, i64 2154023475, i64 2154023531, i64 2154023565, i64 2154023589, i64 2154023630, i64 2154023651, i64 2154023679, i64 2154023713}
!171 = !{i64 2154035729, i64 2154036212, i64 2154035766, i64 2154035822, i64 2154035856, i64 2154035880, i64 2154035921, i64 2154035942, i64 2154035970, i64 2154036004}
!172 = !{i64 2154003189, i64 2154003672, i64 2154003226, i64 2154003282, i64 2154003316, i64 2154003340, i64 2154003381, i64 2154003402, i64 2154003430, i64 2154003464}
