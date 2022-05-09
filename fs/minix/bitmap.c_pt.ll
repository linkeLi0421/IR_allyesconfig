; ModuleID = '/llk/IR_all_yes/fs/minix/bitmap.c_pt.bc'
source_filename = "../fs/minix/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
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
%struct.minix_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.minix_inode = type { i16, i16, i32, i32, i8, i8, [9 x i16] }
%struct.minix2_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, [10 x i32] }

@minix_free_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Trying to free block not in datazone\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"minix_free_block\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/minix/bitmap.c\00", [46 x i8] zeroinitializer }, align 32
@minix_free_block._entry_ptr = internal global ptr @minix_free_block._entry, section ".printk_index", align 4
@minix_free_block._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"minix_free_block: nonexistent bitmap buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@minix_free_block._entry_ptr.5 = internal global ptr @minix_free_block._entry.3, section ".printk_index", align 4
@bitmap_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@minix_free_block._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"minix_free_block (%s:%lu): bit already cleared\0A\00", [48 x i8] zeroinitializer }, align 32
@minix_free_block._entry_ptr.8 = internal global ptr @minix_free_block._entry.6, section ".printk_index", align 4
@minix_V1_raw_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Bad inode number on dev %s: %ld is out of range\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"minix_V1_raw_inode\00", [45 x i8] zeroinitializer }, align 32
@minix_V1_raw_inode._entry_ptr = internal global ptr @minix_V1_raw_inode._entry, section ".printk_index", align 4
@minix_V1_raw_inode._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to read inode block\0A\00", [36 x i8] zeroinitializer }, align 32
@minix_V1_raw_inode._entry_ptr.13 = internal global ptr @minix_V1_raw_inode._entry.11, section ".printk_index", align 4
@minix_V2_raw_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"minix_V2_raw_inode\00", [45 x i8] zeroinitializer }, align 32
@minix_V2_raw_inode._entry_ptr = internal global ptr @minix_V2_raw_inode._entry, section ".printk_index", align 4
@minix_V2_raw_inode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@minix_V2_raw_inode._entry_ptr.16 = internal global ptr @minix_V2_raw_inode._entry.15, section ".printk_index", align 4
@minix_free_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"minix_free_inode: inode 0 or nonexistent inode\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"minix_free_inode\00", [47 x i8] zeroinitializer }, align 32
@minix_free_inode._entry_ptr = internal global ptr @minix_free_inode._entry, section ".printk_index", align 4
@minix_free_inode._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"minix_free_inode: nonexistent imap in superblock\0A\00", [46 x i8] zeroinitializer }, align 32
@minix_free_inode._entry_ptr.21 = internal global ptr @minix_free_inode._entry.19, section ".printk_index", align 4
@minix_free_inode._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"minix_free_inode: bit %lu already cleared\0A\00", [53 x i8] zeroinitializer }, align 32
@minix_free_inode._entry_ptr.24 = internal global ptr @minix_free_inode._entry.22, section ".printk_index", align 4
@minix_new_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"minix_new_inode: bit already set\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"minix_new_inode\00", [16 x i8] zeroinitializer }, align 32
@minix_new_inode._entry_ptr = internal global ptr @minix_new_inode._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bitmap_lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 51, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 58, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"bitmap_lock\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 64, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 114, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 123, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 140, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 149, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 193, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 199, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 208, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 244, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [21 x i8] c"../fs/minix/bitmap.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 20, i32 8 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @minix_V1_raw_inode._entry, ptr @minix_V1_raw_inode._entry.11, ptr @minix_V1_raw_inode._entry_ptr, ptr @minix_V1_raw_inode._entry_ptr.13, ptr @minix_V2_raw_inode._entry, ptr @minix_V2_raw_inode._entry.15, ptr @minix_V2_raw_inode._entry_ptr, ptr @minix_V2_raw_inode._entry_ptr.16, ptr @minix_free_block._entry, ptr @minix_free_block._entry.3, ptr @minix_free_block._entry.6, ptr @minix_free_block._entry_ptr, ptr @minix_free_block._entry_ptr.5, ptr @minix_free_block._entry_ptr.8, ptr @minix_free_inode._entry, ptr @minix_free_inode._entry.19, ptr @minix_free_inode._entry.22, ptr @minix_free_inode._entry_ptr, ptr @minix_free_inode._entry_ptr.21, ptr @minix_free_inode._entry_ptr.24, ptr @minix_new_inode._entry, ptr @minix_new_inode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @bitmap_lock, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_free_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_free_block._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitmap_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_free_block._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_V1_raw_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_V1_raw_inode._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_V2_raw_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_V2_raw_inode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_free_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_free_inode._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_free_inode._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_new_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @minix_free_block(ptr nocapture noundef readonly %inode, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 3
  %s_firstdatazone = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_firstdatazone, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %block)
  %cmp = icmp ugt i32 %7, %block
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %s_nzones = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_nzones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %block)
  %cmp2.not = icmp ugt i32 %9, %block
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = sub i32 %block, %7
  %add6 = add i32 %sub, 1
  %shr = lshr i32 %add6, %add
  %s_zmap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_zmap_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %11)
  %cmp8.not = icmp ult i32 %shr, %11
  br i1 %cmp8.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %shl = shl i32 8, %conv
  %sub7 = add i32 %shl, -1
  %and = and i32 %add6, %sub7
  %s_zmap = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %s_zmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_zmap, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %shr
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bitmap_lock) #4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %and, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %and, 5
  %add.ptr.i.i = getelementptr i32, ptr %17, i32 %div6.i.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %19, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %20 = and i32 %19, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %do.end21, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %s_id, i32 noundef %block) #7
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end16.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bitmap_lock) #4
  tail call void @mark_buffer_dirty(ptr noundef %15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end13, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_new_block(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %5, 3
  %s_zmap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_zmap_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp41.not = icmp eq i32 %7, 0
  br i1 %cmp41.not, label %entry.cleanup13_crit_edge, label %for.body.lr.ph

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup13

for.body.lr.ph:                                   ; preds = %entry
  %s_zmap = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %s_zmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_zmap, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.042
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bitmap_lock) #4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %call.i = tail call i32 @_find_first_zero_bit_le(ptr noundef %13, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul)
  %cmp3 = icmp slt i32 %call.i, %mul
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %b_data.le = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.le, align 4
  %xor.i = and i32 %call.i, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %15, i32 %div2.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %17, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bitmap_lock) #4
  tail call void @mark_buffer_dirty(ptr noundef %11) #4
  %mul5 = mul i32 %i.042, %mul
  %s_firstdatazone = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_firstdatazone, align 4
  %add = add i32 %mul5, -1
  %sub = add i32 %add, %call.i
  %add6 = add i32 %sub, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %19)
  %cmp8 = icmp ult i32 %add6, %19
  br i1 %cmp8, label %if.then.cleanup.thread_crit_edge, label %lor.lhs.false

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.then
  %s_nzones = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_nzones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %21)
  %cmp9.not = icmp ult i32 %add6, %21
  br i1 %cmp9.not, label %lor.lhs.false.cleanup13_crit_edge, label %lor.lhs.false.cleanup.thread_crit_edge

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

lor.lhs.false.cleanup13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup13

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  br label %cleanup13

for.inc:                                          ; preds = %for.body
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bitmap_lock) #4
  %inc = add nuw i32 %i.042, 1
  %22 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_zmap_blocks, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup13_crit_edge

for.inc.cleanup13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup13

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup13:                                        ; preds = %for.inc.cleanup13_crit_edge, %cleanup.thread, %lor.lhs.false.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup.thread ], [ %add6, %lor.lhs.false.cleanup13_crit_edge ], [ 0, %entry.cleanup13_crit_edge ], [ 0, %for.inc.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_count_free_blocks(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_nzones = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_nzones, align 4
  %s_firstdatazone = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_firstdatazone, align 4
  %sub = sub i32 %3, %5
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %mul.i = shl i32 %7, 3
  %sub.i = add i32 %mul.i, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %tobool.not20.i = icmp ugt i32 %mul.i, %sub.i
  br i1 %tobool.not20.i, label %entry.count_free.exit_crit_edge, label %while.body.lr.ph.i

entry.count_free.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %count_free.exit

while.body.lr.ph.i:                               ; preds = %entry
  %s_zmap = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %s_zmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_zmap, align 4
  %div.i = udiv i32 %sub.i, %mul.i
  %div214.i = lshr i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %tobool5.not15.i = icmp ult i32 %7, 2
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %while.body6.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %sum.1.lcssa.i = phi i32 [ %sum.022.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %add9.i, %while.body6.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec23.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.count_free.exit_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.cond.loopexit.i.count_free.exit_crit_edge:  ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %count_free.exit

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec23.in.i = phi i32 [ %div.i, %while.body.lr.ph.i ], [ %dec23.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %sum.022.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %sum.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %map.addr.021.i = phi ptr [ %9, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %dec23.i = add i32 %dec23.in.i, -1
  %incdec.ptr.i = getelementptr ptr, ptr %map.addr.021.i, i32 1
  br i1 %tobool5.not15.i, label %while.body.i.while.cond.loopexit.i_crit_edge, label %while.body6.preheader.i

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit.i

while.body6.preheader.i:                          ; preds = %while.body.i
  %10 = ptrtoint ptr %map.addr.021.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.addr.021.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  br label %while.body6.i

while.body6.i:                                    ; preds = %while.body6.i.while.body6.i_crit_edge, %while.body6.preheader.i
  %p.018.i = phi ptr [ %incdec.ptr7.i, %while.body6.i.while.body6.i_crit_edge ], [ %13, %while.body6.preheader.i ]
  %words.017.i = phi i32 [ %dec4.i, %while.body6.i.while.body6.i_crit_edge ], [ %div214.i, %while.body6.preheader.i ]
  %sum.116.i = phi i32 [ %add9.i, %while.body6.i.while.body6.i_crit_edge ], [ %sum.022.i, %while.body6.preheader.i ]
  %dec4.i = add nsw i32 %words.017.i, -1
  %incdec.ptr7.i = getelementptr i16, ptr %p.018.i, i32 1
  %14 = ptrtoint ptr %p.018.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %p.018.i, align 2
  %conv.i = zext i16 %15 to i32
  %call.i.i = tail call i32 @__sw_hweight16(i32 noundef %conv.i) #4
  %sub8.i = add i32 %sum.116.i, 16
  %add9.i = sub i32 %sub8.i, %call.i.i
  %tobool5.not.i = icmp eq i32 %dec4.i, 0
  br i1 %tobool5.not.i, label %while.body6.i.while.cond.loopexit.i_crit_edge, label %while.body6.i.while.body6.i_crit_edge

while.body6.i.while.body6.i_crit_edge:            ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body6.i

while.body6.i.while.cond.loopexit.i_crit_edge:    ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit.i

count_free.exit:                                  ; preds = %while.cond.loopexit.i.count_free.exit_crit_edge, %entry.count_free.exit_crit_edge
  %sum.0.lcssa.i = phi i32 [ 0, %entry.count_free.exit_crit_edge ], [ %sum.1.lcssa.i, %while.cond.loopexit.i.count_free.exit_crit_edge ]
  %s_log_zone_size = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %s_log_zone_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_log_zone_size, align 4
  %shl = shl i32 %sum.0.lcssa.i, %17
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @minix_V1_raw_inode(ptr noundef %sb, i32 noundef %ino, ptr nocapture noundef writeonly %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %tobool.not = icmp eq i32 %ino, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ino)
  %cmp = icmp ult i32 %3, %ino
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %s_id, i32 noundef %ino) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dec = add i32 %ino, -1
  %s_imap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_imap_blocks, align 4
  %s_zmap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_zmap_blocks, align 4
  %div26 = lshr i32 %dec, 5
  %add = add nuw nsw i32 %div26, 2
  %add2 = add i32 %add, %5
  %add3 = add i32 %add2, %7
  %conv = sext i32 %add3 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %9, i64 noundef %conv, i32 noundef %11, i32 noundef 8) #4
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %bh, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %rem = and i32 %dec, 31
  %add.ptr = getelementptr %struct.minix_inode, ptr %14, i32 %rem
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr, %if.end12 ], [ null, %do.end9 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @minix_V2_raw_inode(ptr noundef %sb, i32 noundef %ino, ptr nocapture noundef writeonly %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %div31 = lshr i32 %3, 6
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %tobool.not = icmp eq i32 %ino, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ino)
  %cmp = icmp ult i32 %6, %ino
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %s_id, i32 noundef %ino) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dec = add i32 %ino, -1
  %s_imap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_imap_blocks, align 4
  %add = add i32 %8, 2
  %s_zmap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %s_zmap_blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_zmap_blocks, align 4
  %add2 = add i32 %add, %10
  %div31.frozen = freeze i32 %div31
  %div3 = udiv i32 %dec, %div31.frozen
  %add4 = add i32 %add2, %div3
  %conv = sext i32 %add4 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %13 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %conv, i32 noundef %14, i32 noundef 8) #4
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %bh, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %18 = mul i32 %div3, %div31.frozen
  %rem.decomposed = sub i32 %dec, %18
  %add.ptr = getelementptr %struct.minix2_inode, ptr %17, i32 %rem.decomposed
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr, %if.end13 ], [ null, %do.end10 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @minix_free_inode(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3 = icmp ugt i32 %7, %9
  br i1 %cmp3, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shl = shl i32 8, %conv
  %sub = add i32 %shl, -1
  %and = and i32 %sub, %7
  %shr = lshr i32 %7, %add
  %s_imap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_imap_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %11)
  %cmp6.not = icmp ult i32 %shr, %11
  br i1 %cmp6.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %s_version.i = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %s_version.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp.i = icmp eq i16 %13, 1
  br i1 %cmp.i, label %if.end.i.i, label %if.end.i41.i

if.end.i.i:                                       ; preds = %if.end14
  %dec.i.i = add i32 %7, -1
  %s_zmap_blocks.i.i = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %s_zmap_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_zmap_blocks.i.i, align 4
  %div26.i.i = lshr i32 %dec.i.i, 5
  %add.i.i = add i32 %11, 2
  %add2.i.i = add i32 %add.i.i, %div26.i.i
  %add3.i.i = add i32 %add2.i.i, %15
  %conv.i.i = sext i32 %add3.i.i to i64
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef %conv.i.i, i32 noundef %19, i32 noundef 8) #4
  %tobool5.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool5.not.i.i, label %do.end9.i.i, label %minix_V1_raw_inode.exit.i

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %minix_clear_inode.exit

minix_V1_raw_inode.exit.i:                        ; preds = %if.end.i.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i.i, align 4
  %rem.i.i = and i32 %dec.i.i, 31
  %add.ptr.i.i = getelementptr %struct.minix_inode, ptr %21, i32 %rem.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %minix_V1_raw_inode.exit.i.brelse.exit.i_crit_edge, label %if.then4.i

minix_V1_raw_inode.exit.i.brelse.exit.i_crit_edge: ; preds = %minix_V1_raw_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit.i

if.then4.i:                                       ; preds = %minix_V1_raw_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %i_nlinks.i = getelementptr %struct.minix_inode, ptr %21, i32 %rem.i.i, i32 5
  %22 = ptrtoint ptr %i_nlinks.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %i_nlinks.i, align 1
  br label %brelse.exit.sink.split.i

if.end.i41.i:                                     ; preds = %if.end14
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize.i.i, align 16
  %div31.i.i = lshr i32 %24, 6
  %dec.i33.i = add i32 %7, -1
  %add.i35.i = add i32 %11, 2
  %s_zmap_blocks.i36.i = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %s_zmap_blocks.i36.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_zmap_blocks.i36.i, align 4
  %add2.i37.i = add i32 %add.i35.i, %26
  %dec.i33.i.frozen = freeze i32 %dec.i33.i
  %div3.i.i = udiv i32 %dec.i33.i.frozen, %div31.i.i
  %add4.i.i = add i32 %add2.i37.i, %div3.i.i
  %conv.i38.i = sext i32 %add4.i.i to i64
  %s_bdev.i.i39.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %27 = ptrtoint ptr %s_bdev.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev.i.i39.i, align 4
  %call.i.i40.i = tail call ptr @__bread_gfp(ptr noundef %28, i64 noundef %conv.i38.i, i32 noundef %24, i32 noundef 8) #4
  %tobool6.not.i.i = icmp eq ptr %call.i.i40.i, null
  br i1 %tobool6.not.i.i, label %do.end10.i.i, label %minix_V2_raw_inode.exit.i

do.end10.i.i:                                     ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %minix_clear_inode.exit

minix_V2_raw_inode.exit.i:                        ; preds = %if.end.i41.i
  %b_data.i42.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i40.i, i32 0, i32 5
  %29 = ptrtoint ptr %b_data.i42.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data.i42.i, align 4
  %31 = mul i32 %div3.i.i, %div31.i.i
  %rem.i43.i.decomposed = sub i32 %dec.i33.i.frozen, %31
  %add.ptr.i44.i = getelementptr %struct.minix2_inode, ptr %30, i32 %rem.i43.i.decomposed
  %tobool9.not.i = icmp eq ptr %add.ptr.i44.i, null
  br i1 %tobool9.not.i, label %minix_V2_raw_inode.exit.i.brelse.exit.i_crit_edge, label %if.then10.i

minix_V2_raw_inode.exit.i.brelse.exit.i_crit_edge: ; preds = %minix_V2_raw_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit.i

if.then10.i:                                      ; preds = %minix_V2_raw_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %i_nlinks11.i = getelementptr %struct.minix2_inode, ptr %30, i32 %rem.i43.i.decomposed, i32 1
  %32 = ptrtoint ptr %i_nlinks11.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %i_nlinks11.i, align 2
  br label %brelse.exit.sink.split.i

brelse.exit.sink.split.i:                         ; preds = %if.then10.i, %if.then4.i
  %add.ptr.i.sink.i = phi ptr [ %add.ptr.i.i, %if.then4.i ], [ %add.ptr.i44.i, %if.then10.i ]
  %bh.2.ph.ph.i = phi ptr [ %call.i.i.i, %if.then4.i ], [ %call.i.i40.i, %if.then10.i ]
  %33 = ptrtoint ptr %add.ptr.i.sink.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %add.ptr.i.sink.i, align 4
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %brelse.exit.sink.split.i, %minix_V2_raw_inode.exit.i.brelse.exit.i_crit_edge, %minix_V1_raw_inode.exit.i.brelse.exit.i_crit_edge
  %bh.2.ph.i = phi ptr [ %call.i.i40.i, %minix_V2_raw_inode.exit.i.brelse.exit.i_crit_edge ], [ %call.i.i.i, %minix_V1_raw_inode.exit.i.brelse.exit.i_crit_edge ], [ %bh.2.ph.ph.i, %brelse.exit.sink.split.i ]
  tail call void @mark_buffer_dirty(ptr noundef nonnull %bh.2.ph.i) #4
  tail call void @__brelse(ptr noundef nonnull %bh.2.ph.i) #4
  br label %minix_clear_inode.exit

minix_clear_inode.exit:                           ; preds = %brelse.exit.i, %do.end10.i.i, %do.end9.i.i
  %s_imap = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_imap, align 4
  %arrayidx = getelementptr ptr, ptr %35, i32 %shr
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bitmap_lock) #4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %and, 31
  %rem.i.i41 = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i41
  %div6.i.i = lshr i32 %and, 5
  %add.ptr.i.i42 = getelementptr i32, ptr %39, i32 %div6.i.i
  %40 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i42, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %41, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i42, align 4
  %42 = and i32 %41, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not = icmp eq i32 %42, 0
  br i1 %tobool.not, label %do.end19, label %minix_clear_inode.exit.if.end22_crit_edge

minix_clear_inode.exit.if.end22_crit_edge:        ; preds = %minix_clear_inode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

do.end19:                                         ; preds = %minix_clear_inode.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and) #7
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %minix_clear_inode.exit.if.end22_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bitmap_lock) #4
  tail call void @mark_buffer_dirty(ptr noundef %37) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end11, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @minix_new_inode(ptr noundef %dir, i16 noundef zeroext %mode, ptr nocapture noundef writeonly %error) local_unnamed_addr #0 align 64 {
entry:
  %tmp22 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @new_inode(ptr noundef %1) #4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %5, 3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -12, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -28, ptr %error, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bitmap_lock) #4
  %s_imap = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 8
  %s_imap_blocks = getelementptr inbounds %struct.minix_sb_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_imap_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp67.not = icmp eq i32 %9, 0
  br i1 %cmp67.not, label %if.end.if.then8_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_imap, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.068
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %call.i = tail call i32 @_find_first_zero_bit_le(ptr noundef %15, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul)
  %cmp3 = icmp ult i32 %call.i, %mul
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.068, 1
  %16 = ptrtoint ptr %s_imap_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_imap_blocks, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %inc, %for.inc.for.end_crit_edge ], [ %i.068, %for.body.for.end_crit_edge ]
  %tobool6.not = icmp ne ptr %13, null
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul)
  %cmp7.not = icmp ult i32 %call.i, %mul
  %or.cond = select i1 %tobool6.not, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %if.end9, label %for.end.if.then8_crit_edge

for.end.if.then8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %for.end.if.then8_crit_edge, %if.end.if.then8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bitmap_lock) #4
  tail call void @iput(ptr noundef nonnull %call1) #4
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %b_data10 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %b_data10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data10, align 4
  %xor.i = and i32 %call.i, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div5.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %19, i32 %div5.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %21, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %22 = and i32 %21, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not = icmp eq i32 %22, 0
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bitmap_lock) #4
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #7
  tail call void @iput(ptr noundef nonnull %call1) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  tail call void @mark_buffer_dirty(ptr noundef nonnull %13) #4
  %mul16 = mul i32 %i.0.lcssa, %mul
  %add = add i32 %call.i, %mul16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool17.not = icmp eq i32 %add, 0
  br i1 %tobool17.not, label %if.end15.if.then20_crit_edge, label %lor.lhs.false18

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false18:                                  ; preds = %if.end15
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp19 = icmp ugt i32 %add, %24
  br i1 %cmp19, label %lor.lhs.false18.if.then20_crit_edge, label %if.end21

lor.lhs.false18.if.then20_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false18.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  tail call void @iput(ptr noundef nonnull %call1) #4
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1, ptr noundef %dir, i16 noundef zeroext %mode) #4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp22) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp22, ptr noundef nonnull %call1) #4
  %26 = call ptr @memcpy(ptr %i_ctime, ptr %tmp22, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp22) #4
  %27 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %28 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %29 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %i_blocks, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -64
  %30 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 64)
  %31 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call1, i32 noundef %32) #4
  call void @__mark_inode_dirty(ptr noundef nonnull %call1, i32 noundef 7) #4
  %33 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then13, %if.then8, %if.then
  %retval.0 = phi ptr [ null, %if.then8 ], [ null, %if.then13 ], [ null, %if.then20 ], [ %call1, %if.end21 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_count_free_inodes(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %mul.i = shl i32 %5, 3
  %sub.i = add i32 %mul.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %tobool.not20.i = icmp ugt i32 %mul.i, %sub.i
  br i1 %tobool.not20.i, label %entry.count_free.exit_crit_edge, label %while.body.lr.ph.i

entry.count_free.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %count_free.exit

while.body.lr.ph.i:                               ; preds = %entry
  %s_imap = getelementptr inbounds %struct.minix_sb_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_imap, align 4
  %div.i = udiv i32 %sub.i, %mul.i
  %div214.i = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %tobool5.not15.i = icmp ult i32 %5, 2
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %while.body6.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %sum.1.lcssa.i = phi i32 [ %sum.022.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %add9.i, %while.body6.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec23.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.count_free.exit_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.cond.loopexit.i.count_free.exit_crit_edge:  ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %count_free.exit

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec23.in.i = phi i32 [ %div.i, %while.body.lr.ph.i ], [ %dec23.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %sum.022.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %sum.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %map.addr.021.i = phi ptr [ %7, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %dec23.i = add i32 %dec23.in.i, -1
  %incdec.ptr.i = getelementptr ptr, ptr %map.addr.021.i, i32 1
  br i1 %tobool5.not15.i, label %while.body.i.while.cond.loopexit.i_crit_edge, label %while.body6.preheader.i

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit.i

while.body6.preheader.i:                          ; preds = %while.body.i
  %8 = ptrtoint ptr %map.addr.021.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.addr.021.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  br label %while.body6.i

while.body6.i:                                    ; preds = %while.body6.i.while.body6.i_crit_edge, %while.body6.preheader.i
  %p.018.i = phi ptr [ %incdec.ptr7.i, %while.body6.i.while.body6.i_crit_edge ], [ %11, %while.body6.preheader.i ]
  %words.017.i = phi i32 [ %dec4.i, %while.body6.i.while.body6.i_crit_edge ], [ %div214.i, %while.body6.preheader.i ]
  %sum.116.i = phi i32 [ %add9.i, %while.body6.i.while.body6.i_crit_edge ], [ %sum.022.i, %while.body6.preheader.i ]
  %dec4.i = add nsw i32 %words.017.i, -1
  %incdec.ptr7.i = getelementptr i16, ptr %p.018.i, i32 1
  %12 = ptrtoint ptr %p.018.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %p.018.i, align 2
  %conv.i = zext i16 %13 to i32
  %call.i.i = tail call i32 @__sw_hweight16(i32 noundef %conv.i) #4
  %sub8.i = add i32 %sum.116.i, 16
  %add9.i = sub i32 %sub8.i, %call.i.i
  %tobool5.not.i = icmp eq i32 %dec4.i, 0
  br i1 %tobool5.not.i, label %while.body6.i.while.cond.loopexit.i_crit_edge, label %while.body6.i.while.body6.i_crit_edge

while.body6.i.while.body6.i_crit_edge:            ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body6.i

while.body6.i.while.cond.loopexit.i_crit_edge:    ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit.i

count_free.exit:                                  ; preds = %while.cond.loopexit.i.count_free.exit_crit_edge, %entry.count_free.exit_crit_edge
  %sum.0.lcssa.i = phi i32 [ 0, %entry.count_free.exit_crit_edge ], [ %sum.1.lcssa.i, %while.cond.loopexit.i.count_free.exit_crit_edge ]
  ret i32 %sum.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/minix/bitmap.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @minix_free_block._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @minix_free_block._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/minix/bitmap.c", i32 58, i32 3}
!8 = !{ptr @minix_free_block._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @minix_free_block._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/minix/bitmap.c", i32 64, i32 3}
!12 = !{ptr @minix_free_block._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @minix_free_block._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/minix/bitmap.c", i32 114, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @minix_V1_raw_inode._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @minix_V1_raw_inode._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/minix/bitmap.c", i32 123, i32 3}
!21 = !{ptr @minix_V1_raw_inode._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @minix_V1_raw_inode._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/minix/bitmap.c", i32 140, i32 3}
!25 = !{ptr @minix_V2_raw_inode._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @minix_V2_raw_inode._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @minix_V2_raw_inode._entry.15, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../fs/minix/bitmap.c", i32 149, i32 3}
!29 = !{ptr @minix_V2_raw_inode._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/minix/bitmap.c", i32 193, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @minix_free_inode._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @minix_free_inode._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/minix/bitmap.c", i32 199, i32 3}
!37 = !{ptr @minix_free_inode._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @minix_free_inode._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/minix/bitmap.c", i32 208, i32 3}
!41 = !{ptr @minix_free_inode._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @minix_free_inode._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/minix/bitmap.c", i32 244, i32 3}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @minix_new_inode._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @minix_new_inode._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/minix/bitmap.c", i32 20, i32 8}
!50 = !{ptr @bitmap_lock, !49, !"bitmap_lock", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
