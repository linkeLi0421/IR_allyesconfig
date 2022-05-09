; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_imap.c_pt.bc'
source_filename = "../fs/jfs/jfs_imap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dinomap_disk = type { i32, i32, i32, i32, i32, i32, i32, i32, [2016 x i8], [128 x %struct.iagctl_disk] }
%struct.iagctl_disk = type { i32, i32, i32, i32 }
%struct.dinomap = type { i32, i32, i32, i32, i32, i32, i32, i32, [128 x %struct.iagctl] }
%struct.iagctl = type { i32, i32, i32, i32 }
%struct.inomap = type { %struct.dinomap, ptr, %struct.mutex, [128 x %struct.mutex], ptr, %struct.atomic_t, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
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
%struct.dinode = type { i32, i32, i32, i32, %struct.pxd_t, i64, i64, i32, i32, i32, i32, %struct.timestruc_t, %struct.timestruc_t, %struct.timestruc_t, %struct.timestruc_t, %struct.dxd_t, %struct.dxd_t, i32, i32, %union.anon.78 }
%struct.timestruc_t = type { i32, i32 }
%struct.dxd_t = type { i8, [3 x i8], i32, %struct.pxd_t }
%union.anon.78 = type { %struct.anon.80 }
%struct.anon.80 = type { %union.anon.81, %union.anon.83 }
%union.anon.81 = type { %struct.anon.82, [88 x i8] }
%struct.anon.82 = type { ptr, i32 }
%union.anon.83 = type { %union.xtpage_t }
%union.xtpage_t = type { %struct.xtheader, [256 x i8] }
%struct.xtheader = type { i64, i64, i8, i8, i16, i16, i16, %struct.pxd_t }
%struct.iag = type { i64, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, [1976 x i8], [128 x i32], [128 x i32], [128 x %struct.pxd_t] }
%struct.tlock = type { i16, i16, i16, i16, ptr, ptr, [24 x i16] }
%struct.linelock = type { i16, i8, i8, i16, i8, i8, [20 x %struct.lv] }
%struct.lv = type { i8, i8 }
%struct.xad = type { i8, [2 x i8], i8, i32, %struct.pxd_t }
%struct.dtslot = type { i8, i8, [15 x i16] }
%struct.dbmap = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i64], i64, i8 }
%struct.maplock = type { i16, i8, i8, i16, i8, i8, %struct.pxd_t }
%struct.bmap = type { %struct.dbmap, ptr, %struct.mutex, [128 x %struct.atomic_t], ptr }
%struct.tblock = type { i16, i16, i16, i32, %struct.list_head, ptr, i16, i16, %struct.wait_queue_head, i32, %struct.list_head, i32, ptr, i32, i32, %struct.wait_queue_head, %union.anon.70, i32 }
%union.anon.70 = type { %struct.pxd_t }
%struct.jfs_log = type { %struct.list_head, %struct.list_head, ptr, i32, i64, i32, i32, i32, ptr, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, ptr, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.uuid_t, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.jfs_superblock = type { [4 x i8], i32, i64, i32, i16, i16, i32, i16, i16, i32, i32, i32, i32, %struct.pxd_t, %struct.pxd_t, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.timestruc_t, i32, i8, [11 x i8], i64, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, [16 x i8], %struct.uuid_t }

@diMount.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&imap->im_freelock\00", [45 x i8] zeroinitializer }, align 32
@diMount.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(imap->im_aglock[index])\00", [38 x i8] zeroinitializer }, align 32
@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@diSync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013diSync: get_metapage failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"diSync\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/jfs/jfs_imap.c\00", [46 x i8] zeroinitializer }, align 32
@diSync._entry_ptr = internal global ptr @diSync._entry, section ".printk_index", align 4
@diRead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016diRead: ino = %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"diRead\00", [25 x i8] zeroinitializer }, align 32
@diRead._entry_ptr = internal global ptr @diRead._entry, section ".printk_index", align 4
@diRead._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013diRead: diIAGRead returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@diRead._entry_ptr.10 = internal global ptr @diRead._entry.8, section ".printk_index", align 4
@diRead._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.5, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013diRead: read_metapage failed\0A\00", [32 x i8] zeroinitializer }, align 32
@diRead._entry_ptr.13 = internal global ptr @diRead._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i_ino != di_number\0A\00", [44 x i8] zeroinitializer }, align 32
@diReadSpecial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013diReadSpecial: new_inode returned NULL!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diReadSpecial\00", [18 x i8] zeroinitializer }, align 32
@diReadSpecial._entry_ptr = internal global ptr @diReadSpecial._entry, section ".printk_index", align 4
@diReadSpecial._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@diReadSpecial._entry_ptr.19 = internal global ptr @diReadSpecial._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"inum < 32\00", [22 x i8] zeroinitializer }, align 32
@jfs_metapage_aops = external dso_local constant %struct.address_space_operations, align 4
@diWriteSpecial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.21, ptr @.str.5, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"diWriteSpecial\00", [17 x i8] zeroinitializer }, align 32
@diWriteSpecial._entry_ptr = internal global ptr @diWriteSpecial._entry, section ".printk_index", align 4
@diWriteSpecial._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013diWriteSpecial: failed to read aggregate inode extent!\0A\00", [38 x i8] zeroinitializer }, align 32
@diWriteSpecial._entry_ptr.24 = internal global ptr @diWriteSpecial._entry.22, section ".printk_index", align 4
@diFreeSpecial._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013diFreeSpecial called with NULL ip!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diFreeSpecial\00", [18 x i8] zeroinitializer }, align 32
@diFreeSpecial._entry_ptr = internal global ptr @diFreeSpecial._entry, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ixpxd invalid\0A\00", [17 x i8] zeroinitializer }, align 32
@TxLock = external dso_local local_unnamed_addr global ptr, align 4
@diWrite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.28, ptr @.str.5, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"diWrite\00", [24 x i8] zeroinitializer }, align 32
@diWrite._entry_ptr = internal global ptr @diWrite._entry, section ".printk_index", align 4
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tlck->type & tlckXTREE\00", [41 x i8] zeroinitializer }, align 32
@diWrite._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.5, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013diWrite: UFO tlock\0A\00", [42 x i8] zeroinitializer }, align 32
@diWrite._entry_ptr.32 = internal global ptr @diWrite._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imap: \00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"inum = %d, iagno = %d, nextiag = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wmap shows inode already free\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid inoext\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"numfree > numinos\0A\00", [45 x i8] zeroinitializer }, align 32
@diFree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.39, ptr @.str.5, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"diFree\00", [25 x i8] zeroinitializer }, align 32
@diFree._entry_ptr = internal global ptr @diFree._entry, section ".printk_index", align 4
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ciagp != NULL\00", [18 x i8] zeroinitializer }, align 32
@diFree._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.39, ptr @.str.5, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@diFree._entry_ptr.42 = internal global ptr @diFree._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diagp != NULL\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"the pmap does not show inode free\0A\00", [61 x i8] zeroinitializer }, align 32
@diAlloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.45, ptr @.str.5, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"diAlloc\00", [24 x i8] zeroinitializer }, align 32
@diAlloc._entry_ptr = internal global ptr @diAlloc._entry, section ".printk_index", align 4
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc == -EIO\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't find free bit in wmap\0A\00", [35 x i8] zeroinitializer }, align 32
@diAlloc._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.45, ptr @.str.5, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@diAlloc._entry_ptr.49 = internal global ptr @diAlloc._entry.48, section ".printk_index", align 4
@diAlloc._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.45, ptr @.str.5, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@diAlloc._entry_ptr.51 = internal global ptr @diAlloc._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"the iag is outside the map\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"inode %ld not marked as allocated in wmap!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"inode %ld not marked as allocated in pmap!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"the inode is not allocated in the working map\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"the inode is not free in the persistent map\0A\00", [51 x i8] zeroinitializer }, align 32
@diUpdatePMap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.57, ptr @.str.5, i32 2811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"diUpdatePMap\00", [19 x i8] zeroinitializer }, align 32
@diUpdatePMap._entry_ptr = internal global ptr @diUpdatePMap._entry, section ".printk_index", align 4
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mp->clsn\00", [23 x i8] zeroinitializer }, align 32
@diExtendFS._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 2850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016diExtendFS: nextiag:%d numinos:%d numfree:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"diExtendFS\00", [21 x i8] zeroinitializer }, align 32
@diExtendFS._entry_ptr = internal global ptr @diExtendFS._entry, section ".printk_index", align 4
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unexpected value of iagnum\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"numinos or numfree incorrect\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error reading iag\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"free ext summary map not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"free extent not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipimap->i_size is wrong\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfreeinos = 0, but iag on freelist\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"free inode not found in summary map\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no free extent found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"free inode not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iag inconsistent\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no free extents\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ciagp == NULL\0A\00", [17 x i8] zeroinitializer }, align 32
@diFindFree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.74, ptr @.str.5, i32 2687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"diFindFree\00", [21 x i8] zeroinitializer }, align 32
@diFindFree._entry_ptr = internal global ptr @diFindFree._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2130706432]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2130706432]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967268, i64 4294967291]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 2147483648]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 2147483648]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 145, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 149, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 219, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 304, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 318, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 365, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 374, i32 23 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 424, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 436, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 509, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 516, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 543, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 606, i32 23 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 677, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 753, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 872, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 872, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 874, i32 23 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 910, i32 23 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 917, i32 23 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 929, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1093, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1107, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1178, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1426, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1497, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1509, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1548, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2733, i32 27 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2762, i32 7 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2767, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2783, i32 7 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2789, i32 7 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2811, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2848, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2881, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2957, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1913, i32 24 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1925, i32 24 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1938, i32 23 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2473, i32 7 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1789, i32 23 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1801, i32 7 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1816, i32 23 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1827, i32 23 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2057, i32 36 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2164, i32 36 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2236, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [21 x i8] c"../fs/jfs/jfs_imap.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2687, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @diAlloc._entry, ptr @diAlloc._entry.48, ptr @diAlloc._entry.50, ptr @diAlloc._entry_ptr, ptr @diAlloc._entry_ptr.49, ptr @diAlloc._entry_ptr.51, ptr @diExtendFS._entry, ptr @diExtendFS._entry_ptr, ptr @diFindFree._entry, ptr @diFindFree._entry_ptr, ptr @diFree._entry, ptr @diFree._entry.41, ptr @diFree._entry_ptr, ptr @diFree._entry_ptr.42, ptr @diFreeSpecial._entry, ptr @diFreeSpecial._entry_ptr, ptr @diRead._entry, ptr @diRead._entry.11, ptr @diRead._entry.8, ptr @diRead._entry_ptr, ptr @diRead._entry_ptr.10, ptr @diRead._entry_ptr.13, ptr @diReadSpecial._entry, ptr @diReadSpecial._entry.17, ptr @diReadSpecial._entry_ptr, ptr @diReadSpecial._entry_ptr.19, ptr @diSync._entry, ptr @diSync._entry_ptr, ptr @diUpdatePMap._entry, ptr @diUpdatePMap._entry_ptr, ptr @diWrite._entry, ptr @diWrite._entry.30, ptr @diWrite._entry_ptr, ptr @diWrite._entry_ptr.32, ptr @diWriteSpecial._entry, ptr @diWriteSpecial._entry.22, ptr @diWriteSpecial._entry_ptr, ptr @diWriteSpecial._entry_ptr.24, ptr @diMount.__key, ptr @.str, ptr @diMount.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diMount.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diMount.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diSync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diRead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diRead._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diRead._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diReadSpecial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diReadSpecial._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diWriteSpecial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diWriteSpecial._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diFreeSpecial._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diWrite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diWrite._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diFree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diFree._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diAlloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diAlloc._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diAlloc._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diUpdatePMap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diExtendFS._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diFindFree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diMount(ptr noundef %ipimap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 13964, i32 noundef 3264, i32 noundef 2) #11
  %cmp = icmp eq ptr %call1.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__get_metapage(ptr noundef %ipimap, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.metapage, ptr %call2, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call1.i.i, align 4096
  %in_nextiag = getelementptr inbounds %struct.dinomap_disk, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %in_nextiag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_nextiag, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %in_nextiag9 = getelementptr inbounds %struct.dinomap, ptr %call1.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %in_nextiag9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %in_nextiag9, align 4
  %im_numinos = getelementptr inbounds %struct.inomap, ptr %call1.i.i, i32 0, i32 5
  %in_numinos = getelementptr inbounds %struct.dinomap_disk, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %in_numinos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_numinos, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %im_numinos, i32 noundef 4) #8
  %13 = ptrtoint ptr %im_numinos to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %12, ptr %im_numinos, align 4
  %im_numfree = getelementptr inbounds %struct.inomap, ptr %call1.i.i, i32 0, i32 6
  %in_numfree = getelementptr inbounds %struct.dinomap_disk, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %in_numfree to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_numfree, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %im_numfree, i32 noundef 4) #8
  %17 = ptrtoint ptr %im_numfree to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %16, ptr %im_numfree, align 8
  %in_nbperiext = getelementptr inbounds %struct.dinomap_disk, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_nbperiext, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %in_nbperiext11 = getelementptr inbounds %struct.dinomap, ptr %call1.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %in_nbperiext11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %in_nbperiext11, align 16
  %in_l2nbperiext = getelementptr inbounds %struct.dinomap_disk, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %in_l2nbperiext to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in_l2nbperiext, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %in_l2nbperiext13 = getelementptr inbounds %struct.dinomap, ptr %call1.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %in_l2nbperiext13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %in_l2nbperiext13, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6
  %index.095 = phi i32 [ 0, %if.end6 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dinomap_disk, ptr %1, i32 0, i32 9, i32 %index.095
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %arrayidx18 = getelementptr %struct.dinomap, ptr %call1.i.i, i32 0, i32 8, i32 %index.095
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx18, align 16
  %extfree = getelementptr %struct.dinomap_disk, ptr %1, i32 0, i32 9, i32 %index.095, i32 1
  %30 = ptrtoint ptr %extfree to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extfree, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %extfree25 = getelementptr %struct.dinomap, ptr %call1.i.i, i32 0, i32 8, i32 %index.095, i32 1
  %33 = ptrtoint ptr %extfree25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %extfree25, align 4
  %numinos = getelementptr %struct.dinomap_disk, ptr %1, i32 0, i32 9, i32 %index.095, i32 2
  %34 = ptrtoint ptr %numinos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %numinos, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %numinos31 = getelementptr %struct.dinomap, ptr %call1.i.i, i32 0, i32 8, i32 %index.095, i32 2
  %37 = ptrtoint ptr %numinos31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %numinos31, align 8
  %numfree = getelementptr %struct.dinomap_disk, ptr %1, i32 0, i32 9, i32 %index.095, i32 3
  %38 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %numfree, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %numfree37 = getelementptr %struct.dinomap, ptr %call1.i.i, i32 0, i32 8, i32 %index.095, i32 3
  %41 = ptrtoint ptr %numfree37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %numfree37, align 4
  %inc = add nuw nsw i32 %index.095, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @release_metapage(ptr noundef nonnull %call2) #8
  %im_freelock = getelementptr inbounds %struct.inomap, ptr %call1.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %im_freelock, ptr noundef nonnull @.str, ptr noundef nonnull @diMount.__key) #8
  br label %do.body42

do.body42:                                        ; preds = %do.body42.do.body42_crit_edge, %for.end
  %index.196 = phi i32 [ 0, %for.end ], [ %inc47, %do.body42.do.body42_crit_edge ]
  %arrayidx43 = getelementptr %struct.inomap, ptr %call1.i.i, i32 0, i32 3, i32 %index.196
  tail call void @__mutex_init(ptr noundef %arrayidx43, ptr noundef nonnull @.str.2, ptr noundef nonnull @diMount.__key.1) #8
  %inc47 = add nuw nsw i32 %index.196, 1
  %exitcond97.not = icmp eq i32 %inc47, 128
  br i1 %exitcond97.not, label %for.end48, label %do.body42.do.body42_crit_edge

do.body42.do.body42_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

for.end48:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %im_ipimap = getelementptr inbounds %struct.inomap, ptr %call1.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ipimap, ptr %im_ipimap, align 32
  %_imap = getelementptr i8, ptr %ipimap, i32 -112
  %43 = ptrtoint ptr %_imap to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i.i, ptr %_imap, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end48, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then5 ], [ 0, %for.end48 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_metapage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_metapage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diUnmount(ptr noundef %ipimap, i32 noundef %mounterror) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_imap = getelementptr i8, ptr %ipimap, i32 -112
  %0 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_imap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mounterror)
  %tobool.not = icmp eq i32 %mounterror, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log.i, align 4
  %tobool.not.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.not, label %lor.lhs.false.if.end_crit_edge, label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @diSync(ptr noundef %ipimap)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %9, i64 noundef 0) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diSync(ptr noundef %ipimap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_imap = getelementptr i8, ptr %ipimap, i32 -112
  %0 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_imap, align 8
  %call2 = tail call ptr @__get_metapage(ptr noundef %ipimap, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 1) #8
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.metapage, ptr %call2, i32 0, i32 7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %4, align 4
  %in_nextiag = getelementptr inbounds %struct.dinomap, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %in_nextiag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_nextiag, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %in_nextiag14 = getelementptr inbounds %struct.dinomap_disk, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %in_nextiag14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %in_nextiag14, align 4
  %im_numinos = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numinos, i32 noundef 4) #8
  %13 = ptrtoint ptr %im_numinos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %im_numinos, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %in_numinos = getelementptr inbounds %struct.dinomap_disk, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %in_numinos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %in_numinos, align 4
  %im_numfree = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 6
  %call.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numfree, i32 noundef 4) #8
  %17 = ptrtoint ptr %im_numfree to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %im_numfree, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %in_numfree = getelementptr inbounds %struct.dinomap_disk, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %in_numfree to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %in_numfree, align 4
  %in_nbperiext = getelementptr inbounds %struct.dinomap, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_nbperiext, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %in_nbperiext18 = getelementptr inbounds %struct.dinomap_disk, ptr %4, i32 0, i32 4
  %24 = ptrtoint ptr %in_nbperiext18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %in_nbperiext18, align 4
  %in_l2nbperiext = getelementptr inbounds %struct.dinomap, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %in_l2nbperiext to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_l2nbperiext, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %in_l2nbperiext20 = getelementptr inbounds %struct.dinomap_disk, ptr %4, i32 0, i32 5
  %28 = ptrtoint ptr %in_l2nbperiext20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %in_l2nbperiext20, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11
  %index.083 = phi i32 [ 0, %if.end11 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %index.083
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %arrayidx25 = getelementptr %struct.dinomap_disk, ptr %4, i32 0, i32 9, i32 %index.083
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx25, align 4
  %extfree = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %index.083, i32 1
  %33 = ptrtoint ptr %extfree to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %extfree, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %extfree32 = getelementptr %struct.dinomap_disk, ptr %4, i32 0, i32 9, i32 %index.083, i32 1
  %36 = ptrtoint ptr %extfree32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %extfree32, align 4
  %numinos = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %index.083, i32 2
  %37 = ptrtoint ptr %numinos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %numinos, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %numinos38 = getelementptr %struct.dinomap_disk, ptr %4, i32 0, i32 9, i32 %index.083, i32 2
  %40 = ptrtoint ptr %numinos38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %numinos38, align 4
  %numfree = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %index.083, i32 3
  %41 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %numfree, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %numfree44 = getelementptr %struct.dinomap_disk, ptr %4, i32 0, i32 9, i32 %index.083, i32 3
  %44 = ptrtoint ptr %numfree44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %numfree44, align 4
  %inc = add nuw nsw i32 %index.083, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef nonnull %call2) #8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 9
  %45 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %46, i64 noundef 0, i64 noundef 9223372036854775807) #8
  tail call void @diWriteSpecial(ptr noundef %ipimap, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @diWriteSpecial(ptr noundef %ip, i32 noundef %secondary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secondary)
  %tobool.not = icmp eq i32 %secondary, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ait2 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %ait2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ait2, align 4
  %8 = shl i32 %7, 24
  %conv.i = zext i32 %8 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr2.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %conv1.i = zext i32 %11 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %l2nbperpage, align 2
  %conv = sext i16 %13 to i32
  %sh_prom = zext i32 %conv to i64
  %shr = lshr i64 %add.i, %sh_prom
  %conv2 = trunc i64 %shr to i32
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %address.0 = phi i32 [ %conv2, %if.then ], [ 11, %entry.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp = icmp ult i32 %5, 32
  br i1 %cmp, label %do.end15, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 509, ptr noundef nonnull @.str.20) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #8, !srcloc !157
  unreachable

do.end15:                                         ; preds = %do.body
  %shr16 = lshr i32 %5, 3
  %add = add i32 %address.0, %shr16
  %l2nbperpage17 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %l2nbperpage17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %l2nbperpage17, align 2
  %conv1863 = zext i16 %15 to i32
  %shl = shl i32 %add, %conv1863
  %call19 = tail call ptr @__get_metapage(ptr noundef %ip, i32 noundef %shl, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %do.body23, label %if.end35

do.body23:                                        ; preds = %do.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %16 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24 = icmp sgt i32 %16, 0
  br i1 %cmp24, label %do.end29, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end35:                                         ; preds = %do.end15
  %data = getelementptr inbounds %struct.metapage, ptr %call19, i32 0, i32 7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %rem = and i32 %5, 7
  %add.ptr = getelementptr %struct.dinode, ptr %18, i32 %rem
  tail call fastcc void @copy_to_dinode(ptr noundef %add.ptr, ptr noundef %ip)
  %u = getelementptr %struct.dinode, ptr %18, i32 %rem, i32 19
  %_u2 = getelementptr inbounds %struct.anon.80, ptr %u, i32 0, i32 1
  %u37 = getelementptr i8, ptr %ip, i32 -400
  %19 = call ptr @memcpy(ptr %_u2, ptr %u37, i32 288)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp38 = icmp eq i32 %5, 16
  br i1 %cmp38, label %if.then40, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %gengen = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 21
  %20 = ptrtoint ptr %gengen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gengen, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %_gengen = getelementptr inbounds %struct.anon.82, ptr %u, i32 0, i32 1
  %23 = ptrtoint ptr %_gengen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %_gengen, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end35.if.end42_crit_edge
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call19, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef nonnull %call19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end29, %do.body23.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diRead(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %4 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp sgt i32 %4, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %ipimap5 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %ipimap5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipimap5, align 4
  %ipimap7 = getelementptr i8, ptr %ip, i32 -772
  %9 = ptrtoint ptr %ipimap7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ipimap7, align 4
  %i_ino8 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino8, align 8
  %shr = lshr i32 %11, 12
  %_imap = getelementptr i8, ptr %8, i32 -112
  %12 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_imap, align 8
  %rdwrlock = getelementptr i8, ptr %8, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock, i32 noundef 1) #8
  %im_ipimap.i = getelementptr inbounds %struct.inomap, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %im_ipimap.i, align 4
  %add.i = add nuw nsw i32 %shr, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i.i, align 16
  %l2nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %l2nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %l2nbperpage.i, align 2
  %conv8.i = zext i16 %21 to i32
  %shl.i = shl i32 %add.i, %conv8.i
  %call3.i = tail call ptr @__get_metapage(ptr noundef %15, i32 noundef %shl.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i = icmp eq ptr %call3.i, null
  %..i = select i1 %cmp.i, i32 -5, i32 0
  tail call void @up_read(ptr noundef %rdwrlock) #8
  br i1 %cmp.i, label %do.body15, label %if.end26

do.body15:                                        ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %22 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16 = icmp sgt i32 %22, 0
  br i1 %cmp16, label %do.end20, label %do.body15.cleanup_crit_edge

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %..i) #12
  br label %cleanup

if.end26:                                         ; preds = %do.end4
  %data = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino8, align 8
  %and = lshr i32 %26, 5
  %27 = and i32 %and, 127
  %arrayidx = getelementptr %struct.iag, ptr %24, i32 0, i32 14, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = and i32 %29, -256
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %in_nbperiext = getelementptr inbounds %struct.dinomap, ptr %13, i32 0, i32 4
  %32 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_nbperiext, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp30.not = icmp eq i32 %31, %33
  br i1 %cmp30.not, label %lor.lhs.false, label %if.end26.if.then35_crit_edge

if.end26.if.then35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end26
  %34 = shl i32 %29, 24
  %conv.i = zext i32 %34 to i64
  %shl.i167 = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr %struct.iag, ptr %24, i32 0, i32 14, i32 %27, i32 1
  %35 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr2.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %conv1.i = zext i32 %37 to i64
  %add.i168 = or i64 %shl.i167, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i168)
  %cmp34 = icmp eq i64 %add.i168, 0
  br i1 %cmp34, label %lor.lhs.false.if.then35_crit_edge, label %if.end36

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end26.if.then35_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  %and40 = lshr i32 %26, 3
  %38 = and i32 %and40, 3
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  %39 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %l2nbperpage, align 2
  %conv162 = zext i16 %40 to i32
  %shl = shl i32 %38, %conv162
  %conv42 = sext i32 %shl to i64
  %add = add nsw i64 %add.i168, %conv42
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %24, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42)
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  %and44 = and i32 %26, 7
  %44 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %l2nbperpage, align 2
  %conv46 = sext i16 %45 to i32
  %sh_prom = zext i32 %conv46 to i64
  %shr47 = ashr i64 %add, %sh_prom
  %conv48 = trunc i64 %shr47 to i32
  %conv49 = trunc i64 %add to i32
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nbperpage, align 4
  %conv50 = sext i16 %47 to i32
  %sub = add nsw i32 %conv50, -1
  %and51 = and i32 %sub, %conv49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end36.if.end69_crit_edge, label %if.then53

if.end36.if.end69_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then53:                                        ; preds = %if.end36
  %sub56 = sub i32 %conv50, %and51
  %l2niperblk = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 12
  %48 = ptrtoint ptr %l2niperblk to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %l2niperblk, align 4
  %conv57 = sext i16 %49 to i32
  %shl58 = shl i32 %sub56, %conv57
  call void @__sanitizer_cov_trace_cmp4(i32 %and44, i32 %shl58)
  %cmp59 = icmp slt i32 %and44, %shl58
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %shl64 = shl i32 %and51, %conv57
  %add65 = add i32 %shl64, %and44
  br label %if.end69

if.else:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %add66 = add i32 %conv48, 1
  %sub67 = sub i32 %and44, %shl58
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then61, %if.end36.if.end69_crit_edge
  %pageno.0 = phi i32 [ %conv48, %if.then61 ], [ %add66, %if.else ], [ %conv48, %if.end36.if.end69_crit_edge ]
  %rel_inode.0 = phi i32 [ %add65, %if.then61 ], [ %sub67, %if.else ], [ %and44, %if.end36.if.end69_crit_edge ]
  %conv71163 = zext i16 %45 to i32
  %shl72 = shl i32 %pageno.0, %conv71163
  %call73 = tail call ptr @__get_metapage(ptr noundef %8, i32 noundef %shl72, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %do.body76, label %if.end88

do.body76:                                        ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %50 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp77 = icmp sgt i32 %50, 0
  br i1 %cmp77, label %do.end82, label %do.body76.cleanup_crit_edge

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end88:                                         ; preds = %if.end69
  %data89 = getelementptr inbounds %struct.metapage, ptr %call73, i32 0, i32 7
  %51 = ptrtoint ptr %data89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data89, align 4
  %add.ptr = getelementptr %struct.dinode, ptr %52, i32 %rel_inode.0
  %53 = ptrtoint ptr %i_ino8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino8, align 8
  %di_number = getelementptr %struct.dinode, ptr %52, i32 %rel_inode.0, i32 2
  %55 = ptrtoint ptr %di_number to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %di_number, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %57)
  %cmp91.not = icmp eq i32 %54, %57
  br i1 %cmp91.not, label %if.else95, label %if.then93

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %59, ptr noundef nonnull @.str.14) #8
  br label %if.end102

if.else95:                                        ; preds = %if.end88
  %di_nlink = getelementptr %struct.dinode, ptr %52, i32 %rel_inode.0, i32 7
  %60 = ptrtoint ptr %di_nlink to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %di_nlink, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp96 = icmp eq i32 %61, 0
  br i1 %cmp96, label %if.else95.if.end102_crit_edge, label %if.else99

if.else95.if.end102_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.else99:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @copy_from_dinode(ptr noundef %add.ptr, ptr noundef %ip)
  br label %if.end102

if.end102:                                        ; preds = %if.else99, %if.else95.if.end102_crit_edge, %if.then93
  %rc.0 = phi i32 [ -5, %if.then93 ], [ 0, %if.else99 ], [ -116, %if.else95.if.end102_crit_edge ]
  tail call void @release_metapage(ptr noundef nonnull %call73) #8
  %agstart104 = getelementptr i8, ptr %ip, i32 -760
  %62 = ptrtoint ptr %agstart104 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %43, ptr %agstart104, align 8
  %active_ag = getelementptr i8, ptr %ip, i32 -749
  %63 = ptrtoint ptr %active_ag to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %active_ag, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %do.end82, %do.body76.cleanup_crit_edge, %if.then35, %do.end20, %do.body15.cleanup_crit_edge
  %retval.0 = phi i32 [ -116, %if.then35 ], [ %rc.0, %if.end102 ], [ -5, %do.end20 ], [ -5, %do.body15.cleanup_crit_edge ], [ -5, %do.end82 ], [ -5, %do.body76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @diIAGRead(ptr nocapture noundef readonly %imap, i32 noundef %iagno, ptr nocapture noundef writeonly %mpp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %im_ipimap = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %0 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %im_ipimap, align 4
  %add = add i32 %iagno, 1
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %l2nbperpage, align 2
  %conv8 = zext i16 %7 to i32
  %shl = shl i32 %add, %conv8
  %call3 = tail call ptr @__get_metapage(ptr noundef %1, i32 noundef %shl, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %8 = ptrtoint ptr %mpp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %mpp, align 4
  %cmp = icmp eq ptr %call3, null
  %. = select i1 %cmp, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_from_dinode(ptr noundef readonly %dip, ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ip, i32 -848
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %di_fileset = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 1
  %4 = ptrtoint ptr %di_fileset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %di_fileset, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr.i, align 8
  %di_mode = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 10
  %8 = ptrtoint ptr %di_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %di_mode, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %mode2 = getelementptr i8, ptr %ip, i32 -844
  %11 = ptrtoint ptr %mode2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mode2, align 4
  tail call void @jfs_set_inode_flags(ptr noundef %ip) #8
  %12 = ptrtoint ptr %di_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %di_mode, align 4
  %14 = and i32 %13, -65536
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %conv = trunc i32 %15 to i16
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %ip, align 8
  %umask = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %umask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %umask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not = icmp eq i32 %18, -1
  br i1 %cmp.not, label %entry.if.end46_crit_edge, label %if.then

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then:                                          ; preds = %entry
  %and6 = and i32 %15, 65024
  %neg = and i32 %18, 511
  %19 = or i32 %neg, %and6
  %20 = trunc i32 %19 to i16
  %conv9 = xor i16 %20, 511
  %21 = ptrtoint ptr %ip to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv9, ptr %ip, align 8
  %conv12 = zext i16 %conv9 to i32
  %and13 = and i32 %conv12, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 16384
  br i1 %cmp14, label %if.then16, label %if.then.if.end46_crit_edge

if.then.if.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then16:                                        ; preds = %if.then
  %and19 = and i32 %conv12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %if.then16.if.end_crit_edge, label %if.then20

if.then16.if.end_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %or23 = or i16 %conv9, 64
  %22 = ptrtoint ptr %ip to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or23, ptr %ip, align 8
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then16.if.end_crit_edge
  %23 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ip, align 8
  %25 = and i16 %24, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool28.not = icmp eq i16 %25, 0
  br i1 %tobool28.not, label %if.end.if.end34_crit_edge, label %if.then29

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or32 = or i16 %24, 8
  %26 = ptrtoint ptr %ip to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or32, ptr %ip, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end.if.end34_crit_edge
  %27 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ip, align 8
  %29 = and i16 %28, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool38.not = icmp eq i16 %29, 0
  br i1 %tobool38.not, label %if.end34.if.end46_crit_edge, label %if.then39

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %or42 = or i16 %28, 1
  %30 = ptrtoint ptr %ip to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or42, ptr %ip, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end34.if.end46_crit_edge, %if.then.if.end46_crit_edge, %entry.if.end46_crit_edge
  %di_nlink = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 7
  %31 = ptrtoint ptr %di_nlink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %di_nlink, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void @set_nlink(ptr noundef %ip, i32 noundef %33) #8
  %saved_uid = getelementptr i8, ptr %ip, i32 -840
  %di_uid = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 8
  %34 = ptrtoint ptr %di_uid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %di_uid, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %call47 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %36) #8
  %37 = ptrtoint ptr %saved_uid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call47, ptr %saved_uid, align 8
  %uid = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 29
  %38 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack)
  %cmp.i.not = icmp eq i32 %.unpack, -1
  %spec.select = select i1 %cmp.i.not, i32 %call47, i32 %.unpack
  %39 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select, ptr %39, align 4
  %saved_gid = getelementptr i8, ptr %ip, i32 -836
  %di_gid = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 9
  %41 = ptrtoint ptr %di_gid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %di_gid, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %call56 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %43) #8
  %44 = ptrtoint ptr %saved_gid to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call56, ptr %saved_gid, align 4
  %gid = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 30
  %45 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack1 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack1)
  %cmp.i2.not = icmp eq i32 %.unpack1, -1
  %.unpack1.sink = select i1 %cmp.i2.not, i32 %call56, i32 %.unpack1
  %46 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.unpack1.sink, ptr %46, align 8
  %di_size = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 5
  %48 = ptrtoint ptr %di_size to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %di_size, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49)
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %51 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %i_size, align 8
  %di_atime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 11
  %52 = ptrtoint ptr %di_atime to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %di_atime, align 8
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %conv66 = zext i32 %54 to i64
  %i_atime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15
  %55 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv66, ptr %i_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 11, i32 1
  %56 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tv_nsec, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %tv_nsec70 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15, i32 1
  %59 = ptrtoint ptr %tv_nsec70 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tv_nsec70, align 8
  %di_mtime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 13
  %60 = ptrtoint ptr %di_mtime to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %di_mtime, align 8
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %conv72 = zext i32 %62 to i64
  %i_mtime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %63 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv72, ptr %i_mtime, align 8
  %tv_nsec75 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 13, i32 1
  %64 = ptrtoint ptr %tv_nsec75 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tv_nsec75, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %tv_nsec77 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16, i32 1
  %67 = ptrtoint ptr %tv_nsec77 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %tv_nsec77, align 8
  %di_ctime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 12
  %68 = ptrtoint ptr %di_ctime to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %di_ctime, align 8
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %conv79 = zext i32 %70 to i64
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  %71 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv79, ptr %i_ctime, align 8
  %tv_nsec82 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 12, i32 1
  %72 = ptrtoint ptr %tv_nsec82 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tv_nsec82, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %tv_nsec84 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17, i32 1
  %75 = ptrtoint ptr %tv_nsec84 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %tv_nsec84, align 8
  %di_nblocks = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 6
  %76 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %di_nblocks, align 8
  %78 = tail call i64 @llvm.bswap.i64(i64 %77)
  %79 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %s_blocksize_bits, align 4
  %conv86 = zext i8 %82 to i32
  %sub = add nsw i32 %conv86, -9
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %78, %sh_prom
  %i_blocks = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %83 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %shl, ptr %i_blocks, align 8
  %di_gen = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 3
  %84 = ptrtoint ptr %di_gen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %di_gen, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %i_generation = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 49
  %87 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %i_generation, align 8
  %ixpxd = getelementptr i8, ptr %ip, i32 -832
  %di_ixpxd = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 4
  %88 = ptrtoint ptr %di_ixpxd to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %di_ixpxd, align 8
  %90 = ptrtoint ptr %ixpxd to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %ixpxd, align 8
  %acl = getelementptr i8, ptr %ip, i32 -824
  %di_acl = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 15
  %91 = call ptr @memcpy(ptr %acl, ptr %di_acl, i32 16)
  %ea = getelementptr i8, ptr %ip, i32 -808
  %di_ea = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 16
  %92 = call ptr @memcpy(ptr %ea, ptr %di_ea, i32 16)
  %di_next_index = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 17
  %93 = ptrtoint ptr %di_next_index to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %di_next_index, align 8
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %next_index = getelementptr i8, ptr %ip, i32 -784
  %96 = ptrtoint ptr %next_index to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %next_index, align 8
  %di_otime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 14
  %97 = ptrtoint ptr %di_otime to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %di_otime, align 8
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %conv88 = zext i32 %99 to i64
  %otime = getelementptr i8, ptr %ip, i32 -792
  %100 = ptrtoint ptr %otime to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv88, ptr %otime, align 8
  %di_acltype = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 18
  %101 = ptrtoint ptr %di_acltype to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %di_acltype, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %acltype = getelementptr i8, ptr %ip, i32 -780
  %104 = ptrtoint ptr %acltype to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %acltype, align 4
  %105 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %ip, align 8
  %107 = and i16 %106, -4096
  %108 = tail call i16 @llvm.fshl.i16(i16 %107, i16 %106, i16 3)
  %109 = xor i16 %108, 4
  %110 = zext i16 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values)
  switch i16 %109, label %if.end46.if.else127_crit_edge [
    i16 5, label %if.end46.if.then99_crit_edge
    i16 7, label %if.end46.if.then99_crit_edge3
    i16 6, label %if.end46.if.then108_crit_edge
    i16 0, label %if.end46.if.then123_crit_edge
    i16 1, label %if.end46.if.then123_crit_edge4
  ]

if.end46.if.then123_crit_edge4:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then123

if.end46.if.then123_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then123

if.end46.if.then108_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end46.if.then99_crit_edge3:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

if.end46.if.then99_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

if.end46.if.else127_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else127

if.then99:                                        ; preds = %if.end46.if.then99_crit_edge, %if.end46.if.then99_crit_edge3
  %111 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 19, i32 0, i32 1, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 8
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %dev = getelementptr i8, ptr %ip, i32 -4
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %dev, align 4
  %and1.i = and i32 %114, 255
  %shr2.i = lshr i32 %114, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %116 = shl i32 %114, 12
  %shl.i = and i32 %116, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %i_rdev = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 13
  %117 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or4.i, ptr %i_rdev, align 8
  %118 = zext i16 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %107, label %if.then99.if.else127_crit_edge [
    i16 16384, label %if.then99.if.then108_crit_edge
    i16 -32768, label %if.then99.if.then123_crit_edge
    i16 -24576, label %if.then99.if.then123_crit_edge5
  ]

if.then99.if.then123_crit_edge5:                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then123

if.then99.if.then123_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then123

if.then99.if.then108_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.then99.if.else127_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else127

if.then108:                                       ; preds = %if.then99.if.then108_crit_edge, %if.end46.if.then108_crit_edge
  %u109 = getelementptr i8, ptr %ip, i32 -400
  %u110 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 19
  %119 = call ptr @memcpy(ptr %u109, ptr %u110, i32 384)
  br label %if.end132

if.then123:                                       ; preds = %if.then99.if.then123_crit_edge, %if.then99.if.then123_crit_edge5, %if.end46.if.then123_crit_edge, %if.end46.if.then123_crit_edge4
  %u124 = getelementptr i8, ptr %ip, i32 -400
  %_u2126 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 19, i32 0, i32 1
  %120 = call ptr @memcpy(ptr %u124, ptr %_u2126, i32 288)
  br label %if.end132

if.else127:                                       ; preds = %if.then99.if.else127_crit_edge, %if.end46.if.else127_crit_edge
  %_inline_ea = getelementptr i8, ptr %ip, i32 -240
  %_inlineea = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 19, i32 0, i32 1, i32 0, i32 1, i32 128
  %121 = call ptr @memcpy(ptr %_inline_ea, ptr %_inlineea, i32 128)
  br label %if.end132

if.end132:                                        ; preds = %if.else127, %if.then123, %if.then108
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %122 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %cflag, align 8
  %btindex = getelementptr i8, ptr %ip, i32 -774
  %123 = ptrtoint ptr %btindex to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %btindex, align 2
  %btorder = getelementptr i8, ptr %ip, i32 -776
  %124 = ptrtoint ptr %btorder to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %btorder, align 8
  %bxflag = getelementptr i8, ptr %ip, i32 -752
  %125 = ptrtoint ptr %bxflag to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %bxflag, align 8
  %blid = getelementptr i8, ptr %ip, i32 -748
  %126 = ptrtoint ptr %blid to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %blid, align 4
  %atlhead = getelementptr i8, ptr %ip, i32 -746
  %127 = ptrtoint ptr %atlhead to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %atlhead, align 2
  %atltail = getelementptr i8, ptr %ip, i32 -744
  %128 = ptrtoint ptr %atltail to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %atltail, align 8
  %xtlid = getelementptr i8, ptr %ip, i32 -404
  %129 = ptrtoint ptr %xtlid to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %xtlid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @diReadSpecial(ptr noundef %sb, i32 noundef %inum, i32 noundef %secondary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @new_inode(ptr noundef %sb) #8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secondary)
  %tobool.not = icmp eq i32 %secondary, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %ait2 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %ait2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ait2, align 4
  %5 = shl i32 %4, 24
  %conv.i = zext i32 %5 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr2.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %conv1.i = zext i32 %8 to i64
  %add.i = or i64 %shl.i, %conv1.i
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %l2nbperpage, align 2
  %conv = sext i16 %10 to i32
  %sh_prom = zext i32 %conv to i64
  %shr = lshr i64 %add.i, %sh_prom
  %conv11 = trunc i64 %shr to i32
  %ipaimap2 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 4
  br label %do.body16

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %ipaimap = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 3
  br label %do.body16

do.body16:                                        ; preds = %if.else, %if.then9
  %.sink.in = phi ptr [ %ipaimap, %if.else ], [ %ipaimap2, %if.then9 ]
  %address.0 = phi i32 [ 11, %if.else ], [ %conv11, %if.then9 ]
  %11 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.sink = load ptr, ptr %.sink.in, align 4
  %12 = getelementptr i8, ptr %call1, i32 -772
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inum)
  %cmp17 = icmp ult i32 %inum, 32
  br i1 %cmp17, label %do.end33, label %do.end22

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 436, ptr noundef nonnull @.str.20) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #8, !srcloc !158
  unreachable

do.end33:                                         ; preds = %do.body16
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inum, ptr %i_ino, align 8
  %shr34 = lshr i32 %inum, 3
  %add = add i32 %address.0, %shr34
  %l2nbperpage35 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %l2nbperpage35 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %l2nbperpage35, align 2
  %conv3696 = zext i16 %16 to i32
  %shl = shl i32 %add, %conv3696
  %call37 = tail call ptr @__get_metapage(ptr noundef nonnull %call1, i32 noundef %shl, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_nlink(ptr noundef nonnull %call1, i32 noundef 1) #8
  tail call void @iput(ptr noundef nonnull %call1) #8
  br label %cleanup

if.end41:                                         ; preds = %do.end33
  %data = getelementptr inbounds %struct.metapage, ptr %call37, i32 0, i32 7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %rem = and i32 %inum, 7
  %add.ptr = getelementptr %struct.dinode, ptr %18, i32 %rem
  tail call fastcc void @copy_from_dinode(ptr noundef %add.ptr, ptr noundef nonnull %call1)
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @jfs_metapage_aops, ptr %a_ops, align 4
  %22 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3136, ptr %gfp_mask.i, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 4
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags, align 4
  %or = or i32 %25, 32
  store i32 %or, ptr %i_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inum)
  %cmp48 = icmp eq i32 %inum, 16
  br i1 %cmp48, label %land.lhs.true, label %if.end41.if.end56_crit_edge

if.end41.if.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end41
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %12, align 4
  %ipaimap52 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %ipaimap52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ipaimap52, align 4
  %cmp53 = icmp eq ptr %27, %29
  br i1 %cmp53, label %if.then55, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %_gengen = getelementptr %struct.dinode, ptr %18, i32 %rem, i32 19, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %_gengen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %_gengen, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %gengen = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %gengen to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %gengen, align 4
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %inostamp = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 22
  %37 = ptrtoint ptr %inostamp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %inostamp, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true.if.end56_crit_edge, %if.end41.if.end56_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call37) #8
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 28
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 28, i32 1
  %38 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %i_hash.i, ptr %pprev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then40, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then40 ], [ %call1, %if.end56 ], [ null, %do.end ], [ null, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_to_dinode(ptr noundef writeonly %dip, ptr nocapture noundef readonly %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ip, i32 -848
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %di_fileset = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 1
  %7 = ptrtoint ptr %di_fileset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %di_fileset, align 4
  %inostamp = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %inostamp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inostamp, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %dip to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dip, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %di_number = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 2
  %15 = ptrtoint ptr %di_number to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %di_number, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 49
  %16 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_generation, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %di_gen = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 3
  %19 = ptrtoint ptr %di_gen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %di_gen, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %di_size = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 5
  %23 = ptrtoint ptr %di_size to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %di_size, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %24 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_blocks, align 8
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %29 to i32
  %sub = add nsw i32 %conv, -9
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %25, %sh_prom
  %30 = tail call i64 @llvm.bswap.i64(i64 %shr)
  %di_nblocks = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 6
  %31 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %di_nblocks, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 12
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %di_nlink = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 7
  %36 = ptrtoint ptr %di_nlink to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %di_nlink, align 8
  %uid = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 29
  %37 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack)
  %cmp.i.not = icmp eq i32 %.unpack, -1
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 53
  %40 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %42 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %43 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %41, [1 x i32] %43) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %saved_uid = getelementptr i8, ptr %ip, i32 -840
  %44 = ptrtoint ptr %saved_uid to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack119 = load i32, ptr %saved_uid, align 8
  %45 = insertvalue [1 x i32] undef, i32 %.unpack119, 0
  %call6 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %45) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6.sink = phi i32 [ %call6, %if.else ], [ %call1.i, %if.then ]
  %46 = tail call i32 @llvm.bswap.i32(i32 %call6.sink)
  %47 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %47, align 4
  %gid = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 30
  %49 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack117 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack117)
  %cmp.i120.not = icmp eq i32 %.unpack117, -1
  br i1 %cmp.i120.not, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i122 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 53
  %52 = ptrtoint ptr %s_user_ns.i.i122 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_user_ns.i.i122, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %54 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack.i123 = load i32, ptr %i_gid.i, align 8
  %55 = insertvalue [1 x i32] undef, i32 %.unpack.i123, 0
  %call1.i124 = tail call i32 @from_kgid(ptr noundef %53, [1 x i32] %55) #8
  br label %if.end16

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %saved_gid = getelementptr i8, ptr %ip, i32 -836
  %56 = ptrtoint ptr %saved_gid to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack118 = load i32, ptr %saved_gid, align 4
  %57 = insertvalue [1 x i32] undef, i32 %.unpack118, 0
  %call14 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %57) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then10
  %call14.sink = phi i32 [ %call14, %if.else12 ], [ %call1.i124, %if.then10 ]
  %58 = tail call i32 @llvm.bswap.i32(i32 %call14.sink)
  %59 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 9
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %59, align 8
  %umask = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 31
  %61 = ptrtoint ptr %umask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %umask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp = icmp eq i32 %62, -1
  %mode2 = getelementptr i8, ptr %ip, i32 -844
  %63 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode2, align 4
  br i1 %cmp, label %if.then18, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %64, -65536
  %65 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ip, align 8
  %conv19 = zext i16 %66 to i32
  %or = or i32 %and, %conv19
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end16.if.end23_crit_edge
  %.sink = phi i32 [ %or, %if.then18 ], [ %64, %if.end16.if.end23_crit_edge ]
  %67 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %68 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 10
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %68, align 4
  %i_atime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15
  %70 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %i_atime, align 8
  %conv24 = trunc i64 %71 to i32
  %72 = tail call i32 @llvm.bswap.i32(i32 %conv24)
  %di_atime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 11
  %73 = ptrtoint ptr %di_atime to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %di_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15, i32 1
  %74 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tv_nsec, align 8
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %tv_nsec28 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 11, i32 1
  %77 = ptrtoint ptr %tv_nsec28 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %tv_nsec28, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  %78 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %i_ctime, align 8
  %conv30 = trunc i64 %79 to i32
  %80 = tail call i32 @llvm.bswap.i32(i32 %conv30)
  %di_ctime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 12
  %81 = ptrtoint ptr %di_ctime to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %di_ctime, align 8
  %tv_nsec33 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17, i32 1
  %82 = ptrtoint ptr %tv_nsec33 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tv_nsec33, align 8
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %tv_nsec35 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 12, i32 1
  %85 = ptrtoint ptr %tv_nsec35 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tv_nsec35, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %86 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %i_mtime, align 8
  %conv37 = trunc i64 %87 to i32
  %88 = tail call i32 @llvm.bswap.i32(i32 %conv37)
  %di_mtime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 13
  %89 = ptrtoint ptr %di_mtime to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %di_mtime, align 8
  %tv_nsec40 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16, i32 1
  %90 = ptrtoint ptr %tv_nsec40 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tv_nsec40, align 8
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %tv_nsec42 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 13, i32 1
  %93 = ptrtoint ptr %tv_nsec42 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tv_nsec42, align 4
  %di_ixpxd = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 4
  %ixpxd = getelementptr i8, ptr %ip, i32 -832
  %94 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %ixpxd, align 8
  %96 = ptrtoint ptr %di_ixpxd to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %di_ixpxd, align 8
  %di_acl = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 15
  %acl = getelementptr i8, ptr %ip, i32 -824
  %97 = call ptr @memcpy(ptr %di_acl, ptr %acl, i32 16)
  %di_ea = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 16
  %ea = getelementptr i8, ptr %ip, i32 -808
  %98 = call ptr @memcpy(ptr %di_ea, ptr %ea, i32 16)
  %next_index = getelementptr i8, ptr %ip, i32 -784
  %99 = ptrtoint ptr %next_index to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %next_index, align 8
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %di_next_index = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 17
  %102 = ptrtoint ptr %di_next_index to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %di_next_index, align 8
  %otime = getelementptr i8, ptr %ip, i32 -792
  %103 = ptrtoint ptr %otime to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %otime, align 8
  %conv43 = trunc i64 %104 to i32
  %105 = tail call i32 @llvm.bswap.i32(i32 %conv43)
  %di_otime = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 14
  %106 = ptrtoint ptr %di_otime to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %di_otime, align 8
  %tv_nsec46 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 14, i32 1
  %107 = ptrtoint ptr %tv_nsec46 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %tv_nsec46, align 4
  %acltype = getelementptr i8, ptr %ip, i32 -780
  %108 = ptrtoint ptr %acltype to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %acltype, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %di_acltype = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 18
  %111 = ptrtoint ptr %di_acltype to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %di_acltype, align 4
  %112 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %ip, align 8
  %114 = and i16 %113, -4096
  %115 = zext i16 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %114, label %if.end23.if.end58_crit_edge [
    i16 8192, label %if.end23.if.then57_crit_edge
    i16 24576, label %if.end23.if.then57_crit_edge127
  ]

if.end23.if.then57_crit_edge127:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.end23.if.then57_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.end23.if.end58_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.end23.if.then57_crit_edge, %if.end23.if.then57_crit_edge127
  %dev = getelementptr i8, ptr %ip, i32 -4
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dev, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %119 = getelementptr inbounds %struct.dinode, ptr %dip, i32 0, i32 19, i32 0, i32 1, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %118, ptr %119, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end23.if.end58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @diFreeSpecial(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ip, null
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %2, i64 noundef 0, i64 noundef 9223372036854775807) #8
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %4, i64 noundef 0) #8
  tail call void @iput(ptr noundef nonnull %ip) #8
  br label %return

return:                                           ; preds = %if.end5, %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diWrite(i16 noundef zeroext %tid, ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipimap2 = getelementptr i8, ptr %ip, i32 -772
  %4 = ptrtoint ptr %ipimap2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipimap2, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %ixpxd = getelementptr i8, ptr %ip, i32 -832
  %8 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ixpxd, align 4
  %10 = shl i32 %9, 24
  %conv.i = zext i32 %10 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr i8, ptr %ip, i32 -828
  %11 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr2.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %conv1.i = zext i32 %13 to i64
  %add.i = or i64 %shl.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %tobool.not = icmp eq i64 %add.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %14 = and i32 %9, -256
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %_imap = getelementptr i8, ptr %5, i32 -112
  %16 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_imap, align 8
  %in_nbperiext = getelementptr inbounds %struct.dinomap, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_nbperiext, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp.not = icmp eq i32 %15, %19
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %1, ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and10 = lshr i32 %7, 3
  %20 = and i32 %and10, 3
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %l2nbperpage, align 2
  %conv = sext i16 %22 to i32
  %shl = shl i32 %20, %conv
  %conv11 = sext i32 %shl to i64
  %add = add nsw i64 %add.i, %conv11
  %and12 = and i32 %7, 7
  %sh_prom = zext i32 %conv to i64
  %shr15 = ashr i64 %add, %sh_prom
  %conv16 = trunc i64 %shr15 to i32
  %conv17 = trunc i64 %add to i32
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  %23 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nbperpage, align 4
  %conv18 = sext i16 %24 to i32
  %sub = add nsw i32 %conv18, -1
  %and19 = and i32 %sub, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end37_crit_edge, label %if.then21

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then21:                                        ; preds = %if.end
  %sub24 = sub i32 %conv18, %and19
  %l2niperblk = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 12
  %25 = ptrtoint ptr %l2niperblk to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %l2niperblk, align 4
  %conv25 = sext i16 %26 to i32
  %shl26 = shl i32 %sub24, %conv25
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %shl26)
  %cmp27 = icmp slt i32 %and12, %shl26
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %shl32 = shl i32 %and19, %conv25
  %add33 = add i32 %shl32, %and12
  br label %if.end37

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %add34 = add i32 %conv16, 1
  %sub35 = sub i32 %and12, %shl26
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29, %if.end.if.end37_crit_edge
  %pageno.0 = phi i32 [ %conv16, %if.then29 ], [ %add34, %if.else ], [ %conv16, %if.end.if.end37_crit_edge ]
  %rel_inode.0 = phi i32 [ %add33, %if.then29 ], [ %sub35, %if.else ], [ %and12, %if.end.if.end37_crit_edge ]
  br label %retry

retry:                                            ; preds = %if.end44.retry_crit_edge, %if.end37
  %27 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %l2nbperpage, align 2
  %conv39426 = zext i16 %28 to i32
  %shl40 = shl i32 %pageno.0, %conv39426
  %call41 = tail call ptr @__get_metapage(ptr noundef %5, i32 noundef %shl40, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %retry.cleanup_crit_edge, label %if.end44

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %retry
  %data = getelementptr inbounds %struct.metapage, ptr %call41, i32 0, i32 7
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %call47 = tail call ptr @txLock(i16 noundef zeroext %tid, ptr noundef %5, ptr noundef nonnull %call41, i32 noundef 32769) #8
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %if.end44.retry_crit_edge, label %if.end51

if.end44.retry_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry

if.end51:                                         ; preds = %if.end44
  %add.ptr.le = getelementptr %struct.dinode, ptr %30, i32 %rel_inode.0
  %lock = getelementptr inbounds %struct.tlock, ptr %call47, i32 0, i32 6
  %31 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ip, align 8
  %33 = and i16 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %33)
  %cmp54 = icmp eq i16 %33, 16384
  br i1 %cmp54, label %land.lhs.true, label %if.end51.if.end113_crit_edge

if.end51.if.end113_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

land.lhs.true:                                    ; preds = %if.end51
  %xtlid = getelementptr i8, ptr %ip, i32 -404
  %34 = ptrtoint ptr %xtlid to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %xtlid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool57.not = icmp eq i16 %35, 0
  br i1 %tobool57.not, label %land.lhs.true.if.end113_crit_edge, label %if.then58

land.lhs.true.if.end113_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then58:                                        ; preds = %land.lhs.true
  %conv56 = zext i16 %35 to i32
  %36 = ptrtoint ptr %xtlid to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %xtlid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxLock to i32))
  %37 = load ptr, ptr @TxLock, align 4
  %type60 = getelementptr %struct.tlock, ptr %37, i32 %conv56, i32 3
  %38 = ptrtoint ptr %type60 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %type60, align 2
  %40 = and i16 %39, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool63.not = icmp eq i16 %40, 0
  br i1 %tobool63.not, label %do.end, label %do.end75

do.end:                                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 677, ptr noundef nonnull @.str.29) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 677, 0\0A.popsection", ""() #8, !srcloc !159
  unreachable

do.end75:                                         ; preds = %if.then58
  %or = or i16 %39, 256
  %41 = ptrtoint ptr %type60 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %or, ptr %type60, align 2
  %mp79 = getelementptr %struct.tlock, ptr %37, i32 %conv56, i32 4
  %42 = ptrtoint ptr %mp79 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call41, ptr %mp79, align 4
  %lock80 = getelementptr %struct.tlock, ptr %37, i32 %conv56, i32 6
  %u81 = getelementptr i8, ptr %ip, i32 -400
  %u82 = getelementptr %struct.dinode, ptr %30, i32 %rel_inode.0, i32 19
  %index = getelementptr inbounds %struct.linelock, ptr %lock80, i32 0, i32 2
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp85442 = icmp sgt i8 %44, 0
  br i1 %cmp85442, label %for.body.preheader, label %do.end75.for.end_crit_edge

do.end75.for.end_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %do.end75
  %lv83 = getelementptr inbounds %struct.linelock, ptr %lock80, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %n.0444 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %lv.0443 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %lv83, %for.body.preheader ]
  %45 = ptrtoint ptr %lv.0443 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lv.0443, align 1
  %idxprom87 = zext i8 %46 to i32
  %arrayidx88 = getelementptr [18 x %struct.xad], ptr %u82, i32 0, i32 %idxprom87
  %arrayidx91 = getelementptr [18 x %struct.xad], ptr %u81, i32 0, i32 %idxprom87
  %length = getelementptr inbounds %struct.lv, ptr %lv.0443, i32 0, i32 1
  %47 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %length, align 1
  %conv92 = zext i8 %48 to i32
  %shl93 = shl nuw nsw i32 %conv92, 4
  %49 = call ptr @memcpy(ptr %arrayidx88, ptr %arrayidx91, i32 %shl93)
  %inc = add nuw nsw i32 %n.0444, 1
  %incdec.ptr = getelementptr %struct.lv, ptr %lv.0443, i32 1
  %50 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %index, align 1
  %conv84 = sext i8 %51 to i32
  %cmp85 = icmp slt i32 %inc, %conv84
  br i1 %cmp85, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end75.for.end_crit_edge
  %nextindex = getelementptr inbounds %struct.xtheader, ptr %u82, i32 0, i32 4
  %52 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nextindex, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %54)
  %cmp97446 = icmp ugt i16 %54, 2
  br i1 %cmp97446, label %for.body99.preheader, label %for.end.if.end113_crit_edge

for.end.if.end113_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

for.body99.preheader:                             ; preds = %for.end
  %arrayidx94 = getelementptr [18 x %struct.xad], ptr %u82, i32 0, i32 2
  br label %for.body99

for.body99:                                       ; preds = %for.inc109.for.body99_crit_edge, %for.body99.preheader
  %xad.0448 = phi ptr [ %incdec.ptr111, %for.inc109.for.body99_crit_edge ], [ %arrayidx94, %for.body99.preheader ]
  %n.1447 = phi i32 [ %inc110, %for.inc109.for.body99_crit_edge ], [ 2, %for.body99.preheader ]
  %55 = ptrtoint ptr %xad.0448 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %xad.0448, align 4
  %57 = and i8 %56, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool102.not = icmp eq i8 %57, 0
  br i1 %tobool102.not, label %for.body99.for.inc109_crit_edge, label %if.then103

for.body99.for.inc109_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc109

if.then103:                                       ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #10
  %and106 = and i8 %56, -4
  %58 = ptrtoint ptr %xad.0448 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %and106, ptr %xad.0448, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %if.then103, %for.body99.for.inc109_crit_edge
  %inc110 = add nuw nsw i32 %n.1447, 1
  %incdec.ptr111 = getelementptr %struct.xad, ptr %xad.0448, i32 1
  %59 = ptrtoint ptr %nextindex to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %nextindex, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv96 = zext i16 %61 to i32
  %cmp97 = icmp ult i32 %inc110, %conv96
  br i1 %cmp97, label %for.inc109.for.body99_crit_edge, label %for.inc109.if.end113_crit_edge

for.inc109.if.end113_crit_edge:                   ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

for.inc109.for.body99_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body99

if.end113:                                        ; preds = %for.inc109.if.end113_crit_edge, %for.end.if.end113_crit_edge, %land.lhs.true.if.end113_crit_edge, %if.end51.if.end113_crit_edge
  %blid = getelementptr i8, ptr %ip, i32 -748
  %62 = ptrtoint ptr %blid to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %blid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp115 = icmp eq i16 %63, 0
  br i1 %cmp115, label %if.end113.inlineData_crit_edge, label %if.end118

if.end113.inlineData_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %inlineData

if.end118:                                        ; preds = %if.end113
  %conv114 = zext i16 %63 to i32
  %64 = ptrtoint ptr %blid to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %blid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxLock to i32))
  %65 = load ptr, ptr @TxLock, align 4
  %type122 = getelementptr %struct.tlock, ptr %65, i32 %conv114, i32 3
  %66 = ptrtoint ptr %type122 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %type122, align 2
  %conv123 = zext i16 %67 to i32
  %or126 = or i16 %67, 256
  store i16 %or126, ptr %type122, align 2
  %mp128 = getelementptr %struct.tlock, ptr %65, i32 %conv114, i32 4
  %68 = ptrtoint ptr %mp128 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call41, ptr %mp128, align 4
  %lock129 = getelementptr %struct.tlock, ptr %65, i32 %conv114, i32 6
  %and130 = and i32 %conv123, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.else181, label %if.then132

if.then132:                                       ; preds = %if.end118
  %u136 = getelementptr i8, ptr %ip, i32 -400
  %_u2 = getelementptr %struct.dinode, ptr %30, i32 %rel_inode.0, i32 19, i32 0, i32 1
  %index142 = getelementptr inbounds %struct.linelock, ptr %lock129, i32 0, i32 2
  %69 = ptrtoint ptr %index142 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %index142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp144451 = icmp sgt i8 %70, 0
  br i1 %cmp144451, label %for.body146.preheader, label %if.then132.for.end159_crit_edge

if.then132.for.end159_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end159

for.body146.preheader:                            ; preds = %if.then132
  %lv139 = getelementptr inbounds %struct.linelock, ptr %lock129, i32 0, i32 6
  br label %for.body146

for.body146:                                      ; preds = %for.body146.for.body146_crit_edge, %for.body146.preheader
  %n.2453 = phi i32 [ %inc157, %for.body146.for.body146_crit_edge ], [ 0, %for.body146.preheader ]
  %lv.1452 = phi ptr [ %incdec.ptr158, %for.body146.for.body146_crit_edge ], [ %lv139, %for.body146.preheader ]
  %71 = ptrtoint ptr %lv.1452 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %lv.1452, align 1
  %idxprom148 = zext i8 %72 to i32
  %arrayidx149 = getelementptr [18 x %struct.xad], ptr %_u2, i32 0, i32 %idxprom148
  %arrayidx152 = getelementptr [18 x %struct.xad], ptr %u136, i32 0, i32 %idxprom148
  %length153 = getelementptr inbounds %struct.lv, ptr %lv.1452, i32 0, i32 1
  %73 = ptrtoint ptr %length153 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %length153, align 1
  %conv154 = zext i8 %74 to i32
  %shl155 = shl nuw nsw i32 %conv154, 4
  %75 = call ptr @memcpy(ptr %arrayidx149, ptr %arrayidx152, i32 %shl155)
  %inc157 = add nuw nsw i32 %n.2453, 1
  %incdec.ptr158 = getelementptr %struct.lv, ptr %lv.1452, i32 1
  %76 = ptrtoint ptr %index142 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %index142, align 1
  %conv143 = sext i8 %77 to i32
  %cmp144 = icmp slt i32 %inc157, %conv143
  br i1 %cmp144, label %for.body146.for.body146_crit_edge, label %for.body146.for.end159_crit_edge

for.body146.for.end159_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end159

for.body146.for.body146_crit_edge:                ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body146

for.end159:                                       ; preds = %for.body146.for.end159_crit_edge, %if.then132.for.end159_crit_edge
  %nextindex162 = getelementptr inbounds %struct.xtheader, ptr %_u2, i32 0, i32 4
  %78 = ptrtoint ptr %nextindex162 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nextindex162, align 2
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %80)
  %cmp164455 = icmp ugt i16 %80, 2
  br i1 %cmp164455, label %for.body166.preheader, label %for.end159.inlineData_crit_edge

for.end159.inlineData_crit_edge:                  ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %inlineData

for.body166.preheader:                            ; preds = %for.end159
  %arrayidx160 = getelementptr [18 x %struct.xad], ptr %_u2, i32 0, i32 2
  br label %for.body166

for.body166:                                      ; preds = %for.inc177.for.body166_crit_edge, %for.body166.preheader
  %xad135.0457 = phi ptr [ %incdec.ptr179, %for.inc177.for.body166_crit_edge ], [ %arrayidx160, %for.body166.preheader ]
  %n.3456 = phi i32 [ %inc178, %for.inc177.for.body166_crit_edge ], [ 2, %for.body166.preheader ]
  %81 = ptrtoint ptr %xad135.0457 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %xad135.0457, align 4
  %83 = and i8 %82, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool170.not = icmp eq i8 %83, 0
  br i1 %tobool170.not, label %for.body166.for.inc177_crit_edge, label %if.then171

for.body166.for.inc177_crit_edge:                 ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc177

if.then171:                                       ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #10
  %and174 = and i8 %82, -4
  %84 = ptrtoint ptr %xad135.0457 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %and174, ptr %xad135.0457, align 4
  br label %for.inc177

for.inc177:                                       ; preds = %if.then171, %for.body166.for.inc177_crit_edge
  %inc178 = add nuw nsw i32 %n.3456, 1
  %incdec.ptr179 = getelementptr %struct.xad, ptr %xad135.0457, i32 1
  %85 = ptrtoint ptr %nextindex162 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %nextindex162, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86)
  %conv163 = zext i16 %87 to i32
  %cmp164 = icmp ult i32 %inc178, %conv163
  br i1 %cmp164, label %for.inc177.for.body166_crit_edge, label %for.inc177.inlineData_crit_edge

for.inc177.inlineData_crit_edge:                  ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #10
  br label %inlineData

for.inc177.for.body166_crit_edge:                 ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body166

if.else181:                                       ; preds = %if.end118
  %and182 = and i32 %conv123, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body212, label %if.then184

if.then184:                                       ; preds = %if.else181
  %_dtroot = getelementptr i8, ptr %ip, i32 -304
  %_dtroot189 = getelementptr %struct.dinode, ptr %30, i32 %rel_inode.0, i32 19, i32 0, i32 1
  %index193 = getelementptr inbounds %struct.linelock, ptr %lock129, i32 0, i32 2
  %88 = ptrtoint ptr %index193 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %index193, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp195460 = icmp sgt i8 %89, 0
  br i1 %cmp195460, label %for.body197.preheader, label %if.then184.inlineData_crit_edge

if.then184.inlineData_crit_edge:                  ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  br label %inlineData

for.body197.preheader:                            ; preds = %if.then184
  %lv190 = getelementptr inbounds %struct.linelock, ptr %lock129, i32 0, i32 6
  br label %for.body197

for.body197:                                      ; preds = %for.body197.for.body197_crit_edge, %for.body197.preheader
  %n.4462 = phi i32 [ %inc208, %for.body197.for.body197_crit_edge ], [ 0, %for.body197.preheader ]
  %lv.2461 = phi ptr [ %incdec.ptr209, %for.body197.for.body197_crit_edge ], [ %lv190, %for.body197.preheader ]
  %90 = ptrtoint ptr %lv.2461 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %lv.2461, align 1
  %idxprom199 = zext i8 %91 to i32
  %arrayidx200 = getelementptr [128 x %struct.dtslot], ptr %_dtroot189, i32 0, i32 %idxprom199
  %arrayidx203 = getelementptr [128 x %struct.dtslot], ptr %_dtroot, i32 0, i32 %idxprom199
  %length204 = getelementptr inbounds %struct.lv, ptr %lv.2461, i32 0, i32 1
  %92 = ptrtoint ptr %length204 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %length204, align 1
  %conv205 = zext i8 %93 to i32
  %shl206 = shl nuw nsw i32 %conv205, 5
  %94 = call ptr @memcpy(ptr %arrayidx200, ptr %arrayidx203, i32 %shl206)
  %inc208 = add nuw nsw i32 %n.4462, 1
  %incdec.ptr209 = getelementptr %struct.lv, ptr %lv.2461, i32 1
  %95 = ptrtoint ptr %index193 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %index193, align 1
  %conv194 = sext i8 %96 to i32
  %cmp195 = icmp slt i32 %inc208, %conv194
  br i1 %cmp195, label %for.body197.for.body197_crit_edge, label %for.body197.inlineData_crit_edge

for.body197.inlineData_crit_edge:                 ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #10
  br label %inlineData

for.body197.for.body197_crit_edge:                ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body197

do.body212:                                       ; preds = %if.else181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %97 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp213 = icmp sgt i32 %97, 0
  br i1 %cmp213, label %do.end218, label %do.body212.inlineData_crit_edge

do.body212.inlineData_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #10
  br label %inlineData

do.end218:                                        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #10
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %inlineData

inlineData:                                       ; preds = %do.end218, %do.body212.inlineData_crit_edge, %for.body197.inlineData_crit_edge, %if.then184.inlineData_crit_edge, %for.inc177.inlineData_crit_edge, %for.end159.inlineData_crit_edge, %if.end113.inlineData_crit_edge
  %98 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %ip, align 8
  %100 = and i16 %99, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %100)
  %cmp229 = icmp eq i16 %100, -24576
  br i1 %cmp229, label %land.lhs.true231, label %inlineData.if.end250_crit_edge

inlineData.if.end250_crit_edge:                   ; preds = %inlineData
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

land.lhs.true231:                                 ; preds = %inlineData
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %101 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %102)
  %cmp232 = icmp slt i64 %102, 256
  br i1 %cmp232, label %if.then234, label %land.lhs.true231.if.end250_crit_edge

land.lhs.true231.if.end250_crit_edge:             ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.then234:                                       ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #10
  %lv235 = getelementptr inbounds %struct.tlock, ptr %call47, i32 0, i32 6, i32 4
  %index236 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %103 = ptrtoint ptr %index236 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %index236, align 1
  %idxprom237 = sext i8 %104 to i32
  %arrayidx238 = getelementptr [20 x %struct.lv], ptr %lv235, i32 0, i32 %idxprom237
  %and12.tr428 = trunc i32 %and12 to i8
  %105 = shl nuw nsw i8 %and12.tr428, 2
  %conv241 = or i8 %105, 2
  %106 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv241, ptr %arrayidx238, align 1
  %length243 = getelementptr [20 x %struct.lv], ptr %lv235, i32 0, i32 %idxprom237, i32 1
  %107 = ptrtoint ptr %length243 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 2, ptr %length243, align 1
  %108 = getelementptr %struct.dinode, ptr %30, i32 %rel_inode.0, i32 19, i32 0, i32 1, i32 0, i32 1
  %109 = getelementptr i8, ptr %ip, i32 -368
  %110 = call ptr @memcpy(ptr %108, ptr %109, i32 256)
  %111 = load i8, ptr %index236, align 1
  %inc249 = add i8 %111, 1
  store i8 %inc249, ptr %index236, align 1
  br label %if.end250

if.end250:                                        ; preds = %if.then234, %land.lhs.true231.if.end250_crit_edge, %inlineData.if.end250_crit_edge
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %112 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %cflag, align 4
  %114 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool253.not = icmp eq i32 %114, 0
  br i1 %tobool253.not, label %if.end250.if.end272_crit_edge, label %if.then254

if.end250.if.end272_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = trunc i32 %and12 to i8
  %.pre465 = shl nuw nsw i8 %.pre, 2
  br label %if.end272

if.then254:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  %lv255 = getelementptr inbounds %struct.tlock, ptr %call47, i32 0, i32 6, i32 4
  %index256 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %115 = ptrtoint ptr %index256 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %index256, align 1
  %idxprom257 = sext i8 %116 to i32
  %arrayidx258 = getelementptr [20 x %struct.lv], ptr %lv255, i32 0, i32 %idxprom257
  %and12.tr427 = trunc i32 %and12 to i8
  %117 = shl nuw nsw i8 %and12.tr427, 2
  %conv261 = or i8 %117, 3
  %118 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv261, ptr %arrayidx258, align 1
  %length263 = getelementptr [20 x %struct.lv], ptr %lv255, i32 0, i32 %idxprom257, i32 1
  %119 = ptrtoint ptr %length263 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %length263, align 1
  %_inlineea = getelementptr %struct.dinode, ptr %30, i32 %rel_inode.0, i32 19, i32 0, i32 1, i32 0, i32 1, i32 128
  %_inline_ea = getelementptr i8, ptr %ip, i32 -240
  %120 = call ptr @memcpy(ptr %_inlineea, ptr %_inline_ea, i32 128)
  %121 = load i8, ptr %index256, align 1
  %inc269 = add i8 %121, 1
  store i8 %inc269, ptr %index256, align 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %cflag) #8
  br label %if.end272

if.end272:                                        ; preds = %if.then254, %if.end250.if.end272_crit_edge
  %conv278.pre-phi = phi i8 [ %.pre465, %if.end250.if.end272_crit_edge ], [ %117, %if.then254 ]
  %lv273 = getelementptr inbounds %struct.tlock, ptr %call47, i32 0, i32 6, i32 4
  %index274 = getelementptr inbounds %struct.linelock, ptr %lock, i32 0, i32 2
  %122 = ptrtoint ptr %index274 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %index274, align 1
  %idxprom275 = sext i8 %123 to i32
  %arrayidx276 = getelementptr [20 x %struct.lv], ptr %lv273, i32 0, i32 %idxprom275
  %124 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv278.pre-phi, ptr %arrayidx276, align 1
  tail call fastcc void @copy_to_dinode(ptr noundef %add.ptr.le, ptr noundef %ip)
  %call282 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %cflag) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  %length291 = getelementptr [20 x %struct.lv], ptr %lv273, i32 0, i32 %idxprom275, i32 1
  br i1 %tobool283.not, label %if.else290, label %if.then284

if.then284:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %length291 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 2, ptr %length291, align 1
  %u286 = getelementptr %struct.dinode, ptr %30, i32 %rel_inode.0, i32 19
  %u288 = getelementptr i8, ptr %ip, i32 -400
  %126 = call ptr @memcpy(ptr %u286, ptr %u288, i32 96)
  br label %if.end292

if.else290:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %length291 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %length291, align 1
  br label %if.end292

if.end292:                                        ; preds = %if.else290, %if.then284
  %128 = ptrtoint ptr %index274 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %index274, align 1
  %inc294 = add i8 %129, 1
  store i8 %inc294, ptr %index274, align 1
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call41, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef nonnull %call41) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end292, %retry.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end292 ], [ -5, %retry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @txLock(i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diFree(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %amp = alloca ptr, align 4
  %bmp = alloca ptr, align 4
  %cmp = alloca ptr, align 4
  %dmp = alloca ptr, align 4
  %iplist = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amp) #8
  %2 = ptrtoint ptr %amp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %amp, align 4, !annotation !160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bmp) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmp) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmp) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %ipimap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ipimap1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipimap1, align 4
  %_imap = getelementptr i8, ptr %8, i32 -112
  %9 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_imap, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iplist) #8
  %11 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !160
  %12 = getelementptr inbounds [3 x ptr], ptr %iplist, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %12, align 4, !annotation !160
  %14 = getelementptr inbounds [3 x ptr], ptr %iplist, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %14, align 4, !annotation !160
  %shr = lshr i32 %1, 12
  %in_nextiag = getelementptr inbounds %struct.dinomap, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %in_nextiag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_nextiag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %17)
  %cmp3.not = icmp slt i32 %shr, %17
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %10, i32 noundef 32, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %20 = ptrtoint ptr %in_nextiag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_nextiag, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %19, ptr noundef nonnull @.str.35, i32 noundef %1, i32 noundef %shr, i32 noundef %21) #8
  br label %cleanup412

if.end:                                           ; preds = %entry
  %agstart = getelementptr i8, ptr %ip, i32 -760
  %22 = ptrtoint ptr %agstart to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %agstart, align 8
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %6, i32 0, i32 23
  %24 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmap, align 4
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dn_agl2size, align 4
  %sh_prom = zext i32 %27 to i64
  %shr10 = lshr i64 %23, %sh_prom
  %conv = trunc i64 %shr10 to i32
  %arrayidx = getelementptr %struct.inomap, ptr %10, i32 0, i32 3, i32 %conv
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #8
  %rdwrlock = getelementptr i8, ptr %8, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock, i32 noundef 1) #8
  %im_ipimap.i = getelementptr inbounds %struct.inomap, ptr %10, i32 0, i32 1
  %28 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %im_ipimap.i, align 4
  %add.i = add nuw nsw i32 %shr, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i, align 16
  %l2nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %l2nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %l2nbperpage.i, align 2
  %conv8.i = zext i16 %35 to i32
  %shl.i = shl i32 %add.i, %conv8.i
  %call3.i = tail call ptr @__get_metapage(ptr noundef %29, i32 noundef %shl.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not = icmp eq ptr %call3.i, null
  br i1 %cmp.i.not, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx) #8
  br label %cleanup412

if.end18:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %and = lshr i32 %1, 5
  %38 = and i32 %and, 127
  %and20 = and i32 %1, 31
  %shr21 = lshr i32 -2147483648, %and20
  %arrayidx22 = getelementptr %struct.iag, ptr %37, i32 0, i32 12, i32 %38
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx22, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %and23 = and i32 %41, %shr21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %43, ptr noundef nonnull @.str.36) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end18.if.end27_crit_edge
  %arrayidx28 = getelementptr %struct.iag, ptr %37, i32 0, i32 14, i32 %38
  %44 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx28, align 4
  %46 = shl i32 %45, 24
  %conv.i = zext i32 %46 to i64
  %shl.i655 = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr %struct.iag, ptr %37, i32 0, i32 14, i32 %38, i32 1
  %47 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr2.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %conv1.i = zext i32 %49 to i64
  %add.i656 = or i64 %shl.i655, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i656)
  %tobool30.not = icmp eq i64 %add.i656, 0
  br i1 %tobool30.not, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx) #8
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %51, ptr noundef nonnull @.str.37) #8
  br label %cleanup412

if.end37:                                         ; preds = %if.end27
  %52 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx22, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %neg = xor i32 %shr21, -1
  %and40 = and i32 %54, %neg
  %arrayidx42 = getelementptr %struct.dinomap, ptr %10, i32 0, i32 8, i32 %conv
  %numfree = getelementptr %struct.dinomap, ptr %10, i32 0, i32 8, i32 %conv, i32 3
  %55 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %numfree, align 4
  %numinos = getelementptr %struct.dinomap, ptr %10, i32 0, i32 8, i32 %conv, i32 2
  %57 = ptrtoint ptr %numinos to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %numinos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp46 = icmp sgt i32 %56, %58
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx) #8
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %60, ptr noundef nonnull @.str.38) #8
  br label %cleanup412

if.end54:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool55.not = icmp ne i32 %and40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %56)
  %cmp60 = icmp slt i32 %56, 96
  %or.cond = select i1 %tobool55.not, i1 true, i1 %cmp60
  br i1 %or.cond, label %if.end54.if.then79_crit_edge, label %lor.lhs.false62

if.end54.if.then79_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79

lor.lhs.false62:                                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %56)
  %cmp67 = icmp ult i32 %56, 288
  br i1 %cmp67, label %land.lhs.true, label %lor.lhs.false62.if.end132_crit_edge

lor.lhs.false62.if.end132_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

land.lhs.true:                                    ; preds = %lor.lhs.false62
  %mul = mul nuw nsw i32 %56, 100
  %div = sdiv i32 %mul, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %div)
  %cmp77 = icmp slt i32 %div, 26
  br i1 %cmp77, label %land.lhs.true.if.then79_crit_edge, label %land.lhs.true.if.end132_crit_edge

land.lhs.true.if.end132_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

land.lhs.true.if.then79_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79

if.then79:                                        ; preds = %land.lhs.true.if.then79_crit_edge, %if.end54.if.then79_crit_edge
  %nfreeinos = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 9
  %61 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nfreeinos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp80 = icmp eq i32 %62, 0
  br i1 %cmp80, label %if.then82, label %if.then79.if.end108_crit_edge

if.then79.if.end108_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then82:                                        ; preds = %if.then79
  %63 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp86 = icmp sgt i32 %64, -1
  br i1 %cmp86, label %if.then88, label %if.then82.if.end98_crit_edge

if.then82.if.end98_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then88:                                        ; preds = %if.then82
  %call89 = call fastcc i32 @diIAGRead(ptr noundef %10, i32 noundef %64, ptr noundef nonnull %amp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %if.then91

if.then91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %cleanup412

if.end96:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %amp, align 4
  %data97 = getelementptr inbounds %struct.metapage, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %data97 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data97, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %inofreeback = getelementptr inbounds %struct.iag, ptr %68, i32 0, i32 3
  %70 = ptrtoint ptr %inofreeback to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %inofreeback, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %66, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef %66) #8
  br label %if.end98

if.end98:                                         ; preds = %if.end96, %if.then82.if.end98_crit_edge
  %71 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx42, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %inofreefwd = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 2
  %74 = ptrtoint ptr %inofreefwd to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %inofreefwd, align 4
  %inofreeback103 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 3
  %75 = ptrtoint ptr %inofreeback103 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %inofreeback103, align 8
  %76 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr, ptr %arrayidx42, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end98, %if.then79.if.end108_crit_edge
  tail call void @up_read(ptr noundef %rdwrlock) #8
  %77 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp113 = icmp eq i32 %78, -1
  br i1 %cmp113, label %if.then115, label %if.end108.if.end122_crit_edge

if.end108.if.end122_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then115:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %79 = lshr i32 %38, 5
  %and117 = and i32 %and, 31
  %shr118 = lshr i32 -2147483648, %and117
  %neg119 = xor i32 %shr118, -1
  %80 = tail call i32 @llvm.bswap.i32(i32 %neg119)
  %arrayidx120 = getelementptr %struct.iag, ptr %37, i32 0, i32 7, i32 %79
  %81 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx120, align 4
  %and121 = and i32 %82, %80
  store i32 %and121, ptr %arrayidx120, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then115, %if.end108.if.end122_crit_edge
  %83 = tail call i32 @llvm.bswap.i32(i32 %and40)
  %84 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx22, align 4
  %85 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nfreeinos, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %add.i661 = add i32 %87, 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %add.i661) #8
  %89 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %nfreeinos, align 4
  %90 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %numfree, align 4
  %add = add i32 %91, 1
  store i32 %add, ptr %numfree, align 4
  %im_numfree = getelementptr inbounds %struct.inomap, ptr %10, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %im_numfree, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %im_numfree, i32 1, i32 3, i32 1) #8
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %im_numfree, ptr %im_numfree, i32 1, ptr elementtype(i32) %im_numfree) #8, !srcloc !161
  tail call void @mutex_unlock(ptr noundef %arrayidx) #8
  %flag.i662 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i662) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %cleanup412

if.end132:                                        ; preds = %land.lhs.true.if.end132_crit_edge, %lor.lhs.false62.if.end132_crit_edge
  %93 = ptrtoint ptr %dmp to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %dmp, align 4
  %94 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %cmp, align 4
  %95 = ptrtoint ptr %bmp to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %bmp, align 4
  %96 = ptrtoint ptr %amp to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %amp, align 4
  %nfreeexts = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 10
  %97 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nfreeexts, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %98, label %if.end132.if.end171_crit_edge [
    i32 0, label %if.then135
    i32 2130706432, label %if.then151
  ]

if.end132.if.end171_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then135:                                       ; preds = %if.end132
  %extfree = getelementptr %struct.dinomap, ptr %10, i32 0, i32 8, i32 %conv, i32 1
  %100 = ptrtoint ptr %extfree to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %extfree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp139 = icmp sgt i32 %101, -1
  br i1 %cmp139, label %if.then141, label %if.then135.if.end171_crit_edge

if.then135.if.end171_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then141:                                       ; preds = %if.then135
  %call142 = call fastcc i32 @diIAGRead(ptr noundef %10, i32 noundef %101, ptr noundef nonnull %amp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.then141.error_out_crit_edge

if.then141.error_out_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end145:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %amp, align 4
  %data146 = getelementptr inbounds %struct.metapage, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %data146 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data146, align 4
  br label %if.end171

if.then151:                                       ; preds = %if.end132
  %extfreefwd = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 4
  %106 = ptrtoint ptr %extfreefwd to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %extfreefwd, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp152 = icmp sgt i32 %108, -1
  br i1 %cmp152, label %if.then154, label %if.then151.if.end160_crit_edge

if.then151.if.end160_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then154:                                       ; preds = %if.then151
  %call155 = call fastcc i32 @diIAGRead(ptr noundef %10, i32 noundef %108, ptr noundef nonnull %amp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.then154.error_out_crit_edge

if.then154.error_out_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end158:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %amp, align 4
  %data159 = getelementptr inbounds %struct.metapage, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %data159 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data159, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.end158, %if.then151.if.end160_crit_edge
  %aiagp.0 = phi ptr [ %112, %if.end158 ], [ null, %if.then151.if.end160_crit_edge ]
  %extfreeback = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 5
  %113 = ptrtoint ptr %extfreeback to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %extfreeback, align 8
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp161 = icmp sgt i32 %115, -1
  br i1 %cmp161, label %if.then163, label %if.end160.if.end171_crit_edge

if.end160.if.end171_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then163:                                       ; preds = %if.end160
  %call164 = call fastcc i32 @diIAGRead(ptr noundef %10, i32 noundef %115, ptr noundef nonnull %bmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.then163.error_out_crit_edge

if.then163.error_out_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end167:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %bmp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bmp, align 4
  %data168 = getelementptr inbounds %struct.metapage, ptr %117, i32 0, i32 7
  %118 = ptrtoint ptr %data168 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data168, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.end167, %if.end160.if.end171_crit_edge, %if.end145, %if.then135.if.end171_crit_edge, %if.end132.if.end171_crit_edge
  %aiagp.1 = phi ptr [ %105, %if.end145 ], [ null, %if.then135.if.end171_crit_edge ], [ %aiagp.0, %if.end167 ], [ %aiagp.0, %if.end160.if.end171_crit_edge ], [ null, %if.end132.if.end171_crit_edge ]
  %biagp.0 = phi ptr [ null, %if.end145 ], [ null, %if.then135.if.end171_crit_edge ], [ %119, %if.end167 ], [ null, %if.end160.if.end171_crit_edge ], [ null, %if.end132.if.end171_crit_edge ]
  %back.0 = phi i32 [ -1, %if.end145 ], [ -1, %if.then135.if.end171_crit_edge ], [ %115, %if.end167 ], [ %115, %if.end160.if.end171_crit_edge ], [ -1, %if.end132.if.end171_crit_edge ]
  %fwd.0 = phi i32 [ %101, %if.end145 ], [ %101, %if.then135.if.end171_crit_edge ], [ %108, %if.end167 ], [ %108, %if.end160.if.end171_crit_edge ], [ -1, %if.end132.if.end171_crit_edge ]
  %nfreeinos172 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 9
  %120 = ptrtoint ptr %nfreeinos172 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nfreeinos172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 520093696, i32 %121)
  %cmp173 = icmp eq i32 %121, 520093696
  br i1 %cmp173, label %if.then175, label %if.end171.if.end255_crit_edge

if.end171.if.end255_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

if.then175:                                       ; preds = %if.end171
  %inofreeback177 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 3
  %122 = ptrtoint ptr %inofreeback177 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %inofreeback177, align 8
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %inofreefwd179 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 2
  %125 = ptrtoint ptr %inofreefwd179 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %inofreefwd179, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %cmp180 = icmp sgt i32 %127, -1
  br i1 %cmp180, label %if.then182, label %if.then175.if.end214_crit_edge

if.then175.if.end214_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then182:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %fwd.0)
  %cmp183 = icmp eq i32 %127, %fwd.0
  br i1 %cmp183, label %if.then182.do.body_crit_edge, label %if.else187

if.then182.do.body_crit_edge:                     ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else187:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %back.0)
  %cmp188 = icmp eq i32 %127, %back.0
  br i1 %cmp188, label %if.else187.do.body_crit_edge, label %if.else192

if.else187.do.body_crit_edge:                     ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else192:                                       ; preds = %if.else187
  %call193 = call fastcc i32 @diIAGRead(ptr noundef %10, i32 noundef %127, ptr noundef nonnull %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.else192.do.body_crit_edge, label %if.else192.error_out_crit_edge

if.else192.error_out_crit_edge:                   ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.else192.do.body_crit_edge:                     ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.else192.do.body_crit_edge, %if.else187.do.body_crit_edge, %if.then182.do.body_crit_edge
  %.sink.in = phi ptr [ %amp, %if.then182.do.body_crit_edge ], [ %bmp, %if.else187.do.body_crit_edge ], [ %cmp, %if.else192.do.body_crit_edge ]
  %128 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %128)
  %.sink = load ptr, ptr %.sink.in, align 4
  %data186 = getelementptr inbounds %struct.metapage, ptr %.sink, i32 0, i32 7
  %129 = ptrtoint ptr %data186 to i32
  call void @__asan_load4_noabort(i32 %129)
  %ciagp.0 = load ptr, ptr %data186, align 4
  %cmp200.not = icmp eq ptr %ciagp.0, null
  br i1 %cmp200.not, label %do.end, label %do.body.if.end214_crit_edge

do.body.if.end214_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1093, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1093, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

if.end214:                                        ; preds = %do.body.if.end214_crit_edge, %if.then175.if.end214_crit_edge
  %ciagp.1 = phi ptr [ %ciagp.0, %do.body.if.end214_crit_edge ], [ null, %if.then175.if.end214_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp215 = icmp sgt i32 %124, -1
  br i1 %cmp215, label %if.then217, label %if.end214.if.end255_crit_edge

if.end214.if.end255_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

if.then217:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %fwd.0)
  %cmp218 = icmp eq i32 %124, %fwd.0
  br i1 %cmp218, label %if.then217.do.body235_crit_edge, label %if.else222

if.then217.do.body235_crit_edge:                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body235

if.else222:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %back.0)
  %cmp223 = icmp eq i32 %124, %back.0
  br i1 %cmp223, label %if.else222.do.body235_crit_edge, label %if.else227

if.else222.do.body235_crit_edge:                  ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body235

if.else227:                                       ; preds = %if.else222
  %call228 = call fastcc i32 @diIAGRead(ptr noundef %10, i32 noundef %124, ptr noundef nonnull %dmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.else227.do.body235_crit_edge, label %if.else227.error_out_crit_edge

if.else227.error_out_crit_edge:                   ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.else227.do.body235_crit_edge:                  ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body235

do.body235:                                       ; preds = %if.else227.do.body235_crit_edge, %if.else222.do.body235_crit_edge, %if.then217.do.body235_crit_edge
  %.sink695.in = phi ptr [ %amp, %if.then217.do.body235_crit_edge ], [ %bmp, %if.else222.do.body235_crit_edge ], [ %dmp, %if.else227.do.body235_crit_edge ]
  %130 = ptrtoint ptr %.sink695.in to i32
  call void @__asan_load4_noabort(i32 %130)
  %.sink695 = load ptr, ptr %.sink695.in, align 4
  %data221 = getelementptr inbounds %struct.metapage, ptr %.sink695, i32 0, i32 7
  %131 = ptrtoint ptr %data221 to i32
  call void @__asan_load4_noabort(i32 %131)
  %diagp.0 = load ptr, ptr %data221, align 4
  %cmp236.not = icmp eq ptr %diagp.0, null
  br i1 %cmp236.not, label %do.end241, label %do.body235.if.end255_crit_edge

do.body235.if.end255_crit_edge:                   ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

do.end241:                                        ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #10
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1107, ptr noundef nonnull @.str.43) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1107, 0\0A.popsection", ""() #8, !srcloc !163
  unreachable

if.end255:                                        ; preds = %do.body235.if.end255_crit_edge, %if.end214.if.end255_crit_edge, %if.end171.if.end255_crit_edge
  %ciagp.3 = phi ptr [ null, %if.end171.if.end255_crit_edge ], [ %ciagp.1, %do.body235.if.end255_crit_edge ], [ %ciagp.1, %if.end214.if.end255_crit_edge ]
  %diagp.3 = phi ptr [ null, %if.end171.if.end255_crit_edge ], [ %diagp.0, %do.body235.if.end255_crit_edge ], [ null, %if.end214.if.end255_crit_edge ]
  tail call void @up_read(ptr noundef %rdwrlock) #8
  %132 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx28, align 8
  %freepxd.sroa.0.0.extract.shift = lshr i64 %133, 32
  %freepxd.sroa.0.0.extract.trunc = trunc i64 %freepxd.sroa.0.0.extract.shift to i32
  %freepxd.sroa.7.0.extract.trunc = trunc i64 %133 to i32
  %134 = shl i32 %freepxd.sroa.0.0.extract.trunc, 24
  %conv.i664 = zext i32 %134 to i64
  %shl.i665 = shl nuw nsw i64 %conv.i664, 8
  %135 = tail call i32 @llvm.bswap.i32(i32 %freepxd.sroa.7.0.extract.trunc) #8
  %conv1.i667 = zext i32 %135 to i64
  %add.i668 = or i64 %shl.i665, %conv1.i667
  %136 = and i32 %freepxd.sroa.0.0.extract.trunc, -256
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #8
  tail call void @__invalidate_metapages(ptr noundef %ip, i64 noundef %add.i668, i32 noundef %137) #8
  %138 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nfreeexts, align 4
  %140 = zext i32 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %139, label %if.end255.if.end311_crit_edge [
    i32 0, label %if.then265
    i32 2130706432, label %if.then285
  ]

if.end255.if.end311_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

if.then265:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fwd.0)
  %cmp266 = icmp sgt i32 %fwd.0, -1
  br i1 %cmp266, label %if.then268, label %if.then265.if.end270_crit_edge

if.then265.if.end270_crit_edge:                   ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end270

if.then268:                                       ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #10
  %141 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %extfreeback269 = getelementptr inbounds %struct.iag, ptr %aiagp.1, i32 0, i32 5
  %142 = ptrtoint ptr %extfreeback269 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %extfreeback269, align 8
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %if.then265.if.end270_crit_edge
  %extfree274 = getelementptr %struct.dinomap, ptr %10, i32 0, i32 8, i32 %conv, i32 1
  %143 = ptrtoint ptr %extfree274 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %extfree274, align 4
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  %extfreefwd275 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 4
  %146 = ptrtoint ptr %extfreefwd275 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %extfreefwd275, align 4
  %extfreeback276 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 5
  %147 = ptrtoint ptr %extfreeback276 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -1, ptr %extfreeback276, align 8
  %148 = ptrtoint ptr %extfree274 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %shr, ptr %extfree274, align 4
  br label %if.end311

if.then285:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fwd.0)
  %cmp286 = icmp sgt i32 %fwd.0, -1
  br i1 %cmp286, label %if.then288, label %if.then285.if.end291_crit_edge

if.then285.if.end291_crit_edge:                   ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291

if.then288:                                       ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #10
  %extfreeback289 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 5
  %149 = ptrtoint ptr %extfreeback289 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %extfreeback289, align 8
  %extfreeback290 = getelementptr inbounds %struct.iag, ptr %aiagp.1, i32 0, i32 5
  %151 = ptrtoint ptr %extfreeback290 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %extfreeback290, align 8
  br label %if.end291

if.end291:                                        ; preds = %if.then288, %if.then285.if.end291_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %back.0)
  %cmp292 = icmp sgt i32 %back.0, -1
  %extfreefwd295 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 4
  %152 = ptrtoint ptr %extfreefwd295 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %extfreefwd295, align 4
  br i1 %cmp292, label %if.then294, label %if.else297

if.then294:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  %extfreefwd296 = getelementptr inbounds %struct.iag, ptr %biagp.0, i32 0, i32 4
  %154 = ptrtoint ptr %extfreefwd296 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %extfreefwd296, align 4
  br label %if.end303

if.else297:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  %155 = tail call i32 @llvm.bswap.i32(i32 %153)
  %extfree302 = getelementptr %struct.dinomap, ptr %10, i32 0, i32 8, i32 %conv, i32 1
  %156 = ptrtoint ptr %extfree302 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %extfree302, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.else297, %if.then294
  %extfreeback304 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 5
  %157 = ptrtoint ptr %extfreeback304 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -1, ptr %extfreeback304, align 8
  %extfreefwd305 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 4
  %158 = ptrtoint ptr %extfreefwd305 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -1, ptr %extfreefwd305, align 4
  %im_freelock = getelementptr inbounds %struct.inomap, ptr %10, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %im_freelock, i32 noundef 0) #8
  %159 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %10, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %iagfree = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 6
  %162 = ptrtoint ptr %iagfree to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %iagfree, align 4
  %163 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %shr, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %im_freelock) #8
  br label %if.end311

if.end311:                                        ; preds = %if.end303, %if.end270, %if.end255.if.end311_crit_edge
  %164 = ptrtoint ptr %nfreeinos172 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nfreeinos172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 520093696, i32 %165)
  %cmp313 = icmp eq i32 %165, 520093696
  br i1 %cmp313, label %if.then315, label %if.end311.if.end338_crit_edge

if.end311.if.end338_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end338

if.then315:                                       ; preds = %if.end311
  %inofreefwd316 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 2
  %166 = ptrtoint ptr %inofreefwd316 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %inofreefwd316, align 4
  %.mask = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp317 = icmp eq i32 %.mask, 0
  br i1 %cmp317, label %if.then319, label %if.then315.if.end322_crit_edge

if.then315.if.end322_crit_edge:                   ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end322

if.then319:                                       ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #10
  %inofreeback320 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 3
  %168 = ptrtoint ptr %inofreeback320 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %inofreeback320, align 8
  %inofreeback321 = getelementptr inbounds %struct.iag, ptr %ciagp.3, i32 0, i32 3
  %170 = ptrtoint ptr %inofreeback321 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %inofreeback321, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.then319, %if.then315.if.end322_crit_edge
  %inofreeback323 = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 3
  %171 = ptrtoint ptr %inofreeback323 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %inofreeback323, align 8
  %.mask647 = and i32 %172, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask647)
  %cmp324 = icmp eq i32 %.mask647, 0
  %173 = ptrtoint ptr %inofreefwd316 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %inofreefwd316, align 4
  br i1 %cmp324, label %if.then326, label %if.else329

if.then326:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  %inofreefwd328 = getelementptr inbounds %struct.iag, ptr %diagp.3, i32 0, i32 2
  %175 = ptrtoint ptr %inofreefwd328 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %inofreefwd328, align 4
  br label %if.end335

if.else329:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  %176 = tail call i32 @llvm.bswap.i32(i32 %174)
  %177 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %arrayidx42, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.else329, %if.then326
  %178 = ptrtoint ptr %inofreeback323 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %inofreeback323, align 8
  %179 = ptrtoint ptr %inofreefwd316 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %inofreefwd316, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.end335, %if.end311.if.end338_crit_edge
  %arrayidx339 = getelementptr %struct.iag, ptr %37, i32 0, i32 13, i32 %38
  %180 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx339, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp340.not = icmp eq i32 %181, 0
  br i1 %cmp340.not, label %if.end338.if.end344_crit_edge, label %if.then342

if.end338.if.end344_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

if.then342:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %183, ptr noundef nonnull @.str.44) #8
  br label %if.end344

if.end344:                                        ; preds = %if.then342, %if.end338.if.end344_crit_edge
  %184 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %arrayidx22, align 4
  %185 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %arrayidx28, align 4
  %186 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %addr2.i, align 4
  %187 = lshr i32 %38, 5
  %and352 = and i32 %and, 31
  %shr353 = lshr i32 -2147483648, %and352
  %188 = tail call i32 @llvm.bswap.i32(i32 %shr353)
  %arrayidx355 = getelementptr %struct.iag, ptr %37, i32 0, i32 7, i32 %187
  %189 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx355, align 4
  %or = or i32 %190, %188
  store i32 %or, ptr %arrayidx355, align 4
  %neg356 = xor i32 %shr353, -1
  %191 = tail call i32 @llvm.bswap.i32(i32 %neg356)
  %arrayidx357 = getelementptr %struct.iag, ptr %37, i32 0, i32 8, i32 %187
  %192 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx357, align 4
  %and358 = and i32 %193, %191
  store i32 %and358, ptr %arrayidx357, align 4
  %194 = ptrtoint ptr %nfreeinos172 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %nfreeinos172, align 4
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #8
  %add.i671 = add i32 %196, -31
  %197 = tail call i32 @llvm.bswap.i32(i32 %add.i671) #8
  %198 = ptrtoint ptr %nfreeinos172 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %nfreeinos172, align 4
  %199 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %nfreeexts, align 4
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #8
  %add.i672 = add i32 %201, 1
  %202 = tail call i32 @llvm.bswap.i32(i32 %add.i672) #8
  %203 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %nfreeexts, align 4
  %204 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %numfree, align 4
  %sub = add i32 %205, -31
  store i32 %sub, ptr %numfree, align 4
  %206 = ptrtoint ptr %numinos to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %numinos, align 4
  %sub369 = add i32 %207, -32
  store i32 %sub369, ptr %numinos, align 4
  %im_numfree370 = getelementptr inbounds %struct.inomap, ptr %10, i32 0, i32 6
  %call.i.i649 = tail call zeroext i1 @__kasan_check_write(ptr noundef %im_numfree370, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %im_numfree370, i32 1, i32 3, i32 1) #8
  %208 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %im_numfree370, ptr %im_numfree370, i32 31, ptr elementtype(i32) %im_numfree370) #8, !srcloc !164
  %im_numinos = getelementptr inbounds %struct.inomap, ptr %10, i32 0, i32 5
  %call.i.i650 = tail call zeroext i1 @__kasan_check_write(ptr noundef %im_numinos, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %im_numinos, i32 1, i32 3, i32 1) #8
  %209 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %im_numinos, ptr %im_numinos, i32 32, ptr elementtype(i32) %im_numinos) #8, !srcloc !164
  %210 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %amp, align 4
  %tobool371.not = icmp eq ptr %211, null
  br i1 %tobool371.not, label %if.end344.if.end373_crit_edge, label %if.then372

if.end344.if.end373_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373

if.then372:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i673 = getelementptr inbounds %struct.metapage, ptr %211, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i673) #8
  tail call void @release_metapage(ptr noundef nonnull %211) #8
  br label %if.end373

if.end373:                                        ; preds = %if.then372, %if.end344.if.end373_crit_edge
  %212 = ptrtoint ptr %bmp to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bmp, align 4
  %tobool374.not = icmp eq ptr %213, null
  br i1 %tobool374.not, label %if.end373.if.end376_crit_edge, label %if.then375

if.end373.if.end376_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end376

if.then375:                                       ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i674 = getelementptr inbounds %struct.metapage, ptr %213, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i674) #8
  tail call void @release_metapage(ptr noundef nonnull %213) #8
  br label %if.end376

if.end376:                                        ; preds = %if.then375, %if.end373.if.end376_crit_edge
  %214 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cmp, align 4
  %tobool377.not = icmp eq ptr %215, null
  br i1 %tobool377.not, label %if.end376.if.end379_crit_edge, label %if.then378

if.end376.if.end379_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end379

if.then378:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i675 = getelementptr inbounds %struct.metapage, ptr %215, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i675) #8
  tail call void @release_metapage(ptr noundef nonnull %215) #8
  br label %if.end379

if.end379:                                        ; preds = %if.then378, %if.end376.if.end379_crit_edge
  %216 = ptrtoint ptr %dmp to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dmp, align 4
  %tobool380.not = icmp eq ptr %217, null
  br i1 %tobool380.not, label %if.end379.if.end382_crit_edge, label %if.then381

if.end379.if.end382_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end382

if.then381:                                       ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i676 = getelementptr inbounds %struct.metapage, ptr %217, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i676) #8
  tail call void @release_metapage(ptr noundef nonnull %217) #8
  br label %if.end382

if.end382:                                        ; preds = %if.then381, %if.end379.if.end382_crit_edge
  %i_sb383 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %218 = ptrtoint ptr %i_sb383 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %i_sb383, align 4
  %call384 = tail call zeroext i16 @txBegin(ptr noundef %219, i32 noundef 2) #8
  %commit_mutex = getelementptr i8, ptr %8, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #8
  %call386 = tail call ptr @txLock(i16 noundef zeroext %call384, ptr noundef %8, ptr noundef nonnull %call3.i, i32 noundef 32832) #8
  %lock = getelementptr inbounds %struct.tlock, ptr %call386, i32 0, i32 6
  %flag = getelementptr inbounds %struct.tlock, ptr %call386, i32 0, i32 6, i32 2
  %220 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 1, ptr %flag, align 4
  %pxd = getelementptr inbounds %struct.tlock, ptr %call386, i32 0, i32 6, i32 4
  %221 = ptrtoint ptr %pxd to i32
  call void @__asan_storeN_noabort(i32 %221, i32 8)
  store i64 %133, ptr %pxd, align 4
  %index = getelementptr inbounds %struct.maplock, ptr %lock, i32 0, i32 2
  %222 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %index, align 1
  %flag.i678 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i678) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  %223 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %8, ptr %iplist, align 4
  %224 = inttoptr i32 %shr to ptr
  %225 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %224, ptr %12, align 4
  %226 = inttoptr i32 %38 to ptr
  %227 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %226, ptr %14, align 4
  %call391 = call i32 @txCommit(i16 noundef zeroext %call384, i32 noundef 1, ptr noundef nonnull %iplist, i32 noundef 2) #8
  call void @txEnd(i16 noundef zeroext %call384) #8
  call void @mutex_unlock(ptr noundef %commit_mutex) #8
  call void @mutex_unlock(ptr noundef %arrayidx) #8
  br label %cleanup412

error_out:                                        ; preds = %if.else227.error_out_crit_edge, %if.else192.error_out_crit_edge, %if.then163.error_out_crit_edge, %if.then154.error_out_crit_edge, %if.then141.error_out_crit_edge
  %rc.7 = phi i32 [ %call142, %if.then141.error_out_crit_edge ], [ %call155, %if.then154.error_out_crit_edge ], [ %call164, %if.then163.error_out_crit_edge ], [ %call193, %if.else192.error_out_crit_edge ], [ %call228, %if.else227.error_out_crit_edge ]
  tail call void @up_read(ptr noundef %rdwrlock) #8
  %228 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %amp, align 4
  %tobool398.not = icmp eq ptr %229, null
  br i1 %tobool398.not, label %error_out.if.end400_crit_edge, label %if.then399

error_out.if.end400_crit_edge:                    ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end400

if.then399:                                       ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %229) #8
  br label %if.end400

if.end400:                                        ; preds = %if.then399, %error_out.if.end400_crit_edge
  %230 = ptrtoint ptr %bmp to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bmp, align 4
  %tobool401.not = icmp eq ptr %231, null
  br i1 %tobool401.not, label %if.end400.if.end403_crit_edge, label %if.then402

if.end400.if.end403_crit_edge:                    ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end403

if.then402:                                       ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %231) #8
  br label %if.end403

if.end403:                                        ; preds = %if.then402, %if.end400.if.end403_crit_edge
  %232 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cmp, align 4
  %tobool404.not = icmp eq ptr %233, null
  br i1 %tobool404.not, label %if.end403.if.end406_crit_edge, label %if.then405

if.end403.if.end406_crit_edge:                    ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end406

if.then405:                                       ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %233) #8
  br label %if.end406

if.end406:                                        ; preds = %if.then405, %if.end403.if.end406_crit_edge
  %234 = ptrtoint ptr %dmp to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dmp, align 4
  %tobool407.not = icmp eq ptr %235, null
  br i1 %tobool407.not, label %if.end406.if.end409_crit_edge, label %if.then408

if.end406.if.end409_crit_edge:                    ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end409

if.then408:                                       ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %235) #8
  br label %if.end409

if.end409:                                        ; preds = %if.then408, %if.end406.if.end409_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %cleanup412

cleanup412:                                       ; preds = %if.end409, %if.end382, %if.end122, %if.then91, %if.then48, %if.then31, %if.then13, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then13 ], [ -5, %if.then48 ], [ %call89, %if.then91 ], [ 0, %if.end122 ], [ %rc.7, %if.end409 ], [ 0, %if.end382 ], [ -5, %if.then31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iplist) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalidate_metapages(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @txBegin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txCommit(i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEnd(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diAlloc(ptr nocapture noundef readonly %pip, i1 noundef zeroext %dir, ptr nocapture noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %pip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ipimap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ipimap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipimap1, align 4
  %_imap = getelementptr i8, ptr %5, i32 -112
  %6 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_imap, align 8
  %add.ptr.i362 = getelementptr i8, ptr %ip, i32 -848
  %ipimap4 = getelementptr i8, ptr %ip, i32 -772
  %8 = ptrtoint ptr %ipimap4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %ipimap4, align 4
  %9 = ptrtoint ptr %add.ptr.i362 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %add.ptr.i362, align 8
  br i1 %dir, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i364 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i364 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i364, align 16
  %ipbmap = getelementptr inbounds %struct.jfs_sb_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ipbmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipbmap, align 4
  %call8 = tail call i32 @dbNextAG(ptr noundef %15) #8
  %arrayidx = getelementptr %struct.inomap, ptr %7, i32 0, i32 3, i32 %call8
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #8
  br label %tryag

if.end:                                           ; preds = %entry
  %agstart = getelementptr i8, ptr %pip, i32 -760
  %16 = ptrtoint ptr %agstart to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %agstart, align 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i366 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i366 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i366, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmap, align 4
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dn_agl2size, align 4
  %sh_prom = zext i32 %25 to i64
  %shr = lshr i64 %17, %sh_prom
  %conv = trunc i64 %shr to i32
  %arrayidx15 = getelementptr %struct.bmap, ptr %23, i32 0, i32 3, i32 %conv
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx15, i32 noundef 4) #8
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool17.not = icmp eq i32 %27, 0
  br i1 %tobool17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i368 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i368 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i368, align 16
  %ipbmap21 = getelementptr inbounds %struct.jfs_sb_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ipbmap21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ipbmap21, align 4
  %call22 = tail call i32 @dbNextAG(ptr noundef %33) #8
  %arrayidx24 = getelementptr %struct.inomap, ptr %7, i32 0, i32 3, i32 %call22
  tail call void @mutex_lock_nested(ptr noundef %arrayidx24, i32 noundef 0) #8
  br label %tryag

if.end25:                                         ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %pip, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino, align 8
  %add = add i32 %35, 1
  %and = and i32 %add, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp, i32 %35, i32 %add
  %arrayidx31 = getelementptr %struct.inomap, ptr %7, i32 0, i32 3, i32 %conv
  tail call void @mutex_lock_nested(ptr noundef %arrayidx31, i32 noundef 0) #8
  %rdwrlock = getelementptr i8, ptr %5, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock, i32 noundef 1) #8
  %shr33 = lshr i32 %spec.select, 12
  %im_ipimap.i = getelementptr inbounds %struct.inomap, ptr %7, i32 0, i32 1
  %36 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %im_ipimap.i, align 4
  %add.i = add nuw nsw i32 %shr33, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i, align 16
  %l2nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %l2nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %l2nbperpage.i, align 2
  %conv8.i = zext i16 %43 to i32
  %shl.i = shl i32 %add.i, %conv8.i
  %call3.i = tail call ptr @__get_metapage(ptr noundef %37, i32 noundef %shl.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not = icmp eq ptr %call3.i, null
  br i1 %cmp.i.not, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx31) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end25
  %data = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %numfree = getelementptr %struct.dinomap, ptr %7, i32 0, i32 8, i32 %conv, i32 3
  %46 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %numfree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %47)
  %cmp43 = icmp slt i32 %47, 32
  br i1 %cmp43, label %land.rhs, label %if.end41.land.end_crit_edge

if.end41.land.end_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %nfreeexts = getelementptr inbounds %struct.iag, ptr %45, i32 0, i32 10
  %48 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nfreeexts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool45 = icmp ne i32 %49, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end41.land.end_crit_edge
  %50 = phi i1 [ false, %if.end41.land.end_crit_edge ], [ %tobool45, %land.rhs ]
  %nfreeinos = getelementptr inbounds %struct.iag, ptr %45, i32 0, i32 9
  %51 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nfreeinos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool46.not = icmp ne i32 %52, 0
  %brmerge = select i1 %tobool46.not, i1 true, i1 %50
  br i1 %brmerge, label %if.then48, label %land.end.if.end210_crit_edge

land.end.if.end210_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.then48:                                        ; preds = %land.end
  %53 = lshr i32 %and, 5
  %arrayidx50 = getelementptr %struct.iag, ptr %45, i32 0, i32 14, i32 %53
  %54 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx50, align 4
  %56 = shl i32 %55, 24
  %conv.i = zext i32 %56 to i64
  %shl.i371 = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr %struct.iag, ptr %45, i32 0, i32 14, i32 %53, i32 1
  %57 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr2.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %conv1.i = zext i32 %59 to i64
  %add.i372 = or i64 %shl.i371, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i372)
  %tobool52.not = icmp eq i64 %add.i372, 0
  br i1 %tobool52.not, label %if.then48.if.end90_crit_edge, label %if.then53

if.then48.if.end90_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then53:                                        ; preds = %if.then48
  %and54 = and i32 %add, 31
  %arrayidx55 = getelementptr %struct.iag, ptr %45, i32 0, i32 12, i32 %53
  %60 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx55, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %shl.i373 = shl i32 %62, %and54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl.i373)
  %cmp1122.i = icmp sgt i32 %shl.i373, -1
  br i1 %cmp1122.i, label %if.then53.if.then59_crit_edge, label %if.then53.for.inc.i_crit_edge

if.then53.for.inc.i_crit_edge:                    ; preds = %if.then53
  br label %for.inc.i

if.then53.if.then59_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.then53.for.inc.i_crit_edge
  %word.addr.025.i = phi i32 [ %shl14.i, %for.inc.i.for.inc.i_crit_edge ], [ %shl.i373, %if.then53.for.inc.i_crit_edge ]
  %bitno.024.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ %and54, %if.then53.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %bitno.024.i, 1
  %shl14.i = shl i32 %word.addr.025.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bitno.024.i)
  %cmp10.i = icmp ugt i32 %bitno.024.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl14.i)
  %cmp11.i = icmp sgt i32 %shl14.i, -1
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp11.i
  br i1 %or.cond.i, label %diFindFree.exit, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

diFindFree.exit:                                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %bitno.024.i)
  %cmp57 = icmp ult i32 %bitno.024.i, 31
  br i1 %cmp57, label %diFindFree.exit.if.then59_crit_edge, label %if.end83

diFindFree.exit.if.then59_crit_edge:              ; preds = %diFindFree.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.then59:                                        ; preds = %diFindFree.exit.if.then59_crit_edge, %if.then53.if.then59_crit_edge
  %bitno.0.lcssa.i442 = phi i32 [ %inc.i, %diFindFree.exit.if.then59_crit_edge ], [ %and54, %if.then53.if.then59_crit_edge ]
  %shl = and i32 %add, 4064
  %add60 = add nuw nsw i32 %bitno.0.lcssa.i442, %shl
  %call61 = tail call fastcc i32 @diAllocBit(ptr noundef %7, ptr noundef %45, i32 noundef %add60)
  tail call void @up_read(ptr noundef %rdwrlock) #8
  %63 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call61, label %do.end [
    i32 0, label %if.else
    i32 -5, label %if.then59.if.end80_crit_edge
  ]

if.then59.if.end80_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.end:                                           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1426, ptr noundef nonnull @.str.46) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1426, 0\0A.popsection", ""() #8, !srcloc !165
  unreachable

if.else:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i375 = and i32 %spec.select, -4096
  %add.i376 = add nuw i32 %add60, %shl.i375
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %64 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i376, ptr %i_ino.i, align 8
  %ixpxd.i = getelementptr i8, ptr %ip, i32 -832
  %65 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx50, align 8
  %67 = ptrtoint ptr %ixpxd.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %ixpxd.i, align 8
  %68 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %45, align 8
  %70 = tail call i64 @llvm.bswap.i64(i64 %69) #8
  %agstart1.i = getelementptr i8, ptr %ip, i32 -760
  %71 = ptrtoint ptr %agstart1.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %agstart1.i, align 8
  %active_ag.i = getelementptr i8, ptr %ip, i32 -749
  %72 = ptrtoint ptr %active_ag.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %active_ag.i, align 1
  %flag = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then59.if.end80_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx31) #8
  br label %cleanup

if.end83:                                         ; preds = %diFindFree.exit
  br i1 %50, label %if.end83.if.end90_crit_edge, label %if.then85

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %53)
  %cmp86 = icmp eq i32 %53, 127
  %add88 = add nuw nsw i32 %53, 1
  %spec.select360 = select i1 %cmp86, i32 0, i32 %add88
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end83.if.end90_crit_edge, %if.then48.if.end90_crit_edge
  %extno.0 = phi i32 [ %53, %if.end83.if.end90_crit_edge ], [ %spec.select360, %if.then85 ], [ %53, %if.then48.if.end90_crit_edge ]
  %and91 = and i32 %extno.0, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 0
  %shr95 = ashr i32 %extno.0, 5
  %sub = sub nuw nsw i32 32, %and91
  %shl100 = shl nsw i32 -1, %sub
  %cond102 = select i1 %cmp92, i32 0, i32 %shl100
  %arrayidx106 = getelementptr %struct.iag, ptr %45, i32 0, i32 8, i32 %shr95
  %73 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx106, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %or107 = or i32 %cond102, %75
  %.not = xor i1 %50, true
  %arrayidx104 = getelementptr %struct.iag, ptr %45, i32 0, i32 7, i32 %shr95
  %76 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx104, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %or = or i32 %cond102, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %tobool110.not = icmp eq i32 %or, -1
  br i1 %tobool110.not, label %if.end157, label %if.end90.if.then111_crit_edge

if.end90.if.then111_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

if.then111:                                       ; preds = %for.body.4.if.then111_crit_edge, %if.end198.2.if.then111_crit_edge, %if.end198.1.if.then111_crit_edge, %if.end198.if.then111_crit_edge, %if.end90.if.then111_crit_edge
  %inosmap.0455.lcssa = phi i32 [ %or, %if.end90.if.then111_crit_edge ], [ %109, %if.end198.if.then111_crit_edge ], [ %115, %if.end198.1.if.then111_crit_edge ], [ %121, %if.end198.2.if.then111_crit_edge ], [ %127, %for.body.4.if.then111_crit_edge ]
  %sword.0453.lcssa = phi i32 [ %shr95, %if.end90.if.then111_crit_edge ], [ %spec.select361, %if.end198.if.then111_crit_edge ], [ %spec.select361.1, %if.end198.1.if.then111_crit_edge ], [ %spec.select361.2, %if.end198.2.if.then111_crit_edge ], [ %spec.select361.3, %for.body.4.if.then111_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inosmap.0455.lcssa)
  %cmp1122.i377 = icmp sgt i32 %inosmap.0455.lcssa, -1
  br i1 %cmp1122.i377, label %if.then111.diFindFree.exit387_crit_edge, label %if.then111.for.inc.i385_crit_edge

if.then111.for.inc.i385_crit_edge:                ; preds = %if.then111
  br label %for.inc.i385

if.then111.diFindFree.exit387_crit_edge:          ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %diFindFree.exit387

for.inc.i385:                                     ; preds = %for.inc.i385.for.inc.i385_crit_edge, %if.then111.for.inc.i385_crit_edge
  %word.addr.025.i378 = phi i32 [ %shl14.i381, %for.inc.i385.for.inc.i385_crit_edge ], [ %inosmap.0455.lcssa, %if.then111.for.inc.i385_crit_edge ]
  %bitno.024.i379 = phi i32 [ %inc.i380, %for.inc.i385.for.inc.i385_crit_edge ], [ 0, %if.then111.for.inc.i385_crit_edge ]
  %inc.i380 = add nuw nsw i32 %bitno.024.i379, 1
  %shl14.i381 = shl i32 %word.addr.025.i378, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bitno.024.i379)
  %cmp10.i382 = icmp ugt i32 %bitno.024.i379, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl14.i381)
  %cmp11.i383 = icmp sgt i32 %shl14.i381, -1
  %or.cond.i384 = select i1 %cmp10.i382, i1 true, i1 %cmp11.i383
  br i1 %or.cond.i384, label %for.inc.i385.diFindFree.exit387_crit_edge, label %for.inc.i385.for.inc.i385_crit_edge

for.inc.i385.for.inc.i385_crit_edge:              ; preds = %for.inc.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i385

for.inc.i385.diFindFree.exit387_crit_edge:        ; preds = %for.inc.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %diFindFree.exit387

diFindFree.exit387:                               ; preds = %for.inc.i385.diFindFree.exit387_crit_edge, %if.then111.diFindFree.exit387_crit_edge
  %bitno.0.lcssa.i386 = phi i32 [ 0, %if.then111.diFindFree.exit387_crit_edge ], [ %inc.i380, %for.inc.i385.diFindFree.exit387_crit_edge ]
  %shl113 = shl i32 %sword.0453.lcssa, 5
  %add114 = add i32 %bitno.0.lcssa.i386, %shl113
  %arrayidx116 = getelementptr %struct.iag, ptr %45, i32 0, i32 12, i32 %add114
  %79 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx116, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp1122.i388 = icmp sgt i32 %81, -1
  br i1 %cmp1122.i388, label %diFindFree.exit387.if.end126_crit_edge, label %diFindFree.exit387.for.inc.i396_crit_edge

diFindFree.exit387.for.inc.i396_crit_edge:        ; preds = %diFindFree.exit387
  br label %for.inc.i396

diFindFree.exit387.if.end126_crit_edge:           ; preds = %diFindFree.exit387
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

for.inc.i396:                                     ; preds = %for.inc.i396.for.inc.i396_crit_edge, %diFindFree.exit387.for.inc.i396_crit_edge
  %word.addr.025.i389 = phi i32 [ %shl14.i392, %for.inc.i396.for.inc.i396_crit_edge ], [ %81, %diFindFree.exit387.for.inc.i396_crit_edge ]
  %bitno.024.i390 = phi i32 [ %inc.i391, %for.inc.i396.for.inc.i396_crit_edge ], [ 0, %diFindFree.exit387.for.inc.i396_crit_edge ]
  %inc.i391 = add nuw nsw i32 %bitno.024.i390, 1
  %shl14.i392 = shl i32 %word.addr.025.i389, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bitno.024.i390)
  %cmp10.i393 = icmp ugt i32 %bitno.024.i390, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl14.i392)
  %cmp11.i394 = icmp sgt i32 %shl14.i392, -1
  %or.cond.i395 = select i1 %cmp10.i393, i1 true, i1 %cmp11.i394
  br i1 %or.cond.i395, label %diFindFree.exit398, label %for.inc.i396.for.inc.i396_crit_edge

for.inc.i396.for.inc.i396_crit_edge:              ; preds = %for.inc.i396
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i396

diFindFree.exit398:                               ; preds = %for.inc.i396
  br i1 %cmp10.i393, label %if.then120, label %diFindFree.exit398.if.end126_crit_edge

diFindFree.exit398.if.end126_crit_edge:           ; preds = %diFindFree.exit398
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then120:                                       ; preds = %diFindFree.exit398
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx31) #8
  %i_sb125 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %82 = ptrtoint ptr %i_sb125 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_sb125, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %83, ptr noundef nonnull @.str.47) #8
  br label %cleanup

if.end126:                                        ; preds = %diFindFree.exit398.if.end126_crit_edge, %diFindFree.exit387.if.end126_crit_edge
  %bitno.0.lcssa.i397445 = phi i32 [ %inc.i391, %diFindFree.exit398.if.end126_crit_edge ], [ 0, %diFindFree.exit387.if.end126_crit_edge ]
  %shl127 = shl i32 %add114, 5
  %add128 = add nuw i32 %bitno.0.lcssa.i397445, %shl127
  %call129 = tail call fastcc i32 @diAllocBit(ptr noundef %7, ptr noundef %45, i32 noundef %add128)
  tail call void @up_read(ptr noundef %rdwrlock) #8
  %84 = zext i32 %call129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call129, label %do.end140 [
    i32 0, label %if.else152
    i32 -5, label %if.end126.if.end154_crit_edge
  ]

if.end126.if.end154_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

do.end140:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1509, ptr noundef nonnull @.str.46) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1509, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

if.else152:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i401 = and i32 %spec.select, -4096
  %add.i402 = add i32 %add128, %shl.i401
  %i_ino.i403 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %85 = ptrtoint ptr %i_ino.i403 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add.i402, ptr %i_ino.i403, align 8
  %ixpxd.i404 = getelementptr i8, ptr %ip, i32 -832
  %arrayidx.i405 = getelementptr %struct.iag, ptr %45, i32 0, i32 14, i32 %add114
  %86 = ptrtoint ptr %arrayidx.i405 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx.i405, align 8
  %88 = ptrtoint ptr %ixpxd.i404 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %ixpxd.i404, align 8
  %89 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %45, align 8
  %91 = tail call i64 @llvm.bswap.i64(i64 %90) #8
  %agstart1.i406 = getelementptr i8, ptr %ip, i32 -760
  %92 = ptrtoint ptr %agstart1.i406 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %agstart1.i406, align 8
  %active_ag.i407 = getelementptr i8, ptr %ip, i32 -749
  %93 = ptrtoint ptr %active_ag.i407 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %active_ag.i407, align 1
  %flag153 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag153) #8
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.end126.if.end154_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx31) #8
  br label %cleanup

if.end157:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or107)
  %tobool160.not = icmp eq i32 %or107, -1
  %or.cond = select i1 %.not, i1 true, i1 %tobool160.not
  br i1 %or.cond, label %if.end198, label %if.end157.if.then161_crit_edge

if.end157.if.then161_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

if.then161:                                       ; preds = %if.end157.4.if.then161_crit_edge, %if.end157.3.if.then161_crit_edge, %if.end157.2.if.then161_crit_edge, %if.end157.1.if.then161_crit_edge, %if.end157.if.then161_crit_edge
  %extsmap.0456.lcssa483 = phi i32 [ %or107, %if.end157.if.then161_crit_edge ], [ %106, %if.end157.1.if.then161_crit_edge ], [ %112, %if.end157.2.if.then161_crit_edge ], [ %118, %if.end157.3.if.then161_crit_edge ], [ %124, %if.end157.4.if.then161_crit_edge ]
  %sword.0453.lcssa479 = phi i32 [ %shr95, %if.end157.if.then161_crit_edge ], [ %spec.select361, %if.end157.1.if.then161_crit_edge ], [ %spec.select361.1, %if.end157.2.if.then161_crit_edge ], [ %spec.select361.2, %if.end157.3.if.then161_crit_edge ], [ %spec.select361.3, %if.end157.4.if.then161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %extsmap.0456.lcssa483)
  %cmp1122.i408 = icmp sgt i32 %extsmap.0456.lcssa483, -1
  br i1 %cmp1122.i408, label %if.then161.diFindFree.exit418_crit_edge, label %if.then161.for.inc.i416_crit_edge

if.then161.for.inc.i416_crit_edge:                ; preds = %if.then161
  br label %for.inc.i416

if.then161.diFindFree.exit418_crit_edge:          ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  br label %diFindFree.exit418

for.inc.i416:                                     ; preds = %for.inc.i416.for.inc.i416_crit_edge, %if.then161.for.inc.i416_crit_edge
  %word.addr.025.i409 = phi i32 [ %shl14.i412, %for.inc.i416.for.inc.i416_crit_edge ], [ %extsmap.0456.lcssa483, %if.then161.for.inc.i416_crit_edge ]
  %bitno.024.i410 = phi i32 [ %inc.i411, %for.inc.i416.for.inc.i416_crit_edge ], [ 0, %if.then161.for.inc.i416_crit_edge ]
  %inc.i411 = add nuw nsw i32 %bitno.024.i410, 1
  %shl14.i412 = shl i32 %word.addr.025.i409, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bitno.024.i410)
  %cmp10.i413 = icmp ugt i32 %bitno.024.i410, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl14.i412)
  %cmp11.i414 = icmp sgt i32 %shl14.i412, -1
  %or.cond.i415 = select i1 %cmp10.i413, i1 true, i1 %cmp11.i414
  br i1 %or.cond.i415, label %for.inc.i416.diFindFree.exit418_crit_edge, label %for.inc.i416.for.inc.i416_crit_edge

for.inc.i416.for.inc.i416_crit_edge:              ; preds = %for.inc.i416
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i416

for.inc.i416.diFindFree.exit418_crit_edge:        ; preds = %for.inc.i416
  call void @__sanitizer_cov_trace_pc() #10
  br label %diFindFree.exit418

diFindFree.exit418:                               ; preds = %for.inc.i416.diFindFree.exit418_crit_edge, %if.then161.diFindFree.exit418_crit_edge
  %bitno.0.lcssa.i417 = phi i32 [ 0, %if.then161.diFindFree.exit418_crit_edge ], [ %inc.i411, %for.inc.i416.diFindFree.exit418_crit_edge ]
  %shl163 = shl i32 %sword.0453.lcssa479, 5
  %add164 = add i32 %bitno.0.lcssa.i417, %shl163
  %call165 = tail call fastcc i32 @diNewExt(ptr noundef %7, ptr noundef %45, i32 noundef %add164)
  %94 = zext i32 %call165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call165, label %do.end178 [
    i32 0, label %if.else190
    i32 -28, label %diFindFree.exit418.if.end210_crit_edge
    i32 -5, label %diFindFree.exit418.if.end193_crit_edge
  ]

diFindFree.exit418.if.end193_crit_edge:           ; preds = %diFindFree.exit418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

diFindFree.exit418.if.end210_crit_edge:           ; preds = %diFindFree.exit418
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

do.end178:                                        ; preds = %diFindFree.exit418
  call void @__sanitizer_cov_trace_pc() #10
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1548, ptr noundef nonnull @.str.46) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1548, 0\0A.popsection", ""() #8, !srcloc !167
  unreachable

if.else190:                                       ; preds = %diFindFree.exit418
  call void @__sanitizer_cov_trace_pc() #10
  %shl191 = shl i32 %add164, 5
  %shl.i419 = and i32 %spec.select, -4096
  %add.i420 = add i32 %shl191, %shl.i419
  %i_ino.i421 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %95 = ptrtoint ptr %i_ino.i421 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add.i420, ptr %i_ino.i421, align 8
  %ixpxd.i422 = getelementptr i8, ptr %ip, i32 -832
  %arrayidx.i423 = getelementptr %struct.iag, ptr %45, i32 0, i32 14, i32 %add164
  %96 = ptrtoint ptr %arrayidx.i423 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx.i423, align 8
  %98 = ptrtoint ptr %ixpxd.i422 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %ixpxd.i422, align 8
  %99 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %45, align 8
  %101 = tail call i64 @llvm.bswap.i64(i64 %100) #8
  %agstart1.i424 = getelementptr i8, ptr %ip, i32 -760
  %102 = ptrtoint ptr %agstart1.i424 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %agstart1.i424, align 8
  %active_ag.i425 = getelementptr i8, ptr %ip, i32 -749
  %103 = ptrtoint ptr %active_ag.i425 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %active_ag.i425, align 1
  %flag192 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag192) #8
  br label %if.end193

if.end193:                                        ; preds = %if.else190, %diFindFree.exit418.if.end193_crit_edge
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx31) #8
  br label %cleanup

if.end198:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr95)
  %cmp199 = icmp eq i32 %shr95, 3
  %add203 = add nsw i32 %shr95, 1
  %spec.select361 = select i1 %cmp199, i32 0, i32 %add203
  %arrayidx209 = getelementptr %struct.iag, ptr %45, i32 0, i32 8, i32 %spec.select361
  %104 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx209, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %arrayidx207 = getelementptr %struct.iag, ptr %45, i32 0, i32 7, i32 %spec.select361
  %107 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx207, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %tobool110.not.1 = icmp eq i32 %108, -1
  br i1 %tobool110.not.1, label %if.end157.1, label %if.end198.if.then111_crit_edge

if.end198.if.then111_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

if.end157.1:                                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %tobool160.not.1 = icmp eq i32 %105, -1
  %or.cond.1 = select i1 %.not, i1 true, i1 %tobool160.not.1
  br i1 %or.cond.1, label %if.end198.1, label %if.end157.1.if.then161_crit_edge

if.end157.1.if.then161_crit_edge:                 ; preds = %if.end157.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

if.end198.1:                                      ; preds = %if.end157.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select361)
  %cmp199.1 = icmp eq i32 %spec.select361, 3
  %add203.1 = add nsw i32 %spec.select361, 1
  %spec.select361.1 = select i1 %cmp199.1, i32 0, i32 %add203.1
  %arrayidx209.1 = getelementptr %struct.iag, ptr %45, i32 0, i32 8, i32 %spec.select361.1
  %110 = ptrtoint ptr %arrayidx209.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx209.1, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %arrayidx207.1 = getelementptr %struct.iag, ptr %45, i32 0, i32 7, i32 %spec.select361.1
  %113 = ptrtoint ptr %arrayidx207.1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx207.1, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %tobool110.not.2 = icmp eq i32 %114, -1
  br i1 %tobool110.not.2, label %if.end157.2, label %if.end198.1.if.then111_crit_edge

if.end198.1.if.then111_crit_edge:                 ; preds = %if.end198.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

if.end157.2:                                      ; preds = %if.end198.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %tobool160.not.2 = icmp eq i32 %111, -1
  %or.cond.2 = select i1 %.not, i1 true, i1 %tobool160.not.2
  br i1 %or.cond.2, label %if.end198.2, label %if.end157.2.if.then161_crit_edge

if.end157.2.if.then161_crit_edge:                 ; preds = %if.end157.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

if.end198.2:                                      ; preds = %if.end157.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select361.1)
  %cmp199.2 = icmp eq i32 %spec.select361.1, 3
  %add203.2 = add nsw i32 %spec.select361.1, 1
  %spec.select361.2 = select i1 %cmp199.2, i32 0, i32 %add203.2
  %arrayidx209.2 = getelementptr %struct.iag, ptr %45, i32 0, i32 8, i32 %spec.select361.2
  %116 = ptrtoint ptr %arrayidx209.2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx209.2, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %arrayidx207.2 = getelementptr %struct.iag, ptr %45, i32 0, i32 7, i32 %spec.select361.2
  %119 = ptrtoint ptr %arrayidx207.2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx207.2, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %120)
  %tobool110.not.3 = icmp eq i32 %120, -1
  br i1 %tobool110.not.3, label %if.end157.3, label %if.end198.2.if.then111_crit_edge

if.end198.2.if.then111_crit_edge:                 ; preds = %if.end198.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

if.end157.3:                                      ; preds = %if.end198.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %tobool160.not.3 = icmp eq i32 %117, -1
  %or.cond.3 = select i1 %.not, i1 true, i1 %tobool160.not.3
  br i1 %or.cond.3, label %if.end198.3, label %if.end157.3.if.then161_crit_edge

if.end157.3.if.then161_crit_edge:                 ; preds = %if.end157.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

if.end198.3:                                      ; preds = %if.end157.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select361.2)
  %cmp199.3 = icmp eq i32 %spec.select361.2, 3
  %add203.3 = add i32 %spec.select361.2, 1
  %spec.select361.3 = select i1 %cmp199.3, i32 0, i32 %add203.3
  %arrayidx209.3 = getelementptr %struct.iag, ptr %45, i32 0, i32 8, i32 %spec.select361.3
  %122 = ptrtoint ptr %arrayidx209.3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx209.3, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  br i1 %cmp92, label %if.end198.3.if.end210_crit_edge, label %for.body.4

if.end198.3.if.end210_crit_edge:                  ; preds = %if.end198.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

for.body.4:                                       ; preds = %if.end198.3
  %arrayidx207.3 = getelementptr %struct.iag, ptr %45, i32 0, i32 7, i32 %spec.select361.3
  %125 = ptrtoint ptr %arrayidx207.3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx207.3, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %tobool110.not.4 = icmp eq i32 %126, -1
  br i1 %tobool110.not.4, label %if.end157.4, label %for.body.4.if.then111_crit_edge

for.body.4.if.then111_crit_edge:                  ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then111

if.end157.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %tobool160.not.4 = icmp eq i32 %123, -1
  %or.cond.4 = select i1 %.not, i1 true, i1 %tobool160.not.4
  br i1 %or.cond.4, label %if.end157.4.if.end210_crit_edge, label %if.end157.4.if.then161_crit_edge

if.end157.4.if.then161_crit_edge:                 ; preds = %if.end157.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

if.end157.4.if.end210_crit_edge:                  ; preds = %if.end157.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.end210:                                        ; preds = %if.end157.4.if.end210_crit_edge, %if.end198.3.if.end210_crit_edge, %diFindFree.exit418.if.end210_crit_edge, %land.end.if.end210_crit_edge
  tail call void @up_read(ptr noundef %rdwrlock) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %tryag

tryag:                                            ; preds = %if.end210, %if.then18, %if.then
  %agno.0 = phi i32 [ %call8, %if.then ], [ %call22, %if.then18 ], [ %conv, %if.end210 ]
  %call214 = tail call fastcc i32 @diAllocAG(ptr noundef %7, i32 noundef %agno.0, i1 noundef zeroext %dir, ptr noundef %ip)
  %arrayidx216 = getelementptr %struct.inomap, ptr %7, i32 0, i32 3, i32 %agno.0
  tail call void @mutex_unlock(ptr noundef %arrayidx216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call214)
  %cmp217.not = icmp eq i32 %call214, -28
  br i1 %cmp217.not, label %if.end220, label %tryag.cleanup_crit_edge

tryag.cleanup_crit_edge:                          ; preds = %tryag
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end220:                                        ; preds = %tryag
  %im_ipimap.i428 = getelementptr inbounds %struct.inomap, ptr %7, i32 0, i32 1
  %128 = ptrtoint ptr %im_ipimap.i428 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %im_ipimap.i428, align 4
  %i_sb.i429 = getelementptr inbounds %struct.inode, ptr %129, i32 0, i32 8
  %130 = ptrtoint ptr %i_sb.i429 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i_sb.i429, align 4
  %s_fs_info.i.i430 = getelementptr inbounds %struct.super_block, ptr %131, i32 0, i32 33
  %132 = ptrtoint ptr %s_fs_info.i.i430 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_fs_info.i.i430, align 16
  %bmap.i = getelementptr inbounds %struct.jfs_sb_info, ptr %133, i32 0, i32 23
  %134 = ptrtoint ptr %bmap.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bmap.i, align 4
  %dn_maxag.i = getelementptr inbounds %struct.dbmap, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %dn_maxag.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dn_maxag.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end220
  %ag.0.in.i = phi i32 [ %agno.0, %if.end220 ], [ %ag.0.i, %for.body.i.for.cond.i_crit_edge ]
  %ag.0.i = add i32 %ag.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ag.0.i, i32 %137)
  %cmp.not.i = icmp sgt i32 %ag.0.i, %137
  br i1 %cmp.not.i, label %for.cond5.preheader.i, label %for.body.i

for.cond5.preheader.i:                            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agno.0)
  %cmp644.i = icmp sgt i32 %agno.0, 0
  br i1 %cmp644.i, label %for.cond5.preheader.i.for.body7.i_crit_edge, label %for.cond5.preheader.i.cleanup_crit_edge

for.cond5.preheader.i.cleanup_crit_edge:          ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond5.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond5.preheader.i
  br label %for.body7.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i431 = getelementptr %struct.inomap, ptr %7, i32 0, i32 3, i32 %ag.0.i
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i431, i32 noundef 0) #8
  %call1.i = tail call fastcc i32 @diAllocAG(ptr noundef %7, i32 noundef %ag.0.i, i1 noundef zeroext %dir, ptr noundef %ip) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx.i431) #8
  %cmp4.not.i = icmp eq i32 %call1.i, -28
  br i1 %cmp4.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.cond5.i:                                      ; preds = %for.body7.i
  %inc18.i = add nuw nsw i32 %ag.145.i, 1
  %exitcond.not.i = icmp eq i32 %inc18.i, %agno.0
  br i1 %exitcond.not.i, label %for.cond5.i.cleanup_crit_edge, label %for.cond5.i.for.body7.i_crit_edge

for.cond5.i.for.body7.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i

for.cond5.i.cleanup_crit_edge:                    ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body7.i:                                      ; preds = %for.cond5.i.for.body7.i_crit_edge, %for.cond5.preheader.i.for.body7.i_crit_edge
  %ag.145.i = phi i32 [ %inc18.i, %for.cond5.i.for.body7.i_crit_edge ], [ 0, %for.cond5.preheader.i.for.body7.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.inomap, ptr %7, i32 0, i32 3, i32 %ag.145.i
  tail call void @mutex_lock_nested(ptr noundef %arrayidx9.i, i32 noundef 0) #8
  %call11.i = tail call fastcc i32 @diAllocAG(ptr noundef %7, i32 noundef %ag.145.i, i1 noundef zeroext %dir, ptr noundef %ip) #8
  tail call void @mutex_unlock(ptr noundef %arrayidx9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call11.i)
  %cmp14.not.i = icmp eq i32 %call11.i, -28
  br i1 %cmp14.not.i, label %for.cond5.i, label %for.body7.i.cleanup_crit_edge

for.body7.i.cleanup_crit_edge:                    ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body7.i.cleanup_crit_edge, %for.cond5.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.cond5.preheader.i.cleanup_crit_edge, %tryag.cleanup_crit_edge, %if.end193, %if.end154, %if.then120, %if.end80, %if.then36
  %retval.0 = phi i32 [ -5, %if.then36 ], [ %call61, %if.end80 ], [ -5, %if.then120 ], [ %call129, %if.end154 ], [ %call165, %if.end193 ], [ %call214, %tryag.cleanup_crit_edge ], [ -28, %for.cond5.preheader.i.cleanup_crit_edge ], [ -28, %for.cond5.i.cleanup_crit_edge ], [ %call11.i, %for.body7.i.cleanup_crit_edge ], [ %call1.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbNextAG(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @diAllocBit(ptr noundef %imap, ptr nocapture noundef %iagp, i32 noundef %ino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nfreeinos = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 9
  %0 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfreeinos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp = icmp eq i32 %1, 16777216
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %entry
  %inofreefwd = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 2
  %2 = ptrtoint ptr %inofreefwd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inofreefwd, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp1 = icmp sgt i32 %4, -1
  br i1 %cmp1, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.then
  %im_ipimap.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %5 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %im_ipimap.i, align 4
  %add.i = add nuw i32 %4, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %l2nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %l2nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %l2nbperpage.i, align 2
  %conv8.i = zext i16 %12 to i32
  %shl.i = shl i32 %add.i, %conv8.i
  %call3.i = tail call ptr @__get_metapage(ptr noundef %6, i32 noundef %shl.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not = icmp eq ptr %call3.i, null
  br i1 %cmp.i.not, label %if.then2.cleanup_crit_edge, label %if.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then.if.end5_crit_edge
  %amp.0 = phi ptr [ %call3.i, %if.end ], [ null, %if.then.if.end5_crit_edge ]
  %aiagp.0 = phi ptr [ %14, %if.end ], [ null, %if.then.if.end5_crit_edge ]
  %inofreeback = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 3
  %15 = ptrtoint ptr %inofreeback to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inofreeback, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp6 = icmp sgt i32 %17, -1
  br i1 %cmp6, label %if.then7, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then7:                                         ; preds = %if.end5
  %im_ipimap.i129 = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %18 = ptrtoint ptr %im_ipimap.i129 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %im_ipimap.i129, align 4
  %add.i130 = add nuw i32 %17, 1
  %i_sb.i131 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i131 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i131, align 4
  %s_fs_info.i.i132 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i132 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i132, align 16
  %l2nbperpage.i133 = getelementptr inbounds %struct.jfs_sb_info, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %l2nbperpage.i133 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %l2nbperpage.i133, align 2
  %conv8.i134 = zext i16 %25 to i32
  %shl.i135 = shl i32 %add.i130, %conv8.i134
  %call3.i136 = tail call ptr @__get_metapage(ptr noundef %19, i32 noundef %shl.i135, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i137.not = icmp eq ptr %call3.i136, null
  br i1 %cmp.i137.not, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.then7
  %tobool12.not = icmp eq ptr %amp.0, null
  br i1 %tobool12.not, label %if.then11.cleanup_crit_edge, label %if.then13

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %amp.0) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %data16 = getelementptr inbounds %struct.metapage, ptr %call3.i136, i32 0, i32 7
  %26 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end5.if.end18_crit_edge, %entry.if.end18_crit_edge
  %amp.1 = phi ptr [ %amp.0, %if.end15 ], [ %amp.0, %if.end5.if.end18_crit_edge ], [ null, %entry.if.end18_crit_edge ]
  %bmp.0 = phi ptr [ %call3.i136, %if.end15 ], [ null, %if.end5.if.end18_crit_edge ], [ null, %entry.if.end18_crit_edge ]
  %aiagp.1 = phi ptr [ %aiagp.0, %if.end15 ], [ %aiagp.0, %if.end5.if.end18_crit_edge ], [ null, %entry.if.end18_crit_edge ]
  %biagp.0 = phi ptr [ %27, %if.end15 ], [ null, %if.end5.if.end18_crit_edge ], [ null, %entry.if.end18_crit_edge ]
  %28 = ptrtoint ptr %iagp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %iagp, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %im_ipimap = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %31 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %im_ipimap, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bmap, align 4
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dn_agl2size, align 4
  %sh_prom = zext i32 %40 to i64
  %shr = lshr i64 %30, %sh_prom
  %conv = trunc i64 %shr to i32
  %shr20 = ashr i32 %ino, 5
  %and = and i32 %ino, 31
  %shr21 = lshr i32 -2147483648, %and
  %arrayidx = getelementptr %struct.iag, ptr %iagp, i32 0, i32 13, i32 %shr20
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %and22 = and i32 %43, %shr21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 0
  br i1 %cmp23.not, label %lor.lhs.false, label %if.end18.if.then34_crit_edge

if.end18.if.then34_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

lor.lhs.false:                                    ; preds = %if.end18
  %arrayidx25 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 12, i32 %shr20
  %44 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx25, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %and26 = and i32 %46, %shr21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %lor.lhs.false29, label %lor.lhs.false.if.then34_crit_edge

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 14, i32 %shr20
  %47 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx30, align 4
  %49 = shl i32 %48, 24
  %conv.i = zext i32 %49 to i64
  %shl.i139 = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr %struct.iag, ptr %iagp, i32 0, i32 14, i32 %shr20, i32 1
  %50 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr2.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %conv1.i = zext i32 %52 to i64
  %add.i140 = or i64 %shl.i139, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i140)
  %cmp32 = icmp eq i64 %add.i140, 0
  br i1 %cmp32, label %lor.lhs.false29.if.then34_crit_edge, label %if.end43

lor.lhs.false29.if.then34_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false29.if.then34_crit_edge, %lor.lhs.false.if.then34_crit_edge, %if.end18.if.then34_crit_edge
  %tobool35.not = icmp eq ptr %amp.1, null
  br i1 %tobool35.not, label %if.then34.if.end37_crit_edge, label %if.then36

if.then34.if.end37_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %amp.1) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then34.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %bmp.0, null
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %bmp.0) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %53 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %im_ipimap, align 4
  %i_sb42 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %i_sb42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb42, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %56, ptr noundef nonnull @.str.71) #8
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false29
  %57 = tail call i32 @llvm.bswap.i32(i32 %shr21)
  %or = or i32 %45, %57
  %58 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp48 = icmp eq i32 %or, -1
  br i1 %cmp48, label %if.then50, label %if.end43.if.end56_crit_edge

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %shr51 = ashr i32 %ino, 10
  %and52 = and i32 %shr20, 31
  %shr53 = lshr i32 -2147483648, %and52
  %59 = tail call i32 @llvm.bswap.i32(i32 %shr53)
  %arrayidx54 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 7, i32 %shr51
  %60 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx54, align 4
  %or55 = or i32 %61, %59
  store i32 %or55, ptr %arrayidx54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.end43.if.end56_crit_edge
  %62 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nfreeinos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %63)
  %cmp58 = icmp eq i32 %63, 16777216
  br i1 %cmp58, label %if.then60, label %if.end56.if.end75_crit_edge

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then60:                                        ; preds = %if.end56
  %tobool61.not = icmp eq ptr %amp.1, null
  br i1 %tobool61.not, label %if.then60.if.end65_crit_edge, label %if.then62

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %inofreeback63 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 3
  %64 = ptrtoint ptr %inofreeback63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %inofreeback63, align 8
  %inofreeback64 = getelementptr inbounds %struct.iag, ptr %aiagp.1, i32 0, i32 3
  %66 = ptrtoint ptr %inofreeback64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %inofreeback64, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %amp.1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef nonnull %amp.1) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.then60.if.end65_crit_edge
  %tobool66.not = icmp eq ptr %bmp.0, null
  %inofreefwd70 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 2
  %67 = ptrtoint ptr %inofreefwd70 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %inofreefwd70, align 4
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %inofreefwd69 = getelementptr inbounds %struct.iag, ptr %biagp.0, i32 0, i32 2
  %69 = ptrtoint ptr %inofreefwd69 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %inofreefwd69, align 4
  %flag.i141 = getelementptr inbounds %struct.metapage, ptr %bmp.0, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i141) #8
  tail call void @release_metapage(ptr noundef nonnull %bmp.0) #8
  br label %if.end72

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %70 = tail call i32 @llvm.bswap.i32(i32 %68)
  %arrayidx71 = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv
  %71 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then67
  %inofreeback73 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 3
  %72 = ptrtoint ptr %inofreeback73 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %inofreeback73, align 8
  %inofreefwd74 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 2
  %73 = ptrtoint ptr %inofreefwd74 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %inofreefwd74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end72, %if.end56.if.end75_crit_edge
  %74 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nfreeinos, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  %add.i142 = add i32 %76, -1
  %77 = tail call i32 @llvm.bswap.i32(i32 %add.i142) #8
  %78 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %nfreeinos, align 4
  %numfree = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv, i32 3
  %79 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %numfree, align 4
  %sub = add i32 %80, -1
  store i32 %sub, ptr %numfree, align 4
  %im_numfree = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %im_numfree, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %im_numfree, i32 1, i32 3, i32 1) #8
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %im_numfree, ptr %im_numfree, i32 1, ptr elementtype(i32) %im_numfree) #8, !srcloc !164
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end40, %if.then13, %if.then11.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end40 ], [ 0, %if.end75 ], [ -5, %if.then2.cleanup_crit_edge ], [ -5, %if.then13 ], [ -5, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @diNewExt(ptr noundef %imap, ptr noundef %iagp, i32 noundef %extno) unnamed_addr #0 align 64 {
entry:
  %blkno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkno) #8
  %0 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blkno, align 8, !annotation !160
  %nfreeexts = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 10
  %1 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nfreeexts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %im_ipimap = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %3 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %im_ipimap, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %6, ptr noundef nonnull @.str.72) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %9 = ptrtoint ptr %iagp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %iagp, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %8, i32 0, i32 23
  %12 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmap, align 4
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dn_agl2size, align 4
  %sh_prom = zext i32 %15 to i64
  %shr = lshr i64 %11, %sh_prom
  %conv = trunc i64 %shr to i32
  %iagnum = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 1
  %16 = ptrtoint ptr %iagnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iagnum, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %2, label %if.end.if.end38_crit_edge [
    i32 16777216, label %if.then6
    i32 -2147483648, label %if.then27
  ]

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then6:                                         ; preds = %if.end
  %extfreefwd = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 4
  %20 = ptrtoint ptr %extfreefwd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %extfreefwd, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp7 = icmp sgt i32 %22, -1
  br i1 %cmp7, label %if.then9, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %if.then6
  %add.i = add nuw i32 %22, 1
  %l2nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %8, i32 0, i32 11
  %23 = ptrtoint ptr %l2nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %l2nbperpage.i, align 2
  %conv8.i = zext i16 %24 to i32
  %shl.i = shl i32 %add.i, %conv8.i
  %call3.i = tail call ptr @__get_metapage(ptr noundef %4, i32 noundef %shl.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not = icmp eq ptr %call3.i, null
  br i1 %cmp.i.not, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6.if.end14_crit_edge
  %amp.0 = phi ptr [ %call3.i, %if.end13 ], [ null, %if.then6.if.end14_crit_edge ]
  %aiagp.0 = phi ptr [ %26, %if.end13 ], [ null, %if.then6.if.end14_crit_edge ]
  %extfreeback = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 5
  %27 = ptrtoint ptr %extfreeback to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %extfreeback, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp15 = icmp sgt i32 %29, -1
  br i1 %cmp15, label %if.then17, label %if.end14.if.end38_crit_edge

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then17:                                        ; preds = %if.end14
  %30 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %im_ipimap, align 4
  %add.i377 = add nuw i32 %29, 1
  %i_sb.i378 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i378 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i378, align 4
  %s_fs_info.i.i379 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i379 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i379, align 16
  %l2nbperpage.i380 = getelementptr inbounds %struct.jfs_sb_info, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %l2nbperpage.i380 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %l2nbperpage.i380, align 2
  %conv8.i381 = zext i16 %37 to i32
  %shl.i382 = shl i32 %add.i377, %conv8.i381
  %call3.i383 = tail call ptr @__get_metapage(ptr noundef %31, i32 noundef %shl.i382, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i384.not = icmp eq ptr %call3.i383, null
  br i1 %cmp.i384.not, label %if.then17.error_out_crit_edge, label %if.end21

if.then17.error_out_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %data22 = getelementptr inbounds %struct.metapage, ptr %call3.i383, i32 0, i32 7
  %38 = ptrtoint ptr %data22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data22, align 4
  br label %if.end38

if.then27:                                        ; preds = %if.end
  %extfree = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv, i32 1
  %40 = ptrtoint ptr %extfree to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %extfree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp28 = icmp sgt i32 %41, -1
  br i1 %cmp28, label %if.then30, label %if.then27.if.end38_crit_edge

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then30:                                        ; preds = %if.then27
  %add.i387 = add nuw i32 %41, 1
  %l2nbperpage.i390 = getelementptr inbounds %struct.jfs_sb_info, ptr %8, i32 0, i32 11
  %42 = ptrtoint ptr %l2nbperpage.i390 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %l2nbperpage.i390, align 2
  %conv8.i391 = zext i16 %43 to i32
  %shl.i392 = shl i32 %add.i387, %conv8.i391
  %call3.i393 = tail call ptr @__get_metapage(ptr noundef %4, i32 noundef %shl.i392, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i394.not = icmp eq ptr %call3.i393, null
  br i1 %cmp.i394.not, label %if.then30.cleanup_crit_edge, label %if.end34

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %data35 = getelementptr inbounds %struct.metapage, ptr %call3.i393, i32 0, i32 7
  %44 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data35, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.then27.if.end38_crit_edge, %if.end21, %if.end14.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %amp.1 = phi ptr [ null, %if.end.if.end38_crit_edge ], [ %call3.i393, %if.end34 ], [ null, %if.then27.if.end38_crit_edge ], [ %amp.0, %if.end21 ], [ %amp.0, %if.end14.if.end38_crit_edge ]
  %bmp.0 = phi ptr [ null, %if.end.if.end38_crit_edge ], [ null, %if.end34 ], [ null, %if.then27.if.end38_crit_edge ], [ %call3.i383, %if.end21 ], [ null, %if.end14.if.end38_crit_edge ]
  %fwd.0 = phi i32 [ -1, %if.end.if.end38_crit_edge ], [ %41, %if.end34 ], [ %41, %if.then27.if.end38_crit_edge ], [ %22, %if.end21 ], [ %22, %if.end14.if.end38_crit_edge ]
  %back.0 = phi i32 [ -1, %if.end.if.end38_crit_edge ], [ -1, %if.end34 ], [ -1, %if.then27.if.end38_crit_edge ], [ %29, %if.end21 ], [ %29, %if.end14.if.end38_crit_edge ]
  %aiagp.1 = phi ptr [ null, %if.end.if.end38_crit_edge ], [ %45, %if.end34 ], [ null, %if.then27.if.end38_crit_edge ], [ %aiagp.0, %if.end21 ], [ %aiagp.0, %if.end14.if.end38_crit_edge ]
  %biagp.0 = phi ptr [ null, %if.end.if.end38_crit_edge ], [ null, %if.end34 ], [ null, %if.then27.if.end38_crit_edge ], [ %39, %if.end21 ], [ null, %if.end14.if.end38_crit_edge ]
  %nfreeinos = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 9
  %46 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nfreeinos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp39 = icmp eq i32 %47, 0
  br i1 %cmp39, label %if.then41, label %if.end38.if.end70_crit_edge

if.end38.if.end70_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then41:                                        ; preds = %if.end38
  %arrayidx44 = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp45 = icmp sgt i32 %49, -1
  br i1 %cmp45, label %if.then47, label %if.then41.if.end70_crit_edge

if.then41.if.end70_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %fwd.0)
  %cmp48 = icmp eq i32 %49, %fwd.0
  br i1 %cmp48, label %if.then47.if.end62_crit_edge, label %if.else51

if.then47.if.end62_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.else51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %back.0)
  %cmp52 = icmp eq i32 %49, %back.0
  br i1 %cmp52, label %if.else51.if.end62_crit_edge, label %if.else55

if.else51.if.end62_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.else55:                                        ; preds = %if.else51
  %50 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %im_ipimap, align 4
  %add.i397 = add nuw i32 %49, 1
  %i_sb.i398 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %i_sb.i398 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb.i398, align 4
  %s_fs_info.i.i399 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i.i399 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i399, align 16
  %l2nbperpage.i400 = getelementptr inbounds %struct.jfs_sb_info, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %l2nbperpage.i400 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %l2nbperpage.i400, align 2
  %conv8.i401 = zext i16 %57 to i32
  %shl.i402 = shl i32 %add.i397, %conv8.i401
  %call3.i403 = tail call ptr @__get_metapage(ptr noundef %51, i32 noundef %shl.i402, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i404.not = icmp eq ptr %call3.i403, null
  br i1 %cmp.i404.not, label %if.else55.error_out_crit_edge, label %if.end59

if.else55.error_out_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end59:                                         ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  %data60 = getelementptr inbounds %struct.metapage, ptr %call3.i403, i32 0, i32 7
  %58 = ptrtoint ptr %data60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data60, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %if.else51.if.end62_crit_edge, %if.then47.if.end62_crit_edge
  %cmp.0 = phi ptr [ null, %if.then47.if.end62_crit_edge ], [ null, %if.else51.if.end62_crit_edge ], [ %call3.i403, %if.end59 ]
  %ciagp.0 = phi ptr [ %aiagp.1, %if.then47.if.end62_crit_edge ], [ %biagp.0, %if.else51.if.end62_crit_edge ], [ %59, %if.end59 ]
  %cmp63 = icmp eq ptr %ciagp.0, null
  br i1 %cmp63, label %if.then65, label %if.end62.if.end70_crit_edge

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %im_ipimap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %im_ipimap, align 4
  %i_sb67 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb67, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %63, ptr noundef nonnull @.str.73) #8
  br label %error_out

if.end70:                                         ; preds = %if.end62.if.end70_crit_edge, %if.then41.if.end70_crit_edge, %if.end38.if.end70_crit_edge
  %cmp.1 = phi ptr [ %cmp.0, %if.end62.if.end70_crit_edge ], [ null, %if.then41.if.end70_crit_edge ], [ null, %if.end38.if.end70_crit_edge ]
  %freei.0 = phi i32 [ %49, %if.end62.if.end70_crit_edge ], [ %49, %if.then41.if.end70_crit_edge ], [ 0, %if.end38.if.end70_crit_edge ]
  %ciagp.1 = phi ptr [ %ciagp.0, %if.end62.if.end70_crit_edge ], [ null, %if.then41.if.end70_crit_edge ], [ null, %if.end38.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extno)
  %cmp71 = icmp eq i32 %extno, 0
  br i1 %cmp71, label %if.end70.if.then77_crit_edge, label %lor.lhs.false

if.end70.if.then77_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end70
  %sub = add i32 %extno, -1
  %arrayidx73 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 14, i32 %sub
  %64 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx73, align 4
  %66 = shl i32 %65, 24
  %conv.i = zext i32 %66 to i64
  %shl.i406 = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr %struct.iag, ptr %iagp, i32 0, i32 14, i32 %sub, i32 1
  %67 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr2.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %conv1.i = zext i32 %69 to i64
  %add.i407 = or i64 %shl.i406, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i407)
  %cmp75 = icmp eq i64 %add.i407, 0
  br i1 %cmp75, label %lor.lhs.false.if.then77_crit_edge, label %if.else84

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end70.if.then77_crit_edge
  %conv78 = sext i32 %conv to i64
  %70 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bmap, align 4
  %dn_agl2size81 = getelementptr inbounds %struct.dbmap, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %dn_agl2size81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dn_agl2size81, align 4
  %sh_prom82 = zext i32 %73 to i64
  %shl = shl i64 %conv78, %sh_prom82
  br label %if.end95

if.else84:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %74 = and i32 %65, -256
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  %conv93 = zext i32 %75 to i64
  %add = add nuw nsw i64 %add.i407, %conv93
  br label %if.end95

if.end95:                                         ; preds = %if.else84, %if.then77
  %hint.0.in = phi i64 [ %shl, %if.then77 ], [ %add, %if.else84 ]
  %hint.0 = add i64 %hint.0.in, -1
  %in_nbperiext = getelementptr inbounds %struct.dinomap, ptr %imap, i32 0, i32 4
  %76 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %in_nbperiext, align 4
  %conv97 = sext i32 %77 to i64
  %call98 = call i32 @dbAlloc(ptr noundef %4, i64 noundef %hint.0, i64 noundef %conv97, ptr noundef nonnull %blkno) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end95.error_out_crit_edge

if.end95.error_out_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end101:                                        ; preds = %if.end95
  %78 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %in_nbperiext, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp107442 = icmp sgt i32 %79, 0
  br i1 %cmp107442, label %for.body.lr.ph, label %if.end101.for.end129_crit_edge

if.end101.for.end129_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end129

for.body.lr.ph:                                   ; preds = %if.end101
  %shl102 = shl i32 %18, 12
  %shl103 = shl i32 %extno, 5
  %add104 = add i32 %shl102, %shl103
  %inostamp = getelementptr inbounds %struct.jfs_sb_info, ptr %8, i32 0, i32 22
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %8, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %ino.0444 = phi i32 [ %add104, %for.body.lr.ph ], [ %inc125, %for.end.for.body_crit_edge ]
  %i.0443 = phi i32 [ 0, %for.body.lr.ph ], [ %add128, %for.end.for.body_crit_edge ]
  %80 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %blkno, align 8
  %82 = trunc i64 %81 to i32
  %conv111 = add i32 %i.0443, %82
  %call112 = call ptr @__get_metapage(ptr noundef %4, i32 noundef %conv111, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #8
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %for.body.error_out_crit_edge, label %if.end116

for.body.error_out_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end116:                                        ; preds = %for.body
  %data117 = getelementptr inbounds %struct.metapage, ptr %call112, i32 0, i32 7
  %83 = ptrtoint ptr %data117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data117, align 4
  br label %for.body121

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %if.end116
  %dp.0441 = phi ptr [ %84, %if.end116 ], [ %incdec.ptr, %for.body121.for.body121_crit_edge ]
  %ino.1440 = phi i32 [ %ino.0444, %if.end116 ], [ %inc125, %for.body121.for.body121_crit_edge ]
  %j.0439 = phi i32 [ 0, %if.end116 ], [ %inc, %for.body121.for.body121_crit_edge ]
  %85 = ptrtoint ptr %inostamp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %inostamp, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %dp.0441 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %dp.0441, align 8
  %89 = call i32 @llvm.bswap.i32(i32 %ino.1440)
  %di_number = getelementptr inbounds %struct.dinode, ptr %dp.0441, i32 0, i32 2
  %90 = ptrtoint ptr %di_number to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %di_number, align 8
  %di_fileset = getelementptr inbounds %struct.dinode, ptr %dp.0441, i32 0, i32 1
  %91 = ptrtoint ptr %di_fileset to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 268435456, ptr %di_fileset, align 4
  %di_mode = getelementptr inbounds %struct.dinode, ptr %dp.0441, i32 0, i32 10
  %92 = ptrtoint ptr %di_mode to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %di_mode, align 4
  %di_nlink = getelementptr inbounds %struct.dinode, ptr %dp.0441, i32 0, i32 7
  %93 = ptrtoint ptr %di_nlink to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %di_nlink, align 8
  %di_ixpxd = getelementptr inbounds %struct.dinode, ptr %dp.0441, i32 0, i32 4
  %94 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %blkno, align 8
  %96 = ptrtoint ptr %di_ixpxd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %di_ixpxd, align 4
  %and.i = and i32 %97, -256
  %sum.shift.i = lshr i64 %95, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i413 = and i32 %conv7.i, 255
  %or.i = or i32 %conv.i413, %and.i
  store i32 %or.i, ptr %di_ixpxd, align 4
  %conv3.i = trunc i64 %95 to i32
  %98 = call i32 @llvm.bswap.i32(i32 %conv3.i) #8
  %addr2.i414 = getelementptr inbounds %struct.dinode, ptr %dp.0441, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %addr2.i414 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %addr2.i414, align 4
  %100 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %in_nbperiext, align 4
  %and1.i = and i32 %101, 16777215
  %102 = call i32 @llvm.bswap.i32(i32 %and1.i) #8
  %or.i416 = or i32 %102, %conv.i413
  %103 = ptrtoint ptr %di_ixpxd to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i416, ptr %di_ixpxd, align 4
  %inc = add nuw nsw i32 %j.0439, 1
  %incdec.ptr = getelementptr %struct.dinode, ptr %dp.0441, i32 1
  %inc125 = add i32 %ino.1440, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.end:                                          ; preds = %for.body121
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call112, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  call void @release_metapage(ptr noundef nonnull %call112) #8
  %104 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %nbperpage, align 4
  %conv127 = sext i16 %105 to i32
  %add128 = add i32 %i.0443, %conv127
  %106 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %in_nbperiext, align 4
  %cmp107 = icmp slt i32 %add128, %107
  br i1 %cmp107, label %for.end.for.body_crit_edge, label %for.end.for.end129_crit_edge

for.end.for.end129_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end129

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end129:                                       ; preds = %for.end.for.end129_crit_edge, %if.end101.for.end129_crit_edge
  %108 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nfreeexts, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %109, label %for.end129.if.end171_crit_edge [
    i32 16777216, label %if.then133
    i32 -2147483648, label %if.then158
  ]

for.end129.if.end171_crit_edge:                   ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then133:                                       ; preds = %for.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fwd.0)
  %cmp134 = icmp sgt i32 %fwd.0, -1
  br i1 %cmp134, label %if.then136, label %if.then133.if.end139_crit_edge

if.then133.if.end139_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then136:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %extfreeback137 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 5
  %111 = ptrtoint ptr %extfreeback137 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %extfreeback137, align 8
  %extfreeback138 = getelementptr inbounds %struct.iag, ptr %aiagp.1, i32 0, i32 5
  %113 = ptrtoint ptr %extfreeback138 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %extfreeback138, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.then133.if.end139_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %back.0)
  %cmp140 = icmp sgt i32 %back.0, -1
  %extfreefwd143 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 4
  %114 = ptrtoint ptr %extfreefwd143 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %extfreefwd143, align 4
  br i1 %cmp140, label %if.then142, label %if.else145

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %extfreefwd144 = getelementptr inbounds %struct.iag, ptr %biagp.0, i32 0, i32 4
  %116 = ptrtoint ptr %extfreefwd144 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %extfreefwd144, align 4
  br label %if.end151

if.else145:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %117 = call i32 @llvm.bswap.i32(i32 %115)
  %extfree150 = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv, i32 1
  %118 = ptrtoint ptr %extfree150 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %extfree150, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else145, %if.then142
  %extfreeback152 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 5
  %119 = ptrtoint ptr %extfreeback152 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %extfreeback152, align 8
  %extfreefwd153 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 4
  %120 = ptrtoint ptr %extfreefwd153 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %extfreefwd153, align 4
  br label %if.end171

if.then158:                                       ; preds = %for.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fwd.0)
  %cmp159 = icmp sgt i32 %fwd.0, -1
  br i1 %cmp159, label %if.then161, label %if.then158.if.end163_crit_edge

if.then158.if.end163_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then161:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %extfreeback162 = getelementptr inbounds %struct.iag, ptr %aiagp.1, i32 0, i32 5
  %121 = ptrtoint ptr %extfreeback162 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %17, ptr %extfreeback162, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.then158.if.end163_crit_edge
  %122 = call i32 @llvm.bswap.i32(i32 %fwd.0)
  %extfreefwd164 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 4
  %123 = ptrtoint ptr %extfreefwd164 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %extfreefwd164, align 4
  %extfreeback165 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 5
  %124 = ptrtoint ptr %extfreeback165 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %extfreeback165, align 8
  %extfree169 = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv, i32 1
  %125 = ptrtoint ptr %extfree169 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %18, ptr %extfree169, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.end163, %if.end151, %for.end129.if.end171_crit_edge
  %126 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nfreeinos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp173 = icmp eq i32 %127, 0
  br i1 %cmp173, label %if.then175, label %if.end171.if.end189_crit_edge

if.end171.if.end189_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %freei.0)
  %cmp176 = icmp sgt i32 %freei.0, -1
  br i1 %cmp176, label %if.then178, label %if.then175.if.end179_crit_edge

if.then175.if.end179_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then178:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  %inofreeback = getelementptr inbounds %struct.iag, ptr %ciagp.1, i32 0, i32 3
  %128 = ptrtoint ptr %inofreeback to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %17, ptr %inofreeback, align 8
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %if.then175.if.end179_crit_edge
  %arrayidx182 = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv
  %129 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx182, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %inofreefwd = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 2
  %132 = ptrtoint ptr %inofreefwd to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %inofreefwd, align 4
  %inofreeback184 = getelementptr inbounds %struct.iag, ptr %iagp, i32 0, i32 3
  %133 = ptrtoint ptr %inofreeback184 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %inofreeback184, align 8
  %134 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %18, ptr %arrayidx182, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.end179, %if.end171.if.end189_crit_edge
  %arrayidx191 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 14, i32 %extno
  %135 = ptrtoint ptr %in_nbperiext to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %in_nbperiext, align 4
  %and1.i418 = and i32 %136, 16777215
  %137 = call i32 @llvm.bswap.i32(i32 %and1.i418) #8
  %138 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %blkno, align 8
  %sum.shift.i421 = lshr i64 %139, 32
  %conv7.i422 = trunc i64 %sum.shift.i421 to i32
  %conv.i423 = and i32 %conv7.i422, 255
  %or.i424 = or i32 %conv.i423, %137
  %140 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or.i424, ptr %arrayidx191, align 4
  %conv3.i425 = trunc i64 %139 to i32
  %141 = call i32 @llvm.bswap.i32(i32 %conv3.i425) #8
  %addr2.i426 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 14, i32 %extno, i32 1
  %142 = ptrtoint ptr %addr2.i426 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %addr2.i426, align 4
  %arrayidx196 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 12, i32 %extno
  %143 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 128, ptr %arrayidx196, align 4
  %arrayidx197 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 13, i32 %extno
  %144 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %arrayidx197, align 4
  %shr198 = ashr i32 %extno, 5
  %and = and i32 %extno, 31
  %shr199 = lshr i32 -2147483648, %and
  %145 = call i32 @llvm.bswap.i32(i32 %shr199)
  %arrayidx200 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 8, i32 %shr198
  %146 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx200, align 4
  %or = or i32 %147, %145
  store i32 %or, ptr %arrayidx200, align 4
  %neg = xor i32 %shr199, -1
  %148 = call i32 @llvm.bswap.i32(i32 %neg)
  %arrayidx201 = getelementptr %struct.iag, ptr %iagp, i32 0, i32 7, i32 %shr198
  %149 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx201, align 4
  %and202 = and i32 %150, %148
  store i32 %and202, ptr %arrayidx201, align 4
  %151 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %nfreeinos, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152) #8
  %add.i427 = add i32 %153, 31
  %154 = call i32 @llvm.bswap.i32(i32 %add.i427) #8
  %155 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %nfreeinos, align 4
  %156 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nfreeexts, align 4
  %158 = call i32 @llvm.bswap.i32(i32 %157) #8
  %add.i428 = add i32 %158, -1
  %159 = call i32 @llvm.bswap.i32(i32 %add.i428) #8
  %160 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %nfreeexts, align 4
  %numfree = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv, i32 3
  %161 = ptrtoint ptr %numfree to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %numfree, align 4
  %add208 = add i32 %162, 31
  store i32 %add208, ptr %numfree, align 4
  %numinos = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %conv, i32 2
  %163 = ptrtoint ptr %numinos to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %numinos, align 4
  %add212 = add i32 %164, 32
  store i32 %add212, ptr %numinos, align 4
  %im_numfree = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %im_numfree, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %im_numfree, i32 1, i32 3, i32 1) #8
  %165 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %im_numfree, ptr %im_numfree, i32 31, ptr elementtype(i32) %im_numfree) #8, !srcloc !161
  %im_numinos = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 5
  %call.i.i375 = call zeroext i1 @__kasan_check_write(ptr noundef %im_numinos, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %im_numinos, i32 1, i32 3, i32 1) #8
  %166 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %im_numinos, ptr %im_numinos, i32 32, ptr elementtype(i32) %im_numinos) #8, !srcloc !161
  %tobool213.not = icmp eq ptr %amp.1, null
  br i1 %tobool213.not, label %if.end189.if.end215_crit_edge, label %if.then214

if.end189.if.end215_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end215

if.then214:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i429 = getelementptr inbounds %struct.metapage, ptr %amp.1, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i429) #8
  call void @release_metapage(ptr noundef nonnull %amp.1) #8
  br label %if.end215

if.end215:                                        ; preds = %if.then214, %if.end189.if.end215_crit_edge
  %tobool216.not = icmp eq ptr %bmp.0, null
  br i1 %tobool216.not, label %if.end215.if.end218_crit_edge, label %if.then217

if.end215.if.end218_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218

if.then217:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i430 = getelementptr inbounds %struct.metapage, ptr %bmp.0, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i430) #8
  call void @release_metapage(ptr noundef nonnull %bmp.0) #8
  br label %if.end218

if.end218:                                        ; preds = %if.then217, %if.end215.if.end218_crit_edge
  %tobool219.not = icmp eq ptr %cmp.1, null
  br i1 %tobool219.not, label %if.end218.cleanup_crit_edge, label %if.then220

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then220:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i431 = getelementptr inbounds %struct.metapage, ptr %cmp.1, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i431) #8
  call void @release_metapage(ptr noundef nonnull %cmp.1) #8
  br label %cleanup

error_out:                                        ; preds = %for.body.error_out_crit_edge, %if.end95.error_out_crit_edge, %if.then65, %if.else55.error_out_crit_edge, %if.then17.error_out_crit_edge
  %amp.2 = phi ptr [ %amp.1, %if.then65 ], [ %amp.1, %if.end95.error_out_crit_edge ], [ %amp.1, %if.else55.error_out_crit_edge ], [ %amp.0, %if.then17.error_out_crit_edge ], [ %amp.1, %for.body.error_out_crit_edge ]
  %bmp.1 = phi ptr [ %bmp.0, %if.then65 ], [ %bmp.0, %if.end95.error_out_crit_edge ], [ %bmp.0, %if.else55.error_out_crit_edge ], [ null, %if.then17.error_out_crit_edge ], [ %bmp.0, %for.body.error_out_crit_edge ]
  %cmp.2 = phi ptr [ %cmp.0, %if.then65 ], [ %cmp.1, %if.end95.error_out_crit_edge ], [ null, %if.else55.error_out_crit_edge ], [ null, %if.then17.error_out_crit_edge ], [ %cmp.1, %for.body.error_out_crit_edge ]
  %rc.0 = phi i32 [ -5, %if.then65 ], [ %call98, %if.end95.error_out_crit_edge ], [ -5, %if.else55.error_out_crit_edge ], [ -5, %if.then17.error_out_crit_edge ], [ -5, %for.body.error_out_crit_edge ]
  %tobool222.not = icmp eq ptr %amp.2, null
  br i1 %tobool222.not, label %error_out.if.end224_crit_edge, label %if.then223

error_out.if.end224_crit_edge:                    ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then223:                                       ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %amp.2) #8
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %error_out.if.end224_crit_edge
  %tobool225.not = icmp eq ptr %bmp.1, null
  br i1 %tobool225.not, label %if.end224.if.end227_crit_edge, label %if.then226

if.end224.if.end227_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end227

if.then226:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %bmp.1) #8
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %if.end224.if.end227_crit_edge
  %tobool228.not = icmp eq ptr %cmp.2, null
  br i1 %tobool228.not, label %if.end227.cleanup_crit_edge, label %if.then229

if.end227.cleanup_crit_edge:                      ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then229:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %cmp.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then229, %if.end227.cleanup_crit_edge, %if.then220, %if.end218.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then9.cleanup_crit_edge ], [ 0, %if.then220 ], [ 0, %if.end218.cleanup_crit_edge ], [ %rc.0, %if.then229 ], [ %rc.0, %if.end227.cleanup_crit_edge ], [ -5, %if.then30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkno) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @diAllocAG(ptr noundef %imap, i32 noundef %agno, i1 noundef zeroext %dir, ptr nocapture noundef %ip) unnamed_addr #0 align 64 {
entry:
  %xaddr.i.i = alloca i64, align 8
  %iplist.i.i = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %numfree1 = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %agno, i32 3
  %0 = ptrtoint ptr %numfree1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numfree1, align 4
  %numinos5 = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %agno, i32 2
  %2 = ptrtoint ptr %numinos5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numinos5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %5, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %dir, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp7 = icmp slt i32 %1, 64
  br i1 %cmp7, label %if.then6.if.then13_crit_edge, label %lor.rhs

if.then6.if.then13_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.rhs:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp8 = icmp ult i32 %1, 256
  br i1 %cmp8, label %if.end11, label %lor.rhs.if.end18_crit_edge

lor.rhs.if.end18_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp eq i32 %1, 0
  br i1 %cmp10, label %if.else.if.then13_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end11:                                         ; preds = %lor.rhs
  %mul = mul nuw nsw i32 %1, 100
  %div = sdiv i32 %mul, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %div)
  %cmp9 = icmp slt i32 %div, 21
  br i1 %cmp9, label %if.end11.if.then13_crit_edge, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.else.if.then13_crit_edge, %if.then6.if.then13_crit_edge
  %extfree.i = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %agno, i32 1
  %6 = ptrtoint ptr %extfree.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extfree.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr.i.i) #8
  %8 = ptrtoint ptr %xaddr.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %xaddr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iplist.i.i) #8
  %9 = ptrtoint ptr %iplist.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist.i.i, align 4, !annotation !160
  %im_ipimap.i.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %10 = ptrtoint ptr %im_ipimap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %im_ipimap.i.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %im_freelock.i.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %im_freelock.i.i, i32 noundef 0) #8
  %16 = ptrtoint ptr %imap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %imap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.i = icmp sgt i32 %17, -1
  br i1 %cmp.i.i, label %entry.if.end76_crit_edge.i.i, label %if.else.i.i

entry.if.end76_crit_edge.i.i:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i.i = add nuw i32 %17, 1
  br label %if.end76.i.i

if.else.i.i:                                      ; preds = %if.then.i
  %rdwrlock.i.i = getelementptr i8, ptr %11, i32 -688
  tail call void @down_write_nested(ptr noundef %rdwrlock.i.i, i32 noundef 1) #8
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 14
  %18 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size.i.i, align 8
  %shr.i.i = ashr i64 %19, 12
  %in_nextiag.i.i = getelementptr inbounds %struct.dinomap, ptr %imap, i32 0, i32 1
  %20 = ptrtoint ptr %in_nextiag.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_nextiag.i.i, align 4
  %add6.i.i = add i32 %21, 1
  %conv7.i.i = sext i32 %add6.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %conv7.i.i)
  %cmp8.not.i.i = icmp eq i64 %shr.i.i, %conv7.i.i
  br i1 %cmp8.not.i.i, label %if.end.i.i, label %diNewIAG.exit.thread.i

diNewIAG.exit.thread.i:                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef %rdwrlock.i.i) #8
  tail call void @mutex_unlock(ptr noundef %im_freelock.i.i) #8
  %22 = ptrtoint ptr %im_ipimap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %im_ipimap.i.i, align 4
  %i_sb15.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb15.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb15.i.i, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %25, ptr noundef nonnull @.str.66) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iplist.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i.i) #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048574, i32 %21)
  %cmp18.i.i = icmp sgt i32 %21, 1048574
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef %rdwrlock.i.i) #8
  br label %diNewIAG.exit.thread117.i

if.end23.i.i:                                     ; preds = %if.end.i.i
  %l2nbperpage25.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 11
  %26 = ptrtoint ptr %l2nbperpage25.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %l2nbperpage25.i.i, align 2
  %conv261.i.i = zext i16 %27 to i32
  %shl27.i.i = shl i32 %add6.i.i, %conv261.i.i
  %conv28.i.i = sext i32 %shl27.i.i to i64
  %nbperpage.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 10
  %28 = ptrtoint ptr %nbperpage.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nbperpage.i.i, align 4
  %conv29.i.i = sext i16 %29 to i32
  %conv30.i.i = sext i16 %29 to i64
  %call31.i.i = call i32 @dbAlloc(ptr noundef %11, i64 noundef 0, i64 noundef %conv30.i.i, ptr noundef nonnull %xaddr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool.not.i.i, label %if.end35.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %rdwrlock.i.i) #8
  br label %diNewIAG.exit.thread117.i

if.end35.i.i:                                     ; preds = %if.end23.i.i
  %call36.i.i = call zeroext i16 @txBegin(ptr noundef %13, i32 noundef 2) #8
  %commit_mutex.i.i = getelementptr i8, ptr %11, i32 -592
  call void @mutex_lock_nested(ptr noundef %commit_mutex.i.i, i32 noundef 0) #8
  %call38.i.i = call i32 @xtInsert(i16 noundef zeroext %call36.i.i, ptr noundef %11, i32 noundef 0, i64 noundef %conv28.i.i, i32 noundef %conv29.i.i, ptr noundef nonnull %xaddr.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool39.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end47.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @txEnd(i16 noundef zeroext %call36.i.i) #8
  call void @mutex_unlock(ptr noundef %commit_mutex.i.i) #8
  %30 = ptrtoint ptr %xaddr.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %xaddr.i.i, align 8
  %call44.i.i = call i32 @dbFree(ptr noundef %11, i64 noundef %31, i64 noundef %conv30.i.i) #8
  call void @up_write(ptr noundef %rdwrlock.i.i) #8
  br label %diNewIAG.exit.thread117.i

if.end47.i.i:                                     ; preds = %if.end35.i.i
  %32 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_size.i.i, align 8
  %add49.i.i = add i64 %33, 4096
  store i64 %add49.i.i, ptr %i_size.i.i, align 8
  call void @inode_add_bytes(ptr noundef %11, i64 noundef 4096) #8
  %call51.i.i = call ptr @__get_metapage(ptr noundef %11, i32 noundef %shl27.i.i, i32 noundef 4096, i32 noundef 0, i32 noundef 1) #8
  %tobool52.not.i.i = icmp eq ptr %call51.i.i, null
  br i1 %tobool52.not.i.i, label %if.then53.i.i, label %if.end60.i.i

if.then53.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_size.i.i, align 8
  %sub.i.i = add i64 %35, -4096
  %call55.i.i = call i64 @xtTruncate(i16 noundef zeroext %call36.i.i, ptr noundef %11, i64 noundef %sub.i.i, i32 noundef 64) #8
  call void @txAbort(i16 noundef zeroext %call36.i.i, i32 noundef 0) #8
  call void @txEnd(i16 noundef zeroext %call36.i.i) #8
  call void @mutex_unlock(ptr noundef %commit_mutex.i.i) #8
  call void @up_write(ptr noundef %rdwrlock.i.i) #8
  br label %diNewIAG.exit.thread117.i

if.end60.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.metapage, ptr %call51.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 4096)
  %39 = call i32 @llvm.bswap.i32(i32 %21) #8
  %iagnum.i.i = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %iagnum.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %iagnum.i.i, align 8
  %inofreefwd.i.i = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 2
  %41 = call ptr @memset(ptr %inofreefwd.i.i, i32 255, i32 20)
  %nfreeexts.i.i = getelementptr inbounds %struct.iag, ptr %37, i32 0, i32 10
  %42 = ptrtoint ptr %nfreeexts.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -2147483648, ptr %nfreeexts.i.i, align 4
  %uglygep.i.i = getelementptr i8, ptr %37, i32 32
  %43 = call ptr @memset(ptr %uglygep.i.i, i32 255, i32 16)
  call fastcc void @flush_metapage(ptr noundef nonnull %call51.i.i) #8
  %44 = ptrtoint ptr %iplist.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %11, ptr %iplist.i.i, align 4
  %call65.i.i = call i32 @txCommit(i16 noundef zeroext %call36.i.i, i32 noundef 1, ptr noundef nonnull %iplist.i.i, i32 noundef 2) #8
  call void @txEnd(i16 noundef zeroext %call36.i.i) #8
  call void @mutex_unlock(ptr noundef %commit_mutex.i.i) #8
  call fastcc void @duplicateIXtree(ptr noundef %13, i64 noundef %conv28.i.i, i32 noundef %conv29.i.i, ptr noundef nonnull %xaddr.i.i) #8
  %45 = ptrtoint ptr %in_nextiag.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in_nextiag.i.i, align 4
  %add70.i.i = add i32 %46, 1
  store i32 %add70.i.i, ptr %in_nextiag.i.i, align 4
  %47 = ptrtoint ptr %imap to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %21, ptr %imap, align 4
  %call73.i.i = call i32 @diSync(ptr noundef %11) #8
  call void @up_write(ptr noundef %rdwrlock.i.i) #8
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.end60.i.i, %entry.if.end76_crit_edge.i.i
  %add.i.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.if.end76_crit_edge.i.i ], [ %add6.i.i, %if.end60.i.i ]
  %iagno.0.i.i = phi i32 [ %17, %entry.if.end76_crit_edge.i.i ], [ %21, %if.end60.i.i ]
  %rdwrlock78.i.i = getelementptr i8, ptr %11, i32 -688
  call void @down_read_nested(ptr noundef %rdwrlock78.i.i, i32 noundef 1) #8
  %48 = ptrtoint ptr %im_ipimap.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %im_ipimap.i.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %l2nbperpage.i.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %l2nbperpage.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %l2nbperpage.i.i.i, align 2
  %conv8.i.i.i = zext i16 %55 to i32
  %shl.i.i.i = shl i32 %add.i.pre-phi.i.i, %conv8.i.i.i
  %call3.i.i.i = call ptr @__get_metapage(ptr noundef %49, i32 noundef %shl.i.i.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %cmp.i.not.i.i, label %if.then81.i.i, label %if.end.i

if.then81.i.i:                                    ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %rdwrlock78.i.i) #8
  br label %diNewIAG.exit.thread117.i

diNewIAG.exit.thread117.i:                        ; preds = %if.then81.i.i, %if.then53.i.i, %if.then40.i.i, %if.then32.i.i, %if.then20.i.i
  %rc.0.i.ph.i = phi i32 [ -5, %if.then53.i.i ], [ %call38.i.i, %if.then40.i.i ], [ %call31.i.i, %if.then32.i.i ], [ -28, %if.then20.i.i ], [ -5, %if.then81.i.i ]
  call void @mutex_unlock(ptr noundef %im_freelock.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iplist.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i.i) #8
  br label %diAllocExt.exit

if.end.i:                                         ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data85.i.i = getelementptr inbounds %struct.metapage, ptr %call3.i.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %data85.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data85.i.i, align 4
  %iagfree86.i.i = getelementptr inbounds %struct.iag, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %iagfree86.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iagfree86.i.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %imap to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %imap, align 4
  %62 = ptrtoint ptr %iagfree86.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %iagfree86.i.i, align 4
  call void @mutex_unlock(ptr noundef %im_freelock.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iplist.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr.i.i) #8
  %63 = ptrtoint ptr %data85.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data85.i.i, align 4
  %conv.i = sext i32 %agno to i64
  %65 = ptrtoint ptr %im_ipimap.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %im_ipimap.i.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 33
  %69 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i.i, align 16
  %bmap.i = getelementptr inbounds %struct.jfs_sb_info, ptr %70, i32 0, i32 23
  %71 = ptrtoint ptr %bmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bmap.i, align 4
  %dn_agl2size.i = getelementptr inbounds %struct.dbmap, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %dn_agl2size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dn_agl2size.i, align 4
  %sh_prom.i = zext i32 %74 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %75 = call i64 @llvm.bswap.i64(i64 %shl.i) #8
  %76 = ptrtoint ptr %64 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %64, align 8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.then13
  %im_ipimap3.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %77 = ptrtoint ptr %im_ipimap3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %im_ipimap3.i, align 4
  %rdwrlock.i = getelementptr i8, ptr %78, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock.i, i32 noundef 1) #8
  %79 = ptrtoint ptr %im_ipimap3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %im_ipimap3.i, align 4
  %add.i.i = add nuw i32 %7, 1
  %i_sb.i96.i = getelementptr inbounds %struct.inode, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %i_sb.i96.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb.i96.i, align 4
  %s_fs_info.i.i97.i = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 33
  %83 = ptrtoint ptr %s_fs_info.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info.i.i97.i, align 16
  %l2nbperpage.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %l2nbperpage.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %l2nbperpage.i.i, align 2
  %conv8.i.i = zext i16 %86 to i32
  %shl.i.i = shl i32 %add.i.i, %conv8.i.i
  %call3.i.i = tail call ptr @__get_metapage(ptr noundef %80, i32 noundef %shl.i.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i98.not.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i98.not.i, label %if.then7.i, label %if.end12.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %im_ipimap3.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %im_ipimap3.i, align 4
  %rdwrlock10.i = getelementptr i8, ptr %88, i32 -688
  tail call void @up_read(ptr noundef %rdwrlock10.i) #8
  %i_sb11.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %89 = ptrtoint ptr %i_sb11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb11.i, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %90, ptr noundef nonnull @.str.63) #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %data13.i = getelementptr inbounds %struct.metapage, ptr %call3.i.i, i32 0, i32 7
  %91 = ptrtoint ptr %data13.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end12.i, %if.end.i
  %iagno.2.i = phi i32 [ %iagno.0.i.i, %if.end.i ], [ %7, %if.end12.i ]
  %mp.2.i = phi ptr [ %call3.i.i.i, %if.end.i ], [ %call3.i.i, %if.end12.i ]
  %iagp.0.i = phi ptr [ %64, %if.end.i ], [ %92, %if.end12.i ]
  %arrayidx23.i = getelementptr %struct.iag, ptr %iagp.0.i, i32 0, i32 8, i32 0
  %93 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %tobool24.not.i = icmp eq i32 %94, -1
  br i1 %tobool24.not.i, label %for.inc.i, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end14.i
  %arrayidx23.1.i = getelementptr %struct.iag, ptr %iagp.0.i, i32 0, i32 8, i32 1
  %95 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx23.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %tobool24.not.1.i = icmp eq i32 %96, -1
  br i1 %tobool24.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx23.2.i = getelementptr %struct.iag, ptr %iagp.0.i, i32 0, i32 8, i32 2
  %97 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx23.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %tobool24.not.2.i = icmp eq i32 %98, -1
  br i1 %tobool24.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx23.3.i = getelementptr %struct.iag, ptr %iagp.0.i, i32 0, i32 8, i32 3
  %99 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx23.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %tobool24.not.3.i = icmp eq i32 %100, -1
  br i1 %tobool24.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %mp.2.i) #8
  %im_ipimap18.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %101 = ptrtoint ptr %im_ipimap18.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %im_ipimap18.i, align 4
  %rdwrlock20.i = getelementptr i8, ptr %102, i32 -688
  call void @up_read(ptr noundef %rdwrlock20.i) #8
  %i_sb21.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %103 = ptrtoint ptr %i_sb21.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb21.i, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %104, ptr noundef nonnull @.str.64) #8
  br label %cleanup

for.end.i:                                        ; preds = %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  %sword.0126.lcssa.i = phi i32 [ 0, %if.end14.i.for.end.i_crit_edge ], [ 32, %for.inc.i.for.end.i_crit_edge ], [ 64, %for.inc.1.i.for.end.i_crit_edge ], [ 96, %for.inc.2.i.for.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %94, %if.end14.i.for.end.i_crit_edge ], [ %96, %for.inc.i.for.end.i_crit_edge ], [ %98, %for.inc.1.i.for.end.i_crit_edge ], [ %100, %for.inc.2.i.for.end.i_crit_edge ]
  %105 = call i32 @llvm.bswap.i32(i32 %.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp1122.i.i = icmp sgt i32 %105, -1
  br i1 %cmp1122.i.i, label %for.end.i.if.end37.i_crit_edge, label %for.end.i.for.inc.i.i_crit_edge

for.end.i.for.inc.i.i_crit_edge:                  ; preds = %for.end.i
  br label %for.inc.i.i

for.end.i.if.end37.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

for.inc.i.i:                                      ; preds = %for.inc.i.i.for.inc.i.i_crit_edge, %for.end.i.for.inc.i.i_crit_edge
  %word.addr.025.i.i = phi i32 [ %shl14.i.i, %for.inc.i.i.for.inc.i.i_crit_edge ], [ %105, %for.end.i.for.inc.i.i_crit_edge ]
  %bitno.024.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.inc.i.i_crit_edge ], [ 0, %for.end.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %bitno.024.i.i, 1
  %shl14.i.i = shl i32 %word.addr.025.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bitno.024.i.i)
  %cmp10.i.i = icmp ugt i32 %bitno.024.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl14.i.i)
  %cmp11.i.i = icmp sgt i32 %shl14.i.i, -1
  %or.cond.i.i = select i1 %cmp10.i.i, i1 true, i1 %cmp11.i.i
  br i1 %or.cond.i.i, label %diFindFree.exit.i, label %for.inc.i.i.for.inc.i.i_crit_edge

for.inc.i.i.for.inc.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

diFindFree.exit.i:                                ; preds = %for.inc.i.i
  br i1 %cmp10.i.i, label %if.then32.i, label %diFindFree.exit.i.if.end37.i_crit_edge

diFindFree.exit.i.if.end37.i_crit_edge:           ; preds = %diFindFree.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then32.i:                                      ; preds = %diFindFree.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %mp.2.i) #8
  %im_ipimap33.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %106 = ptrtoint ptr %im_ipimap33.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %im_ipimap33.i, align 4
  %rdwrlock35.i = getelementptr i8, ptr %107, i32 -688
  call void @up_read(ptr noundef %rdwrlock35.i) #8
  %i_sb36.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %108 = ptrtoint ptr %i_sb36.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i_sb36.i, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %109, ptr noundef nonnull @.str.65) #8
  br label %cleanup

if.end37.i:                                       ; preds = %diFindFree.exit.i.if.end37.i_crit_edge, %for.end.i.if.end37.i_crit_edge
  %bitno.0.lcssa.i124.i = phi i32 [ %inc.i.i, %diFindFree.exit.i.if.end37.i_crit_edge ], [ 0, %for.end.i.if.end37.i_crit_edge ]
  %add.i = add i32 %bitno.0.lcssa.i124.i, %sword.0126.lcssa.i
  %call39.i = call fastcc i32 @diNewExt(ptr noundef %imap, ptr noundef %iagp.0.i, i32 noundef %add.i) #8
  %im_ipimap40.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %110 = ptrtoint ptr %im_ipimap40.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %im_ipimap40.i, align 4
  %rdwrlock42.i = getelementptr i8, ptr %111, i32 -688
  call void @up_read(ptr noundef %rdwrlock42.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool43.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool43.not.i, label %if.end53.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end37.i
  %nfreeexts.i = getelementptr inbounds %struct.iag, ptr %iagp.0.i, i32 0, i32 10
  %112 = ptrtoint ptr %nfreeexts.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nfreeexts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %113)
  %cmp45.i = icmp eq i32 %113, -2147483648
  br i1 %cmp45.i, label %if.then47.i, label %if.then44.i.if.end52.i_crit_edge

if.then44.i.if.end52.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

if.then47.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  %im_freelock.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %im_freelock.i, i32 noundef 0) #8
  %114 = ptrtoint ptr %imap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %imap, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #8
  %iagfree.i = getelementptr inbounds %struct.iag, ptr %iagp.0.i, i32 0, i32 6
  %117 = ptrtoint ptr %iagfree.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %iagfree.i, align 4
  %118 = ptrtoint ptr %imap to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %iagno.2.i, ptr %imap, align 4
  call void @mutex_unlock(ptr noundef %im_freelock.i) #8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then47.i, %if.then44.i.if.end52.i_crit_edge
  %flag.i.i = getelementptr inbounds %struct.metapage, ptr %mp.2.i, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i.i) #8
  call void @release_metapage(ptr noundef nonnull %mp.2.i) #8
  br label %diAllocExt.exit

if.end53.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl54.i = shl i32 %add.i, 5
  %shl.i103.i = shl i32 %iagno.2.i, 12
  %add.i104.i = add i32 %shl54.i, %shl.i103.i
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %119 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add.i104.i, ptr %i_ino.i.i, align 8
  %ixpxd.i.i = getelementptr i8, ptr %ip, i32 -832
  %arrayidx.i.i = getelementptr %struct.iag, ptr %iagp.0.i, i32 0, i32 14, i32 %add.i
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx.i.i, align 8
  %122 = ptrtoint ptr %ixpxd.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %ixpxd.i.i, align 8
  %123 = ptrtoint ptr %iagp.0.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %iagp.0.i, align 8
  %125 = call i64 @llvm.bswap.i64(i64 %124) #8
  %agstart1.i.i = getelementptr i8, ptr %ip, i32 -760
  %126 = ptrtoint ptr %agstart1.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %agstart1.i.i, align 8
  %active_ag.i.i = getelementptr i8, ptr %ip, i32 -749
  %127 = ptrtoint ptr %active_ag.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -1, ptr %active_ag.i.i, align 1
  %flag.i105.i = getelementptr inbounds %struct.metapage, ptr %mp.2.i, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i105.i) #8
  call void @release_metapage(ptr noundef nonnull %mp.2.i) #8
  br label %cleanup

diAllocExt.exit:                                  ; preds = %if.end52.i, %diNewIAG.exit.thread117.i
  %retval.0.i = phi i32 [ %call39.i, %if.end52.i ], [ %rc.0.i.ph.i, %diNewIAG.exit.thread117.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %retval.0.i)
  %cmp14.not = icmp eq i32 %retval.0.i, -28
  br i1 %cmp14.not, label %diAllocExt.exit.if.end18_crit_edge, label %diAllocExt.exit.cleanup_crit_edge

diAllocExt.exit.cleanup_crit_edge:                ; preds = %diAllocExt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

diAllocExt.exit.if.end18_crit_edge:               ; preds = %diAllocExt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %diAllocExt.exit.if.end18_crit_edge, %if.end11.if.end18_crit_edge, %if.else.if.end18_crit_edge, %lor.rhs.if.end18_crit_edge
  %arrayidx.i = getelementptr %struct.dinomap, ptr %imap, i32 0, i32 8, i32 %agno
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i37 = icmp slt i32 %129, 0
  br i1 %cmp.i37, label %if.end18.cleanup_crit_edge, label %if.end.i46

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i46:                                       ; preds = %if.end18
  %im_ipimap.i = getelementptr inbounds %struct.inomap, ptr %imap, i32 0, i32 1
  %130 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %im_ipimap.i, align 4
  %rdwrlock.i38 = getelementptr i8, ptr %131, i32 -688
  call void @down_read_nested(ptr noundef %rdwrlock.i38, i32 noundef 1) #8
  %132 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %im_ipimap.i, align 4
  %add.i.i39 = add nuw i32 %129, 1
  %i_sb.i.i40 = getelementptr inbounds %struct.inode, ptr %133, i32 0, i32 8
  %134 = ptrtoint ptr %i_sb.i.i40 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i_sb.i.i40, align 4
  %s_fs_info.i.i.i41 = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 33
  %136 = ptrtoint ptr %s_fs_info.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i.i.i41, align 16
  %l2nbperpage.i.i42 = getelementptr inbounds %struct.jfs_sb_info, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %l2nbperpage.i.i42 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %l2nbperpage.i.i42, align 2
  %conv8.i.i43 = zext i16 %139 to i32
  %shl.i.i44 = shl i32 %add.i.i39, %conv8.i.i43
  %call3.i.i45 = call ptr @__get_metapage(ptr noundef %133, i32 noundef %shl.i.i44, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not.i = icmp eq ptr %call3.i.i45, null
  br i1 %cmp.i.not.i, label %if.then2.i, label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %im_ipimap.i, align 4
  %rdwrlock5.i = getelementptr i8, ptr %141, i32 -688
  call void @up_read(ptr noundef %rdwrlock5.i) #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i46
  %data.i = getelementptr inbounds %struct.metapage, ptr %call3.i.i45, i32 0, i32 7
  %142 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data.i, align 4
  %nfreeinos.i = getelementptr inbounds %struct.iag, ptr %143, i32 0, i32 9
  %144 = ptrtoint ptr %nfreeinos.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nfreeinos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool7.not.i = icmp eq i32 %145, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end19.preheader.i

if.end19.preheader.i:                             ; preds = %if.end6.i
  %arrayidx20.i = getelementptr %struct.iag, ptr %143, i32 0, i32 7, i32 0
  %146 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %147)
  %tobool21.not.i = icmp eq i32 %147, -1
  br i1 %tobool21.not.i, label %for.inc.i48, label %if.end19.preheader.i.for.end.i54_crit_edge

if.end19.preheader.i.for.end.i54_crit_edge:       ; preds = %if.end19.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i54

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %im_ipimap.i, align 4
  %rdwrlock11.i = getelementptr i8, ptr %149, i32 -688
  call void @up_read(ptr noundef %rdwrlock11.i) #8
  call void @release_metapage(ptr noundef nonnull %call3.i.i45) #8
  %i_sb.i47 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %150 = ptrtoint ptr %i_sb.i47 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i_sb.i47, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %151, ptr noundef nonnull @.str.67) #8
  br label %cleanup

for.inc.i48:                                      ; preds = %if.end19.preheader.i
  %arrayidx20.1.i = getelementptr %struct.iag, ptr %143, i32 0, i32 7, i32 1
  %152 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx20.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %153)
  %tobool21.not.1.i = icmp eq i32 %153, -1
  br i1 %tobool21.not.1.i, label %for.inc.1.i49, label %for.inc.i48.for.end.i54_crit_edge

for.inc.i48.for.end.i54_crit_edge:                ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i54

for.inc.1.i49:                                    ; preds = %for.inc.i48
  %arrayidx20.2.i = getelementptr %struct.iag, ptr %143, i32 0, i32 7, i32 2
  %154 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx20.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %155)
  %tobool21.not.2.i = icmp eq i32 %155, -1
  br i1 %tobool21.not.2.i, label %for.inc.2.i50, label %for.inc.1.i49.for.end.i54_crit_edge

for.inc.1.i49.for.end.i54_crit_edge:              ; preds = %for.inc.1.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i54

for.inc.2.i50:                                    ; preds = %for.inc.1.i49
  %arrayidx20.3.i = getelementptr %struct.iag, ptr %143, i32 0, i32 7, i32 3
  %156 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx20.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %tobool21.not.3.i = icmp eq i32 %157, -1
  br i1 %tobool21.not.3.i, label %for.inc.3.i51, label %for.inc.2.i50.for.end.i54_crit_edge

for.inc.2.i50.for.end.i54_crit_edge:              ; preds = %for.inc.2.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i54

for.inc.3.i51:                                    ; preds = %for.inc.2.i50
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %im_ipimap.i, align 4
  %rdwrlock17.i = getelementptr i8, ptr %159, i32 -688
  call void @up_read(ptr noundef %rdwrlock17.i) #8
  call void @release_metapage(ptr noundef nonnull %call3.i.i45) #8
  %i_sb18.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %160 = ptrtoint ptr %i_sb18.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %i_sb18.i, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %161, ptr noundef nonnull @.str.68) #8
  br label %cleanup

for.end.i54:                                      ; preds = %for.inc.2.i50.for.end.i54_crit_edge, %for.inc.1.i49.for.end.i54_crit_edge, %for.inc.i48.for.end.i54_crit_edge, %if.end19.preheader.i.for.end.i54_crit_edge
  %sword.0122.lcssa.i = phi i32 [ 0, %if.end19.preheader.i.for.end.i54_crit_edge ], [ 32, %for.inc.i48.for.end.i54_crit_edge ], [ 64, %for.inc.1.i49.for.end.i54_crit_edge ], [ 96, %for.inc.2.i50.for.end.i54_crit_edge ]
  %.lcssa.i52 = phi i32 [ %147, %if.end19.preheader.i.for.end.i54_crit_edge ], [ %153, %for.inc.i48.for.end.i54_crit_edge ], [ %155, %for.inc.1.i49.for.end.i54_crit_edge ], [ %157, %for.inc.2.i50.for.end.i54_crit_edge ]
  %162 = call i32 @llvm.bswap.i32(i32 %.lcssa.i52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp1122.i.i53 = icmp sgt i32 %162, -1
  br i1 %cmp1122.i.i53, label %for.end.i54.if.end33.i_crit_edge, label %for.end.i54.for.inc.i.i62_crit_edge

for.end.i54.for.inc.i.i62_crit_edge:              ; preds = %for.end.i54
  br label %for.inc.i.i62

for.end.i54.if.end33.i_crit_edge:                 ; preds = %for.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

for.inc.i.i62:                                    ; preds = %for.inc.i.i62.for.inc.i.i62_crit_edge, %for.end.i54.for.inc.i.i62_crit_edge
  %word.addr.025.i.i55 = phi i32 [ %shl14.i.i58, %for.inc.i.i62.for.inc.i.i62_crit_edge ], [ %162, %for.end.i54.for.inc.i.i62_crit_edge ]
  %bitno.024.i.i56 = phi i32 [ %inc.i.i57, %for.inc.i.i62.for.inc.i.i62_crit_edge ], [ 0, %for.end.i54.for.inc.i.i62_crit_edge ]
  %inc.i.i57 = add nuw nsw i32 %bitno.024.i.i56, 1
  %shl14.i.i58 = shl i32 %word.addr.025.i.i55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bitno.024.i.i56)
  %cmp10.i.i59 = icmp ugt i32 %bitno.024.i.i56, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl14.i.i58)
  %cmp11.i.i60 = icmp sgt i32 %shl14.i.i58, -1
  %or.cond.i.i61 = select i1 %cmp10.i.i59, i1 true, i1 %cmp11.i.i60
  br i1 %or.cond.i.i61, label %diFindFree.exit.i63, label %for.inc.i.i62.for.inc.i.i62_crit_edge

for.inc.i.i62.for.inc.i.i62_crit_edge:            ; preds = %for.inc.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i62

diFindFree.exit.i63:                              ; preds = %for.inc.i.i62
  br i1 %cmp10.i.i59, label %if.then28.i, label %diFindFree.exit.i63.if.end33.i_crit_edge

diFindFree.exit.i63.if.end33.i_crit_edge:         ; preds = %diFindFree.exit.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then28.i:                                      ; preds = %diFindFree.exit.i63
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %im_ipimap.i, align 4
  %rdwrlock31.i = getelementptr i8, ptr %164, i32 -688
  call void @up_read(ptr noundef %rdwrlock31.i) #8
  call void @release_metapage(ptr noundef nonnull %call3.i.i45) #8
  %i_sb32.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %165 = ptrtoint ptr %i_sb32.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %i_sb32.i, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %166, ptr noundef nonnull @.str.69) #8
  br label %cleanup

if.end33.i:                                       ; preds = %diFindFree.exit.i63.if.end33.i_crit_edge, %for.end.i54.if.end33.i_crit_edge
  %bitno.0.lcssa.i117.i = phi i32 [ %inc.i.i57, %diFindFree.exit.i63.if.end33.i_crit_edge ], [ 0, %for.end.i54.if.end33.i_crit_edge ]
  %add.i64 = add i32 %bitno.0.lcssa.i117.i, %sword.0122.lcssa.i
  %arrayidx34.i = getelementptr %struct.iag, ptr %143, i32 0, i32 12, i32 %add.i64
  %167 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx34.i, align 4
  %169 = call i32 @llvm.bswap.i32(i32 %168) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %169)
  %cmp1122.i94.i = icmp sgt i32 %169, -1
  br i1 %cmp1122.i94.i, label %if.end33.i.if.end42.i_crit_edge, label %if.end33.i.for.inc.i102.i_crit_edge

if.end33.i.for.inc.i102.i_crit_edge:              ; preds = %if.end33.i
  br label %for.inc.i102.i

if.end33.i.if.end42.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

for.inc.i102.i:                                   ; preds = %for.inc.i102.i.for.inc.i102.i_crit_edge, %if.end33.i.for.inc.i102.i_crit_edge
  %word.addr.025.i95.i = phi i32 [ %shl14.i98.i, %for.inc.i102.i.for.inc.i102.i_crit_edge ], [ %169, %if.end33.i.for.inc.i102.i_crit_edge ]
  %bitno.024.i96.i = phi i32 [ %inc.i97.i, %for.inc.i102.i.for.inc.i102.i_crit_edge ], [ 0, %if.end33.i.for.inc.i102.i_crit_edge ]
  %inc.i97.i = add nuw nsw i32 %bitno.024.i96.i, 1
  %shl14.i98.i = shl i32 %word.addr.025.i95.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %bitno.024.i96.i)
  %cmp10.i99.i = icmp ugt i32 %bitno.024.i96.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl14.i98.i)
  %cmp11.i100.i = icmp sgt i32 %shl14.i98.i, -1
  %or.cond.i101.i = select i1 %cmp10.i99.i, i1 true, i1 %cmp11.i100.i
  br i1 %or.cond.i101.i, label %diFindFree.exit104.i, label %for.inc.i102.i.for.inc.i102.i_crit_edge

for.inc.i102.i.for.inc.i102.i_crit_edge:          ; preds = %for.inc.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i102.i

diFindFree.exit104.i:                             ; preds = %for.inc.i102.i
  br i1 %cmp10.i99.i, label %if.then37.i, label %diFindFree.exit104.i.if.end42.i_crit_edge

diFindFree.exit104.i.if.end42.i_crit_edge:        ; preds = %diFindFree.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then37.i:                                      ; preds = %diFindFree.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %im_ipimap.i, align 4
  %rdwrlock40.i = getelementptr i8, ptr %171, i32 -688
  call void @up_read(ptr noundef %rdwrlock40.i) #8
  call void @release_metapage(ptr noundef nonnull %call3.i.i45) #8
  %i_sb41.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %172 = ptrtoint ptr %i_sb41.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_sb41.i, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %173, ptr noundef nonnull @.str.70) #8
  br label %cleanup

if.end42.i:                                       ; preds = %diFindFree.exit104.i.if.end42.i_crit_edge, %if.end33.i.if.end42.i_crit_edge
  %bitno.0.lcssa.i103120.i = phi i32 [ %inc.i97.i, %diFindFree.exit104.i.if.end42.i_crit_edge ], [ 0, %if.end33.i.if.end42.i_crit_edge ]
  %shl43.i = shl i32 %add.i64, 5
  %add44.i = add nuw i32 %bitno.0.lcssa.i103120.i, %shl43.i
  %call45.i = call fastcc i32 @diAllocBit(ptr noundef %imap, ptr noundef %143, i32 noundef %add44.i) #8
  %174 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %im_ipimap.i, align 4
  %rdwrlock48.i = getelementptr i8, ptr %175, i32 -688
  call void @up_read(ptr noundef %rdwrlock48.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool49.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_metapage(ptr noundef nonnull %call3.i.i45) #8
  br label %cleanup

if.end51.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i107.i = shl i32 %129, 12
  %add.i108.i = add i32 %add44.i, %shl.i107.i
  %i_ino.i.i65 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %176 = ptrtoint ptr %i_ino.i.i65 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add.i108.i, ptr %i_ino.i.i65, align 8
  %ixpxd.i.i66 = getelementptr i8, ptr %ip, i32 -832
  %arrayidx.i.i67 = getelementptr %struct.iag, ptr %143, i32 0, i32 14, i32 %add.i64
  %177 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx.i.i67, align 8
  %179 = ptrtoint ptr %ixpxd.i.i66 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %178, ptr %ixpxd.i.i66, align 8
  %180 = ptrtoint ptr %143 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %143, align 8
  %182 = call i64 @llvm.bswap.i64(i64 %181) #8
  %agstart1.i.i68 = getelementptr i8, ptr %ip, i32 -760
  %183 = ptrtoint ptr %agstart1.i.i68 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %182, ptr %agstart1.i.i68, align 8
  %active_ag.i.i69 = getelementptr i8, ptr %ip, i32 -749
  %184 = ptrtoint ptr %active_ag.i.i69 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -1, ptr %active_ag.i.i69, align 1
  %flag.i.i70 = getelementptr inbounds %struct.metapage, ptr %call3.i.i45, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %flag.i.i70) #8
  call void @release_metapage(ptr noundef nonnull %call3.i.i45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51.i, %if.then50.i, %if.then37.i, %if.then28.i, %for.inc.3.i51, %if.then8.i, %if.then2.i, %if.end18.cleanup_crit_edge, %diAllocExt.exit.cleanup_crit_edge, %if.end53.i, %if.then32.i, %for.inc.3.i, %if.then7.i, %diNewIAG.exit.thread.i, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %retval.0.i, %diAllocExt.exit.cleanup_crit_edge ], [ -5, %if.then2.i ], [ -5, %for.inc.3.i51 ], [ -5, %if.then28.i ], [ -5, %if.then37.i ], [ %call45.i, %if.then50.i ], [ 0, %if.end51.i ], [ -5, %if.then8.i ], [ -28, %if.end18.cleanup_crit_edge ], [ -5, %diNewIAG.exit.thread.i ], [ -5, %if.then7.i ], [ 0, %if.end53.i ], [ -5, %if.then32.i ], [ -5, %for.inc.3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diUpdatePMap(ptr noundef %ipimap, i32 noundef %inum, i1 noundef zeroext %is_free, ptr noundef %tblk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_imap = getelementptr i8, ptr %ipimap, i32 -112
  %0 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_imap, align 8
  %shr = lshr i32 %inum, 12
  %in_nextiag = getelementptr inbounds %struct.dinomap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %in_nextiag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_nextiag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %3)
  %cmp.not = icmp slt i32 %shr, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %5, ptr noundef nonnull @.str.52) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdwrlock = getelementptr i8, ptr %ipimap, i32 -688
  tail call void @down_read_nested(ptr noundef %rdwrlock, i32 noundef 1) #8
  %im_ipimap.i = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %im_ipimap.i, align 4
  %add.i = add nuw nsw i32 %shr, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %l2nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %l2nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %l2nbperpage.i, align 2
  %conv8.i = zext i16 %13 to i32
  %shl.i = shl i32 %add.i, %conv8.i
  %call3.i = tail call ptr @__get_metapage(ptr noundef %7, i32 noundef %shl.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not = icmp eq ptr %call3.i, null
  tail call void @up_read(ptr noundef %rdwrlock) #8
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 5
  %14 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flag.i, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end6.metapage_wait_for_io.exit_crit_edge, label %if.then.i

if.end6.metapage_wait_for_io.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %metapage_wait_for_io.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %page.i = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 10
  %17 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %page.i, align 4
  tail call void @wait_on_page_writeback(ptr noundef %18) #8
  br label %metapage_wait_for_io.exit

metapage_wait_for_io.exit:                        ; preds = %if.then.i, %if.end6.metapage_wait_for_io.exit_crit_edge
  %data = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %and = lshr i32 %inum, 5
  %21 = and i32 %and, 127
  %and8 = and i32 %inum, 31
  %shr9 = lshr i32 -2147483648, %and8
  %arrayidx = getelementptr %struct.iag, ptr %20, i32 0, i32 12, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %and12 = and i32 %24, %shr9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %is_free, label %if.then11, label %if.else

if.then11:                                        ; preds = %metapage_wait_for_io.exit
  br i1 %tobool13.not, label %if.then14, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb15 = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb15, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %26, ptr noundef nonnull @.str.53, i32 noundef %inum) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11.if.end16_crit_edge
  %arrayidx17 = getelementptr %struct.iag, ptr %20, i32 0, i32 13, i32 %21
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx17, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %and18 = and i32 %29, %shr9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb21 = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb21, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %31, ptr noundef nonnull @.str.54, i32 noundef %inum) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %neg = xor i32 %shr9, -1
  %32 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17, align 4
  %and25 = and i32 %34, %32
  store i32 %and25, ptr %arrayidx17, align 4
  br label %if.end42

if.else:                                          ; preds = %metapage_wait_for_io.exit
  br i1 %tobool13.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  %i_sb31 = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb31, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %36, ptr noundef nonnull @.str.55) #8
  br label %cleanup

if.end32:                                         ; preds = %if.else
  %arrayidx34 = getelementptr %struct.iag, ptr %20, i32 0, i32 13, i32 %21
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx34, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %and35 = and i32 %39, %shr9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  %i_sb38 = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb38, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %41, ptr noundef nonnull @.str.56) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %shr9)
  %or = or i32 %38, %42
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %arrayidx34, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end39, %if.end22
  %lsn43 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 3
  %44 = ptrtoint ptr %lsn43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lsn43, align 4
  %sb = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 5
  %46 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %log45 = getelementptr inbounds %struct.jfs_sb_info, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %log45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %log45, align 4
  %synclock = getelementptr inbounds %struct.jfs_log, ptr %51, i32 0, i32 30
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock) #8
  %lsn52 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 3
  %52 = ptrtoint ptr %lsn52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lsn52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp53.not = icmp eq i32 %53, 0
  br i1 %cmp53.not, label %if.else116, label %if.then55

if.then55:                                        ; preds = %if.end42
  %syncpt = getelementptr inbounds %struct.jfs_log, ptr %51, i32 0, i32 27
  %54 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %syncpt, align 4
  %sub = sub i32 %45, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp56 = icmp slt i32 %sub, 0
  br i1 %cmp56, label %if.then58, label %if.then55.if.end59_crit_edge

if.then55.if.end59_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %logsize = getelementptr inbounds %struct.jfs_log, ptr %51, i32 0, i32 24
  %56 = ptrtoint ptr %logsize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %logsize, align 8
  %add = add i32 %57, %sub
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then55.if.end59_crit_edge
  %difft.0 = phi i32 [ %add, %if.then58 ], [ %sub, %if.then55.if.end59_crit_edge ]
  %sub62 = sub i32 %53, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62)
  %cmp63 = icmp slt i32 %sub62, 0
  br i1 %cmp63, label %if.then65, label %if.end59.if.end68_crit_edge

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %logsize66 = getelementptr inbounds %struct.jfs_log, ptr %51, i32 0, i32 24
  %58 = ptrtoint ptr %logsize66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %logsize66, align 8
  %add67 = add i32 %59, %sub62
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end59.if.end68_crit_edge
  %diffp.0 = phi i32 [ %add67, %if.then65 ], [ %sub62, %if.end59.if.end68_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %difft.0, i32 %diffp.0)
  %cmp69 = icmp slt i32 %difft.0, %diffp.0
  br i1 %cmp69, label %if.then71, label %if.end68.do.body75_crit_edge

if.end68.do.body75_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body75

if.then71:                                        ; preds = %if.end68
  %60 = ptrtoint ptr %lsn52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %45, ptr %lsn52, align 8
  %synclist = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 4
  %synclist73 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then71.__list_del_entry.exit.i_crit_edge

if.then71.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %synclist to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %synclist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then71.__list_del_entry.exit.i_crit_edge
  %67 = ptrtoint ptr %synclist73 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %synclist73, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %synclist, ptr noundef %synclist73, ptr noundef %68) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.do.body75_crit_edge

__list_del_entry.exit.i.do.body75_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body75

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %synclist, ptr %prev1.i.i2.i, align 4
  %70 = ptrtoint ptr %synclist to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %synclist, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %synclist73, ptr %prev3.i.i.i, align 4
  %72 = ptrtoint ptr %synclist73 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %synclist, ptr %synclist73, align 4
  br label %do.body75

do.body75:                                        ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.do.body75_crit_edge, %if.end68.do.body75_crit_edge
  %clsn = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 13
  %73 = ptrtoint ptr %clsn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %clsn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool76.not = icmp eq i32 %74, 0
  br i1 %tobool76.not, label %do.end80, label %do.end91

do.end80:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 2811, ptr noundef nonnull @.str.58) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_imap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2811, 0\0A.popsection", ""() #8, !srcloc !168
  unreachable

do.end91:                                         ; preds = %do.body75
  %clsn92 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 11
  %75 = ptrtoint ptr %clsn92 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %clsn92, align 4
  %77 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %syncpt, align 4
  %sub94 = sub i32 %76, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub94)
  %cmp95 = icmp slt i32 %sub94, 0
  br i1 %cmp95, label %if.then97, label %do.end91.if.end100_crit_edge

do.end91.if.end100_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then97:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  %logsize98 = getelementptr inbounds %struct.jfs_log, ptr %51, i32 0, i32 24
  %79 = ptrtoint ptr %logsize98 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %logsize98, align 8
  %add99 = add i32 %80, %sub94
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %do.end91.if.end100_crit_edge
  %difft.1 = phi i32 [ %add99, %if.then97 ], [ %sub94, %do.end91.if.end100_crit_edge ]
  %sub103 = sub i32 %74, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub103)
  %cmp104 = icmp slt i32 %sub103, 0
  br i1 %cmp104, label %if.then106, label %if.end100.if.end109_crit_edge

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then106:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %logsize107 = getelementptr inbounds %struct.jfs_log, ptr %51, i32 0, i32 24
  %81 = ptrtoint ptr %logsize107 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %logsize107, align 8
  %add108 = add i32 %82, %sub103
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end100.if.end109_crit_edge
  %diffp.1 = phi i32 [ %add108, %if.then106 ], [ %sub103, %if.end100.if.end109_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %difft.1, i32 %diffp.1)
  %cmp110 = icmp sgt i32 %difft.1, %diffp.1
  br i1 %cmp110, label %if.then112, label %if.end109.if.end123_crit_edge

if.end109.if.end123_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %clsn to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %76, ptr %clsn, align 8
  br label %if.end123

if.else116:                                       ; preds = %if.end42
  %log117 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 15
  %84 = ptrtoint ptr %log117 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %51, ptr %log117, align 8
  %85 = ptrtoint ptr %lsn52 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %45, ptr %lsn52, align 8
  %count = getelementptr inbounds %struct.jfs_log, ptr %51, i32 0, i32 32
  %86 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count, align 4
  %inc = add i32 %87, 1
  store i32 %inc, ptr %count, align 4
  %synclist119 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 4
  %synclist120 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4
  %88 = ptrtoint ptr %synclist120 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %synclist120, align 4
  %call.i.i198 = tail call zeroext i1 @__list_add_valid(ptr noundef %synclist119, ptr noundef %synclist120, ptr noundef %89) #8
  br i1 %call.i.i198, label %if.end.i.i199, label %if.else116.list_add.exit_crit_edge

if.else116.list_add.exit_crit_edge:               ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i199:                                    ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %synclist119, ptr %prev1.i.i, align 4
  %91 = ptrtoint ptr %synclist119 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %synclist119, align 4
  %prev3.i.i = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %synclist120, ptr %prev3.i.i, align 4
  %93 = ptrtoint ptr %synclist120 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %synclist119, ptr %synclist120, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i199, %if.else116.list_add.exit_crit_edge
  %clsn121 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 11
  %94 = ptrtoint ptr %clsn121 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clsn121, align 4
  %clsn122 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 13
  %96 = ptrtoint ptr %clsn122 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %clsn122, align 8
  br label %if.end123

if.end123:                                        ; preds = %list_add.exit, %if.then112, %if.end109.if.end123_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock, i32 noundef %call49) #8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then37, %if.then30, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end123 ], [ -5, %if.then37 ], [ -5, %if.then30 ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @diExtendFS(ptr nocapture noundef readonly %ipimap, ptr nocapture noundef readonly %ipbmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_imap = getelementptr i8, ptr %ipimap, i32 -112
  %0 = ptrtoint ptr %_imap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_imap, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %ipbmap, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmap, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %8 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %in_nextiag = getelementptr inbounds %struct.dinomap, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %in_nextiag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_nextiag, align 4
  %im_numinos = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numinos, i32 noundef 4) #8
  %11 = ptrtoint ptr %im_numinos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %im_numinos, align 4
  %im_numfree = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 6
  %call.i.i209 = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numfree, i32 noundef 4) #8
  %13 = ptrtoint ptr %im_numfree to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %im_numfree, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %10, i32 noundef %12, i32 noundef %14) #12
  br label %for.body.preheader

for.cond20.preheader:                             ; preds = %for.body
  %in_nextiag22 = getelementptr inbounds %struct.dinomap, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %in_nextiag22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in_nextiag22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23242 = icmp sgt i32 %16, 0
  br i1 %cmp23242, label %for.body24.lr.ph, label %for.cond20.preheader.for.end116_crit_edge

for.cond20.preheader.for.end116_crit_edge:        ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.body24.lr.ph:                                 ; preds = %for.cond20.preheader
  %im_ipimap.i = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 1
  %dn_agl2size = getelementptr inbounds %struct.dbmap, ptr %7, i32 0, i32 11
  br label %for.body24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0241 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %i.0241
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx, align 4
  %extfree = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %i.0241, i32 1
  %18 = ptrtoint ptr %extfree to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %extfree, align 4
  %numinos16 = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %i.0241, i32 2
  %19 = ptrtoint ptr %numinos16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %numinos16, align 4
  %numfree = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %i.0241, i32 3
  %20 = ptrtoint ptr %numfree to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %numfree, align 4
  %inc = add nuw nsw i32 %i.0241, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond20.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body24:                                       ; preds = %for.inc114.for.body24_crit_edge, %for.body24.lr.ph
  %xnumfree.0246 = phi i32 [ 0, %for.body24.lr.ph ], [ %xnumfree.3, %for.inc114.for.body24_crit_edge ]
  %xnuminos.0245 = phi i32 [ 0, %for.body24.lr.ph ], [ %xnuminos.2, %for.inc114.for.body24_crit_edge ]
  %i.1244 = phi i32 [ 0, %for.body24.lr.ph ], [ %add.i, %for.inc114.for.body24_crit_edge ]
  %rcx.0243 = phi i32 [ 0, %for.body24.lr.ph ], [ %rcx.2, %for.inc114.for.body24_crit_edge ]
  %21 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %im_ipimap.i, align 4
  %add.i = add nuw nsw i32 %i.1244, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %l2nbperpage.i = getelementptr inbounds %struct.jfs_sb_info, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %l2nbperpage.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %l2nbperpage.i, align 2
  %conv8.i = zext i16 %28 to i32
  %shl.i = shl i32 %add.i, %conv8.i
  %call3.i = tail call ptr @__get_metapage(ptr noundef %22, i32 noundef %shl.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.not = icmp eq ptr %call3.i, null
  br i1 %cmp.i.not, label %for.body24.for.inc114_crit_edge, label %if.end27

for.body24.for.inc114_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114

if.end27:                                         ; preds = %for.body24
  %data = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 7
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %iagnum = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %iagnum to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iagnum, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %i.1244)
  %cmp28.not = icmp eq i32 %33, %i.1244
  br i1 %cmp28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end27
  %nfreeexts = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 10
  %34 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nfreeexts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %35)
  %cmp32 = icmp eq i32 %35, -2147483648
  br i1 %cmp32, label %if.end31.for.inc114.sink.split_crit_edge, label %if.end34

if.end31.for.inc114.sink.split_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.sink.split

if.end34:                                         ; preds = %if.end31
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %30, align 8
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %39 = ptrtoint ptr %dn_agl2size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dn_agl2size, align 4
  %sh_prom = zext i32 %40 to i64
  %shr = ashr i64 %38, %sh_prom
  %conv = trunc i64 %shr to i32
  %conv36 = sext i32 %conv to i64
  %shl = shl i64 %conv36, %sh_prom
  %41 = tail call i64 @llvm.bswap.i64(i64 %shl)
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %30, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %35)
  %.neg = mul i32 %43, -32
  %shl42 = add i32 %.neg, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl42)
  %cmp43 = icmp sgt i32 %shl42, 0
  br i1 %cmp43, label %if.then45, label %if.end34.if.end51_crit_edge

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %numinos49 = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %conv, i32 2
  %44 = ptrtoint ptr %numinos49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %numinos49, align 4
  %add = add i32 %45, %shl42
  store i32 %add, ptr %numinos49, align 4
  %add50 = add i32 %shl42, %xnuminos.0245
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.end34.if.end51_crit_edge
  %xnuminos.1 = phi i32 [ %add50, %if.then45 ], [ %xnuminos.0245, %if.end34.if.end51_crit_edge ]
  %nfreeinos = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 9
  %46 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nfreeinos, align 8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp52 = icmp sgt i32 %48, 0
  br i1 %cmp52, label %if.then54, label %if.end51.if.end85_crit_edge

if.end51.if.end85_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then54:                                        ; preds = %if.end51
  %arrayidx57 = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %conv
  %49 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp59 = icmp eq i32 %50, -1
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %inofreefwd = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 2
  %51 = ptrtoint ptr %inofreefwd to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %inofreefwd, align 4
  %inofreeback = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 3
  %52 = ptrtoint ptr %inofreeback to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %inofreeback, align 8
  br label %if.end71

if.else:                                          ; preds = %if.then54
  %53 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %im_ipimap.i, align 4
  %add.i213 = add nuw i32 %50, 1
  %i_sb.i214 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %i_sb.i214 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb.i214, align 4
  %s_fs_info.i.i215 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %57 = ptrtoint ptr %s_fs_info.i.i215 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i.i215, align 16
  %l2nbperpage.i216 = getelementptr inbounds %struct.jfs_sb_info, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %l2nbperpage.i216 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %l2nbperpage.i216, align 2
  %conv8.i217 = zext i16 %60 to i32
  %shl.i218 = shl i32 %add.i213, %conv8.i217
  %call3.i219 = tail call ptr @__get_metapage(ptr noundef %54, i32 noundef %shl.i218, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i220.not = icmp eq ptr %call3.i219, null
  br i1 %cmp.i220.not, label %if.else.nextiag_crit_edge, label %if.end65

if.else.nextiag_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %nextiag

if.end65:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %data66 = getelementptr inbounds %struct.metapage, ptr %call3.i219, i32 0, i32 7
  %61 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data66, align 4
  %63 = ptrtoint ptr %iagnum to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iagnum, align 8
  %inofreeback68 = getelementptr inbounds %struct.iag, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %inofreeback68 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %inofreeback68, align 8
  %66 = tail call i32 @llvm.bswap.i32(i32 %50)
  %inofreefwd69 = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 2
  %67 = ptrtoint ptr %inofreefwd69 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %inofreefwd69, align 4
  %inofreeback70 = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 3
  %68 = ptrtoint ptr %inofreeback70 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %inofreeback70, align 8
  %flag.i = getelementptr inbounds %struct.metapage, ptr %call3.i219, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i219) #8
  br label %if.end71

if.end71:                                         ; preds = %if.end65, %if.then61
  %69 = ptrtoint ptr %iagnum to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iagnum, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx57, align 4
  %73 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nfreeinos, align 8
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %numfree81 = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %conv, i32 3
  %76 = ptrtoint ptr %numfree81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %numfree81, align 4
  %add82 = add i32 %77, %75
  store i32 %add82, ptr %numfree81, align 4
  %78 = ptrtoint ptr %nfreeinos to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nfreeinos, align 8
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %add84 = add i32 %80, %xnumfree.0246
  br label %if.end85

if.end85:                                         ; preds = %if.end71, %if.end51.if.end85_crit_edge
  %xnumfree.1 = phi i32 [ %add84, %if.end71 ], [ %xnumfree.0246, %if.end51.if.end85_crit_edge ]
  %81 = ptrtoint ptr %nfreeexts to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nfreeexts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp87.not = icmp eq i32 %82, 0
  br i1 %cmp87.not, label %if.end85.nextiag_crit_edge, label %if.then89

if.end85.nextiag_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %nextiag

if.then89:                                        ; preds = %if.end85
  %extfree93 = getelementptr %struct.dinomap, ptr %1, i32 0, i32 8, i32 %conv, i32 1
  %83 = ptrtoint ptr %extfree93 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %extfree93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp94 = icmp eq i32 %84, -1
  br i1 %cmp94, label %if.then96, label %if.else97

if.then96:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %extfreefwd = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 4
  %85 = ptrtoint ptr %extfreefwd to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %extfreefwd, align 4
  %extfreeback = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 5
  %86 = ptrtoint ptr %extfreeback to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %extfreeback, align 8
  br label %if.end107

if.else97:                                        ; preds = %if.then89
  %87 = ptrtoint ptr %im_ipimap.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %im_ipimap.i, align 4
  %add.i223 = add nuw i32 %84, 1
  %i_sb.i224 = getelementptr inbounds %struct.inode, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %i_sb.i224 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb.i224, align 4
  %s_fs_info.i.i225 = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 33
  %91 = ptrtoint ptr %s_fs_info.i.i225 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i.i225, align 16
  %l2nbperpage.i226 = getelementptr inbounds %struct.jfs_sb_info, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %l2nbperpage.i226 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %l2nbperpage.i226, align 2
  %conv8.i227 = zext i16 %94 to i32
  %shl.i228 = shl i32 %add.i223, %conv8.i227
  %call3.i229 = tail call ptr @__get_metapage(ptr noundef %88, i32 noundef %shl.i228, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %cmp.i230.not = icmp eq ptr %call3.i229, null
  br i1 %cmp.i230.not, label %if.else97.nextiag_crit_edge, label %if.end101

if.else97.nextiag_crit_edge:                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  br label %nextiag

if.end101:                                        ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  %data102 = getelementptr inbounds %struct.metapage, ptr %call3.i229, i32 0, i32 7
  %95 = ptrtoint ptr %data102 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data102, align 4
  %97 = ptrtoint ptr %iagnum to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %iagnum, align 8
  %extfreeback104 = getelementptr inbounds %struct.iag, ptr %96, i32 0, i32 5
  %99 = ptrtoint ptr %extfreeback104 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %extfreeback104, align 8
  %100 = tail call i32 @llvm.bswap.i32(i32 %84)
  %extfreefwd105 = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 4
  %101 = ptrtoint ptr %extfreefwd105 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %extfreefwd105, align 4
  %extfreeback106 = getelementptr inbounds %struct.iag, ptr %30, i32 0, i32 5
  %102 = ptrtoint ptr %extfreeback106 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %extfreeback106, align 8
  %flag.i232 = getelementptr inbounds %struct.metapage, ptr %call3.i229, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i232) #8
  tail call void @release_metapage(ptr noundef nonnull %call3.i229) #8
  br label %if.end107

if.end107:                                        ; preds = %if.end101, %if.then96
  %103 = ptrtoint ptr %iagnum to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iagnum, align 8
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %106 = ptrtoint ptr %extfree93 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %extfree93, align 4
  br label %nextiag

nextiag:                                          ; preds = %if.end107, %if.else97.nextiag_crit_edge, %if.end85.nextiag_crit_edge, %if.else.nextiag_crit_edge
  %rcx.1 = phi i32 [ %rcx.0243, %if.end107 ], [ %rcx.0243, %if.end85.nextiag_crit_edge ], [ -5, %if.else.nextiag_crit_edge ], [ -5, %if.else97.nextiag_crit_edge ]
  %xnumfree.2 = phi i32 [ %xnumfree.1, %if.end107 ], [ %xnumfree.1, %if.end85.nextiag_crit_edge ], [ %xnumfree.0246, %if.else.nextiag_crit_edge ], [ %xnumfree.1, %if.else97.nextiag_crit_edge ]
  %flag.i233 = getelementptr inbounds %struct.metapage, ptr %call3.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag.i233) #8
  br label %for.inc114.sink.split

for.inc114.sink.split:                            ; preds = %nextiag, %if.end31.for.inc114.sink.split_crit_edge
  %rcx.2.ph = phi i32 [ %rcx.1, %nextiag ], [ %rcx.0243, %if.end31.for.inc114.sink.split_crit_edge ]
  %xnuminos.2.ph = phi i32 [ %xnuminos.1, %nextiag ], [ %xnuminos.0245, %if.end31.for.inc114.sink.split_crit_edge ]
  %xnumfree.3.ph = phi i32 [ %xnumfree.2, %nextiag ], [ %xnumfree.0246, %if.end31.for.inc114.sink.split_crit_edge ]
  tail call void @release_metapage(ptr noundef nonnull %call3.i) #8
  br label %for.inc114

for.inc114:                                       ; preds = %for.inc114.sink.split, %for.body24.for.inc114_crit_edge
  %rcx.2 = phi i32 [ -5, %for.body24.for.inc114_crit_edge ], [ %rcx.2.ph, %for.inc114.sink.split ]
  %xnuminos.2 = phi i32 [ %xnuminos.0245, %for.body24.for.inc114_crit_edge ], [ %xnuminos.2.ph, %for.inc114.sink.split ]
  %xnumfree.3 = phi i32 [ %xnumfree.0246, %for.body24.for.inc114_crit_edge ], [ %xnumfree.3.ph, %for.inc114.sink.split ]
  %107 = ptrtoint ptr %in_nextiag22 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %in_nextiag22, align 4
  %cmp23 = icmp slt i32 %add.i, %108
  br i1 %cmp23, label %for.inc114.for.body24_crit_edge, label %for.inc114.for.end116_crit_edge

for.inc114.for.end116_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.inc114.for.body24_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.end116:                                       ; preds = %for.inc114.for.end116_crit_edge, %for.cond20.preheader.for.end116_crit_edge
  %rcx.0.lcssa = phi i32 [ 0, %for.cond20.preheader.for.end116_crit_edge ], [ %rcx.2, %for.inc114.for.end116_crit_edge ]
  %xnuminos.0.lcssa = phi i32 [ 0, %for.cond20.preheader.for.end116_crit_edge ], [ %xnuminos.2, %for.inc114.for.end116_crit_edge ]
  %xnumfree.0.lcssa = phi i32 [ 0, %for.cond20.preheader.for.end116_crit_edge ], [ %xnumfree.3, %for.inc114.for.end116_crit_edge ]
  %im_numinos117 = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 5
  %call.i.i210 = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numinos117, i32 noundef 4) #8
  %109 = ptrtoint ptr %im_numinos117 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %im_numinos117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %xnuminos.0.lcssa, i32 %110)
  %cmp119.not = icmp eq i32 %xnuminos.0.lcssa, %110
  br i1 %cmp119.not, label %lor.lhs.false, label %for.end116.cleanup.sink.split_crit_edge

for.end116.cleanup.sink.split_crit_edge:          ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %for.end116
  %im_numfree121 = getelementptr inbounds %struct.inomap, ptr %1, i32 0, i32 6
  %call.i.i211 = tail call zeroext i1 @__kasan_check_read(ptr noundef %im_numfree121, i32 noundef 4) #8
  %111 = ptrtoint ptr %im_numfree121 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %im_numfree121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %xnumfree.0.lcssa, i32 %112)
  %cmp123.not = icmp eq i32 %xnumfree.0.lcssa, %112
  br i1 %cmp123.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false.cleanup.sink.split_crit_edge, %for.end116.cleanup.sink.split_crit_edge, %if.then29
  %.str.62.sink = phi ptr [ @.str.61, %if.then29 ], [ @.str.62, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.62, %for.end116.cleanup.sink.split_crit_edge ]
  %i_sb126 = getelementptr inbounds %struct.inode, ptr %ipimap, i32 0, i32 8
  %113 = ptrtoint ptr %i_sb126 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_sb126, align 4
  tail call void (ptr, ptr, ...) @jfs_error(ptr noundef %114, ptr noundef nonnull %.str.62.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %rcx.0.lcssa, %lor.lhs.false.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbAlloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtInsert(i16 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbFree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xtTruncate(i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @txAbort(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_metapage(ptr noundef %mp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %flag = getelementptr inbounds %struct.metapage, ptr %mp, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flag) #8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  tail call void @release_metapage(ptr noundef %mp) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @duplicateIXtree(ptr noundef %sb, i64 noundef %blkno, i32 noundef %xlen, ptr noundef %xaddr) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %ip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mntflag, align 4
  %and = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup21_crit_edge

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @diReadSpecial(ptr noundef %sb, i32 noundef 16, i32 noundef 1)
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %ip, align 4
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag4 = getelementptr inbounds %struct.jfs_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mntflag4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mntflag4, align 4
  %or = or i32 %9, 65536
  store i32 %or, ptr %mntflag4, align 4
  %call5 = call i32 @readSuper(ptr noundef %sb, ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then2.cleanup21_crit_edge

if.then2.cleanup21_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

if.end8:                                          ; preds = %if.then2
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %s_flag = getelementptr inbounds %struct.jfs_superblock, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flag, align 4
  %or9 = or i32 %15, 256
  store i32 %or9, ptr %s_flag, align 4
  call void @mark_buffer_dirty(ptr noundef %11) #8
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bh, align 4
  %call10 = call i32 @sync_dirty_buffer(ptr noundef %17) #8
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end8.cleanup21_crit_edge, label %if.then.i

if.end8.cleanup21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %19) #8
  br label %cleanup21

if.end11:                                         ; preds = %if.end
  %call12 = tail call zeroext i16 @txBegin(ptr noundef %sb, i32 noundef 2) #8
  %20 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ip, align 4
  %call13 = tail call i32 @xtInsert(i16 noundef zeroext %call12, ptr noundef %21, i32 noundef 0, i64 noundef %blkno, i32 noundef %xlen, ptr noundef %xaddr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %mntflag17 = getelementptr inbounds %struct.jfs_sb_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %mntflag17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mntflag17, align 4
  %or18 = or i32 %25, 65536
  store i32 %or18, ptr %mntflag17, align 4
  tail call void @txAbort(i16 noundef zeroext %call12, i32 noundef 1) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ip, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size, align 8
  %add = add i64 %29, 4096
  store i64 %add, ptr %i_size, align 8
  tail call void @inode_add_bytes(ptr noundef %27, i64 noundef 4096) #8
  %call20 = call i32 @txCommit(i16 noundef zeroext %call12, i32 noundef 1, ptr noundef nonnull %ip, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then15
  call void @txEnd(i16 noundef zeroext %call12) #8
  %30 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ip, align 4
  %cmp.i = icmp eq ptr %31, null
  br i1 %cmp.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %cleanup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %32 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1.i = icmp sgt i32 %32, 0
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.cleanup21_crit_edge

do.body.i.cleanup21_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup21

if.end5.i:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = call i32 @filemap_write_and_wait_range(ptr noundef %34, i64 noundef 0, i64 noundef 9223372036854775807) #8
  %35 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping.i, align 8
  call void @truncate_inode_pages(ptr noundef %36, i64 noundef 0) #8
  call void @iput(ptr noundef nonnull %31) #8
  br label %cleanup21

cleanup21:                                        ; preds = %if.end5.i, %do.end.i, %do.body.i.cleanup21_crit_edge, %if.then.i, %if.end8.cleanup21_crit_edge, %if.then2.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @readSuper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @diMount.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_imap.c", i32 145, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @diMount.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/jfs/jfs_imap.c", i32 149, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jfs/jfs_imap.c", i32 219, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @diSync._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @diSync._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/jfs/jfs_imap.c", i32 304, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @diRead._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @diRead._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/jfs/jfs_imap.c", i32 318, i32 3}
!19 = !{ptr @diRead._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @diRead._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/jfs/jfs_imap.c", i32 365, i32 3}
!23 = !{ptr @diRead._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @diRead._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jfs/jfs_imap.c", i32 374, i32 23}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/jfs/jfs_imap.c", i32 424, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @diReadSpecial._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @diReadSpecial._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/jfs/jfs_imap.c", i32 436, i32 2}
!34 = !{ptr @diReadSpecial._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @diReadSpecial._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/jfs/jfs_imap.c", i32 509, i32 2}
!39 = !{ptr @diWriteSpecial._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @diWriteSpecial._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/jfs/jfs_imap.c", i32 516, i32 3}
!43 = !{ptr @diWriteSpecial._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @diWriteSpecial._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/jfs/jfs_imap.c", i32 543, i32 3}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @diFreeSpecial._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @diFreeSpecial._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/jfs/jfs_imap.c", i32 606, i32 23}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jfs/jfs_imap.c", i32 677, i32 3}
!54 = !{ptr @diWrite._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @diWrite._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/jfs/jfs_imap.c", i32 753, i32 3}
!59 = !{ptr @diWrite._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @diWrite._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/jfs/jfs_imap.c", i32 872, i32 18}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/jfs/jfs_imap.c", i32 872, i32 28}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/jfs/jfs_imap.c", i32 874, i32 23}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/jfs/jfs_imap.c", i32 910, i32 23}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/jfs/jfs_imap.c", i32 917, i32 23}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/jfs/jfs_imap.c", i32 929, i32 23}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/jfs/jfs_imap.c", i32 1093, i32 4}
!75 = !{ptr @diFree._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @diFree._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @diFree._entry.41, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/jfs/jfs_imap.c", i32 1107, i32 4}
!80 = !{ptr @diFree._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/jfs/jfs_imap.c", i32 1178, i32 23}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/jfs/jfs_imap.c", i32 1426, i32 6}
!86 = !{ptr @diAlloc._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @diAlloc._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/jfs/jfs_imap.c", i32 1497, i32 9}
!91 = !{ptr @diAlloc._entry.48, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../fs/jfs/jfs_imap.c", i32 1509, i32 6}
!93 = !{ptr @diAlloc._entry_ptr.49, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @diAlloc._entry.50, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../fs/jfs/jfs_imap.c", i32 1548, i32 6}
!96 = !{ptr @diAlloc._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/jfs/jfs_imap.c", i32 2733, i32 27}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/jfs/jfs_imap.c", i32 2762, i32 7}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/jfs/jfs_imap.c", i32 2767, i32 7}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/jfs/jfs_imap.c", i32 2783, i32 7}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/jfs/jfs_imap.c", i32 2789, i32 7}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/jfs/jfs_imap.c", i32 2811, i32 3}
!109 = !{ptr @diUpdatePMap._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @diUpdatePMap._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/jfs/jfs_imap.c", i32 2848, i32 2}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @diExtendFS._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @diExtendFS._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/jfs/jfs_imap.c", i32 2881, i32 28}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/jfs/jfs_imap.c", i32 2957, i32 27}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/jfs/jfs_imap.c", i32 1913, i32 24}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/jfs/jfs_imap.c", i32 1925, i32 24}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/jfs/jfs_imap.c", i32 1938, i32 23}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/jfs/jfs_imap.c", i32 2473, i32 7}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/jfs/jfs_imap.c", i32 1789, i32 23}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/jfs/jfs_imap.c", i32 1801, i32 7}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/jfs/jfs_imap.c", i32 1816, i32 23}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/jfs/jfs_imap.c", i32 1827, i32 23}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/jfs/jfs_imap.c", i32 2057, i32 36}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/jfs/jfs_imap.c", i32 2164, i32 36}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/jfs/jfs_imap.c", i32 2236, i32 8}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/jfs/jfs_imap.c", i32 2687, i32 2}
!145 = !{ptr @diFindFree._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @diFindFree._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 2154023788, i64 2154024270, i64 2154023825, i64 2154023881, i64 2154023915, i64 2154023939, i64 2154023980, i64 2154024001, i64 2154024029, i64 2154024063}
!158 = !{i64 2154019906, i64 2154020388, i64 2154019943, i64 2154019999, i64 2154020033, i64 2154020057, i64 2154020098, i64 2154020119, i64 2154020147, i64 2154020181}
!159 = !{i64 2154031051, i64 2154031533, i64 2154031088, i64 2154031144, i64 2154031178, i64 2154031202, i64 2154031243, i64 2154031264, i64 2154031292, i64 2154031326}
!160 = !{!"auto-init"}
!161 = !{i64 2148735396, i64 2148735422, i64 2148735451, i64 2148735485, i64 2148735516, i64 2148735539}
!162 = !{i64 2154039840, i64 2154040323, i64 2154039877, i64 2154039933, i64 2154039967, i64 2154039991, i64 2154040032, i64 2154040053, i64 2154040081, i64 2154040115}
!163 = !{i64 2154043009, i64 2154043492, i64 2154043046, i64 2154043102, i64 2154043136, i64 2154043160, i64 2154043201, i64 2154043222, i64 2154043250, i64 2154043284}
!164 = !{i64 2148737861, i64 2148737887, i64 2148737916, i64 2148737950, i64 2148737981, i64 2148738004}
!165 = !{i64 2154049619, i64 2154050102, i64 2154049656, i64 2154049712, i64 2154049746, i64 2154049770, i64 2154049811, i64 2154049832, i64 2154049860, i64 2154049894}
!166 = !{i64 2154053558, i64 2154054041, i64 2154053595, i64 2154053651, i64 2154053685, i64 2154053709, i64 2154053750, i64 2154053771, i64 2154053799, i64 2154053833}
!167 = !{i64 2154056877, i64 2154057360, i64 2154056914, i64 2154056970, i64 2154057004, i64 2154057028, i64 2154057069, i64 2154057090, i64 2154057118, i64 2154057152}
!168 = !{i64 2154074851, i64 2154075334, i64 2154074888, i64 2154074944, i64 2154074978, i64 2154075002, i64 2154075043, i64 2154075064, i64 2154075092, i64 2154075126}
