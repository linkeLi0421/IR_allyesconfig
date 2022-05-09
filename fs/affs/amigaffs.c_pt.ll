; ModuleID = '/llk/IR_all_yes/fs/affs/amigaffs.c_pt.bc'
source_filename = "../fs/affs/amigaffs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.timezone = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.affs_tail = type { i32, i16, i16, i32, i32, [92 x i8], %struct.affs_date, [32 x i8], i32, i32, i32, [5 x i32], i32, i32, i32, i32 }
%struct.affs_date = type { i32, i32, i32 }
%struct.affs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, [32 x i8], %struct.spinlock, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.affs_head = type { i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@affs_insert_hash.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_insert_hash\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/affs/amigaffs.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(dir=%lu, ino=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"affs: %s(dir=%lu, ino=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@affs_remove_hash.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_remove_hash\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(dir=%lu, ino=%d, hashval=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"affs: %s(dir=%lu, ino=%d, hashval=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@affs_remove_header.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"affs_remove_header\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(key=%ld)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"affs: %s(key=%ld)\0A\00", [45 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@affs_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012affs: error (device %s): %s(): %pV\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_error\00", [21 x i8] zeroinitializer }, align 32
@affs_error._entry_ptr = internal global ptr @affs_error._entry, section ".printk_index", align 4
@affs_error._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014affs: Remounting filesystem read-only\0A\00", [55 x i8] zeroinitializer }, align 32
@affs_error._entry_ptr.15 = internal global ptr @affs_error._entry.13, section ".printk_index", align 4
@affs_warning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014affs: (device %s): %s(): %pV\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"affs_warning\00", [19 x i8] zeroinitializer }, align 32
@affs_warning._entry_ptr = internal global ptr @affs_warning._entry, section ".printk_index", align 4
@affs_bread.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.19, ptr @.str.20, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.19, ptr @.str.23, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@affs_remove_link.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.9, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_remove_link\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967292]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 36, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 86, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 282, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 481, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 483, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 497, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 237, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 282, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [22 x i8] c"../fs/affs/amigaffs.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 150, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @affs_error._entry, ptr @affs_error._entry.13, ptr @affs_error._entry_ptr, ptr @affs_error._entry_ptr.15, ptr @affs_warning._entry, ptr @affs_warning._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_error._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_warning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_insert_hash(ptr noundef %dir, ptr nocapture noundef readonly %bh) local_unnamed_addr #0 align 64 {
entry:
  %tmp52 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %3 to i32
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -200
  %name = getelementptr inbounds %struct.affs_tail, ptr %add.ptr1, i32 0, i32 7
  %add.ptr2 = getelementptr i8, ptr %name, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name, align 4
  %conv8 = zext i8 %9 to i32
  %call = tail call i32 @affs_hash_name(ptr noundef %1, ptr noundef %add.ptr2, i32 noundef %conv8) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_insert_hash.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_insert_hash, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_insert_hash.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_ino12 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino12, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_insert_hash, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !54

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %13) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp.not.i.i = icmp sgt i32 %17, %13
  br i1 %cmp.not.i.i, label %do.end.i.cleanup_crit_edge, label %affs_validblock.exit.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_validblock.exit.i:                           ; preds = %do.end.i
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp2.i.i = icmp sgt i32 %19, %13
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.cleanup_crit_edge

affs_validblock.exit.i.cleanup_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %13 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_bdev.i.i, align 4
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %21, i64 noundef %conv.i, i32 noundef %23, i32 noundef 8) #13
  %tobool14.not = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not, label %affs_bread.exit.cleanup_crit_edge, label %if.end16

affs_bread.exit.cleanup_crit_edge:                ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %affs_bread.exit
  %b_data17 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %b_data17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data17, align 4
  %arrayidx18 = getelementptr %struct.affs_head, ptr %25, i32 0, i32 6, i32 %call
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %hash_ino.0126 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_ino.0126)
  %tobool19.not127 = icmp eq i32 %hash_ino.0126, 0
  br i1 %tobool19.not127, label %if.end16.while.end_crit_edge, label %if.end16.do.body.i_crit_edge

if.end16.do.body.i_crit_edge:                     ; preds = %if.end16
  br label %do.body.i

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body.i:                                        ; preds = %if.end23.do.body.i_crit_edge, %if.end16.do.body.i_crit_edge
  %hash_ino.0129 = phi i32 [ %hash_ino.0, %if.end23.do.body.i_crit_edge ], [ %hash_ino.0126, %if.end16.do.body.i_crit_edge ]
  %dir_bh.0128 = phi ptr [ %call.i.i108, %if.end23.do.body.i_crit_edge ], [ %call.i.i, %if.end16.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_insert_hash, %if.then4.i97)) #13
          to label %affs_brelse.exit [label %if.then4.i97], !srcloc !54

if.then4.i97:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %dir_bh.0128, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %28) #13
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i97, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %dir_bh.0128) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_insert_hash, %if.then.i98)) #13
          to label %do.end.i102 [label %if.then.i98], !srcloc !54

if.then.i98:                                      ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %hash_ino.0129) #13
  br label %do.end.i102

do.end.i102:                                      ; preds = %if.then.i98, %affs_brelse.exit
  %29 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i100 = getelementptr inbounds %struct.affs_sb_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %s_reserved.i.i100 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_reserved.i.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %hash_ino.0129)
  %cmp.not.i.i101 = icmp sgt i32 %32, %hash_ino.0129
  br i1 %cmp.not.i.i101, label %do.end.i102.cleanup_crit_edge, label %affs_validblock.exit.i104

do.end.i102.cleanup_crit_edge:                    ; preds = %do.end.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_validblock.exit.i104:                        ; preds = %do.end.i102
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %hash_ino.0129)
  %cmp2.i.i103 = icmp sgt i32 %34, %hash_ino.0129
  br i1 %cmp2.i.i103, label %affs_bread.exit111, label %affs_validblock.exit.i104.cleanup_crit_edge

affs_validblock.exit.i104.cleanup_crit_edge:      ; preds = %affs_validblock.exit.i104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_bread.exit111:                               ; preds = %affs_validblock.exit.i104
  %conv.i105 = sext i32 %hash_ino.0129 to i64
  %35 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i.i, align 4
  %37 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize, align 16
  %call.i.i108 = tail call ptr @__bread_gfp(ptr noundef %36, i64 noundef %conv.i105, i32 noundef %38, i32 noundef 8) #13
  %tobool21.not = icmp eq ptr %call.i.i108, null
  br i1 %tobool21.not, label %affs_bread.exit111.cleanup_crit_edge, label %if.end23

affs_bread.exit111.cleanup_crit_edge:             ; preds = %affs_bread.exit111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %affs_bread.exit111
  %b_data24 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i108, i32 0, i32 5
  %39 = ptrtoint ptr %b_data24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data24, align 4
  %41 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize, align 16
  %add.ptr26 = getelementptr i8, ptr %40, i32 -200
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 %42
  %hash_chain = getelementptr inbounds %struct.affs_tail, ptr %add.ptr27, i32 0, i32 12
  %43 = ptrtoint ptr %hash_chain to i32
  call void @__asan_load4_noabort(i32 %43)
  %hash_ino.0 = load i32, ptr %hash_chain, align 4
  %tobool19.not = icmp eq i32 %hash_ino.0, 0
  br i1 %tobool19.not, label %if.end23.while.end_crit_edge, label %if.end23.do.body.i_crit_edge

if.end23.do.body.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %if.end16.while.end_crit_edge
  %dir_bh.0.lcssa = phi ptr [ %call.i.i, %if.end16.while.end_crit_edge ], [ %call.i.i108, %if.end23.while.end_crit_edge ]
  %44 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino12, align 8
  %46 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_data, align 4
  %48 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_blocksize, align 16
  %add.ptr31 = getelementptr i8, ptr %47, i32 %49
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 -200
  %parent = getelementptr inbounds %struct.affs_tail, ptr %add.ptr32, i32 0, i32 13
  %50 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %45, ptr %parent, align 4
  %51 = load ptr, ptr %b_data, align 4
  %52 = load i32, ptr %s_blocksize, align 16
  %add.ptr35 = getelementptr i8, ptr %51, i32 %52
  %add.ptr36 = getelementptr i8, ptr %add.ptr35, i32 -200
  %hash_chain37 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr36, i32 0, i32 12
  %53 = ptrtoint ptr %hash_chain37 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %hash_chain37, align 4
  %54 = load i32, ptr %s_blocksize, align 16
  %55 = load ptr, ptr %b_data, align 4
  %add.ptr.i = getelementptr i32, ptr %55, i32 5
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp7.not.i = icmp ult i32 %54, 4
  br i1 %cmp7.not.i, label %while.end.affs_fix_checksum.exit_crit_edge, label %for.body.preheader.i

while.end.affs_fix_checksum.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_fix_checksum.exit

for.body.preheader.i:                             ; preds = %while.end
  %div6.i = lshr i32 %54, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %checksum.010.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %ptr.09.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %55, %for.body.preheader.i ]
  %cnt.08.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %div6.i, %for.body.preheader.i ]
  %57 = ptrtoint ptr %ptr.09.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptr.09.i, align 4
  %add.i = add i32 %58, %checksum.010.i
  %incdec.ptr.i = getelementptr i32, ptr %ptr.09.i, i32 1
  %dec.i = add nsw i32 %cnt.08.i, -1
  %cmp.i = icmp ugt i32 %cnt.08.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.affs_fix_checksum.exit_crit_edge

for.body.i.affs_fix_checksum.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_fix_checksum.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

affs_fix_checksum.exit:                           ; preds = %for.body.i.affs_fix_checksum.exit_crit_edge, %while.end.affs_fix_checksum.exit_crit_edge
  %checksum.0.lcssa.i = phi i32 [ 0, %while.end.affs_fix_checksum.exit_crit_edge ], [ %add.i, %for.body.i.affs_fix_checksum.exit_crit_edge ]
  %sub.i = sub i32 0, %checksum.0.lcssa.i
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.i, ptr %add.ptr.i, align 4
  %60 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_ino12, align 8
  %conv39 = zext i32 %61 to i64
  %b_blocknr40 = getelementptr inbounds %struct.buffer_head, ptr %dir_bh.0.lcssa, i32 0, i32 3
  %62 = ptrtoint ptr %b_blocknr40 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %b_blocknr40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %conv39)
  %cmp = icmp eq i64 %63, %conv39
  %b_data43 = getelementptr inbounds %struct.buffer_head, ptr %dir_bh.0.lcssa, i32 0, i32 5
  %64 = ptrtoint ptr %b_data43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_data43, align 4
  br i1 %cmp, label %if.then42, label %if.else

if.then42:                                        ; preds = %affs_fix_checksum.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx45 = getelementptr %struct.affs_head, ptr %65, i32 0, i32 6, i32 %call
  br label %do.body.i115

if.else:                                          ; preds = %affs_fix_checksum.exit
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_blocksize, align 16
  %add.ptr48 = getelementptr i8, ptr %65, i32 %67
  %add.ptr49 = getelementptr i8, ptr %add.ptr48, i32 -200
  %hash_chain50 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr49, i32 0, i32 12
  br label %do.body.i115

do.body.i115:                                     ; preds = %if.else, %if.then42
  %arrayidx45.sink = phi ptr [ %arrayidx45, %if.then42 ], [ %hash_chain50, %if.else ]
  %68 = ptrtoint ptr %arrayidx45.sink to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv, ptr %arrayidx45.sink, align 4
  %b_data.i112 = getelementptr inbounds %struct.buffer_head, ptr %dir_bh.0.lcssa, i32 0, i32 5
  %69 = ptrtoint ptr %b_data.i112 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_data.i112, align 4
  %arrayidx.i = getelementptr i32, ptr %70, i32 5
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  %sub.i113 = sub i32 %72, %conv
  store i32 %sub.i113, ptr %arrayidx.i, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %dir_bh.0.lcssa, ptr noundef %dir) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_insert_hash, %if.then4.i117)) #13
          to label %affs_brelse.exit119 [label %if.then4.i117], !srcloc !54

if.then4.i117:                                    ; preds = %do.body.i115
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %b_blocknr40 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %b_blocknr40, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %74) #13
  br label %affs_brelse.exit119

affs_brelse.exit119:                              ; preds = %if.then4.i117, %do.body.i115
  tail call void @__brelse(ptr noundef nonnull %dir_bh.0.lcssa) #13
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp52) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp52, ptr noundef %dir) #13
  %75 = call ptr @memcpy(ptr %i_ctime, ptr %tmp52, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp52) #13
  %76 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #13
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %affs_brelse.exit119
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %affs_brelse.exit119 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %77 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %77, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #13
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #13
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !56

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #13
  br label %cleanup

cleanup:                                          ; preds = %inode_inc_iversion.exit, %affs_bread.exit111.cleanup_crit_edge, %affs_validblock.exit.i104.cleanup_crit_edge, %do.end.i102.cleanup_crit_edge, %affs_bread.exit.cleanup_crit_edge, %affs_validblock.exit.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %inode_inc_iversion.exit ], [ -5, %affs_bread.exit.cleanup_crit_edge ], [ -5, %affs_validblock.exit.i.cleanup_crit_edge ], [ -5, %do.end.i.cleanup_crit_edge ], [ -5, %affs_bread.exit111.cleanup_crit_edge ], [ -5, %affs_validblock.exit.i104.cleanup_crit_edge ], [ -5, %do.end.i102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_hash_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_fix_checksum(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %bh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 5
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp7.not = icmp ult i32 %1, 4
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div6 = lshr i32 %1, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %checksum.010 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ptr.09 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %cnt.08 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %div6, %for.body.preheader ]
  %5 = ptrtoint ptr %ptr.09 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr.09, align 4
  %add = add i32 %6, %checksum.010
  %incdec.ptr = getelementptr i32, ptr %ptr.09, i32 1
  %dec = add nsw i32 %cnt.08, -1
  %cmp = icmp ugt i32 %cnt.08, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %checksum.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub = sub i32 0, %checksum.0.lcssa
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_remove_hash(ptr noundef %dir, ptr nocapture noundef readonly %rem_bh) local_unnamed_addr #0 align 64 {
entry:
  %tmp56 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %rem_bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %3 to i32
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %rem_bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -200
  %name = getelementptr inbounds %struct.affs_tail, ptr %add.ptr2, i32 0, i32 7
  %add.ptr3 = getelementptr i8, ptr %name, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name, align 4
  %conv9 = zext i8 %9 to i32
  %call = tail call i32 @affs_hash_name(ptr noundef %1, ptr noundef %add.ptr3, i32 noundef %conv9) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_remove_hash.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_hash, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_remove_hash.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %conv, i32 noundef %call) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_ino13 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino13, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_hash, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !54

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %13) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp.not.i.i = icmp sgt i32 %17, %13
  br i1 %cmp.not.i.i, label %do.end.i.cleanup_crit_edge, label %affs_validblock.exit.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_validblock.exit.i:                           ; preds = %do.end.i
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp2.i.i = icmp sgt i32 %19, %13
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.cleanup_crit_edge

affs_validblock.exit.i.cleanup_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %13 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_bdev.i.i, align 4
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %21, i64 noundef %conv.i, i32 noundef %23, i32 noundef 8) #13
  %tobool15.not = icmp eq ptr %call.i.i, null
  br i1 %tobool15.not, label %affs_bread.exit.cleanup_crit_edge, label %if.end17

affs_bread.exit.cleanup_crit_edge:                ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %affs_bread.exit
  %b_data18 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %b_data18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data18, align 4
  %arrayidx19 = getelementptr %struct.affs_head, ptr %25, i32 0, i32 6, i32 %call
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %hash_ino.0134 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_ino.0134)
  %tobool20.not135 = icmp eq i32 %hash_ino.0134, 0
  br i1 %tobool20.not135, label %if.end17.do.body.i119_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  br label %while.body

if.end17.do.body.i119_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i119

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %if.end17.while.body_crit_edge
  %hash_ino.0137 = phi i32 [ %hash_ino.0, %if.end50.while.body_crit_edge ], [ %hash_ino.0134, %if.end17.while.body_crit_edge ]
  %bh.0136 = phi ptr [ %call.i.i114, %if.end50.while.body_crit_edge ], [ %call.i.i, %if.end17.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hash_ino.0137, i32 %conv)
  %cmp = icmp eq i32 %hash_ino.0137, %conv
  br i1 %cmp, label %if.then22, label %do.body.i

if.then22:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data, align 4
  %29 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize, align 16
  %add.ptr25 = getelementptr i8, ptr %28, i32 %30
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 -200
  %hash_chain = getelementptr inbounds %struct.affs_tail, ptr %add.ptr26, i32 0, i32 12
  %31 = ptrtoint ptr %hash_chain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hash_chain, align 4
  %33 = ptrtoint ptr %i_ino13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino13, align 8
  %conv28 = zext i32 %34 to i64
  %b_blocknr29 = getelementptr inbounds %struct.buffer_head, ptr %bh.0136, i32 0, i32 3
  %35 = ptrtoint ptr %b_blocknr29 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %b_blocknr29, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv28)
  %cmp30 = icmp eq i64 %36, %conv28
  %b_data33 = getelementptr inbounds %struct.buffer_head, ptr %bh.0136, i32 0, i32 5
  %37 = ptrtoint ptr %b_data33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data33, align 4
  %add.ptr38 = getelementptr i8, ptr %38, i32 %30
  %add.ptr39 = getelementptr i8, ptr %add.ptr38, i32 -200
  %hash_chain40 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr39, i32 0, i32 12
  %arrayidx35 = getelementptr %struct.affs_head, ptr %38, i32 0, i32 6, i32 %call
  %hash_chain40.sink = select i1 %cmp30, ptr %arrayidx35, ptr %hash_chain40
  %39 = ptrtoint ptr %hash_chain40.sink to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %32, ptr %hash_chain40.sink, align 4
  %sub.neg = sub i32 %conv, %32
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0136, i32 0, i32 5
  %40 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i32, ptr %41, i32 5
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %sub.neg, %43
  store i32 %sub.i, ptr %arrayidx.i, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %bh.0136, ptr noundef %dir) #13
  %44 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data, align 4
  %46 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize, align 16
  %add.ptr44 = getelementptr i8, ptr %45, i32 %47
  %add.ptr45 = getelementptr i8, ptr %add.ptr44, i32 -200
  %parent = getelementptr inbounds %struct.affs_tail, ptr %add.ptr45, i32 0, i32 13
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %parent, align 4
  br label %do.body.i119

do.body.i:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_hash, %if.then4.i103)) #13
          to label %affs_brelse.exit [label %if.then4.i103], !srcloc !54

if.then4.i103:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0136, i32 0, i32 3
  %49 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %50) #13
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i103, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %bh.0136) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_hash, %if.then.i104)) #13
          to label %do.end.i108 [label %if.then.i104], !srcloc !54

if.then.i104:                                     ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %hash_ino.0137) #13
  br label %do.end.i108

do.end.i108:                                      ; preds = %if.then.i104, %affs_brelse.exit
  %51 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i106 = getelementptr inbounds %struct.affs_sb_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %s_reserved.i.i106 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_reserved.i.i106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %hash_ino.0137)
  %cmp.not.i.i107 = icmp sgt i32 %54, %hash_ino.0137
  br i1 %cmp.not.i.i107, label %do.end.i108.cleanup_crit_edge, label %affs_validblock.exit.i110

do.end.i108.cleanup_crit_edge:                    ; preds = %do.end.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_validblock.exit.i110:                        ; preds = %do.end.i108
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %hash_ino.0137)
  %cmp2.i.i109 = icmp sgt i32 %56, %hash_ino.0137
  br i1 %cmp2.i.i109, label %affs_bread.exit117, label %affs_validblock.exit.i110.cleanup_crit_edge

affs_validblock.exit.i110.cleanup_crit_edge:      ; preds = %affs_validblock.exit.i110
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

affs_bread.exit117:                               ; preds = %affs_validblock.exit.i110
  %conv.i111 = sext i32 %hash_ino.0137 to i64
  %57 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_bdev.i.i, align 4
  %59 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_blocksize, align 16
  %call.i.i114 = tail call ptr @__bread_gfp(ptr noundef %58, i64 noundef %conv.i111, i32 noundef %60, i32 noundef 8) #13
  %tobool48.not = icmp eq ptr %call.i.i114, null
  br i1 %tobool48.not, label %affs_bread.exit117.cleanup_crit_edge, label %if.end50

affs_bread.exit117.cleanup_crit_edge:             ; preds = %affs_bread.exit117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %affs_bread.exit117
  %b_data51 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i114, i32 0, i32 5
  %61 = ptrtoint ptr %b_data51 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data51, align 4
  %63 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_blocksize, align 16
  %add.ptr53 = getelementptr i8, ptr %62, i32 -200
  %add.ptr54 = getelementptr i8, ptr %add.ptr53, i32 %64
  %hash_chain55 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr54, i32 0, i32 12
  %65 = ptrtoint ptr %hash_chain55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %hash_ino.0 = load i32, ptr %hash_chain55, align 4
  %tobool20.not = icmp eq i32 %hash_ino.0, 0
  br i1 %tobool20.not, label %if.end50.do.body.i119_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end50.do.body.i119_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i119

do.body.i119:                                     ; preds = %if.end50.do.body.i119_crit_edge, %if.then22, %if.end17.do.body.i119_crit_edge
  %bh.0133 = phi ptr [ %bh.0136, %if.then22 ], [ %call.i.i, %if.end17.do.body.i119_crit_edge ], [ %call.i.i114, %if.end50.do.body.i119_crit_edge ]
  %retval1.0 = phi i32 [ 0, %if.then22 ], [ -2, %if.end17.do.body.i119_crit_edge ], [ -2, %if.end50.do.body.i119_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_hash, %if.then4.i121)) #13
          to label %affs_brelse.exit123 [label %if.then4.i121], !srcloc !54

if.then4.i121:                                    ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i120 = getelementptr inbounds %struct.buffer_head, ptr %bh.0133, i32 0, i32 3
  %66 = ptrtoint ptr %b_blocknr.i120 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %b_blocknr.i120, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %67) #13
  br label %affs_brelse.exit123

affs_brelse.exit123:                              ; preds = %if.then4.i121, %do.body.i119
  tail call void @__brelse(ptr noundef nonnull %bh.0133) #13
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp56) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp56, ptr noundef %dir) #13
  %68 = call ptr @memcpy(ptr %i_ctime, ptr %tmp56, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp56) #13
  %69 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #13
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %affs_brelse.exit123
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %affs_brelse.exit123 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %70 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %70, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #13
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #13
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !56

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #13
  br label %cleanup

cleanup:                                          ; preds = %inode_inc_iversion.exit, %affs_bread.exit117.cleanup_crit_edge, %affs_validblock.exit.i110.cleanup_crit_edge, %do.end.i108.cleanup_crit_edge, %affs_bread.exit.cleanup_crit_edge, %affs_validblock.exit.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %inode_inc_iversion.exit ], [ -5, %affs_bread.exit.cleanup_crit_edge ], [ -5, %affs_validblock.exit.i.cleanup_crit_edge ], [ -5, %do.end.i.cleanup_crit_edge ], [ -5, %affs_bread.exit117.cleanup_crit_edge ], [ -5, %affs_validblock.exit.i110.cleanup_crit_edge ], [ -5, %do.end.i108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_remove_header(ptr nocapture noundef readonly %dentry) local_unnamed_addr #0 align 64 {
entry:
  %tmp25 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %d_inode.i53 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i53, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.affs_brelse.exit_crit_edge, label %do.body

entry.affs_brelse.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_remove_header.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_header, %if.then7)) #13
          to label %do.end [label %if.then7], !srcloc !54

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_remove_header.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %9) #13
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata, align 4
  %12 = ptrtoint ptr %11 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_header, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !54

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %12) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp.not.i.i = icmp sgt i32 %16, %12
  br i1 %cmp.not.i.i, label %do.end.i.affs_brelse.exit_crit_edge, label %affs_validblock.exit.i

do.end.i.affs_brelse.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit

affs_validblock.exit.i:                           ; preds = %do.end.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %cmp2.i.i = icmp sgt i32 %18, %12
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.affs_brelse.exit_crit_edge

affs_validblock.exit.i.affs_brelse.exit_crit_edge: ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %12 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %19 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %20, i64 noundef %conv.i, i32 noundef %22, i32 noundef 8) #13
  %tobool10.not = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not, label %affs_bread.exit.affs_brelse.exit_crit_edge, label %if.end12

affs_bread.exit.affs_brelse.exit_crit_edge:       ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit

if.end12:                                         ; preds = %affs_bread.exit
  %i_link_lock.i = getelementptr i8, ptr %7, i32 -244
  tail call void @mutex_lock_nested(ptr noundef %i_link_lock.i, i32 noundef 0) #13
  %i_ext_lock.i = getelementptr i8, ptr %3, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #13
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %25 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 -200
  %stype = getelementptr inbounds %struct.affs_tail, ptr %add.ptr13, i32 0, i32 15
  %27 = ptrtoint ptr %stype to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cond = icmp eq i32 %28, 2
  br i1 %cond, label %sw.bb, label %if.end12.sw.epilog_crit_edge

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  %i_ext_lock.i55 = getelementptr i8, ptr %7, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i55, i32 noundef 1) #13
  %call14 = tail call fastcc i32 @affs_empty_dir(ptr noundef nonnull %7)
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.done_unlock_crit_edge

sw.bb.done_unlock_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_unlock

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge
  %call18 = tail call i32 @affs_remove_hash(ptr noundef %3, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %sw.epilog.done_unlock_crit_edge

sw.epilog.done_unlock_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %done_unlock

if.end21:                                         ; preds = %sw.epilog
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i, ptr noundef nonnull %7) #13
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #13
  %29 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp ugt i32 %31, 1
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call fastcc i32 @affs_remove_link(ptr noundef %dentry)
  br label %if.end24

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clear_nlink(ptr noundef nonnull %7) #13
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  %retval1.0 = phi i32 [ %call23, %if.then22 ], [ 0, %if.else ]
  tail call void @mutex_unlock(ptr noundef %i_link_lock.i) #13
  %i_ctime = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp25) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp25, ptr noundef nonnull %7) #13
  %32 = call ptr @memcpy(ptr %i_ctime, ptr %tmp25, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp25) #13
  call void @__mark_inode_dirty(ptr noundef nonnull %7, i32 noundef 7) #13
  br label %do.body.i

do.body.i:                                        ; preds = %done_unlock, %if.end24
  %retval1.1 = phi i32 [ %retval1.2, %done_unlock ], [ %retval1.0, %if.end24 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_header, %if.then4.i59)) #13
          to label %if.then.i.i [label %if.then4.i59], !srcloc !54

if.then4.i59:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %b_blocknr.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %34) #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i59, %do.body.i
  call void @__brelse(ptr noundef nonnull %call.i.i) #13
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %affs_bread.exit.affs_brelse.exit_crit_edge, %affs_validblock.exit.i.affs_brelse.exit_crit_edge, %do.end.i.affs_brelse.exit_crit_edge, %entry.affs_brelse.exit_crit_edge
  %retval1.170 = phi i32 [ %retval1.1, %if.then.i.i ], [ -2, %entry.affs_brelse.exit_crit_edge ], [ -5, %affs_bread.exit.affs_brelse.exit_crit_edge ], [ -5, %affs_validblock.exit.i.affs_brelse.exit_crit_edge ], [ -5, %do.end.i.affs_brelse.exit_crit_edge ]
  ret i32 %retval1.170

done_unlock:                                      ; preds = %sw.epilog.done_unlock_crit_edge, %sw.bb.done_unlock_crit_edge
  %retval1.2 = phi i32 [ %call14, %sw.bb.done_unlock_crit_edge ], [ %call18, %sw.epilog.done_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #13
  tail call void @mutex_unlock(ptr noundef %i_link_lock.i) #13
  br label %do.body.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @affs_empty_dir(ptr nocapture noundef readonly %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_empty_dir, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !54

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.not.i.i = icmp sgt i32 %7, %3
  br i1 %cmp.not.i.i, label %do.end.i.done_crit_edge, label %affs_validblock.exit.i

do.end.i.done_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

affs_validblock.exit.i:                           ; preds = %do.end.i
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i.i = icmp sgt i32 %9, %3
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.done_crit_edge

affs_validblock.exit.i.done_crit_edge:            ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %3 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %conv.i, i32 noundef %13, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %affs_bread.exit.done_crit_edge, label %if.end

affs_bread.exit.done_crit_edge:                   ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end:                                           ; preds = %affs_bread.exit
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_hashsize, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %size.0.in = phi i32 [ %17, %if.end ], [ %size.0, %for.body.for.cond_crit_edge ]
  %size.0 = add i32 %size.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %size.0)
  %cmp = icmp sgt i32 %size.0, -1
  br i1 %cmp, label %for.body, label %for.cond.do.body.i_crit_edge

for.cond.do.body.i_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body:                                         ; preds = %for.cond
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr %struct.affs_head, ptr %19, i32 0, i32 6, i32 %size.0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %tobool3.not = icmp eq i32 %21, 0
  br i1 %tobool3.not, label %for.body.for.cond_crit_edge, label %for.body.do.body.i_crit_edge

for.body.do.body.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

do.body.i:                                        ; preds = %for.body.do.body.i_crit_edge, %for.cond.do.body.i_crit_edge
  %retval1.0 = phi i32 [ -39, %for.body.do.body.i_crit_edge ], [ 0, %for.cond.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_empty_dir, %if.then4.i12)) #13
          to label %affs_brelse.exit [label %if.then4.i12], !srcloc !54

if.then4.i12:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %23) #13
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i12, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #13
  br label %done

done:                                             ; preds = %affs_brelse.exit, %affs_bread.exit.done_crit_edge, %affs_validblock.exit.i.done_crit_edge, %do.end.i.done_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %affs_brelse.exit ], [ -5, %affs_bread.exit.done_crit_edge ], [ -5, %affs_validblock.exit.i.done_crit_edge ], [ -5, %do.end.i.done_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @affs_remove_link(ptr nocapture noundef readonly %dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_remove_link.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_remove_link.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_ino5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !54

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %7) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i.i = icmp sgt i32 %11, %7
  br i1 %cmp.not.i.i, label %do.end.i.affs_brelse.exit214_crit_edge, label %affs_validblock.exit.i

do.end.i.affs_brelse.exit214_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit214

affs_validblock.exit.i:                           ; preds = %do.end.i
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp2.i.i = icmp sgt i32 %13, %7
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.affs_brelse.exit214_crit_edge

affs_validblock.exit.i.affs_brelse.exit214_crit_edge: ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit214

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %7 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv.i, i32 noundef %17, i32 noundef 8) #13
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %affs_bread.exit.affs_brelse.exit214_crit_edge, label %if.end9

affs_bread.exit.affs_brelse.exit214_crit_edge:    ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit214

if.end9:                                          ; preds = %affs_bread.exit
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %18 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_fsdata, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp = icmp eq i32 %22, %20
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %25 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 -200
  %link_chain = getelementptr inbounds %struct.affs_tail, ptr %add.ptr12, i32 0, i32 10
  %27 = ptrtoint ptr %link_chain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_chain, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then.i154)) #13
          to label %do.end.i158 [label %if.then.i154], !srcloc !54

if.then.i154:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %28) #13
  br label %do.end.i158

do.end.i158:                                      ; preds = %if.then.i154, %if.then11
  %29 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i156 = getelementptr inbounds %struct.affs_sb_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %s_reserved.i.i156 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_reserved.i.i156, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp.not.i.i157 = icmp sgt i32 %32, %28
  br i1 %cmp.not.i.i157, label %do.end.i158.do.body.i210_crit_edge, label %affs_validblock.exit.i160

do.end.i158.do.body.i210_crit_edge:               ; preds = %do.end.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i210

affs_validblock.exit.i160:                        ; preds = %do.end.i158
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %28)
  %cmp2.i.i159 = icmp sgt i32 %34, %28
  br i1 %cmp2.i.i159, label %affs_bread.exit167, label %affs_validblock.exit.i160.do.body.i210_crit_edge

affs_validblock.exit.i160.do.body.i210_crit_edge: ; preds = %affs_validblock.exit.i160
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i210

affs_bread.exit167:                               ; preds = %affs_validblock.exit.i160
  %conv.i161 = sext i32 %28 to i64
  %35 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i.i, align 4
  %37 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i164 = tail call ptr @__bread_gfp(ptr noundef %36, i64 noundef %conv.i161, i32 noundef %38, i32 noundef 8) #13
  %tobool14.not = icmp eq ptr %call.i.i164, null
  br i1 %tobool14.not, label %affs_bread.exit167.do.body.i210_crit_edge, label %if.end16

affs_bread.exit167.do.body.i210_crit_edge:        ; preds = %affs_bread.exit167
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i210

if.end16:                                         ; preds = %affs_bread.exit167
  %b_data17 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i164, i32 0, i32 5
  %39 = ptrtoint ptr %b_data17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data17, align 4
  %41 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr19 = getelementptr i8, ptr %40, i32 %42
  %add.ptr20 = getelementptr i8, ptr %add.ptr19, i32 -200
  %parent = getelementptr inbounds %struct.affs_tail, ptr %add.ptr20, i32 0, i32 13
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %parent, align 4
  %call21 = tail call ptr @affs_iget(ptr noundef %3, i32 noundef %44) #13
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %done.thread233, label %if.end25

done.thread233:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %call21 to i32
  br label %do.body.i204

if.end25:                                         ; preds = %if.end16
  %i_ext_lock.i = getelementptr i8, ptr %call21, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #13
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #13
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %tobool.not.i = icmp eq ptr %48, null
  %add.ptr.i = getelementptr i8, ptr %48, i32 -200
  %tobool2.not2730.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not27.i = or i1 %tobool.not.i, %tobool2.not2730.i
  br i1 %tobool2.not27.i, label %if.end25.affs_fix_dcache.exit_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.affs_fix_dcache.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_fix_dcache.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %dentry.028.i = phi ptr [ %add.ptr10.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end25.for.body.i_crit_edge ]
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry.028.i, i32 0, i32 11
  %49 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_fsdata.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %51)
  %cmp.i168 = icmp eq i32 %28, %51
  br i1 %cmp.i168, label %if.then.i169, label %for.inc.i

if.then.i169:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_fsdata.i.le = getelementptr inbounds %struct.dentry, ptr %dentry.028.i, i32 0, i32 11
  %52 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_ino5, align 8
  %54 = inttoptr i32 %53 to ptr
  %55 = ptrtoint ptr %d_fsdata.i.le to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %d_fsdata.i.le, align 4
  br label %affs_fix_dcache.exit

for.inc.i:                                        ; preds = %for.body.i
  %d_u.i = getelementptr inbounds %struct.dentry, ptr %dentry.028.i, i32 0, i32 15
  %56 = ptrtoint ptr %d_u.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_u.i, align 8
  %tobool6.not.i = icmp eq ptr %57, null
  %add.ptr10.i = getelementptr i8, ptr %57, i32 -200
  %tobool2.not32.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not32.i
  br i1 %tobool2.not.i, label %for.inc.i.affs_fix_dcache.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.affs_fix_dcache.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_fix_dcache.exit

affs_fix_dcache.exit:                             ; preds = %for.inc.i.affs_fix_dcache.exit_crit_edge, %if.then.i169, %if.end25.affs_fix_dcache.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #13
  %call26 = tail call i32 @affs_remove_hash(ptr noundef %call21, ptr noundef nonnull %call.i.i164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %affs_fix_dcache.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #13
  br label %done

if.end29:                                         ; preds = %affs_fix_dcache.exit
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i164, ptr noundef %1) #13
  %58 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data, align 4
  %60 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr32 = getelementptr i8, ptr %59, i32 %61
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 -200
  %name = getelementptr inbounds %struct.affs_tail, ptr %add.ptr33, i32 0, i32 7
  %62 = ptrtoint ptr %b_data17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data17, align 4
  %add.ptr36 = getelementptr i8, ptr %63, i32 %61
  %add.ptr37 = getelementptr i8, ptr %add.ptr36, i32 -200
  %name38 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr37, i32 0, i32 7
  %64 = call ptr @memcpy(ptr %name, ptr %name38, i32 32)
  %call40 = tail call i32 @affs_insert_hash(ptr noundef %call21, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #13
  br label %done

if.end43:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i, ptr noundef %1) #13
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #13
  tail call void @iput(ptr noundef %call21) #13
  br label %if.end48

if.else:                                          ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then.i173)) #13
          to label %do.end.i177 [label %if.then.i173], !srcloc !54

if.then.i173:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %20) #13
  br label %do.end.i177

do.end.i177:                                      ; preds = %if.then.i173, %if.else
  %65 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i175 = getelementptr inbounds %struct.affs_sb_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %s_reserved.i.i175 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_reserved.i.i175, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %20)
  %cmp.not.i.i176 = icmp sgt i32 %68, %20
  br i1 %cmp.not.i.i176, label %do.end.i177.do.body.i210_crit_edge, label %affs_validblock.exit.i179

do.end.i177.do.body.i210_crit_edge:               ; preds = %do.end.i177
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i210

affs_validblock.exit.i179:                        ; preds = %do.end.i177
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %20)
  %cmp2.i.i178 = icmp sgt i32 %70, %20
  br i1 %cmp2.i.i178, label %affs_bread.exit186, label %affs_validblock.exit.i179.do.body.i210_crit_edge

affs_validblock.exit.i179.do.body.i210_crit_edge: ; preds = %affs_validblock.exit.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i210

affs_bread.exit186:                               ; preds = %affs_validblock.exit.i179
  %conv.i180 = sext i32 %20 to i64
  %71 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_bdev.i.i, align 4
  %73 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i183 = tail call ptr @__bread_gfp(ptr noundef %72, i64 noundef %conv.i180, i32 noundef %74, i32 noundef 8) #13
  %tobool45.not = icmp eq ptr %call.i.i183, null
  br i1 %tobool45.not, label %affs_bread.exit186.do.body.i210_crit_edge, label %affs_bread.exit186.if.end48_crit_edge

affs_bread.exit186.if.end48_crit_edge:            ; preds = %affs_bread.exit186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

affs_bread.exit186.do.body.i210_crit_edge:        ; preds = %affs_bread.exit186
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i210

if.end48:                                         ; preds = %affs_bread.exit186.if.end48_crit_edge, %if.end43
  %link_bh.0 = phi ptr [ %call.i.i164, %if.end43 ], [ %call.i.i183, %affs_bread.exit186.if.end48_crit_edge ]
  %link_ino.0 = phi i32 [ %28, %if.end43 ], [ %20, %affs_bread.exit186.if.end48_crit_edge ]
  %retval1.0 = phi i32 [ 0, %if.end43 ], [ -5, %affs_bread.exit186.if.end48_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %affs_bread.exit202.while.cond_crit_edge, %if.end48
  %bh.0 = phi ptr [ %call.i.i, %if.end48 ], [ %call.i.i199, %affs_bread.exit202.while.cond_crit_edge ]
  %b_data49 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %75 = ptrtoint ptr %b_data49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_data49, align 4
  %77 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr51 = getelementptr i8, ptr %76, i32 -200
  %add.ptr52 = getelementptr i8, ptr %add.ptr51, i32 %78
  %link_chain53 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr52, i32 0, i32 10
  %79 = ptrtoint ptr %link_chain53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %link_chain53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp54.not = icmp eq i32 %80, 0
  br i1 %cmp54.not, label %while.cond.done_crit_edge, label %while.body

while.cond.done_crit_edge:                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %link_ino.0)
  %cmp55 = icmp eq i32 %80, %link_ino.0
  br i1 %cmp55, label %if.then56, label %if.end79

if.then56:                                        ; preds = %while.body
  %b_data49.le = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %link_chain53.le = getelementptr inbounds %struct.affs_tail, ptr %add.ptr52, i32 0, i32 10
  %b_data57 = getelementptr inbounds %struct.buffer_head, ptr %link_bh.0, i32 0, i32 5
  %81 = ptrtoint ptr %b_data57 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_data57, align 4
  %add.ptr59 = getelementptr i8, ptr %82, i32 %78
  %add.ptr60 = getelementptr i8, ptr %add.ptr59, i32 -200
  %link_chain61 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr60, i32 0, i32 10
  %83 = ptrtoint ptr %link_chain61 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %link_chain61, align 4
  %85 = ptrtoint ptr %link_chain53.le to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %link_chain53.le, align 4
  %sub.neg = sub i32 %link_ino.0, %84
  %86 = ptrtoint ptr %b_data49.le to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b_data49.le, align 4
  %arrayidx.i = getelementptr i32, ptr %87, i32 5
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %sub.neg, %89
  store i32 %sub.i, ptr %arrayidx.i, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %bh.0, ptr noundef %1) #13
  %90 = ptrtoint ptr %b_data49.le to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_data49.le, align 4
  %92 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr69 = getelementptr i8, ptr %91, i32 %93
  %add.ptr70 = getelementptr i8, ptr %add.ptr69, i32 -200
  %stype = getelementptr inbounds %struct.affs_tail, ptr %add.ptr70, i32 0, i32 15
  %94 = ptrtoint ptr %stype to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %stype, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i32 %95, label %sw.default [
    i32 4, label %if.then56.sw.epilog_crit_edge
    i32 -4, label %if.then56.sw.epilog_crit_edge279
  ]

if.then56.sw.epilog_crit_edge279:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then56.sw.epilog_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.then56
  %link_chain75 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr70, i32 0, i32 10
  %97 = ptrtoint ptr %link_chain75 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %link_chain75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool76.not = icmp eq i32 %98, 0
  br i1 %tobool76.not, label %if.then77, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then77:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @set_nlink(ptr noundef %1, i32 noundef 1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then77, %sw.default.sw.epilog_crit_edge, %if.then56.sw.epilog_crit_edge, %if.then56.sw.epilog_crit_edge279
  tail call void @affs_free_block(ptr noundef %3, i32 noundef %link_ino.0) #13
  br label %done

if.end79:                                         ; preds = %while.body
  %tobool.not.i187 = icmp eq ptr %bh.0, null
  br i1 %tobool.not.i187, label %if.end79.affs_brelse.exit_crit_edge, label %do.body.i

if.end79.affs_brelse.exit_crit_edge:              ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then4.i188)) #13
          to label %if.then.i.i [label %if.then4.i188], !srcloc !54

if.then4.i188:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %99 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %100) #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i188, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %bh.0) #13
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %if.end79.affs_brelse.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then.i189)) #13
          to label %do.end.i193 [label %if.then.i189], !srcloc !54

if.then.i189:                                     ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %80) #13
  br label %do.end.i193

do.end.i193:                                      ; preds = %if.then.i189, %affs_brelse.exit
  %101 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i191 = getelementptr inbounds %struct.affs_sb_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %s_reserved.i.i191 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_reserved.i.i191, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %80)
  %cmp.not.i.i192 = icmp sgt i32 %104, %80
  br i1 %cmp.not.i.i192, label %do.end.i193.done_crit_edge, label %affs_validblock.exit.i195

do.end.i193.done_crit_edge:                       ; preds = %do.end.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

affs_validblock.exit.i195:                        ; preds = %do.end.i193
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %102, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %80)
  %cmp2.i.i194 = icmp sgt i32 %106, %80
  br i1 %cmp2.i.i194, label %affs_bread.exit202, label %affs_validblock.exit.i195.done_crit_edge

affs_validblock.exit.i195.done_crit_edge:         ; preds = %affs_validblock.exit.i195
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

affs_bread.exit202:                               ; preds = %affs_validblock.exit.i195
  %conv.i196 = sext i32 %80 to i64
  %107 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_bdev.i.i, align 4
  %109 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i199 = tail call ptr @__bread_gfp(ptr noundef %108, i64 noundef %conv.i196, i32 noundef %110, i32 noundef 8) #13
  %tobool81.not = icmp eq ptr %call.i.i199, null
  br i1 %tobool81.not, label %affs_bread.exit202.done_crit_edge, label %affs_bread.exit202.while.cond_crit_edge

affs_bread.exit202.while.cond_crit_edge:          ; preds = %affs_bread.exit202
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

affs_bread.exit202.done_crit_edge:                ; preds = %affs_bread.exit202
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

done:                                             ; preds = %affs_bread.exit202.done_crit_edge, %affs_validblock.exit.i195.done_crit_edge, %do.end.i193.done_crit_edge, %sw.epilog, %while.cond.done_crit_edge, %if.then42, %if.then28
  %bh.1 = phi ptr [ %call.i.i, %if.then28 ], [ %call.i.i, %if.then42 ], [ %bh.0, %sw.epilog ], [ null, %do.end.i193.done_crit_edge ], [ null, %affs_validblock.exit.i195.done_crit_edge ], [ %bh.0, %while.cond.done_crit_edge ], [ null, %affs_bread.exit202.done_crit_edge ]
  %link_bh.1 = phi ptr [ %call.i.i164, %if.then28 ], [ %call.i.i164, %if.then42 ], [ %link_bh.0, %sw.epilog ], [ %link_bh.0, %affs_bread.exit202.done_crit_edge ], [ %link_bh.0, %while.cond.done_crit_edge ], [ %link_bh.0, %affs_validblock.exit.i195.done_crit_edge ], [ %link_bh.0, %do.end.i193.done_crit_edge ]
  %retval1.1 = phi i32 [ %call26, %if.then28 ], [ %call40, %if.then42 ], [ 0, %sw.epilog ], [ %retval1.0, %do.end.i193.done_crit_edge ], [ %retval1.0, %affs_validblock.exit.i195.done_crit_edge ], [ -2, %while.cond.done_crit_edge ], [ %retval1.0, %affs_bread.exit202.done_crit_edge ]
  %tobool.not.i203 = icmp eq ptr %link_bh.1, null
  br i1 %tobool.not.i203, label %done.affs_brelse.exit208_crit_edge, label %done.do.body.i204_crit_edge

done.do.body.i204_crit_edge:                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i204

done.affs_brelse.exit208_crit_edge:               ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit208

do.body.i204:                                     ; preds = %done.do.body.i204_crit_edge, %done.thread233
  %retval1.1240 = phi i32 [ %45, %done.thread233 ], [ %retval1.1, %done.do.body.i204_crit_edge ]
  %link_bh.1239 = phi ptr [ %call.i.i164, %done.thread233 ], [ %link_bh.1, %done.do.body.i204_crit_edge ]
  %bh.1238 = phi ptr [ %call.i.i, %done.thread233 ], [ %bh.1, %done.do.body.i204_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then4.i206)) #13
          to label %if.then.i.i207 [label %if.then4.i206], !srcloc !54

if.then4.i206:                                    ; preds = %do.body.i204
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i205 = getelementptr inbounds %struct.buffer_head, ptr %link_bh.1239, i32 0, i32 3
  %111 = ptrtoint ptr %b_blocknr.i205 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %b_blocknr.i205, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %112) #13
  br label %if.then.i.i207

if.then.i.i207:                                   ; preds = %if.then4.i206, %do.body.i204
  tail call void @__brelse(ptr noundef nonnull %link_bh.1239) #13
  br label %affs_brelse.exit208

affs_brelse.exit208:                              ; preds = %if.then.i.i207, %done.affs_brelse.exit208_crit_edge
  %retval1.1232 = phi i32 [ %retval1.1, %done.affs_brelse.exit208_crit_edge ], [ %retval1.1240, %if.then.i.i207 ]
  %bh.1229 = phi ptr [ %bh.1, %done.affs_brelse.exit208_crit_edge ], [ %bh.1238, %if.then.i.i207 ]
  %tobool.not.i209 = icmp eq ptr %bh.1229, null
  br i1 %tobool.not.i209, label %affs_brelse.exit208.affs_brelse.exit214_crit_edge, label %affs_brelse.exit208.do.body.i210_crit_edge

affs_brelse.exit208.do.body.i210_crit_edge:       ; preds = %affs_brelse.exit208
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i210

affs_brelse.exit208.affs_brelse.exit214_crit_edge: ; preds = %affs_brelse.exit208
  call void @__sanitizer_cov_trace_pc() #15
  br label %affs_brelse.exit214

do.body.i210:                                     ; preds = %affs_brelse.exit208.do.body.i210_crit_edge, %affs_bread.exit186.do.body.i210_crit_edge, %affs_validblock.exit.i179.do.body.i210_crit_edge, %do.end.i177.do.body.i210_crit_edge, %affs_bread.exit167.do.body.i210_crit_edge, %affs_validblock.exit.i160.do.body.i210_crit_edge, %do.end.i158.do.body.i210_crit_edge
  %bh.1229246 = phi ptr [ %bh.1229, %affs_brelse.exit208.do.body.i210_crit_edge ], [ %call.i.i, %affs_bread.exit186.do.body.i210_crit_edge ], [ %call.i.i, %affs_bread.exit167.do.body.i210_crit_edge ], [ %call.i.i, %affs_validblock.exit.i160.do.body.i210_crit_edge ], [ %call.i.i, %do.end.i158.do.body.i210_crit_edge ], [ %call.i.i, %affs_validblock.exit.i179.do.body.i210_crit_edge ], [ %call.i.i, %do.end.i177.do.body.i210_crit_edge ]
  %retval1.1232244 = phi i32 [ %retval1.1232, %affs_brelse.exit208.do.body.i210_crit_edge ], [ -5, %affs_bread.exit186.do.body.i210_crit_edge ], [ -5, %affs_bread.exit167.do.body.i210_crit_edge ], [ -5, %affs_validblock.exit.i160.do.body.i210_crit_edge ], [ -5, %do.end.i158.do.body.i210_crit_edge ], [ -5, %affs_validblock.exit.i179.do.body.i210_crit_edge ], [ -5, %do.end.i177.do.body.i210_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remove_link, %if.then4.i212)) #13
          to label %if.then.i.i213 [label %if.then4.i212], !srcloc !54

if.then4.i212:                                    ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr.i211 = getelementptr inbounds %struct.buffer_head, ptr %bh.1229246, i32 0, i32 3
  %113 = ptrtoint ptr %b_blocknr.i211 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %b_blocknr.i211, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i64 noundef %114) #13
  br label %if.then.i.i213

if.then.i.i213:                                   ; preds = %if.then4.i212, %do.body.i210
  tail call void @__brelse(ptr noundef nonnull %bh.1229246) #13
  br label %affs_brelse.exit214

affs_brelse.exit214:                              ; preds = %if.then.i.i213, %affs_brelse.exit208.affs_brelse.exit214_crit_edge, %affs_bread.exit.affs_brelse.exit214_crit_edge, %affs_validblock.exit.i.affs_brelse.exit214_crit_edge, %do.end.i.affs_brelse.exit214_crit_edge
  %retval1.1232245 = phi i32 [ %retval1.1232, %affs_brelse.exit208.affs_brelse.exit214_crit_edge ], [ %retval1.1232244, %if.then.i.i213 ], [ -5, %affs_bread.exit.affs_brelse.exit214_crit_edge ], [ -5, %affs_validblock.exit.i.affs_brelse.exit214_crit_edge ], [ -5, %do.end.i.affs_brelse.exit214_crit_edge ]
  ret i32 %retval1.1232245
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_checksum_block(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %bh) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp4.not = icmp ult i32 %1, 4
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div3 = lshr i32 %1, 2
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %bsize.07 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %div3, %for.body.preheader ]
  %sum.06 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ptr.05 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %ptr.05, i32 1
  %4 = ptrtoint ptr %ptr.05 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr.05, align 4
  %add = add i32 %5, %sum.06
  %dec = add nsw i32 %bsize.07, -1
  %cmp = icmp ugt i32 %bsize.07, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sum.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_secs_to_datestamp(i64 noundef %secs, ptr nocapture noundef writeonly %ds) local_unnamed_addr #0 align 64 {
entry:
  %rem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem) #13
  %0 = ptrtoint ptr %rem to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rem, align 4, !annotation !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %1 = load i32, ptr @sys_tz, align 4
  %mul = mul i32 %1, 60
  %conv = sext i32 %mul to i64
  %add.neg = add i64 %secs, -252460800
  %sub = sub i64 %add.neg, %conv
  %2 = tail call i64 @llvm.smax.i64(i64 %sub, i64 0)
  %call = call i64 @div_s64_rem(i64 noundef %2, i32 noundef 86400, ptr noundef nonnull %rem) #13
  %conv2 = trunc i64 %call to i32
  %3 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rem, align 4
  %div = sdiv i32 %4, 60
  %mul3.neg = mul nsw i32 %div, -60
  %sub4 = add i32 %mul3.neg, %4
  %5 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %ds, align 4
  %mins = getelementptr inbounds %struct.affs_date, ptr %ds, i32 0, i32 1
  %6 = ptrtoint ptr %mins to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %mins, align 4
  %mul6 = mul i32 %sub4, 50
  %ticks = getelementptr inbounds %struct.affs_date, ptr %ds, i32 0, i32 2
  %7 = ptrtoint ptr %ticks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul6, ptr %ticks, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @affs_prot_to_mode(i32 noundef %prot) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %prot to i16
  %1 = shl i16 %0, 5
  %2 = and i16 %1, 128
  %3 = xor i16 %2, 128
  %and2 = and i32 %prot, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %4 = or i16 %3, 256
  %mode.1 = select i1 %tobool3.not, i16 %4, i16 %3
  %and9 = and i32 %prot, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %5 = or i16 %mode.1, 64
  %mode.2 = select i1 %tobool10.not, i16 %5, i16 %mode.1
  %6 = lshr i16 %0, 6
  %7 = lshr i16 %0, 13
  %8 = and i16 %7, 2
  %9 = and i16 %7, 4
  %10 = and i16 %7, 1
  %11 = and i16 %6, 56
  %12 = or i16 %11, %8
  %13 = or i16 %12, %9
  %14 = or i16 %13, %10
  %15 = or i16 %14, %mode.2
  ret i16 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @affs_mode_to_prot(ptr nocapture noundef %inode) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_protect = getelementptr i8, ptr %inode, i32 -16
  %0 = ptrtoint ptr %i_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_protect, align 8
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %and = and i32 %1, -65296
  %conv = zext i16 %3 to i32
  %and1 = lshr i32 %conv, 5
  %4 = and i32 %and1, 2
  %5 = or i32 %4, %and
  %6 = and i32 %and1, 8
  %7 = or i32 %5, %6
  %8 = and i32 %and1, 4
  %9 = or i32 %7, %8
  %and15 = shl nuw nsw i32 %conv, 6
  %10 = and i32 %and15, 512
  %11 = or i32 %9, %10
  %12 = and i32 %and15, 2048
  %13 = or i32 %11, %12
  %14 = and i32 %and15, 1024
  %15 = or i32 %13, %14
  %16 = xor i32 %15, 14
  %and33 = and i32 %conv, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %or36 = or i32 %16, 256
  %prot.6 = select i1 %tobool34.not, i32 %16, i32 %or36
  %and39 = shl nuw nsw i32 %conv, 13
  %17 = and i32 %and39, 57344
  %18 = or i32 %17, %prot.6
  %and57 = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %or60 = or i32 %18, 4096
  %prot.10 = select i1 %tobool58.not, i32 %18, i32 %or60
  %19 = ptrtoint ptr %i_protect to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %prot.10, ptr %i_protect, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_error(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #13
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #13
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !57
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end5, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %s_flags.i, align 4
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_warning(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #13
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #13
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !57
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #16
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @affs_nofilenametruncate(ptr nocapture noundef readonly %dentry) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_check_name(ptr nocapture noundef readonly %name, i32 noundef %len, i1 noundef zeroext %notruncate) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %len)
  %cmp = icmp ult i32 %len, 31
  %notruncate.not = xor i1 %notruncate, true
  %brmerge = or i1 %cmp, %notruncate.not
  %len.mux = select i1 %cmp, i32 %len, i32 30
  br i1 %brmerge, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.mux)
  %cmp333.not = icmp eq i32 %len.mux, 0
  br i1 %cmp333.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %len.mux
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %name, i32 %i.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp4 = icmp ult i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %1)
  %cmp8 = icmp eq i8 %1, 58
  %or.cond = or i1 %cmp4, %cmp8
  %2 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %2)
  %3 = icmp ult i8 %2, 33
  %or.cond32 = or i1 %or.cond, %3
  br i1 %or.cond32, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @affs_copy_name(ptr nocapture noundef writeonly %bstr, ptr nocapture noundef readonly %dentry) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 30)
  %conv = trunc i32 %2 to i8
  %incdec.ptr = getelementptr i8, ptr %bstr, i32 1
  %3 = ptrtoint ptr %bstr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %bstr, align 1
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %6 = call ptr @memcpy(ptr %incdec.ptr, ptr %5, i32 %2)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @affs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_free_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/affs/amigaffs.c", i32 36, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @affs_insert_hash.__UNIQUE_ID_ddebug239, !1, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/affs/amigaffs.c", i32 86, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @affs_remove_hash.__UNIQUE_ID_ddebug240, !8, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/affs/amigaffs.c", i32 282, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @affs_remove_header.__UNIQUE_ID_ddebug242, !13, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/affs/amigaffs.c", i32 481, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @affs_error._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @affs_error._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/affs/amigaffs.c", i32 483, i32 3}
!24 = !{ptr @affs_error._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @affs_error._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/affs/amigaffs.c", i32 497, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @affs_warning._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @affs_warning._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @affs_bread.__UNIQUE_ID_ddebug234, !32, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!36 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug238, !38, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!41 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/affs/amigaffs.c", i32 150, i32 2}
!44 = !{ptr @affs_remove_link.__UNIQUE_ID_ddebug241, !43, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2149039750, i64 2149039755, i64 2149039768, i64 2149039812, i64 2149039846, i64 2149039867}
!55 = !{i64 2152562668}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"auto-init"}
