; ModuleID = '/llk/IR_all_yes/fs/hfs/mdb.c_pt.bc'
source_filename = "../fs/hfs/mdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_multisession = type { %union.cdrom_addr, i8, i8 }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.hfs_mdb = type <{ i16, i32, i32, i16, i16, i16, i16, i16, i32, i32, i16, i32, i16, [28 x i8], i32, i16, i32, i32, i32, i16, i32, i32, [32 x i8], i16, i32, i32, [3 x %struct.hfs_extent], i32, [3 x %struct.hfs_extent] }>
%struct.hfs_extent = type { i16, i16 }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }

@hfs_mdb_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfs: bad allocation block size %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hfs_mdb_get\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/hfs/mdb.c\00", [19 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr = internal global ptr @hfs_mdb_get._entry, section ".printk_index", align 4
@hfs_mdb_get._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfs: unable to set blocksize to %u\0A\00", [58 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.5 = internal global ptr @hfs_mdb_get._entry.3, section ".printk_index", align 4
@hfs_mdb_get._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014hfs: unable to locate alternate MDB\0A\00", [57 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.8 = internal global ptr @hfs_mdb_get._entry.6, section ".printk_index", align 4
@hfs_mdb_get._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014hfs: continuing without an alternate MDB\0A\00", [52 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.11 = internal global ptr @hfs_mdb_get._entry.9, section ".printk_index", align 4
@hfs_mdb_get._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfs: unable to read volume bitmap\0A\00", [59 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.14 = internal global ptr @hfs_mdb_get._entry.12, section ".printk_index", align 4
@hfs_mdb_get._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfs: unable to open extent tree\0A\00", [61 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.17 = internal global ptr @hfs_mdb_get._entry.15, section ".printk_index", align 4
@hfs_mdb_get._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013hfs: unable to open catalog tree\0A\00", [60 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.20 = internal global ptr @hfs_mdb_get._entry.18, section ".printk_index", align 4
@hfs_mdb_get._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\014hfs: filesystem was not cleanly unmounted, running fsck.hfs is recommended.  mounting read-only.\0A\00", [60 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.23 = internal global ptr @hfs_mdb_get._entry.21, section ".printk_index", align 4
@hfs_mdb_get._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014hfs: filesystem is marked locked, mounting read-only.\0A\00", [39 x i8] zeroinitializer }, align 32
@hfs_mdb_get._entry_ptr.26 = internal global ptr @hfs_mdb_get._entry.24, section ".printk_index", align 4
@hfs_mdb_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.27, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfs_mdb_commit\00", [17 x i8] zeroinitializer }, align 32
@hfs_mdb_commit._entry_ptr = internal global ptr @hfs_mdb_commit._entry, section ".printk_index", align 4
@hfs_get_last_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013hfs: invalid session number or type of track\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hfs_get_last_session\00", [43 x i8] zeroinitializer }, align 32
@hfs_get_last_session._entry_ptr = internal global ptr @hfs_get_last_session._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 110, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 127, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 171, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 172, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 187, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 201, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 206, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 212, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 216, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 320, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private constant [16 x i8] c"../fs/hfs/mdb.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 51, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 366, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @hfs_get_last_session._entry, ptr @hfs_get_last_session._entry_ptr, ptr @hfs_mdb_commit._entry, ptr @hfs_mdb_commit._entry_ptr, ptr @hfs_mdb_get._entry, ptr @hfs_mdb_get._entry.12, ptr @hfs_mdb_get._entry.15, ptr @hfs_mdb_get._entry.18, ptr @hfs_mdb_get._entry.21, ptr @hfs_mdb_get._entry.24, ptr @hfs_mdb_get._entry.3, ptr @hfs_mdb_get._entry.6, ptr @hfs_mdb_get._entry.9, ptr @hfs_mdb_get._entry_ptr, ptr @hfs_mdb_get._entry_ptr.11, ptr @hfs_mdb_get._entry_ptr.14, ptr @hfs_mdb_get._entry_ptr.17, ptr @hfs_mdb_get._entry_ptr.20, ptr @hfs_mdb_get._entry_ptr.23, ptr @hfs_mdb_get._entry_ptr.26, ptr @hfs_mdb_get._entry_ptr.5, ptr @hfs_mdb_get._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_get._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_mdb_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_get_last_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_mdb_get(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %te.i = alloca %struct.cdrom_tocentry, align 4
  %ms_info.i = alloca %struct.cdrom_multisession, align 8
  %part_start = alloca i64, align 8
  %part_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %part_start) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %part_size) #7
  %call = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk.i, align 8
  %cdi1.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %cdi1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdi1.i, align 8
  %6 = ptrtoint ptr %part_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %part_start, align 8
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %9 = ptrtoint ptr %part_size to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %part_size, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %session.i = getelementptr inbounds %struct.hfs_sb_info, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %session.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp sgt i32 %13, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %te.i) #7
  %14 = call ptr @memset(ptr %te.i, i32 255, i32 12)
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i.hfs_get_last_session.exit.thread_crit_edge, label %if.end.i

if.then.i.hfs_get_last_session.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hfs_get_last_session.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %conv.i = trunc i32 %13 to i8
  %15 = ptrtoint ptr %te.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %te.i, align 4
  %cdte_format.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 2
  %16 = ptrtoint ptr %cdte_format.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cdte_format.i, align 2
  %call6.i = call i32 @cdrom_read_tocentry(ptr noundef nonnull %5, ptr noundef nonnull %te.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %cdte_ctrl.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 1
  %17 = ptrtoint ptr %cdte_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %cdte_ctrl.i, align 1
  %18 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp9.not.not.i = icmp eq i8 %18, 0
  br i1 %cmp9.not.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end13.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  br label %hfs_get_last_session.exit.thread

if.end13.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %cdte_addr.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %te.i, i32 0, i32 3
  %19 = ptrtoint ptr %cdte_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cdte_addr.i, align 4
  %conv14.i = sext i32 %20 to i64
  %shl.i = shl nsw i64 %conv14.i, 2
  %21 = ptrtoint ptr %part_start to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shl.i, ptr %part_start, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %te.i) #7
  br label %hfs_get_last_session.exit

hfs_get_last_session.exit.thread:                 ; preds = %do.end.i, %if.then.i.hfs_get_last_session.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %te.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %tobool15.not.i = icmp eq ptr %5, null
  br i1 %tobool15.not.i, label %if.else.i.hfs_get_last_session.exit_crit_edge, label %if.then16.i

if.else.i.hfs_get_last_session.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hfs_get_last_session.exit

if.then16.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ms_info.i) #7
  %22 = ptrtoint ptr %ms_info.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -16646145, ptr %ms_info.i, align 8, !annotation !58
  %call17.i = call i32 @cdrom_multisession(ptr noundef nonnull %5, ptr noundef nonnull %ms_info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.then16.i.if.end25.i_crit_edge

if.then16.i.if.end25.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.then16.i
  %xa_flag.i = getelementptr inbounds %struct.cdrom_multisession, ptr %ms_info.i, i32 0, i32 1
  %23 = ptrtoint ptr %xa_flag.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %xa_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not.i = icmp eq i8 %24, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i.if.end25.i_crit_edge, label %if.then22.i

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ms_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ms_info.i, align 8
  %conv23.i = sext i32 %26 to i64
  %shl24.i = shl nsw i64 %conv23.i, 2
  %27 = ptrtoint ptr %part_start to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shl24.i, ptr %part_start, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %land.lhs.true.i.if.end25.i_crit_edge, %if.then16.i.if.end25.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ms_info.i) #7
  br label %hfs_get_last_session.exit

hfs_get_last_session.exit:                        ; preds = %if.end25.i, %if.else.i.hfs_get_last_session.exit_crit_edge, %if.end13.i
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %brelse.exit.while.cond_crit_edge, %hfs_get_last_session.exit
  %28 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %part_start, align 8
  %add = shl i64 %29, 9
  %shl = add i64 %add, 1024
  %30 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %31 to i64
  %shr = ashr i64 %shl, %sh_prom
  %32 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize, align 16
  %34 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bdev.i, align 4
  %call.i = call ptr @__bread_gfp(ptr noundef %35, i64 noundef %shr, i32 noundef %33, i32 noundef 8) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %while.cond.out_crit_edge, label %if.end15, !prof !59

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %while.cond
  %sub = add i32 %33, -1
  %36 = trunc i64 %shl to i32
  %conv6 = and i32 %sub, %36
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 %conv6
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16964, i16 %40)
  %cmp17 = icmp eq i16 %40, 16964
  br i1 %cmp17, label %while.end, label %brelse.exit

brelse.exit:                                      ; preds = %if.end15
  call void @__brelse(ptr noundef nonnull %call.i) #7
  %call21 = call i32 @hfs_part_find(ptr noundef %sb, ptr noundef nonnull %part_start, ptr noundef nonnull %part_size) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %brelse.exit.while.cond_crit_edge, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

brelse.exit.while.cond_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %if.end15
  %add.ptr.le = getelementptr i8, ptr %38, i32 %conv6
  %drAlBlkSiz = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr.le, i32 0, i32 8
  %41 = ptrtoint ptr %drAlBlkSiz to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %drAlBlkSiz, align 1
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz = getelementptr inbounds %struct.hfs_sb_info, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %alloc_blksz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool25.not = icmp ne i32 %42, 0
  %and26 = and i32 %42, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond = and i1 %tobool25.not, %tobool27.not
  br i1 %or.cond, label %if.end31, label %do.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %42) #10
  br label %brelse.exit501

if.end31:                                         ; preds = %while.end
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz33 = getelementptr inbounds %struct.hfs_sb_info, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %alloc_blksz33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %alloc_blksz33, align 4
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 4096)
  br label %while.cond37

while.cond37:                                     ; preds = %while.cond37.while.cond37_crit_edge, %if.end31
  %size.0 = phi i32 [ %50, %if.end31 ], [ %sub42, %while.cond37.while.cond37_crit_edge ]
  %51 = call i32 @llvm.ctpop.i32(i32 %size.0), !range !60
  %tobool40.not = icmp ult i32 %51, 2
  %sub42 = add i32 %size.0, -512
  br i1 %tobool40.not, label %while.end43, label %while.cond37.while.cond37_crit_edge

while.cond37.while.cond37_crit_edge:              ; preds = %while.cond37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond37

while.end43:                                      ; preds = %while.cond37
  %drAlBlSt = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr.le, i32 0, i32 10
  %52 = ptrtoint ptr %drAlBlSt to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %drAlBlSt, align 1
  %conv44 = zext i16 %53 to i64
  %54 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %part_start, align 8
  %add45 = add i64 %55, %conv44
  %conv46 = trunc i64 %add45 to i32
  br label %while.cond47

while.cond47:                                     ; preds = %while.cond47.while.cond47_crit_edge, %while.end43
  %size.1 = phi i32 [ %size.0, %while.end43 ], [ %shr53, %while.cond47.while.cond47_crit_edge ]
  %sub48 = add i32 %size.1, -1
  %shr49 = ashr i32 %sub48, 9
  %and50 = and i32 %shr49, %conv46
  %tobool51.not = icmp eq i32 %and50, 0
  %shr53 = ashr i32 %size.1, 1
  br i1 %tobool51.not, label %while.cond47.while.cond55_crit_edge, label %while.cond47.while.cond47_crit_edge

while.cond47.while.cond47_crit_edge:              ; preds = %while.cond47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond47

while.cond47.while.cond55_crit_edge:              ; preds = %while.cond47
  br label %while.cond55

while.cond55:                                     ; preds = %while.cond55.while.cond55_crit_edge, %while.cond47.while.cond55_crit_edge
  %size.2 = phi i32 [ %shr62, %while.cond55.while.cond55_crit_edge ], [ %size.1, %while.cond47.while.cond55_crit_edge ]
  %sub58 = add i32 %size.2, -1
  %and59 = and i32 %sub58, %49
  %tobool60.not = icmp eq i32 %and59, 0
  %shr62 = ashr i32 %size.2, 1
  br i1 %tobool60.not, label %brelse.exit479, label %while.cond55.while.cond55_crit_edge

while.cond55.while.cond55_crit_edge:              ; preds = %while.cond55
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond55

brelse.exit479:                                   ; preds = %while.cond55
  call void @__brelse(ptr noundef nonnull %call.i) #7
  %call64 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %size.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.end69, label %if.end72

do.end69:                                         ; preds = %brelse.exit479
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %size.2) #10
  br label %out

if.end72:                                         ; preds = %brelse.exit479
  %56 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %part_start, align 8
  %add77 = shl i64 %57, 9
  %shl78 = add i64 %add77, 1024
  %58 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom81 = zext i8 %59 to i64
  %shr82 = ashr i64 %shl78, %sh_prom81
  %60 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize, align 16
  %62 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_bdev.i, align 4
  %call.i482 = call ptr @__bread_gfp(ptr noundef %63, i64 noundef %shr82, i32 noundef %61, i32 noundef 8) #7
  %cmp89.not = icmp eq ptr %call.i482, null
  br i1 %cmp89.not, label %if.end72.out_crit_edge, label %if.end105, !prof !59

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end105:                                        ; preds = %if.end72
  %sub84 = add i32 %61, -1
  %64 = trunc i64 %shl78 to i32
  %conv87 = and i32 %sub84, %64
  %b_data98 = getelementptr inbounds %struct.buffer_head, ptr %call.i482, i32 0, i32 5
  %65 = ptrtoint ptr %b_data98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data98, align 4
  %add.ptr99 = getelementptr i8, ptr %66, i32 %conv87
  %67 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %add.ptr99, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16964, i16 %68)
  %cmp108.not = icmp eq i16 %68, 16964
  br i1 %cmp108.not, label %if.end111, label %if.end105.brelse.exit501_crit_edge

if.end105.brelse.exit501_crit_edge:               ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit501

if.end111:                                        ; preds = %if.end105
  %69 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i, align 16
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i482, ptr %70, align 4
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %mdb114 = getelementptr inbounds %struct.hfs_sb_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %mdb114 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr99, ptr %mdb114, align 4
  %74 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %part_start, align 8
  %conv115 = trunc i64 %75 to i32
  %76 = load ptr, ptr %s_fs_info.i, align 16
  %part_start117 = getelementptr inbounds %struct.hfs_sb_info, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %part_start117 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv115, ptr %part_start117, align 4
  %drNmAlBlks = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 7
  %78 = ptrtoint ptr %drNmAlBlks to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %drNmAlBlks, align 1
  %80 = load ptr, ptr %s_fs_info.i, align 16
  %fs_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %80, i32 0, i32 15
  %81 = ptrtoint ptr %fs_ablocks to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %79, ptr %fs_ablocks, align 4
  %82 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz120 = getelementptr inbounds %struct.hfs_sb_info, ptr %82, i32 0, i32 17
  %83 = ptrtoint ptr %alloc_blksz120 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %alloc_blksz120, align 4
  %85 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %s_blocksize_bits, align 4
  %conv122 = zext i8 %86 to i32
  %shr123 = lshr i32 %84, %conv122
  %fs_div = getelementptr inbounds %struct.hfs_sb_info, ptr %82, i32 0, i32 32
  %87 = ptrtoint ptr %fs_div to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shr123, ptr %fs_div, align 4
  %drClpSiz = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 9
  %88 = ptrtoint ptr %drClpSiz to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %drClpSiz, align 1
  %90 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz126 = getelementptr inbounds %struct.hfs_sb_info, ptr %90, i32 0, i32 17
  %91 = ptrtoint ptr %alloc_blksz126 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %alloc_blksz126, align 4
  %div = udiv i32 %89, %92
  %clumpablks = getelementptr inbounds %struct.hfs_sb_info, ptr %90, i32 0, i32 10
  %93 = ptrtoint ptr %clumpablks to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div, ptr %clumpablks, align 4
  %94 = load ptr, ptr %s_fs_info.i, align 16
  %clumpablks129 = getelementptr inbounds %struct.hfs_sb_info, ptr %94, i32 0, i32 10
  %95 = ptrtoint ptr %clumpablks129 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clumpablks129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool130.not = icmp eq i32 %96, 0
  br i1 %tobool130.not, label %if.then131, label %if.end111.if.end134_crit_edge

if.end111.if.end134_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then131:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %clumpablks129 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %clumpablks129, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.end111.if.end134_crit_edge
  %drAlBlSt135 = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 10
  %98 = ptrtoint ptr %drAlBlSt135 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %drAlBlSt135, align 1
  %conv136 = zext i16 %99 to i64
  %add137 = add i64 %75, %conv136
  %100 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %s_blocksize_bits, align 4
  %conv139 = zext i8 %101 to i32
  %sub140 = add nsw i32 %conv139, -9
  %sh_prom141 = zext i32 %sub140 to i64
  %shr142 = lshr i64 %add137, %sh_prom141
  %conv143 = trunc i64 %shr142 to i32
  %102 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i, align 16
  %fs_start = getelementptr inbounds %struct.hfs_sb_info, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %fs_start to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv143, ptr %fs_start, align 4
  %drFreeBks = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 12
  %105 = ptrtoint ptr %drFreeBks to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %drFreeBks, align 1
  %107 = load ptr, ptr %s_fs_info.i, align 16
  %free_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %free_ablocks to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %106, ptr %free_ablocks, align 2
  %drNxtCNID = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 11
  %109 = ptrtoint ptr %drNxtCNID to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %drNxtCNID, align 1
  %111 = load ptr, ptr %s_fs_info.i, align 16
  %next_id = getelementptr inbounds %struct.hfs_sb_info, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %110, ptr %next_id, align 4
  %drNmFls = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 4
  %113 = ptrtoint ptr %drNmFls to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %drNmFls, align 1
  %115 = load ptr, ptr %s_fs_info.i, align 16
  %root_files = getelementptr inbounds %struct.hfs_sb_info, ptr %115, i32 0, i32 13
  %116 = ptrtoint ptr %root_files to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %114, ptr %root_files, align 4
  %drNmRtDirs = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 19
  %117 = ptrtoint ptr %drNmRtDirs to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %drNmRtDirs, align 1
  %119 = load ptr, ptr %s_fs_info.i, align 16
  %root_dirs = getelementptr inbounds %struct.hfs_sb_info, ptr %119, i32 0, i32 14
  %120 = ptrtoint ptr %root_dirs to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %118, ptr %root_dirs, align 2
  %drFilCnt = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 20
  %121 = ptrtoint ptr %drFilCnt to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %drFilCnt, align 1
  %123 = load ptr, ptr %s_fs_info.i, align 16
  %file_count = getelementptr inbounds %struct.hfs_sb_info, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %file_count to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %122, ptr %file_count, align 4
  %drDirCnt = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 21
  %125 = ptrtoint ptr %drDirCnt to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %drDirCnt, align 1
  %127 = load ptr, ptr %s_fs_info.i, align 16
  %folder_count = getelementptr inbounds %struct.hfs_sb_info, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %folder_count to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %126, ptr %folder_count, align 4
  %129 = ptrtoint ptr %part_size to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %part_size, align 8
  %add151 = add i64 %130, %75
  %131 = trunc i64 %add151 to i32
  %conv153 = add i32 %131, -2
  %conv158 = sext i32 %conv153 to i64
  %shl159 = shl nsw i64 %conv158, 9
  %132 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom162 = zext i8 %132 to i64
  %shr163 = ashr i64 %shl159, %sh_prom162
  %133 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_blocksize, align 16
  %135 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_bdev.i, align 4
  %call.i485 = call ptr @__bread_gfp(ptr noundef %136, i64 noundef %shr163, i32 noundef %134, i32 noundef 8) #7
  %cmp170.not = icmp eq ptr %call.i485, null
  br i1 %cmp170.not, label %if.end134.if.end195_crit_edge, label %if.then185, !prof !59

if.end134.if.end195_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then185:                                       ; preds = %if.end134
  %sub165 = add i32 %134, -1
  %137 = trunc i64 %shl159 to i32
  %conv168 = and i32 %sub165, %137
  %b_data179 = getelementptr inbounds %struct.buffer_head, ptr %call.i485, i32 0, i32 5
  %138 = ptrtoint ptr %b_data179 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %b_data179, align 4
  %add.ptr180 = getelementptr i8, ptr %139, i32 %conv168
  %140 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %add.ptr180, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16964, i16 %141)
  %cmp188 = icmp eq i16 %141, 16964
  br i1 %cmp188, label %if.then190, label %brelse.exit489

if.then190:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i, align 16
  %alt_mdb_bh = getelementptr inbounds %struct.hfs_sb_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %alt_mdb_bh to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call.i485, ptr %alt_mdb_bh, align 4
  %145 = load ptr, ptr %s_fs_info.i, align 16
  %alt_mdb = getelementptr inbounds %struct.hfs_sb_info, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %alt_mdb to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr180, ptr %alt_mdb, align 4
  br label %if.end195

brelse.exit489:                                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %call.i485) #7
  br label %if.end195

if.end195:                                        ; preds = %brelse.exit489, %if.then190, %if.end134.if.end195_crit_edge
  %147 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_fs_info.i, align 16
  %alt_mdb197 = getelementptr inbounds %struct.hfs_sb_info, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %alt_mdb197 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %alt_mdb197, align 4
  %tobool198.not = icmp eq ptr %150, null
  br i1 %tobool198.not, label %do.end202, label %if.end195.if.end210_crit_edge

if.end195.if.end210_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

do.end202:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %call204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %call209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %if.end210

if.end210:                                        ; preds = %do.end202, %if.end195.if.end210_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %151 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %151, i32 noundef 3264, i32 noundef 8192) #11
  %152 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap = getelementptr inbounds %struct.hfs_sb_info, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call7.i, ptr %bitmap, align 4
  %155 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap214 = getelementptr inbounds %struct.hfs_sb_info, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %bitmap214 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bitmap214, align 4
  %tobool215.not = icmp eq ptr %157, null
  br i1 %tobool215.not, label %if.end210.out_crit_edge, label %while.body232.preheader

if.end210.out_crit_edge:                          ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body232.preheader:                          ; preds = %if.end210
  %fs_ablocks224 = getelementptr inbounds %struct.hfs_sb_info, ptr %155, i32 0, i32 15
  %158 = ptrtoint ptr %fs_ablocks224 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %fs_ablocks224, align 4
  %conv225 = zext i16 %159 to i32
  %add226 = add nuw nsw i32 %conv225, 8
  %div227471 = lshr i32 %add226, 3
  %160 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %part_start, align 8
  %drVBMSt = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 5
  %162 = ptrtoint ptr %drVBMSt to i32
  call void @__asan_loadN_noabort(i32 %162, i32 2)
  %163 = load i16, ptr %drVBMSt, align 1
  %conv218 = zext i16 %163 to i64
  %add219 = add i64 %161, %conv218
  %conv221 = shl i64 %add219, 9
  %shl222 = and i64 %conv221, 2199023255040
  br label %while.body232

while.body232:                                    ; preds = %brelse.exit496.while.body232_crit_edge, %while.body232.preheader
  %ptr.0513 = phi ptr [ %add.ptr262, %brelse.exit496.while.body232_crit_edge ], [ %157, %while.body232.preheader ]
  %size.3512 = phi i32 [ %sub265, %brelse.exit496.while.body232_crit_edge ], [ %div227471, %while.body232.preheader ]
  %off.0511 = phi i64 [ %add264, %brelse.exit496.while.body232_crit_edge ], [ %shl222, %while.body232.preheader ]
  %164 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom235 = zext i8 %165 to i64
  %shr236 = ashr i64 %off.0511, %sh_prom235
  %166 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %s_bdev.i, align 4
  %168 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %s_blocksize, align 16
  %call.i492 = call ptr @__bread_gfp(ptr noundef %167, i64 noundef %shr236, i32 noundef %169, i32 noundef 8) #7
  %tobool238.not = icmp eq ptr %call.i492, null
  br i1 %tobool238.not, label %do.end242, label %brelse.exit496

do.end242:                                        ; preds = %while.body232
  call void @__sanitizer_cov_trace_pc() #9
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %out

brelse.exit496:                                   ; preds = %while.body232
  %170 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %s_blocksize, align 16
  %sub247 = add i32 %171, -1
  %172 = trunc i64 %off.0511 to i32
  %conv250 = and i32 %sub247, %172
  %sub252 = sub i32 %171, %conv250
  %173 = call i32 @llvm.smin.i32(i32 %sub252, i32 %size.3512)
  %b_data260 = getelementptr inbounds %struct.buffer_head, ptr %call.i492, i32 0, i32 5
  %174 = ptrtoint ptr %b_data260 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %b_data260, align 4
  %add.ptr261 = getelementptr i8, ptr %175, i32 %conv250
  %176 = call ptr @memcpy(ptr %ptr.0513, ptr %add.ptr261, i32 %173)
  call void @__brelse(ptr noundef nonnull %call.i492) #7
  %add.ptr262 = getelementptr i8, ptr %ptr.0513, i32 %173
  %conv263 = sext i32 %173 to i64
  %add264 = add i64 %off.0511, %conv263
  %sub265 = sub i32 %size.3512, %173
  %tobool231.not = icmp eq i32 %sub265, 0
  br i1 %tobool231.not, label %while.end266, label %brelse.exit496.while.body232_crit_edge

brelse.exit496.while.body232_crit_edge:           ; preds = %brelse.exit496
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body232

while.end266:                                     ; preds = %brelse.exit496
  %call267 = call ptr @hfs_btree_open(ptr noundef %sb, i32 noundef 3, ptr noundef nonnull @hfs_ext_keycmp) #7
  %177 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %ext_tree to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call267, ptr %ext_tree, align 4
  %180 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree270 = getelementptr inbounds %struct.hfs_sb_info, ptr %180, i32 0, i32 5
  %181 = ptrtoint ptr %ext_tree270 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ext_tree270, align 4
  %tobool271.not = icmp eq ptr %182, null
  br i1 %tobool271.not, label %do.end275, label %if.end278

do.end275:                                        ; preds = %while.end266
  call void @__sanitizer_cov_trace_pc() #9
  %call277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %out

if.end278:                                        ; preds = %while.end266
  %call279 = call ptr @hfs_btree_open(ptr noundef %sb, i32 noundef 4, ptr noundef nonnull @hfs_cat_keycmp) #7
  %183 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %184, i32 0, i32 6
  %185 = ptrtoint ptr %cat_tree to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call279, ptr %cat_tree, align 4
  %186 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree282 = getelementptr inbounds %struct.hfs_sb_info, ptr %186, i32 0, i32 6
  %187 = ptrtoint ptr %cat_tree282 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cat_tree282, align 4
  %tobool283.not = icmp eq ptr %188, null
  br i1 %tobool283.not, label %do.end287, label %if.end290

do.end287:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #9
  %call289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %out

if.end290:                                        ; preds = %if.end278
  %drAtrb = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 3
  %189 = ptrtoint ptr %drAtrb to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %drAtrb, align 1
  %conv291 = zext i16 %190 to i32
  %and292 = and i32 %conv291, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %do.end297, label %if.end290.if.end300_crit_edge

if.end290.if.end300_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300

do.end297:                                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  %call299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %191 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %s_flags, align 4
  %or = or i32 %192, 1
  store i32 %or, ptr %s_flags, align 4
  br label %if.end300

if.end300:                                        ; preds = %do.end297, %if.end290.if.end300_crit_edge
  %and302 = and i32 %conv291, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302)
  %tobool303.not = icmp eq i32 %and302, 0
  br i1 %tobool303.not, label %if.end300.if.end312_crit_edge, label %do.end307

if.end300.if.end312_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end312

do.end307:                                        ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #9
  %call309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  %s_flags310 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %193 = ptrtoint ptr %s_flags310 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_flags310, align 4
  %or311 = or i32 %194, 1
  store i32 %or311, ptr %s_flags310, align 4
  br label %if.end312

if.end312:                                        ; preds = %do.end307, %if.end300.if.end312_crit_edge
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %195 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %196, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then314, label %if.end312.cleanup_crit_edge

if.end312.cleanup_crit_edge:                      ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then314:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  %and316 = and i16 %190, -2305
  %197 = or i16 %and316, 2048
  %198 = ptrtoint ptr %drAtrb to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 %197, ptr %drAtrb, align 1
  %drWrCnt = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 16
  %199 = ptrtoint ptr %drWrCnt to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %drWrCnt, align 4
  %add.i = add i32 %200, 1
  store i32 %add.i, ptr %drWrCnt, align 4
  %call322 = call i64 @ktime_get_real_seconds() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %201 = load i32, ptr @sys_tz, align 4
  %mul.neg.i = mul i32 %201, -60
  %202 = trunc i64 %call322 to i32
  %conv1.i = add i32 %202, 2082844800
  %add.i497 = add i32 %conv1.i, %mul.neg.i
  %drLsMod = getelementptr inbounds %struct.hfs_mdb, ptr %add.ptr99, i32 0, i32 2
  %203 = ptrtoint ptr %drLsMod to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %add.i497, ptr %drLsMod, align 1
  %204 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %s_fs_info.i, align 16
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  call void @mark_buffer_dirty(ptr noundef %207) #7
  %208 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %s_fs_info.i, align 16
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %call328 = call i32 @sync_dirty_buffer(ptr noundef %211) #7
  br label %cleanup

brelse.exit501:                                   ; preds = %if.end105.brelse.exit501_crit_edge, %do.end
  %bh.0 = phi ptr [ %call.i, %do.end ], [ %call.i482, %if.end105.brelse.exit501_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.0) #7
  br label %out

out:                                              ; preds = %brelse.exit501, %do.end287, %do.end275, %do.end242, %if.end210.out_crit_edge, %if.end72.out_crit_edge, %do.end69, %brelse.exit.out_crit_edge, %while.cond.out_crit_edge
  call void @hfs_mdb_put(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then314, %if.end312.cleanup_crit_edge, %hfs_get_last_session.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %out ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then314 ], [ 0, %if.end312.cleanup_crit_edge ], [ -22, %hfs_get_last_session.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %part_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %part_start) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_part_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_btree_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_ext_keycmp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_cat_keycmp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_mdb_put(ptr nocapture noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_tree, align 4
  tail call void @hfs_btree_close(ptr noundef %3) #7
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cat_tree, align 4
  tail call void @hfs_btree_close(ptr noundef %7) #7
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %11) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb_bh = getelementptr inbounds %struct.hfs_sb_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %alt_mdb_bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alt_mdb_bh, align 4
  %tobool.not.i19 = icmp eq ptr %15, null
  br i1 %tobool.not.i19, label %brelse.exit.brelse.exit21_crit_edge, label %if.then.i20

brelse.exit.brelse.exit21_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit21

if.then.i20:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %15) #7
  br label %brelse.exit21

brelse.exit21:                                    ; preds = %if.then.i20, %brelse.exit.brelse.exit21_crit_edge
  %16 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info, align 16
  %nls_io = getelementptr inbounds %struct.hfs_sb_info, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nls_io, align 4
  tail call void @unload_nls(ptr noundef %19) #7
  %20 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info, align 16
  %nls_disk = getelementptr inbounds %struct.hfs_sb_info, ptr %21, i32 0, i32 28
  %22 = ptrtoint ptr %nls_disk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nls_disk, align 4
  tail call void @unload_nls(ptr noundef %23) #7
  %24 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info, align 16
  %bitmap = getelementptr inbounds %struct.hfs_sb_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmap, align 4
  tail call void @kfree(ptr noundef %27) #7
  %28 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info, align 16
  tail call void @kfree(ptr noundef %29) #7
  %30 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %s_fs_info, align 16
  br label %return

return:                                           ; preds = %brelse.exit21, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_mdb_commit(ptr noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %mdb1 = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdb1, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 366) #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 4, ptr elementtype(i32) %7) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %11 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %7) #7
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  %flags = getelementptr inbounds %struct.hfs_sb_info, ptr %13, i32 0, i32 30
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %lock_buffer.exit.if.end16_crit_edge, label %if.then5

lock_buffer.exit.if.end16_crit_edge:              ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then5:                                         ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i64 @ktime_get_real_seconds() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %14 = load i32, ptr @sys_tz, align 4
  %mul.neg.i = mul i32 %14, -60
  %15 = trunc i64 %call6 to i32
  %conv1.i = add i32 %15, 2082844800
  %add.i = add i32 %conv1.i, %mul.neg.i
  %drLsMod = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %drLsMod to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i, ptr %drLsMod, align 1
  %17 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info, align 16
  %free_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %free_ablocks to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %free_ablocks, align 2
  %drFreeBks = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %drFreeBks to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %drFreeBks, align 1
  %22 = load ptr, ptr %s_fs_info, align 16
  %next_id = getelementptr inbounds %struct.hfs_sb_info, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_id, align 4
  %drNxtCNID = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %drNxtCNID to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %drNxtCNID, align 1
  %26 = load ptr, ptr %s_fs_info, align 16
  %root_files = getelementptr inbounds %struct.hfs_sb_info, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %root_files to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %root_files, align 4
  %drNmFls = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %drNmFls to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %drNmFls, align 1
  %30 = load ptr, ptr %s_fs_info, align 16
  %root_dirs = getelementptr inbounds %struct.hfs_sb_info, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %root_dirs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %root_dirs, align 2
  %drNmRtDirs = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 19
  %33 = ptrtoint ptr %drNmRtDirs to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %drNmRtDirs, align 1
  %34 = load ptr, ptr %s_fs_info, align 16
  %file_count = getelementptr inbounds %struct.hfs_sb_info, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %file_count, align 4
  %drFilCnt = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 20
  %37 = ptrtoint ptr %drFilCnt to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %drFilCnt, align 1
  %38 = load ptr, ptr %s_fs_info, align 16
  %folder_count = getelementptr inbounds %struct.hfs_sb_info, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %folder_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %folder_count, align 4
  %drDirCnt = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 21
  %41 = ptrtoint ptr %drDirCnt to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %drDirCnt, align 1
  %42 = load ptr, ptr %s_fs_info, align 16
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  tail call void @mark_buffer_dirty(ptr noundef %44) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then5, %lock_buffer.exit.if.end16_crit_edge
  %45 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info, align 16
  %flags18 = getelementptr inbounds %struct.hfs_sb_info, ptr %46, i32 0, i32 30
  %call19 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end16.if.end48_crit_edge, label %land.lhs.true

if.end16.if.end48_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end16
  %47 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb = getelementptr inbounds %struct.hfs_sb_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %alt_mdb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %alt_mdb, align 4
  %tobool22.not = icmp eq ptr %50, null
  br i1 %tobool22.not, label %land.lhs.true.if.end48_crit_edge, label %if.then23

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then23:                                        ; preds = %land.lhs.true
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ext_tree, align 4
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %inode, align 4
  %drXTExtRec = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 26
  %drXTFlSize = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 25
  tail call void @hfs_inode_write_fork(ptr noundef %54, ptr noundef %drXTExtRec, ptr noundef %drXTFlSize, ptr noundef null) #7
  %55 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cat_tree, align 4
  %inode26 = getelementptr inbounds %struct.hfs_btree, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %inode26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %inode26, align 4
  %drCTExtRec = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 28
  %drCTFlSize = getelementptr inbounds %struct.hfs_mdb, ptr %3, i32 0, i32 27
  tail call void @hfs_inode_write_fork(ptr noundef %60, ptr noundef %drCTExtRec, ptr noundef %drCTFlSize, ptr noundef null) #7
  %61 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb_bh = getelementptr inbounds %struct.hfs_sb_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %alt_mdb_bh to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %alt_mdb_bh, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 366) #7
  %call.i.i.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %64, i32 noundef 4) #7
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i.i.i.i143 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i143)
  %tobool.not.i.i.i.i144 = icmp eq i32 %and.i.i.i.i143, 0
  br i1 %tobool.not.i.i.i.i144, label %trylock_buffer.exit.i147, label %if.then23.if.then.i148_crit_edge

if.then23.if.then.i148_crit_edge:                 ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i148

trylock_buffer.exit.i147:                         ; preds = %if.then23
  tail call void @llvm.prefetch.p0(ptr %64, i32 1, i32 3, i32 1) #7
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 4, ptr elementtype(i32) %64) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i145 = extractvalue { i32, i32, i32 } %67, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %68 = and i32 %asmresult.i.i.i.i.i.i.i145, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.not.i146 = icmp eq i32 %68, 0
  br i1 %tobool.not.not.i146, label %trylock_buffer.exit.i147.lock_buffer.exit149_crit_edge, label %trylock_buffer.exit.i147.if.then.i148_crit_edge

trylock_buffer.exit.i147.if.then.i148_crit_edge:  ; preds = %trylock_buffer.exit.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i148

trylock_buffer.exit.i147.lock_buffer.exit149_crit_edge: ; preds = %trylock_buffer.exit.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit149

if.then.i148:                                     ; preds = %trylock_buffer.exit.i147.if.then.i148_crit_edge, %if.then23.if.then.i148_crit_edge
  tail call void @__lock_buffer(ptr noundef %64) #7
  br label %lock_buffer.exit149

lock_buffer.exit149:                              ; preds = %if.then.i148, %trylock_buffer.exit.i147.lock_buffer.exit149_crit_edge
  %69 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb30 = getelementptr inbounds %struct.hfs_sb_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %alt_mdb30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %alt_mdb30, align 4
  %mdb32 = getelementptr inbounds %struct.hfs_sb_info, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %mdb32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mdb32, align 4
  %75 = call ptr @memcpy(ptr %72, ptr %74, i32 512)
  %76 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb34 = getelementptr inbounds %struct.hfs_sb_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %alt_mdb34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %alt_mdb34, align 4
  %drAtrb = getelementptr inbounds %struct.hfs_mdb, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %drAtrb to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %drAtrb, align 1
  %81 = or i16 %80, 256
  store i16 %81, ptr %drAtrb, align 1
  %82 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb37 = getelementptr inbounds %struct.hfs_sb_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %alt_mdb37 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %alt_mdb37, align 4
  %drAtrb38 = getelementptr inbounds %struct.hfs_mdb, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %drAtrb38 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %drAtrb38, align 1
  %87 = and i16 %86, -2049
  store i16 %87, ptr %drAtrb38, align 1
  %88 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb_bh42 = getelementptr inbounds %struct.hfs_sb_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %alt_mdb_bh42 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %alt_mdb_bh42, align 4
  tail call void @unlock_buffer(ptr noundef %90) #7
  %91 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb_bh44 = getelementptr inbounds %struct.hfs_sb_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %alt_mdb_bh44 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %alt_mdb_bh44, align 4
  tail call void @mark_buffer_dirty(ptr noundef %94) #7
  %95 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info, align 16
  %alt_mdb_bh46 = getelementptr inbounds %struct.hfs_sb_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %alt_mdb_bh46 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %alt_mdb_bh46, align 4
  %call47 = tail call i32 @sync_dirty_buffer(ptr noundef %98) #7
  br label %if.end48

if.end48:                                         ; preds = %lock_buffer.exit149, %land.lhs.true.if.end48_crit_edge, %if.end16.if.end48_crit_edge
  %99 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info, align 16
  %flags50 = getelementptr inbounds %struct.hfs_sb_info, ptr %100, i32 0, i32 30
  %call51 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end48.if.end80_crit_edge, label %if.then53

if.end48.if.end80_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then53:                                        ; preds = %if.end48
  %101 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %fs_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %102, i32 0, i32 15
  %103 = ptrtoint ptr %fs_ablocks to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %fs_ablocks, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool68.not159 = icmp eq i16 %104, 0
  br i1 %tobool68.not159, label %if.then53.if.end80_crit_edge, label %while.body.lr.ph

if.then53.if.end80_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

while.body.lr.ph:                                 ; preds = %if.then53
  %conv65 = zext i16 %104 to i32
  %add66 = add nuw nsw i32 %conv65, 7
  %div141 = lshr i32 %add66, 3
  %bitmap = getelementptr inbounds %struct.hfs_sb_info, ptr %102, i32 0, i32 4
  %105 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bitmap, align 4
  %part_start = getelementptr inbounds %struct.hfs_sb_info, ptr %102, i32 0, i32 12
  %107 = ptrtoint ptr %part_start to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %part_start, align 4
  %mdb55 = getelementptr inbounds %struct.hfs_sb_info, ptr %102, i32 0, i32 1
  %109 = ptrtoint ptr %mdb55 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mdb55, align 4
  %drVBMSt = getelementptr inbounds %struct.hfs_mdb, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %drVBMSt to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %drVBMSt, align 1
  %conv56 = zext i16 %112 to i32
  %add = add i32 %108, %conv56
  %conv58 = zext i32 %add to i64
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %113 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %s_blocksize_bits, align 4
  %conv62 = zext i8 %114 to i32
  %sub63 = add nsw i32 %conv62, -9
  %sh_prom = zext i32 %sub63 to i64
  %shr = lshr i64 %conv58, %sh_prom
  %shl = shl i32 %add, 9
  %115 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %116, -1
  %and60 = and i32 %shl, %sub
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %size.0163 = phi i32 [ %div141, %while.body.lr.ph ], [ %sub79, %brelse.exit.while.body_crit_edge ]
  %off.0162 = phi i32 [ %and60, %while.body.lr.ph ], [ 0, %brelse.exit.while.body_crit_edge ]
  %ptr.0161 = phi ptr [ %106, %while.body.lr.ph ], [ %add.ptr78, %brelse.exit.while.body_crit_edge ]
  %block.0160 = phi i64 [ %shr, %while.body.lr.ph ], [ %inc, %brelse.exit.while.body_crit_edge ]
  %117 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_bdev.i, align 4
  %119 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %118, i64 noundef %block.0160, i32 noundef %120, i32 noundef 8) #7
  %tobool70.not = icmp eq ptr %call.i, null
  br i1 %tobool70.not, label %do.end, label %if.end73

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %if.end80

if.end73:                                         ; preds = %while.body
  %121 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %s_blocksize, align 16
  %sub75 = sub i32 %122, %off.0162
  %123 = tail call i32 @llvm.smin.i32(i32 %sub75, i32 %size.0163)
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 366) #7
  %call.i.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i151 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i151)
  %tobool.not.i.i.i.i152 = icmp eq i32 %and.i.i.i.i151, 0
  br i1 %tobool.not.i.i.i.i152, label %trylock_buffer.exit.i155, label %if.end73.if.then.i156_crit_edge

if.end73.if.then.i156_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i156

trylock_buffer.exit.i155:                         ; preds = %if.end73
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #7
  %126 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i153 = extractvalue { i32, i32, i32 } %126, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %127 = and i32 %asmresult.i.i.i.i.i.i.i153, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.not.i154 = icmp eq i32 %127, 0
  br i1 %tobool.not.not.i154, label %trylock_buffer.exit.i155.brelse.exit_crit_edge, label %trylock_buffer.exit.i155.if.then.i156_crit_edge

trylock_buffer.exit.i155.if.then.i156_crit_edge:  ; preds = %trylock_buffer.exit.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i156

trylock_buffer.exit.i155.brelse.exit_crit_edge:   ; preds = %trylock_buffer.exit.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i156:                                     ; preds = %trylock_buffer.exit.i155.if.then.i156_crit_edge, %if.end73.if.then.i156_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i156, %trylock_buffer.exit.i155.brelse.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %128 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %129, i32 %off.0162
  %130 = call ptr @memcpy(ptr %add.ptr, ptr %ptr.0161, i32 %123)
  tail call void @unlock_buffer(ptr noundef nonnull %call.i) #7
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #7
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  %inc = add i64 %block.0160, 1
  %add.ptr78 = getelementptr i8, ptr %ptr.0161, i32 %123
  %sub79 = sub i32 %size.0163, %123
  %tobool68.not = icmp eq i32 %sub79, 0
  br i1 %tobool68.not, label %brelse.exit.if.end80_crit_edge, label %brelse.exit.while.body_crit_edge

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

brelse.exit.if.end80_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end80:                                         ; preds = %brelse.exit.if.end80_crit_edge, %do.end, %if.then53.if.end80_crit_edge, %if.end48.if.end80_crit_edge
  %131 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info, align 16
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  tail call void @unlock_buffer(ptr noundef %134) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_inode_write_fork(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_mdb_close(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %mdb = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdb, align 4
  %drAtrb = getelementptr inbounds %struct.hfs_mdb, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %drAtrb to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %drAtrb, align 1
  %8 = or i16 %7, 256
  store i16 %8, ptr %drAtrb, align 1
  %9 = load ptr, ptr %s_fs_info, align 16
  %mdb3 = getelementptr inbounds %struct.hfs_sb_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %mdb3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdb3, align 4
  %drAtrb4 = getelementptr inbounds %struct.hfs_mdb, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %drAtrb4 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %drAtrb4, align 1
  %14 = and i16 %13, -2049
  store i16 %14, ptr %drAtrb4, align 1
  %15 = load ptr, ptr %s_fs_info, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @mark_buffer_dirty(ptr noundef %17) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_btree_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_read_tocentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_multisession(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfs/mdb.c", i32 110, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfs_mdb_get._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfs_mdb_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfs/mdb.c", i32 127, i32 3}
!8 = !{ptr @hfs_mdb_get._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hfs_mdb_get._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hfs/mdb.c", i32 171, i32 3}
!12 = !{ptr @hfs_mdb_get._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hfs_mdb_get._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hfs/mdb.c", i32 172, i32 3}
!16 = !{ptr @hfs_mdb_get._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hfs_mdb_get._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hfs/mdb.c", i32 187, i32 4}
!20 = !{ptr @hfs_mdb_get._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hfs_mdb_get._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/hfs/mdb.c", i32 201, i32 3}
!24 = !{ptr @hfs_mdb_get._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hfs_mdb_get._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/hfs/mdb.c", i32 206, i32 3}
!28 = !{ptr @hfs_mdb_get._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hfs_mdb_get._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/hfs/mdb.c", i32 212, i32 3}
!32 = !{ptr @hfs_mdb_get._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hfs_mdb_get._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/hfs/mdb.c", i32 216, i32 3}
!36 = !{ptr @hfs_mdb_get._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hfs_mdb_get._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/hfs/mdb.c", i32 320, i32 5}
!40 = !{ptr @hfs_mdb_commit._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @hfs_mdb_commit._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/hfs/mdb.c", i32 51, i32 4}
!44 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hfs_get_last_session._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @hfs_get_last_session._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i32 0, i32 33}
!61 = !{i64 2148678728, i64 2148678760, i64 2148678789, i64 2148678823, i64 2148678854, i64 2148678877}
!62 = !{i64 2148767833}
