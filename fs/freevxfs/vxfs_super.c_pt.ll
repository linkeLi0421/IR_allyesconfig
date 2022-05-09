; ModuleID = '/llk/IR_all_yes/fs/freevxfs/vxfs_super.c_pt.bc'
source_filename = "../fs/freevxfs/vxfs_super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vxfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.vxfs_sb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8, i16, i32, i32, i32, [6 x i8], [6 x i8], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@__UNIQUE_ID_author269 = internal constant [57 x i8] c"freevxfs.author=Christoph Hellwig, Krzysztof Blaszkowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description270 = internal constant [54 x i8] c"freevxfs.description=Veritas Filesystem (VxFS) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file271 = internal constant [35 x i8] c"freevxfs.file=fs/freevxfs/freevxfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [30 x i8] c"freevxfs.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias273 = internal constant [23 x i8] c"freevxfs.alias=fs-vxfs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias274 = internal constant [20 x i8] c"freevxfs.alias=vxfs\00", section ".modinfo", align 1
@vxfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr null, ptr null, ptr @vxfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@vxfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_freevxfs__275_357_vxfs_init6 = internal global ptr @vxfs_init, section ".initcall6.init", align 4
@__exitcall_vxfs_cleanup = internal global ptr @vxfs_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vxfs\00", [27 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014vxfs: unable to allocate incore superblock\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vxfs_fill_super\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/freevxfs/vxfs_super.c\00", [39 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr = internal global ptr @vxfs_fill_super._entry, section ".printk_index", align 4
@vxfs_fill_super._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014vxfs: unable to set blocksize\0A\00", [63 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr.6 = internal global ptr @vxfs_fill_super._entry.4, section ".printk_index", align 4
@vxfs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @vxfs_alloc_inode, ptr null, ptr @vxfs_free_inode, ptr null, ptr null, ptr null, ptr @vxfs_evict_inode, ptr @vxfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vxfs_statfs, ptr @vxfs_remount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015vxfs: can't find superblock.\0A\00", [32 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr.9 = internal global ptr @vxfs_fill_super._entry.7, section ".printk_index", align 4
@vxfs_fill_super._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015vxfs: unsupported VxFS version (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr.12 = internal global ptr @vxfs_fill_super._entry.10, section ".printk_index", align 4
@vxfs_fill_super._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014vxfs: unable to set final block size\0A\00", [56 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr.15 = internal global ptr @vxfs_fill_super._entry.13, section ".printk_index", align 4
@vxfs_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014vxfs: unable to read olt\0A\00", [36 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr.18 = internal global ptr @vxfs_fill_super._entry.16, section ".printk_index", align 4
@vxfs_fill_super._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014vxfs: unable to read fshead\0A\00", [33 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr.21 = internal global ptr @vxfs_fill_super._entry.19, section ".printk_index", align 4
@vxfs_fill_super._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014vxfs: unable to get root dentry.\0A\00", [60 x i8] zeroinitializer }, align 32
@vxfs_fill_super._entry_ptr.24 = internal global ptr @vxfs_fill_super._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vxfs_try_sb_magic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014vxfs: unable to read disk superblock at %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vxfs_try_sb_magic\00", [46 x i8] zeroinitializer }, align 32
@vxfs_try_sb_magic._entry_ptr = internal global ptr @vxfs_try_sb_magic._entry, section ".printk_index", align 4
@vxfs_try_sb_magic._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015vxfs: WRONG superblock magic %08x at %u\0A\00", [53 x i8] zeroinitializer }, align 32
@vxfs_try_sb_magic._entry_ptr.29 = internal global ptr @vxfs_try_sb_magic._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vxfs_inode\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"vxfs_fs_type\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 315, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"vxfs_inode_cachep\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 56, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 317, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 220, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 226, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"vxfs_super_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 139, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 245, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 252, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 269, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 274, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 279, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 290, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 160, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 171, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [28 x i8] c"../fs/freevxfs/vxfs_super.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 330, i32 49 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias273, ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__exitcall_vxfs_cleanup, ptr @__initcall__kmod_freevxfs__275_357_vxfs_init6, ptr @vxfs_cleanup, ptr @vxfs_fill_super._entry, ptr @vxfs_fill_super._entry.10, ptr @vxfs_fill_super._entry.13, ptr @vxfs_fill_super._entry.16, ptr @vxfs_fill_super._entry.19, ptr @vxfs_fill_super._entry.22, ptr @vxfs_fill_super._entry.4, ptr @vxfs_fill_super._entry.7, ptr @vxfs_fill_super._entry_ptr, ptr @vxfs_fill_super._entry_ptr.12, ptr @vxfs_fill_super._entry_ptr.15, ptr @vxfs_fill_super._entry_ptr.18, ptr @vxfs_fill_super._entry_ptr.21, ptr @vxfs_fill_super._entry_ptr.24, ptr @vxfs_fill_super._entry_ptr.6, ptr @vxfs_fill_super._entry_ptr.9, ptr @vxfs_try_sb_magic._entry, ptr @vxfs_try_sb_magic._entry.27, ptr @vxfs_try_sb_magic._entry_ptr, ptr @vxfs_try_sb_magic._entry_ptr.29, ptr @vxfs_fs_type, ptr @vxfs_inode_cachep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @vxfs_super_ops, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_fill_super._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_try_sb_magic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_try_sb_magic._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vxfs_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @vxfs_fs_type) #7
  tail call void @rcu_barrier() #7
  %0 = load ptr, ptr @vxfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vxfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.30, i32 noundef 944, i32 noundef 0, i32 noundef 1179648, i32 noundef 848, i32 noundef 96, ptr noundef null) #7
  store ptr %call, ptr @vxfs_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @vxfs_fs_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @vxfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vxfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @vxfs_fill_super) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxfs_fill_super(ptr noundef %sbp, ptr nocapture noundef readnone %dp, i32 noundef %silent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %s_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sb_min_blocksize(ptr noundef %sbp, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %out

if.end10:                                         ; preds = %if.end
  %s_op = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 6
  %3 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vxfs_super_ops, ptr %s_op, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 35
  %5 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 36
  %6 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4294967295, ptr %s_time_max, align 64
  %call11 = tail call fastcc i32 @vxfs_try_sb_magic(ptr noundef %sbp, i32 noundef %silent, i32 noundef 1, i32 noundef -168033883)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end28_crit_edge, label %if.else

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.else:                                          ; preds = %if.end10
  %call14 = tail call fastcc i32 @vxfs_try_sb_magic(ptr noundef %sbp, i32 noundef %silent, i32 noundef 8, i32 noundef -1526596363)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end28_crit_edge, label %if.else18

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool19.not = icmp eq i32 %silent, 0
  br i1 %tobool19.not, label %do.end23, label %if.else18.out_crit_edge

if.else18.out_crit_edge:                          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end23:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %out

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.end10.if.end28_crit_edge
  %.sink = phi i32 [ 0, %if.end10.if.end28_crit_edge ], [ 1, %if.else.if.end28_crit_edge ]
  %byte_order17 = getelementptr inbounds %struct.vxfs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %byte_order17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %byte_order17, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %vs_version = getelementptr inbounds %struct.vxfs_sb, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %vs_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vs_version, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %retval.0.i = select i1 %tobool12.not, i32 %12, i32 %11
  %13 = add i32 %retval.0.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %13)
  %14 = icmp ult i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool31.not = icmp eq i32 %silent, 0
  %or.cond133 = and i1 %tobool31.not, %14
  br i1 %or.cond133, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %retval.0.i) #11
  br label %out

if.end38:                                         ; preds = %if.end28
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %retval.0.i136 = select i1 %tobool12.not, i32 %17, i32 %16
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 12
  %18 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i136, ptr %s_magic, align 4
  %vs_oltext = getelementptr inbounds %struct.vxfs_sb, ptr %9, i32 0, i32 62
  %19 = ptrtoint ptr %vs_oltext to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vs_oltext, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %retval.0.i139 = select i1 %tobool12.not, i32 %21, i32 %20
  %vsi_oltext = getelementptr inbounds %struct.vxfs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %vsi_oltext to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i139, ptr %vsi_oltext, align 4
  %vs_oltsize = getelementptr inbounds %struct.vxfs_sb, ptr %9, i32 0, i32 63
  %23 = ptrtoint ptr %vs_oltsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vs_oltsize, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %retval.0.i142 = select i1 %tobool12.not, i32 %25, i32 %24
  %vsi_oltsize = getelementptr inbounds %struct.vxfs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %vsi_oltsize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i142, ptr %vsi_oltsize, align 8
  %vs_bsize = getelementptr inbounds %struct.vxfs_sb, ptr %9, i32 0, i32 8
  %27 = ptrtoint ptr %vs_bsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vs_bsize, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %retval.0.i145 = select i1 %tobool12.not, i32 %29, i32 %28
  %call43 = tail call i32 @sb_set_blocksize(ptr noundef %sbp, i32 noundef %retval.0.i145) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %out

if.end51:                                         ; preds = %if.end38
  %call52 = tail call i32 @vxfs_read_olt(ptr noundef %sbp, i32 noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %out

if.end60:                                         ; preds = %if.end51
  %call61 = tail call i32 @vxfs_read_fshead(ptr noundef %sbp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end69, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %out

if.end69:                                         ; preds = %if.end60
  %call70 = tail call ptr @vxfs_iget(ptr noundef %sbp, i32 noundef 2) #7
  %cmp.i146 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call70 to i32
  br label %out

if.end74:                                         ; preds = %if.end69
  %call75 = tail call ptr @d_make_root(ptr noundef %call70) #7
  %s_root = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 13
  %31 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call75, ptr %s_root, align 64
  %tobool77.not = icmp eq ptr %call75, null
  br i1 %tobool77.not, label %do.end81, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  %vsi_fship = getelementptr inbounds %struct.vxfs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %vsi_fship to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vsi_fship, align 8
  tail call void @iput(ptr noundef %33) #7
  %vsi_ilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %vsi_ilist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vsi_ilist, align 4
  tail call void @iput(ptr noundef %35) #7
  %vsi_stilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %vsi_stilist to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vsi_stilist, align 8
  tail call void @iput(ptr noundef %37) #7
  br label %out

out:                                              ; preds = %do.end81, %if.then72, %do.end66, %do.end57, %do.end48, %do.end35, %do.end23, %if.else18.out_crit_edge, %do.end7
  %ret.0 = phi i32 [ -22, %if.else18.out_crit_edge ], [ -22, %do.end23 ], [ -22, %do.end57 ], [ -22, %do.end66 ], [ %30, %if.then72 ], [ -22, %do.end81 ], [ -22, %do.end48 ], [ -22, %do.end35 ], [ -22, %do.end7 ]
  %vsi_bp = getelementptr inbounds %struct.vxfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %vsi_bp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vsi_bp, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %39) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.end74.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %brelse.exit ], [ -12, %do.end ], [ 0, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vxfs_try_sb_magic(ptr nocapture noundef readonly %sbp, i32 noundef %silent, i32 noundef %blk, i32 noundef %magic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %conv = zext i32 %blk to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %3, i64 noundef %conv, i32 noundef %5, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end7

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool3.not = icmp eq i32 %silent, 0
  br i1 %tobool3.not, label %do.end, label %if.then.if.then23_crit_edge

if.then.if.then23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %blk) #11
  br label %if.then23

if.end7:                                          ; preds = %lor.lhs.false
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %magic)
  %cmp.not = icmp eq i32 %12, %magic
  br i1 %cmp.not, label %do.end21, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool10.not = icmp eq i32 %silent, 0
  br i1 %tobool10.not, label %do.end14, label %if.then9.if.then23.thread_crit_edge

if.then9.if.then23.thread_crit_edge:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.thread

do.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %12, i32 noundef %blk) #11
  br label %if.then23.thread

do.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %1, align 4
  %vsi_bp = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %vsi_bp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %vsi_bp, align 4
  br label %if.end26

if.then23.thread:                                 ; preds = %do.end14, %if.then9.if.then23.thread_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %1, align 4
  %vsi_bp2546 = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %vsi_bp2546 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vsi_bp2546, align 4
  br label %if.then.i

if.then23:                                        ; preds = %do.end, %if.then.if.then23_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %1, align 4
  %vsi_bp25 = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %vsi_bp25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vsi_bp25, align 4
  br i1 %tobool.not, label %if.then23.if.end26_crit_edge, label %if.then23.if.then.i_crit_edge

if.then23.if.then.i_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then.i:                                        ; preds = %if.then23.if.then.i_crit_edge, %if.then23.thread
  %rc.0.ph47 = phi i32 [ -22, %if.then23.thread ], [ -12, %if.then23.if.then.i_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then.i, %if.then23.if.end26_crit_edge, %do.end21
  %rc.044 = phi i32 [ 0, %do.end21 ], [ -12, %if.then23.if.end26_crit_edge ], [ %rc.0.ph47, %if.then.i ]
  ret i32 %rc.044
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxfs_read_olt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxfs_read_fshead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vxfs_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vxfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @inode_init_once(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxfs_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vxfs_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %inode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxfs_evict_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxfs_put_super(ptr nocapture noundef readonly %sbp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %vsi_fship = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vsi_fship to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi_fship, align 4
  tail call void @iput(ptr noundef %3) #7
  %vsi_ilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vsi_ilist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi_ilist, align 4
  tail call void @iput(ptr noundef %5) #7
  %vsi_stilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vsi_stilist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsi_stilist, align 4
  tail call void @iput(ptr noundef %7) #7
  %vsi_bp = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vsi_bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi_bp, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.brelse.exit_crit_edge, label %if.then.i

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %9) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vxfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %bufp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1526596363, ptr %bufp, align 8
  %7 = load ptr, ptr %d_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %bufp, i32 0, i32 1
  %10 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %f_bsize, align 4
  %vs_dsize = getelementptr inbounds %struct.vxfs_sb, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %vs_dsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vs_dsize, align 4
  %byte_order.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %retval.0.i = select i1 %cmp.i, i32 %12, i32 %15
  %conv = zext i32 %retval.0.i to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %bufp, i32 0, i32 2
  %16 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %f_blocks, align 8
  %vs_free = getelementptr inbounds %struct.vxfs_sb, ptr %5, i32 0, i32 48
  %17 = ptrtoint ptr %vs_free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vs_free, align 4
  %19 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i20 = icmp eq i32 %20, 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %retval.0.i21 = select i1 %cmp.i20, i32 %18, i32 %21
  %conv3 = zext i32 %retval.0.i21 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %bufp, i32 0, i32 3
  %22 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv3, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %bufp, i32 0, i32 4
  %vs_ifree = getelementptr inbounds %struct.vxfs_sb, ptr %5, i32 0, i32 49
  %23 = call ptr @memset(ptr %f_bavail, i32 0, i32 16)
  %24 = ptrtoint ptr %vs_ifree to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vs_ifree, align 4
  %26 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i23 = icmp eq i32 %27, 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %retval.0.i24 = select i1 %cmp.i23, i32 %25, i32 %28
  %conv5 = zext i32 %retval.0.i24 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %bufp, i32 0, i32 6
  %29 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv5, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %bufp, i32 0, i32 8
  %30 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxfs_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__UNIQUE_ID_author269, !1, !"__UNIQUE_ID_author269", i1 false, i1 false}
!1 = !{!"../fs/freevxfs/vxfs_super.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_description270, !3, !"__UNIQUE_ID_description270", i1 false, i1 false}
!3 = !{!"../fs/freevxfs/vxfs_super.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_file271, !5, !"__UNIQUE_ID_file271", i1 false, i1 false}
!5 = !{!"../fs/freevxfs/vxfs_super.c", i32 54, i32 1}
!6 = !{ptr @__UNIQUE_ID_license272, !5, !"__UNIQUE_ID_license272", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias273, !8, !"__UNIQUE_ID_alias273", i1 false, i1 false}
!8 = !{!"../fs/freevxfs/vxfs_super.c", i32 322, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias274, !10, !"__UNIQUE_ID_alias274", i1 false, i1 false}
!10 = !{!"../fs/freevxfs/vxfs_super.c", i32 323, i32 1}
!11 = !{ptr @__initcall__kmod_freevxfs__275_357_vxfs_init6, !12, !"__initcall__kmod_freevxfs__275_357_vxfs_init6", i1 false, i1 false}
!12 = !{!"../fs/freevxfs/vxfs_super.c", i32 357, i32 1}
!13 = !{ptr @__exitcall_vxfs_cleanup, !14, !"__exitcall_vxfs_cleanup", i1 false, i1 false}
!14 = !{!"../fs/freevxfs/vxfs_super.c", i32 358, i32 1}
!15 = !{ptr @vxfs_inode_cachep, !16, !"vxfs_inode_cachep", i1 false, i1 false}
!16 = !{!"../fs/freevxfs/vxfs_super.c", i32 56, i32 27}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/freevxfs/vxfs_super.c", i32 317, i32 11}
!19 = !{ptr @vxfs_fs_type, !20, !"vxfs_fs_type", i1 false, i1 false}
!20 = !{!"../fs/freevxfs/vxfs_super.c", i32 315, i32 32}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/freevxfs/vxfs_super.c", i32 220, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vxfs_fill_super._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @vxfs_fill_super._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/freevxfs/vxfs_super.c", i32 226, i32 3}
!29 = !{ptr @vxfs_fill_super._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vxfs_fill_super._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/freevxfs/vxfs_super.c", i32 245, i32 4}
!33 = !{ptr @vxfs_fill_super._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vxfs_fill_super._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/freevxfs/vxfs_super.c", i32 252, i32 3}
!37 = !{ptr @vxfs_fill_super._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @vxfs_fill_super._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/freevxfs/vxfs_super.c", i32 269, i32 3}
!41 = !{ptr @vxfs_fill_super._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @vxfs_fill_super._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/freevxfs/vxfs_super.c", i32 274, i32 3}
!45 = !{ptr @vxfs_fill_super._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vxfs_fill_super._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/freevxfs/vxfs_super.c", i32 279, i32 3}
!49 = !{ptr @vxfs_fill_super._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vxfs_fill_super._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/freevxfs/vxfs_super.c", i32 290, i32 3}
!53 = !{ptr @vxfs_fill_super._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vxfs_fill_super._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @vxfs_super_ops, !56, !"vxfs_super_ops", i1 false, i1 false}
!56 = !{!"../fs/freevxfs/vxfs_super.c", i32 139, i32 38}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/freevxfs/vxfs_super.c", i32 160, i32 5}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vxfs_try_sb_magic._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @vxfs_try_sb_magic._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/freevxfs/vxfs_super.c", i32 171, i32 5}
!64 = !{ptr @vxfs_try_sb_magic._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @vxfs_try_sb_magic._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/freevxfs/vxfs_super.c", i32 330, i32 49}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
