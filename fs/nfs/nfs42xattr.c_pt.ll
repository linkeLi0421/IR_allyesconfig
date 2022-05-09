; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs42xattr.c_pt.bc'
source_filename = "../fs/nfs/nfs42xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_xattr_bucket = type { %struct.spinlock, %struct.hlist_head, ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.nfs4_xattr_entry = type { %struct.kref, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfs4_xattr_cache = type { %struct.kref, [64 x %struct.nfs4_xattr_bucket], %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.144, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.145, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.146, ptr, %struct.address_space, %struct.list_head, %union.anon.147, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.144 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.145 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.146 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.147 = type { ptr }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_xattr_cache_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cache hit '%s', len %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4_xattr_cache_get\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfs/nfs42xattr.c\00", [44 x i8] zeroinitializer }, align 32
@nfs4_xattr_cache_get._entry_ptr = internal global ptr @nfs4_xattr_cache_get._entry, section ".printk_index", align 4
@nfs4_xattr_cache_get._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: cache miss '%s'\0A\00", [43 x i8] zeroinitializer }, align 32
@nfs4_xattr_cache_get._entry_ptr.5 = internal global ptr @nfs4_xattr_cache_get._entry.3, section ".printk_index", align 4
@nfs4_xattr_cache_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: add '%s' len %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4_xattr_cache_add\00", [43 x i8] zeroinitializer }, align 32
@nfs4_xattr_cache_add._entry_ptr = internal global ptr @nfs4_xattr_cache_add._entry, section ".printk_index", align 4
@nfs4_xattr_cache_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: remove '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs4_xattr_cache_remove\00", [40 x i8] zeroinitializer }, align 32
@nfs4_xattr_cache_remove._entry_ptr = internal global ptr @nfs4_xattr_cache_remove._entry, section ".printk_index", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfs4_xattr_cache_cache\00", [41 x i8] zeroinitializer }, align 32
@nfs4_xattr_cache_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nfs4_xattr_large_entry_lru = internal global { %struct.list_lru, [44 x i8] } zeroinitializer, align 32
@nfs4_xattr_large_entry_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @nfs4_xattr_entry_count, ptr @nfs4_xattr_entry_scan, i32 512, i32 1, i32 4, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@nfs4_xattr_entry_lru = internal global { %struct.list_lru, [44 x i8] } zeroinitializer, align 32
@nfs4_xattr_entry_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @nfs4_xattr_entry_count, ptr @nfs4_xattr_entry_scan, i32 512, i32 2, i32 4, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@nfs4_xattr_cache_lru = internal global { %struct.list_lru, [44 x i8] } zeroinitializer, align 32
@nfs4_xattr_cache_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @nfs4_xattr_cache_count, ptr @nfs4_xattr_cache_scan, i32 0, i32 2, i32 4, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@nfs4_xattr_cache_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cache->listxattr_lock\00", [41 x i8] zeroinitializer }, align 32
@nfs4_xattr_hash_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cache->buckets[i].lock\00", [40 x i8] zeroinitializer }, align 32
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967180]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967180]
@__sancov_gen_cov_switch_values.14 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 624, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 637, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 725, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 999, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"nfs4_xattr_cache_cachep\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 100, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"nfs4_xattr_large_entry_lru\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 98, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant [32 x i8] c"nfs4_xattr_large_entry_shrinker\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 815, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"nfs4_xattr_entry_lru\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 97, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"nfs4_xattr_entry_shrinker\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 807, i32 24 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"nfs4_xattr_cache_lru\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 96, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"nfs4_xattr_cache_shrinker\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 800, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 987, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [23 x i8] c"../fs/nfs/nfs42xattr.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 112, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @nfs4_xattr_cache_add._entry, ptr @nfs4_xattr_cache_add._entry_ptr, ptr @nfs4_xattr_cache_get._entry, ptr @nfs4_xattr_cache_get._entry.3, ptr @nfs4_xattr_cache_get._entry_ptr, ptr @nfs4_xattr_cache_get._entry_ptr.5, ptr @nfs4_xattr_cache_remove._entry, ptr @nfs4_xattr_cache_remove._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nfs4_xattr_cache_cachep, ptr @nfs4_xattr_large_entry_lru, ptr @nfs4_xattr_large_entry_shrinker, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_entry_shrinker, ptr @nfs4_xattr_cache_lru, ptr @nfs4_xattr_cache_shrinker, ptr @nfs4_xattr_cache_init_once.__key, ptr @.str.11, ptr @nfs4_xattr_hash_init.__key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_get._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_large_entry_lru to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_large_entry_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_entry_lru to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_entry_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_lru to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_cache_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_xattr_hash_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_xattr_cache_get(ptr noundef %inode, ptr noundef %name, ptr nocapture noundef writeonly %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %inode, i32 noundef 0)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef nonnull %call, ptr noundef %name) #10
  tail call void @_raw_spin_lock(ptr noundef %call.i) #10
  %hlist.i.i = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hlist.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -4
  %tobool3.not2427.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not24.i.i = or i1 %tobool.not.i.i, %tobool3.not2427.i.i
  br i1 %tobool3.not24.i.i, label %if.end.do.body26_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.do.body26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %entry1.025.i.i = phi ptr [ %add.ptr11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.for.body.i.i_crit_edge ]
  %xattr_name.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %xattr_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xattr_name.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hnode.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %5, null
  %add.ptr11.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool3.not28.i.i = icmp eq ptr %add.ptr11.i.i, null
  %tobool3.not.i.i = or i1 %tobool7.not.i.i, %tobool3.not28.i.i
  br i1 %tobool3.not.i.i, label %for.inc.i.i.do.body26_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.do.body26_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

if.then.i:                                        ; preds = %for.body.i.i
  %xattr_name.i.i.le = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entry1.025.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %entry1.025.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %entry1.025.i.i, ptr nonnull %entry1.025.i.i, i32 1, ptr nonnull elementtype(i32) %entry1.025.i.i) #10, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !52

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.do.body_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !53

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.do.body_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %entry1.025.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %do.body

do.body:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.do.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %call.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %8 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.end, !prof !53

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %xattr_name.i.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xattr_name.i.i.le, align 4
  %xattr_size = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xattr_size, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %10, i32 noundef %12) #14
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp13 = icmp eq i32 %buflen, 0
  %xattr_size15 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %xattr_size15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xattr_size15, align 4
  br i1 %cmp13, label %do.end12.if.end23_crit_edge, label %if.else

do.end12.if.end23_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %buflen)
  %cmp17 = icmp ugt i32 %14, %buflen
  br i1 %cmp17, label %if.else.if.end23_crit_edge, label %if.else19

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xattr_value, align 4
  %17 = call ptr @memcpy(ptr %buf, ptr %16, i32 %14)
  %18 = ptrtoint ptr %xattr_size15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xattr_size15, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.else.if.end23_crit_edge, %do.end12.if.end23_crit_edge
  %ret.0 = phi i32 [ %19, %if.else19 ], [ -34, %if.else.if.end23_crit_edge ], [ %14, %do.end12.if.end23_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entry1.025.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %entry1.025.i.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %entry1.025.i.i, ptr nonnull %entry1.025.i.i, i32 1, ptr nonnull elementtype(i32) %entry1.025.i.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i61 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i61)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i61, 1
  br i1 %cmp.i.i.i.i, label %if.then.i62, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i61)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i61, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end44_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.if.end44_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %entry1.025.i.i, i32 noundef 3) #10
  br label %if.end44

if.then.i62:                                      ; preds = %if.end23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %lru.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %lru.i
  br i1 %cmp.i.not.i, label %if.end25.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %if.end44

if.end25.i:                                       ; preds = %if.then.i62
  %flags.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i71 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i71, label %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge, label %if.then.i.i

if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %xattr_value.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xattr_value.i.i, align 4
  tail call void @kvfree(ptr noundef %26) #10
  br label %nfs4_xattr_free_entry.exit.i

nfs4_xattr_free_entry.exit.i:                     ; preds = %if.then.i.i, %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.025.i.i) #10
  br label %if.end44

do.body26:                                        ; preds = %for.inc.i.i.do.body26_crit_edge, %if.end.do.body26_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %call.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %27 = load i32, ptr @nfs_debug, align 4
  %and27 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.if.end44_crit_edge, label %do.end38, !prof !53

do.body26.if.end44_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %name) #14
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %do.body26.if.end44_crit_edge, %nfs4_xattr_free_entry.exit.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end44_crit_edge
  %ret.1 = phi i32 [ -2, %do.end38 ], [ -2, %do.body26.if.end44_crit_edge ], [ %ret.0, %nfs4_xattr_free_entry.exit.i ], [ %ret.0, %do.end.i ], [ %ret.0, %if.end5.i.i.i.i.if.end44_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ]
  %call.i.i.i.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i64)
  %cmp.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i.i64, 1
  br i1 %cmp.i.i.i.i65, label %if.then.i69, label %if.end5.i.i.i.i67

if.end5.i.i.i.i67:                                ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i64)
  %.not.i.i.i.i66 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i64, 0
  br i1 %.not.i.i.i.i66, label %if.end5.i.i.i.i67.cleanup_crit_edge, label %if.then10.i.i.i.i68, !prof !53

if.end5.i.i.i.i67.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i68:                              ; preds = %if.end5.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i69:                                      ; preds = %if.end44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i69
  %i.035.i = phi i32 [ 0, %if.then.i69 ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 1, i32 %i.035.i, i32 1
  %29 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.not.i, label %if.end24.i, label %do.end.i72, !prof !53

do.end.i72:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24.i:                                       ; preds = %for.body.i
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 1, i32 %i.035.i, i32 3
  %31 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %draining.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 7
  %32 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %listxattr.i, align 4
  %33 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %do.end.i72, %if.then10.i.i.i.i68, %if.end5.i.i.i.i67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %ret.1, %for.end.i ], [ %ret.1, %do.end.i72 ], [ %ret.1, %if.end5.i.i.i.i67.cleanup_crit_edge ], [ %ret.1, %if.then10.i.i.i.i68 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfs4_xattr_get_cache(ptr noundef %inode, i32 noundef %add) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #10
  %cache_validity = getelementptr i8, ptr %inode, i32 -304
  %0 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_validity, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %xattr_cache = getelementptr i8, ptr %inode, i32 784
  %2 = ptrtoint ptr %xattr_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xattr_cache, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.not, label %if.then.if.end.thread_crit_edge, label %if.then.i

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %lru.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 2
  %call1.i = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @nfs4_xattr_cache_lru, ptr noundef %lru.i) #10
  %inode2.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %inode2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inode2.i, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then.i, %if.then.if.end.thread_crit_edge
  %5 = ptrtoint ptr %xattr_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %xattr_cache, align 8
  %6 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_validity, align 8
  %and.i = and i32 %7, -32769
  store i32 %and.i, ptr %cache_validity, align 8
  br label %if.end3

if.end:                                           ; preds = %entry
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then2.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !52

if.then2.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then2
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out.thread_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !53

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out.thread_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then2.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then2.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef %.sink.i.i.i.i) #10
  br label %out.thread

out.thread:                                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  br label %if.end41

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.thread
  %oldcache.0112 = phi ptr [ %3, %if.end.thread ], [ null, %if.end.if.end3_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool5.not.not = icmp eq i32 %add, 0
  br i1 %tobool5.not.not, label %if.end3.out_crit_edge, label %if.then7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then7:                                         ; preds = %if.end3
  %10 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 4197568) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then7.out_crit_edge, label %if.end11

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.then7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %call.i, align 8
  %nent.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nent.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %nent.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %nent.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #10
  %13 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_validity, align 8
  %and14 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end11
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  %call.i.i.i.i.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i69, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i68 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i68, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #10
  br label %out

if.then.i69:                                      ; preds = %if.then16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i69
  %i.035.i = phi i32 [ 0, %if.then.i69 ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 1, i32 %i.035.i, i32 1
  %16 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hlist.i, align 8
  %tobool.not.i.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.not.i, label %if.end24.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end24.i:                                       ; preds = %for.body.i
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 1, i32 %i.035.i, i32 3
  %18 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %draining.i, align 8
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %listxattr.i, align 8
  %20 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %call.i) #10
  br label %out

if.end20:                                         ; preds = %if.end11
  %xattr_cache21 = getelementptr i8, ptr %inode, i32 784
  %21 = ptrtoint ptr %xattr_cache21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xattr_cache21, align 8
  %cmp22.not = icmp eq ptr %22, null
  br i1 %cmp22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call.i.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #10, !srcloc !51
  %asmresult.i.i.i.i.i.i71 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i71)
  %tobool1.not.i.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i71, 0
  br i1 %tobool1.not.i.i.i.i72, label %if.then23.if.end15.sink.split.i.i.i.i77_crit_edge, label %if.else.i.i.i.i75, !prof !52

if.then23.if.end15.sink.split.i.i.i.i77_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i77

if.else.i.i.i.i75:                                ; preds = %if.then23
  %add.i.i.i.i73 = add i32 %asmresult.i.i.i.i.i.i71, 1
  %24 = or i32 %add.i.i.i.i73, %asmresult.i.i.i.i.i.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i74 = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i74, label %if.else.i.i.i.i75.if.then34_crit_edge, label %if.else.i.i.i.i75.if.end15.sink.split.i.i.i.i77_crit_edge, !prof !53

if.else.i.i.i.i75.if.end15.sink.split.i.i.i.i77_crit_edge: ; preds = %if.else.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i77

if.else.i.i.i.i75.if.then34_crit_edge:            ; preds = %if.else.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.end15.sink.split.i.i.i.i77:                    ; preds = %if.else.i.i.i.i75.if.end15.sink.split.i.i.i.i77_crit_edge, %if.then23.if.end15.sink.split.i.i.i.i77_crit_edge
  %.sink.i.i.i.i76 = phi i32 [ 2, %if.then23.if.end15.sink.split.i.i.i.i77_crit_edge ], [ 1, %if.else.i.i.i.i75.if.end15.sink.split.i.i.i.i77_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef %.sink.i.i.i.i76) #10
  br label %if.then34

if.else26:                                        ; preds = %if.end20
  %call.i.i.i.i.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #10, !srcloc !51
  %asmresult.i.i.i.i.i.i80 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i80)
  %tobool1.not.i.i.i.i81 = icmp eq i32 %asmresult.i.i.i.i.i.i80, 0
  br i1 %tobool1.not.i.i.i.i81, label %if.else26.if.end15.sink.split.i.i.i.i86_crit_edge, label %if.else.i.i.i.i84, !prof !52

if.else26.if.end15.sink.split.i.i.i.i86_crit_edge: ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i86

if.else.i.i.i.i84:                                ; preds = %if.else26
  %add.i.i.i.i82 = add i32 %asmresult.i.i.i.i.i.i80, 1
  %26 = or i32 %add.i.i.i.i82, %asmresult.i.i.i.i.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i83 = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i83, label %if.else.i.i.i.i84.if.end31_crit_edge, label %if.else.i.i.i.i84.if.end15.sink.split.i.i.i.i86_crit_edge, !prof !53

if.else.i.i.i.i84.if.end15.sink.split.i.i.i.i86_crit_edge: ; preds = %if.else.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i86

if.else.i.i.i.i84.if.end31_crit_edge:             ; preds = %if.else.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end15.sink.split.i.i.i.i86:                    ; preds = %if.else.i.i.i.i84.if.end15.sink.split.i.i.i.i86_crit_edge, %if.else26.if.end15.sink.split.i.i.i.i86_crit_edge
  %.sink.i.i.i.i85 = phi i32 [ 2, %if.else26.if.end15.sink.split.i.i.i.i86_crit_edge ], [ 1, %if.else.i.i.i.i84.if.end15.sink.split.i.i.i.i86_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef %.sink.i.i.i.i85) #10
  br label %if.end31

if.end31:                                         ; preds = %if.end15.sink.split.i.i.i.i86, %if.else.i.i.i.i84.if.end31_crit_edge
  %27 = ptrtoint ptr %xattr_cache21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %xattr_cache21, align 8
  %inode29 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %inode29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %inode, ptr %inode29, align 4
  %lru = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 2
  %call30 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @nfs4_xattr_cache_lru, ptr noundef %lru) #10
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  br label %out

if.then34:                                        ; preds = %if.end15.sink.split.i.i.i.i77, %if.else.i.i.i.i75.if.then34_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  %call.i.i.i.i.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i89 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i89)
  %cmp.i.i.i.i90 = icmp eq i32 %asmresult.i.i.i.i.i.i.i89, 1
  br i1 %cmp.i.i.i.i90, label %if.then.i94, label %if.end5.i.i.i.i92

if.end5.i.i.i.i92:                                ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i89)
  %.not.i.i.i.i91 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i89, 0
  br i1 %.not.i.i.i.i91, label %if.end5.i.i.i.i92.out_crit_edge, label %if.then10.i.i.i.i93, !prof !53

if.end5.i.i.i.i92.out_crit_edge:                  ; preds = %if.end5.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i93:                              ; preds = %if.end5.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #10
  br label %out

if.then.i94:                                      ; preds = %if.then34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i99

for.body.i99:                                     ; preds = %if.end24.i104.for.body.i99_crit_edge, %if.then.i94
  %i.035.i96 = phi i32 [ 0, %if.then.i94 ], [ %inc.i102, %if.end24.i104.for.body.i99_crit_edge ]
  %hlist.i97 = getelementptr %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 1, i32 %i.035.i96, i32 1
  %30 = ptrtoint ptr %hlist.i97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hlist.i97, align 8
  %tobool.not.i.not.i98 = icmp eq ptr %31, null
  br i1 %tobool.not.i.not.i98, label %if.end24.i104, label %do.end.i100, !prof !53

do.end.i100:                                      ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end24.i104:                                    ; preds = %for.body.i99
  %draining.i101 = getelementptr %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 1, i32 %i.035.i96, i32 3
  %32 = ptrtoint ptr %draining.i101 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %draining.i101, align 8
  %inc.i102 = add nuw nsw i32 %i.035.i96, 1
  %exitcond.not.i103 = icmp eq i32 %inc.i102, 64
  br i1 %exitcond.not.i103, label %for.end.i106, label %if.end24.i104.for.body.i99_crit_edge

if.end24.i104.for.body.i99_crit_edge:             ; preds = %if.end24.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i99

for.end.i106:                                     ; preds = %if.end24.i104
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i105 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %listxattr.i105 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %listxattr.i105, align 8
  %34 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef %call.i) #10
  br label %out

out:                                              ; preds = %for.end.i106, %do.end.i100, %if.then10.i.i.i.i93, %if.end5.i.i.i.i92.out_crit_edge, %if.end31, %for.end.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.then7.out_crit_edge, %if.end3.out_crit_edge
  %cache.1 = phi ptr [ %call.i, %if.end31 ], [ null, %if.end3.out_crit_edge ], [ null, %for.end.i ], [ null, %do.end.i ], [ null, %if.end5.i.i.i.i.out_crit_edge ], [ null, %if.then10.i.i.i.i ], [ %22, %for.end.i106 ], [ %22, %do.end.i100 ], [ %22, %if.end5.i.i.i.i92.out_crit_edge ], [ %22, %if.then10.i.i.i.i93 ], [ null, %if.then7.out_crit_edge ]
  %cmp39.not = icmp eq ptr %oldcache.0112, null
  br i1 %cmp39.not, label %out.if.end41_crit_edge, label %if.then40

out.if.end41_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nfs4_xattr_discard_cache(ptr noundef nonnull %oldcache.0112)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %out.if.end41_crit_edge, %out.thread
  %cache.1126 = phi ptr [ %3, %out.thread ], [ %cache.1, %if.then40 ], [ %cache.1, %out.if.end41_crit_edge ]
  ret ptr %cache.1126
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_xattr_cache_list(ptr noundef %inode, ptr nocapture noundef writeonly %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %inode, i32 noundef 0)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %listxattr_lock = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %listxattr_lock) #10
  %listxattr = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %listxattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listxattr, align 4
  %magicptr = ptrtoint ptr %1 to i32
  %2 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.then5 [
    i32 0, label %if.end.if.end17_crit_edge
    i32 -116, label %if.end.if.end17_crit_edge34
  ]

if.end.if.end17_crit_edge34:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp6 = icmp eq i32 %buflen, 0
  %xattr_size = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xattr_size, align 4
  br i1 %cmp6, label %if.then5.if.end17_crit_edge, label %if.else

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %buflen)
  %cmp9 = icmp ugt i32 %4, %buflen
  br i1 %cmp9, label %if.else.if.end17_crit_edge, label %if.else11

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xattr_value, align 4
  %7 = call ptr @memcpy(ptr %buf, ptr %6, i32 %4)
  %8 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xattr_size, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.else.if.end17_crit_edge, %if.then5.if.end17_crit_edge, %if.end.if.end17_crit_edge, %if.end.if.end17_crit_edge34
  %ret.0 = phi i32 [ %9, %if.else11 ], [ -34, %if.else.if.end17_crit_edge ], [ -2, %if.end.if.end17_crit_edge ], [ -2, %if.end.if.end17_crit_edge34 ], [ %4, %if.then5.if.end17_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %listxattr_lock) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i
  %i.035.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 1, i32 %i.035.i, i32 1
  %11 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.not.i, label %if.end24.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24.i:                                       ; preds = %for.body.i
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 1, i32 %i.035.i, i32 3
  %13 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %draining.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %listxattr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %listxattr, align 4
  %15 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %ret.0, %for.end.i ], [ %ret.0, %do.end.i ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_add(ptr noundef %inode, ptr noundef %name, ptr noundef %buf, ptr noundef %pages, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !53

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %buflen) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %inode, i32 noundef 1)
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %call10 = tail call fastcc ptr @nfs4_xattr_alloc_entry(ptr noundef %name, ptr noundef %buf, ptr noundef %pages, i32 noundef %buflen)
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef nonnull %call7, ptr noundef null)
  %xattr_name.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 4
  %1 = ptrtoint ptr %xattr_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xattr_name.i, align 4
  %call.i = tail call fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef nonnull %call7, ptr noundef %2) #10
  %bucket2.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 7
  %3 = ptrtoint ptr %bucket2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %bucket2.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %call.i) #10
  %draining.i = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %draining.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %draining.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17

if.end.i:                                         ; preds = %if.end13
  %6 = ptrtoint ptr %xattr_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xattr_name.i, align 4
  %hlist.i.i = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hlist.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool3.not2427.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not24.i.i = or i1 %tobool.not.i.i, %tobool3.not2427.i.i
  br i1 %tobool3.not24.i.i, label %if.end.i.if.else.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %entry1.025.i.i = phi ptr [ %add.ptr11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %xattr_name.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %xattr_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xattr_name.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  %hnode.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 1
  br i1 %tobool4.not.i.i, label %if.then5.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %12 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hnode.i, align 4
  %tobool7.not.i.i = icmp eq ptr %13, null
  %add.ptr11.i.i = getelementptr i8, ptr %13, i32 -4
  %tobool3.not28.i.i = icmp eq ptr %add.ptr11.i.i, null
  %tobool3.not.i.i = or i1 %tobool7.not.i.i, %tobool3.not28.i.i
  br i1 %tobool3.not.i.i, label %for.inc.i.i.if.else.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.else.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then5.i:                                       ; preds = %for.body.i.i
  %pprev.i.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.not.i.i, label %if.then5.i.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

if.then5.i.hlist_del_init.exit.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %if.then5.i
  %16 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hnode.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %15, align 4
  %tobool.not.i3.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %15, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %20 = ptrtoint ptr %hnode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %hnode.i, align 4
  %21 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %__hlist_del.exit.i.i, %if.then5.i.hlist_del_init.exit.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i29.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i29.i, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %lru2.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 2
  %call.i30.i = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %cond.i.i, ptr noundef %lru2.i.i) #10
  br label %if.end7.i

if.else.i:                                        ; preds = %for.inc.i.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %nent.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call7, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nent.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nent.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nent.i, ptr %nent.i, i32 1, ptr elementtype(i32) %nent.i) #10, !srcloc !58
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %hlist_del_init.exit.i
  %entry1.0.lcssa.i41.i = phi ptr [ null, %if.else.i ], [ %entry1.025.i.i, %hlist_del_init.exit.i ]
  %hnode8.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 1
  %25 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hlist.i.i, align 4
  %27 = ptrtoint ptr %hnode8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %hnode8.i, align 4
  %tobool.not.i31.i = icmp eq ptr %26, null
  br i1 %tobool.not.i31.i, label %if.end7.i.out.i_crit_edge, label %do.body12.i.i

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.body12.i.i:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hnode8.i, ptr %pprev.i.i, align 4
  br label %out.i

out.i:                                            ; preds = %do.body12.i.i, %if.end7.i.out.i_crit_edge
  %29 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %hnode8.i, ptr %hlist.i.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %hlist.i.i, ptr %pprev34.i.i, align 4
  %flags.i32.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 8
  %31 = ptrtoint ptr %flags.i32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i32.i, align 4
  %and.i33.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and.i33.i, 0
  %cond.i35.i = select i1 %tobool.not.i34.i, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %lru2.i36.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 2
  %call.i37.i = tail call zeroext i1 @list_lru_add(ptr noundef nonnull %cond.i35.i, ptr noundef %lru2.i36.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %call.i) #10
  %cmp11.not.i = icmp eq ptr %entry1.0.lcssa.i41.i, null
  br i1 %cmp11.not.i, label %out.i.out_crit_edge, label %if.then12.i

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then12.i:                                      ; preds = %out.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entry1.0.lcssa.i41.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %entry1.0.lcssa.i41.i, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %entry1.0.lcssa.i41.i, ptr nonnull %entry1.0.lcssa.i41.i, i32 1, ptr nonnull elementtype(i32) %entry1.0.lcssa.i41.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i38.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !53

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %entry1.0.lcssa.i41.i, i32 noundef 3) #10
  br label %out

if.then.i38.i:                                    ; preds = %if.then12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %lru.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.0.lcssa.i41.i, i32 0, i32 2
  %34 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %lru.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %35, %lru.i.i
  br i1 %cmp.i.not.i.i, label %if.end25.i.i, label %do.end.i.i, !prof !53

do.end.i.i:                                       ; preds = %if.then.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end25.i.i:                                     ; preds = %if.then.i38.i
  %flags.i.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.0.lcssa.i41.i, i32 0, i32 8
  %36 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end25.i.i.nfs4_xattr_free_entry.exit.i.i_crit_edge, label %if.then.i.i.i

if.end25.i.i.nfs4_xattr_free_entry.exit.i.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.0.lcssa.i41.i, i32 0, i32 5
  %38 = ptrtoint ptr %xattr_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xattr_value.i.i.i, align 4
  tail call void @kvfree(ptr noundef %39) #10
  br label %nfs4_xattr_free_entry.exit.i.i

nfs4_xattr_free_entry.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end25.i.i.nfs4_xattr_free_entry.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.0.lcssa.i41.i) #10
  br label %out

if.then17:                                        ; preds = %if.end13
  tail call void @_raw_spin_unlock(ptr noundef %call.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call10, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call10, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call10, ptr nonnull %call10, i32 1, ptr nonnull elementtype(i32) %call10) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call10, i32 noundef 3) #10
  br label %out

if.then.i:                                        ; preds = %if.then17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %lru.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 2
  %41 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %42, %lru.i
  br i1 %cmp.i.not.i, label %if.end25.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end25.i:                                       ; preds = %if.then.i
  %flags.i.i38 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 8
  %43 = ptrtoint ptr %flags.i.i38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i38, align 4
  %and.i.i39 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.not.i.i40, label %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge, label %if.then.i.i41

if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i

if.then.i.i41:                                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call10, i32 0, i32 5
  %45 = ptrtoint ptr %xattr_value.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xattr_value.i.i, align 4
  tail call void @kvfree(ptr noundef %46) #10
  br label %nfs4_xattr_free_entry.exit.i

nfs4_xattr_free_entry.exit.i:                     ; preds = %if.then.i.i41, %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call10) #10
  br label %out

out:                                              ; preds = %nfs4_xattr_free_entry.exit.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %nfs4_xattr_free_entry.exit.i.i, %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %out.i.out_crit_edge, %if.end9.out_crit_edge
  %call.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call7, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7, ptr nonnull %call7, i32 1, ptr nonnull elementtype(i32) %call7) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i31 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i31)
  %cmp.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i.i.i31, 1
  br i1 %cmp.i.i.i.i32, label %if.then.i36, label %if.end5.i.i.i.i34

if.end5.i.i.i.i34:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i31)
  %.not.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i33, label %if.end5.i.i.i.i34.cleanup_crit_edge, label %if.then10.i.i.i.i35, !prof !53

if.end5.i.i.i.i34.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i35:                              ; preds = %if.end5.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7, i32 noundef 3) #10
  br label %cleanup

if.then.i36:                                      ; preds = %out
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i36
  %i.035.i = phi i32 [ 0, %if.then.i36 ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %call7, i32 0, i32 1, i32 %i.035.i, i32 1
  %48 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.not.i, label %if.end24.i, label %do.end.i42, !prof !53

do.end.i42:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24.i:                                       ; preds = %for.body.i
  %draining.i43 = getelementptr %struct.nfs4_xattr_cache, ptr %call7, i32 0, i32 1, i32 %i.035.i, i32 3
  %50 = ptrtoint ptr %draining.i43 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %draining.i43, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call7, i32 0, i32 7
  %51 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %listxattr.i, align 4
  %52 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %52, ptr noundef nonnull %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %do.end.i42, %if.then10.i.i.i.i35, %if.end5.i.i.i.i34.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfs4_xattr_alloc_entry(ptr noundef readonly %name, ptr noundef readonly %value, ptr noundef %pages, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %name, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @strlen(ptr noundef nonnull %name) #15
  %add = add i32 %call, 1
  %add2 = add i32 %call, 49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %alloclen.0 = phi i32 [ %add2, %if.then ], [ 48, %entry.if.end_crit_edge ]
  %slen.0 = phi i32 [ %add, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add3 = add i32 %alloclen.0, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add3)
  %cmp4 = icmp ult i32 %add3, 4097
  %not.cmp4 = xor i1 %cmp4, true
  %. = zext i1 %not.cmp4 to i32
  %add3.alloclen.0 = select i1 %cmp4, i32 %add3, i32 %alloclen.0
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3.alloclen.0, i32 noundef 4197568) #16
  %cmp10 = icmp eq ptr %call9.i, null
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  br i1 %cmp.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call9.i, i32 48
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %slen.0)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %namep.0 = phi ptr [ %add.ptr, %if.then14 ], [ null, %if.end12.if.end16_crit_edge ]
  br i1 %cmp4, label %if.else22, label %if.then17

if.then17:                                        ; preds = %if.end16
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %len, i32 noundef 4197568, i32 noundef -1) #16
  %cmp19 = icmp eq ptr %call.i, null
  br i1 %cmp19, label %if.then20, label %if.then17.if.then31_crit_edge

if.then17.if.then31_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

if.else22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp23.not = icmp eq i32 %len, 0
  %add.ptr25 = getelementptr i8, ptr %call9.i, i32 48
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 %slen.0
  %cmp30.not = icmp eq ptr %add.ptr26, null
  %or.cond = select i1 %cmp23.not, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.else22.if.end36_crit_edge, label %if.else22.if.then31_crit_edge

if.else22.if.then31_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.else22.if.end36_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %if.else22.if.then31_crit_edge, %if.then17.if.then31_crit_edge
  %valp.088 = phi ptr [ %call.i, %if.then17.if.then31_crit_edge ], [ %add.ptr26, %if.else22.if.then31_crit_edge ]
  %cmp32.not = icmp eq ptr %value, null
  br i1 %cmp32.not, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %1 = call ptr @memcpy(ptr %valp.088, ptr %value, i32 %len)
  br label %if.end36

if.else34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_copy_from_pages(ptr noundef nonnull %valp.088, ptr noundef %pages, i32 noundef 0, i32 noundef %len) #10
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then33, %if.else22.if.end36_crit_edge
  %valp.084 = phi ptr [ %valp.088, %if.then33 ], [ %valp.088, %if.else34 ], [ null, %if.else22.if.end36_crit_edge ]
  %flags37 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 8
  %2 = ptrtoint ptr %flags37 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %flags37, align 4
  %xattr_value = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 5
  %3 = ptrtoint ptr %xattr_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %valp.084, ptr %xattr_value, align 32
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %call9.i, align 128
  %xattr_name = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 4
  %5 = ptrtoint ptr %xattr_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %namep.0, ptr %xattr_name, align 4
  %xattr_size = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 6
  %6 = ptrtoint ptr %xattr_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %xattr_size, align 4
  %bucket = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 7
  %7 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bucket, align 8
  %lru = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 2
  %8 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lru, ptr %prev.i, align 16
  %dispose = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 3
  %10 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %dispose, ptr %dispose, align 4
  %prev.i78 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dispose, ptr %prev.i78, align 8
  %hnode = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 1
  %12 = ptrtoint ptr %hnode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hnode, align 4
  %pprev.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call9.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then20, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then20 ], [ %call9.i, %if.end36 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_xattr_set_listcache(ptr noundef %cache, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %listxattr_lock = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %listxattr_lock) #10
  %listxattr = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 7
  %0 = ptrtoint ptr %listxattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listxattr, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 -116 to ptr)
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %listxattr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %new, ptr %listxattr, align 4
  %magicptr = ptrtoint ptr %new to i32
  %3 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %magicptr, label %if.then5 [
    i32 0, label %if.end.if.end7_crit_edge
    i32 -116, label %if.end.if.end7_crit_edge29
  ]

if.end.if.end7_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %new, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %lru2.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %new, i32 0, i32 2
  %call.i = tail call zeroext i1 @list_lru_add(ptr noundef nonnull %cond.i, ptr noundef %lru2.i) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge29
  %cmp8.not = icmp eq ptr %1, null
  br i1 %cmp8.not, label %if.end7.out_crit_edge, label %if.then9

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then9:                                         ; preds = %if.end7
  %flags.i23 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i23, align 4
  %and.i24 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  %cond.i26 = select i1 %tobool.not.i25, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %lru2.i27 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %1, i32 0, i32 2
  %call.i28 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %cond.i26, ptr noundef %lru2.i27) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #10
  br label %out

if.then.i:                                        ; preds = %if.then9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %9 = ptrtoint ptr %lru2.i27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %lru2.i27, align 4
  %cmp.i.not.i = icmp eq ptr %10, %lru2.i27
  br i1 %cmp.i.not.i, label %if.end25.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end25.i:                                       ; preds = %if.then.i
  %11 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i23, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge, label %if.then.i.i

if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %xattr_value.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xattr_value.i.i, align 4
  tail call void @kvfree(ptr noundef %14) #10
  br label %nfs4_xattr_free_entry.exit.i

nfs4_xattr_free_entry.exit.i:                     ; preds = %if.then.i.i, %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %out

out:                                              ; preds = %nfs4_xattr_free_entry.exit.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.end7.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 1, %if.end7.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 1, %nfs4_xattr_free_entry.exit.i ], [ 1, %do.end.i ], [ 1, %if.end5.i.i.i.i.out_crit_edge ], [ 1, %if.then10.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %listxattr_lock) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_remove(ptr noundef %inode, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !53

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %inode, i32 noundef 0)
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end8

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %call9 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef nonnull %call6, ptr noundef null)
  %call.i = tail call fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef nonnull %call6, ptr noundef %name) #10
  tail call void @_raw_spin_lock(ptr noundef %call.i) #10
  %hlist.i.i = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hlist.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -4
  %tobool3.not2427.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not24.i.i = or i1 %tobool.not.i.i, %tobool3.not2427.i.i
  br i1 %tobool3.not24.i.i, label %if.end8.if.end8.critedge.i_crit_edge, label %if.end8.for.body.i.i_crit_edge

if.end8.for.body.i.i_crit_edge:                   ; preds = %if.end8
  br label %for.body.i.i

if.end8.if.end8.critedge.i_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.critedge.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end8.for.body.i.i_crit_edge
  %entry1.025.i.i = phi ptr [ %add.ptr11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end8.for.body.i.i_crit_edge ]
  %xattr_name.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %xattr_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xattr_name.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  %hnode.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 1
  br i1 %tobool4.not.i.i, label %if.then.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %5 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hnode.i, align 4
  %tobool7.not.i.i = icmp eq ptr %6, null
  %add.ptr11.i.i = getelementptr i8, ptr %6, i32 -4
  %tobool3.not28.i.i = icmp eq ptr %add.ptr11.i.i, null
  %tobool3.not.i.i = or i1 %tobool7.not.i.i, %tobool3.not28.i.i
  br i1 %tobool3.not.i.i, label %for.inc.i.i.if.end8.critedge.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end8.critedge.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.critedge.i

if.then.i:                                        ; preds = %for.body.i.i
  %pprev.i.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i.i, label %if.then.i.hlist_del_init.exit.i_crit_edge, label %if.then.i.i

if.then.i.hlist_del_init.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %9 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hnode.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i3.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %hnode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %hnode.i, align 4
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hlist_del_init.exit.i

hlist_del_init.exit.i:                            ; preds = %__hlist_del.exit.i.i, %if.then.i.hlist_del_init.exit.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i17.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i17.i, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %lru2.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 2
  %call.i18.i = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %cond.i.i, ptr noundef %lru2.i.i) #10
  %nent.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call6, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nent.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nent.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nent.i, ptr %nent.i, i32 1, ptr elementtype(i32) %nent.i) #10, !srcloc !59
  tail call void @_raw_spin_unlock(ptr noundef %call.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entry1.025.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %entry1.025.i.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %entry1.025.i.i, ptr nonnull %entry1.025.i.i, i32 1, ptr nonnull elementtype(i32) %entry1.025.i.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i19.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %hlist_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nfs4_xattr_hash_remove.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !53

if.end5.i.i.i.i.i.nfs4_xattr_hash_remove.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_hash_remove.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %entry1.025.i.i, i32 noundef 3) #10
  br label %nfs4_xattr_hash_remove.exit

if.then.i19.i:                                    ; preds = %hlist_del_init.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %19 = ptrtoint ptr %lru2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %lru2.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %20, %lru2.i.i
  br i1 %cmp.i.not.i.i, label %if.end25.i.i, label %do.end.i.i, !prof !53

do.end.i.i:                                       ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %nfs4_xattr_hash_remove.exit

if.end25.i.i:                                     ; preds = %if.then.i19.i
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end25.i.i.nfs4_xattr_free_entry.exit.i.i_crit_edge, label %if.then.i.i.i

if.end25.i.i.nfs4_xattr_free_entry.exit.i.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.025.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %xattr_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xattr_value.i.i.i, align 4
  tail call void @kvfree(ptr noundef %24) #10
  br label %nfs4_xattr_free_entry.exit.i.i

nfs4_xattr_free_entry.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end25.i.i.nfs4_xattr_free_entry.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.025.i.i) #10
  br label %nfs4_xattr_hash_remove.exit

if.end8.critedge.i:                               ; preds = %for.inc.i.i.if.end8.critedge.i_crit_edge, %if.end8.if.end8.critedge.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %call.i) #10
  br label %nfs4_xattr_hash_remove.exit

nfs4_xattr_hash_remove.exit:                      ; preds = %if.end8.critedge.i, %nfs4_xattr_free_entry.exit.i.i, %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nfs4_xattr_hash_remove.exit_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call6, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6, ptr nonnull %call6, i32 1, ptr nonnull elementtype(i32) %call6) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i15, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %nfs4_xattr_hash_remove.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call6, i32 noundef 3) #10
  br label %cleanup

if.then.i15:                                      ; preds = %nfs4_xattr_hash_remove.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i15
  %i.035.i = phi i32 [ 0, %if.then.i15 ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %call6, i32 0, i32 1, i32 %i.035.i, i32 1
  %26 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.not.i, label %if.end24.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24.i:                                       ; preds = %for.body.i
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %call6, i32 0, i32 1, i32 %i.035.i, i32 3
  %28 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %draining.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call6, i32 0, i32 7
  %29 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %listxattr.i, align 4
  %30 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_set_list(ptr noundef %inode, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %inode, i32 noundef 1)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @nfs4_xattr_alloc_entry(ptr noundef null, ptr noundef %buf, ptr noundef null, i32 noundef %buflen)
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  %buckets = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 1
  %bucket = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call2, i32 0, i32 7
  %0 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buckets, ptr %bucket, align 4
  %call6 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef nonnull %call, ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then7:                                         ; preds = %if.end5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef 3) #10
  br label %out

if.then.i:                                        ; preds = %if.then7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %lru.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call2, i32 0, i32 2
  %2 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %lru.i
  br i1 %cmp.i.not.i, label %if.end25.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end25.i:                                       ; preds = %if.then.i
  %flags.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call2, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge, label %if.then.i.i

if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %call2, i32 0, i32 5
  %6 = ptrtoint ptr %xattr_value.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xattr_value.i.i, align 4
  tail call void @kvfree(ptr noundef %7) #10
  br label %nfs4_xattr_free_entry.exit.i

nfs4_xattr_free_entry.exit.i:                     ; preds = %if.then.i.i, %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call2) #10
  br label %out

out:                                              ; preds = %nfs4_xattr_free_entry.exit.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %call.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i21, label %if.then.i25, label %if.end5.i.i.i.i23

if.end5.i.i.i.i23:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i20)
  %.not.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i22, label %if.end5.i.i.i.i23.cleanup_crit_edge, label %if.then10.i.i.i.i24, !prof !53

if.end5.i.i.i.i23.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i24:                              ; preds = %if.end5.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i25:                                      ; preds = %out
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i25
  %i.035.i = phi i32 [ 0, %if.then.i25 ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 1, i32 %i.035.i, i32 1
  %9 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i, label %if.end24.i, label %do.end.i27, !prof !53

do.end.i27:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24.i:                                       ; preds = %for.body.i
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 1, i32 %i.035.i, i32 3
  %11 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %draining.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %listxattr.i, align 4
  %13 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %do.end.i27, %if.then10.i.i.i.i24, %if.end5.i.i.i.i23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_zap(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #10
  %xattr_cache.i = getelementptr i8, ptr %inode, i32 784
  %0 = ptrtoint ptr %xattr_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_cache.i, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end.critedge, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lru.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %1, i32 0, i32 2
  %call1.i = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @nfs4_xattr_cache_lru, ptr noundef %lru.i) #10
  %inode2.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %inode2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %inode2.i, align 4
  %3 = ptrtoint ptr %xattr_cache.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xattr_cache.i, align 8
  %cache_validity.i.c5 = getelementptr i8, ptr %inode, i32 -304
  %4 = ptrtoint ptr %cache_validity.i.c5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_validity.i.c5, align 8
  %and.i.c6 = and i32 %5, -32769
  store i32 %and.i.c6, ptr %cache_validity.i.c5, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  tail call fastcc void @nfs4_xattr_discard_cache(ptr noundef nonnull %1)
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %xattr_cache.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xattr_cache.i, align 8
  %cache_validity.i.c = getelementptr i8, ptr %inode, i32 -304
  %7 = ptrtoint ptr %cache_validity.i.c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cache_validity.i.c, align 8
  %and.i.c = and i32 %8, -32769
  store i32 %and.i.c, ptr %cache_validity.i.c, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfs4_xattr_discard_cache(ptr noundef %cache) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef %cache, ptr noundef nonnull inttoptr (i32 -116 to ptr))
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.057 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 1, i32 %i.057
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #10
  %draining = getelementptr %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 1, i32 %i.057, i32 3
  %0 = ptrtoint ptr %draining to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %draining, align 4
  %hlist = getelementptr %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 1, i32 %i.057, i32 1
  %1 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hlist, align 4
  %tobool.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -4
  %tobool5.not5558 = icmp eq ptr %add.ptr, null
  %tobool5.not55 = or i1 %tobool.not, %tobool5.not5558
  br i1 %tobool5.not55, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %kref_put.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %entry1.056 = phi ptr [ %add.ptr18, %kref_put.exit.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hnode = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.056, i32 0, i32 1
  %3 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hnode, align 4
  %flags.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.056, i32 0, i32 8
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %lru2.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.056, i32 0, i32 2
  %call.i = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %cond.i, ptr noundef %lru2.i) #10
  %pprev.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.056, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i, label %land.rhs.hlist_del_init.exit_crit_edge, label %if.then.i

land.rhs.hlist_del_init.exit_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %land.rhs
  %9 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hnode, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i3.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %13 = ptrtoint ptr %hnode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %hnode, align 4
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %land.rhs.hlist_del_init.exit_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %entry1.056, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %entry1.056, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %entry1.056, ptr nonnull %entry1.056, i32 1, ptr nonnull elementtype(i32) %entry1.056) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i42, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %entry1.056, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i42:                                      ; preds = %hlist_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %16 = ptrtoint ptr %lru2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %lru2.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %lru2.i
  br i1 %cmp.i.not.i, label %if.end25.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %kref_put.exit

if.end25.i:                                       ; preds = %if.then.i42
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge, label %if.then.i.i

if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %entry1.056, i32 0, i32 5
  %20 = ptrtoint ptr %xattr_value.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xattr_value.i.i, align 4
  tail call void @kvfree(ptr noundef %21) #10
  br label %nfs4_xattr_free_entry.exit.i

nfs4_xattr_free_entry.exit.i:                     ; preds = %if.then.i.i, %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.056) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nfs4_xattr_free_entry.exit.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %tobool14.not = icmp eq ptr %4, null
  %add.ptr18 = getelementptr i8, ptr %4, i32 -4
  %tobool5.not59 = icmp eq ptr %add.ptr18, null
  %tobool5.not = or i1 %tobool14.not, %tobool5.not59
  br i1 %tobool5.not, label %kref_put.exit.for.end_crit_edge, label %kref_put.exit.land.rhs_crit_edge

kref_put.exit.land.rhs_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

kref_put.exit.for.end_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %kref_put.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #10
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end24, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end24:                                        ; preds = %for.end
  %nent = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nent, i32 noundef 4) #10
  %22 = ptrtoint ptr %nent to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %nent, align 4
  %call.i.i.i.i.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %cache, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache, ptr %cache, i32 1, ptr elementtype(i32) %cache) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i44 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i44)
  %cmp.i.i.i.i45 = icmp eq i32 %asmresult.i.i.i.i.i.i.i44, 1
  br i1 %cmp.i.i.i.i45, label %if.then.i49, label %if.end5.i.i.i.i47

if.end5.i.i.i.i47:                                ; preds = %for.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i44)
  %.not.i.i.i.i46 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i44, 0
  br i1 %.not.i.i.i.i46, label %if.end5.i.i.i.i47.kref_put.exit50_crit_edge, label %if.then10.i.i.i.i48, !prof !53

if.end5.i.i.i.i47.kref_put.exit50_crit_edge:      ; preds = %if.end5.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit50

if.then10.i.i.i.i48:                              ; preds = %if.end5.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %cache, i32 noundef 3) #10
  br label %kref_put.exit50

if.then.i49:                                      ; preds = %for.end24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i49
  %i.035.i = phi i32 [ 0, %if.then.i49 ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 1, i32 %i.035.i, i32 1
  %24 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i51 = icmp eq ptr %25, null
  br i1 %tobool.not.i.not.i51, label %if.end24.i, label %do.end.i52, !prof !53

do.end.i52:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %kref_put.exit50

if.end24.i:                                       ; preds = %for.body.i
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 1, i32 %i.035.i, i32 3
  %26 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %draining.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 7
  %27 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %listxattr.i, align 4
  %28 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef %cache) #10
  br label %kref_put.exit50

kref_put.exit50:                                  ; preds = %for.end.i, %do.end.i52, %if.then10.i.i.i.i48, %if.end5.i.i.i.i47.kref_put.exit50_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_xattr_cache_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.10, i32 noundef 3660, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @nfs4_xattr_cache_init_once) #10
  store ptr %call, ptr @nfs4_xattr_cache_cachep, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__list_lru_init(ptr noundef nonnull @nfs4_xattr_large_entry_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @nfs4_xattr_large_entry_shrinker) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out4_crit_edge

if.end.out4_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out4

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @__list_lru_init(ptr noundef nonnull @nfs4_xattr_entry_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out3_crit_edge

if.end3.out3_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out3

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @__list_lru_init(ptr noundef nonnull @nfs4_xattr_cache_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out2_crit_edge

if.end7.out2_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @register_shrinker(ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out1_crit_edge

if.end11.out1_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out1

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @register_shrinker(ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @register_shrinker(ptr noundef nonnull @nfs4_xattr_large_entry_shrinker) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  br label %out

out:                                              ; preds = %if.end23, %if.end15.out_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.out_crit_edge ], [ %call20, %if.end23 ]
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  br label %out1

out1:                                             ; preds = %out, %if.end11.out1_crit_edge
  %ret.1 = phi i32 [ %call12, %if.end11.out1_crit_edge ], [ %ret.0, %out ]
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_cache_lru) #10
  br label %out2

out2:                                             ; preds = %out1, %if.end7.out2_crit_edge
  %ret.2 = phi i32 [ %call8, %if.end7.out2_crit_edge ], [ %ret.1, %out1 ]
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_entry_lru) #10
  br label %out3

out3:                                             ; preds = %out2, %if.end3.out3_crit_edge
  %ret.3 = phi i32 [ %call4, %if.end3.out3_crit_edge ], [ %ret.2, %out2 ]
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_large_entry_lru) #10
  br label %out4

out4:                                             ; preds = %out3, %if.end.out4_crit_edge
  %ret.4 = phi i32 [ %call1, %if.end.out4_crit_edge ], [ %ret.3, %out3 ]
  %0 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %out4, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs4_xattr_cache_init_once(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %listxattr_lock = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %listxattr_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @nfs4_xattr_cache_init_once.__key, i16 noundef signext 3) #10
  %nent = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nent, i32 noundef 4) #10
  %0 = ptrtoint ptr %nent to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %nent, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.017.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 1, i32 %i.017.i
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 1, i32 %i.017.i, i32 1
  %1 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %hlist.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @nfs4_xattr_hash_init.__key, i16 noundef signext 3) #10
  %cache5.i = getelementptr %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 1, i32 %i.017.i, i32 2
  %2 = ptrtoint ptr %cache5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %p, ptr %cache5.i, align 4
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 1, i32 %i.017.i, i32 3
  %3 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %draining.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %nfs4_xattr_hash_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

nfs4_xattr_hash_init.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %listxattr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %listxattr, align 4
  %lru = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 2
  %5 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lru, ptr %prev.i, align 4
  %dispose = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dispose, ptr %dispose, align 4
  %prev.i6 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %p, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dispose, ptr %prev.i6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_large_entry_shrinker) #10
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_large_entry_lru) #10
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_entry_lru) #10
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_cache_lru) #10
  %0 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef readnone %cache, ptr nocapture noundef readonly %name) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @strlen(ptr noundef %name) #15
  %add.i = add i32 %call, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp13.i = icmp ugt i32 %call, 12
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.018.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %name, %entry.while.body.i_crit_edge ]
  %c.017.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %call, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %k.018.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.018.i, align 1
  %add2.i = add i32 %1, %a.015.i
  %add.ptr.i = getelementptr i8, ptr %k.018.i, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %3, %b.016.i
  %add.ptr5.i = getelementptr i8, ptr %k.018.i, i32 8
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %5, %c.017.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #10
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #10
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #10
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #10
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #10
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #10
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.014.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.018.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %call, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %name, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %9 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %10 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %11 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %12 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %13 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %14 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %15 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %16 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %17 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %18 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %19 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %20 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %21 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %22 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %23 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %24 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %25 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %26 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %27 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %28 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %29 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %30 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #10
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #10
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #10
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #10
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #10
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = lshr i32 %sub99.i, 18
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = lshr i32 %sub102.i, 8
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  %and = and i32 %c.12.i, 63
  %arrayidx = getelementptr %struct.nfs4_xattr_cache, ptr %cache, i32 0, i32 1, i32 %and
  ret ptr %arrayidx
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_copy_from_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_entry_count(ptr noundef readnone %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %shrink, @nfs4_xattr_large_entry_shrinker
  %cond = select i1 %cmp, ptr @nfs4_xattr_large_entry_lru, ptr @nfs4_xattr_entry_lru
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcg.i, align 4
  %call.i = tail call i32 @list_lru_count_one(ptr noundef nonnull %cond, i32 noundef %1, ptr noundef %3) #10
  %call.i.frozen = freeze i32 %call.i
  %div.i = udiv i32 %call.i.frozen, 100
  %4 = mul i32 %div.i, 100
  %rem1.i.decomposed = sub i32 %call.i.frozen, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_vfs_cache_pressure to i32))
  %5 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %mul.i = mul i32 %5, %div.i
  %mul2.i = mul i32 %5, %rem1.i.decomposed
  %div3.i = udiv i32 %mul2.i, 100
  %add.i = add i32 %div3.i, %mul.i
  ret i32 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_entry_scan(ptr noundef readnone %shrink, ptr noundef %sc) #0 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %cmp = icmp eq ptr %shrink, @nfs4_xattr_large_entry_shrinker
  %cond = select i1 %cmp, ptr @nfs4_xattr_large_entry_lru, ptr @nfs4_xattr_entry_lru
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %5 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = call i32 @list_lru_walk_one(ptr noundef nonnull %cond, i32 noundef %4, ptr noundef %6, ptr noundef nonnull @entry_lru_isolate, ptr noundef nonnull %dispose, ptr noundef %nr_to_scan.i) #10
  %7 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not29 = icmp eq ptr %8, %dispose
  br i1 %cmp.i.not29, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %kref_put.exit17.while.body_crit_edge, %entry.while.body_crit_edge
  %9 = phi ptr [ %33, %kref_put.exit17.while.body_crit_edge ], [ %8, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %9, i32 -20
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %lru.i = getelementptr i8, ptr %9, i32 -8
  %19 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %lru.i
  br i1 %cmp.i.not.i, label %if.end25.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %kref_put.exit

if.end25.i:                                       ; preds = %if.then.i
  %flags.i.i = getelementptr i8, ptr %9, i32 24
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge, label %if.then.i.i

if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i = getelementptr i8, ptr %9, i32 12
  %23 = ptrtoint ptr %xattr_value.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xattr_value.i.i, align 4
  call void @kvfree(ptr noundef %24) #10
  br label %nfs4_xattr_free_entry.exit.i

nfs4_xattr_free_entry.exit.i:                     ; preds = %if.then.i.i, %if.end25.i.nfs4_xattr_free_entry.exit.i_crit_edge
  call void @kfree(ptr noundef %add.ptr) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nfs4_xattr_free_entry.exit.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call.i.i.i.i.i.i10 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i11 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i11)
  %cmp.i.i.i.i12 = icmp eq i32 %asmresult.i.i.i.i.i.i.i11, 1
  br i1 %cmp.i.i.i.i12, label %if.then.i16, label %if.end5.i.i.i.i14

if.end5.i.i.i.i14:                                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i11)
  %.not.i.i.i.i13 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i11, 0
  br i1 %.not.i.i.i.i13, label %if.end5.i.i.i.i14.kref_put.exit17_crit_edge, label %if.then10.i.i.i.i15, !prof !53

if.end5.i.i.i.i14.kref_put.exit17_crit_edge:      ; preds = %if.end5.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit17

if.then10.i.i.i.i15:                              ; preds = %if.end5.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %kref_put.exit17

if.then.i16:                                      ; preds = %kref_put.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %lru.i18 = getelementptr i8, ptr %9, i32 -8
  %26 = ptrtoint ptr %lru.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %lru.i18, align 4
  %cmp.i.not.i19 = icmp eq ptr %27, %lru.i18
  br i1 %cmp.i.not.i19, label %if.end25.i24, label %do.end.i20, !prof !53

do.end.i20:                                       ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %kref_put.exit17

if.end25.i24:                                     ; preds = %if.then.i16
  %flags.i.i21 = getelementptr i8, ptr %9, i32 24
  %28 = ptrtoint ptr %flags.i.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i21, align 4
  %and.i.i22 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end25.i24.nfs4_xattr_free_entry.exit.i27_crit_edge, label %if.then.i.i26

if.end25.i24.nfs4_xattr_free_entry.exit.i27_crit_edge: ; preds = %if.end25.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfs4_xattr_free_entry.exit.i27

if.then.i.i26:                                    ; preds = %if.end25.i24
  call void @__sanitizer_cov_trace_pc() #12
  %xattr_value.i.i25 = getelementptr i8, ptr %9, i32 12
  %30 = ptrtoint ptr %xattr_value.i.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xattr_value.i.i25, align 4
  call void @kvfree(ptr noundef %31) #10
  br label %nfs4_xattr_free_entry.exit.i27

nfs4_xattr_free_entry.exit.i27:                   ; preds = %if.then.i.i26, %if.end25.i24.nfs4_xattr_free_entry.exit.i27_crit_edge
  call void @kfree(ptr noundef %add.ptr) #10
  br label %kref_put.exit17

kref_put.exit17:                                  ; preds = %nfs4_xattr_free_entry.exit.i27, %do.end.i20, %if.then10.i.i.i.i15, %if.end5.i.i.i.i14.kref_put.exit17_crit_edge
  %32 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not = icmp eq ptr %33, %dispose
  br i1 %cmp.i.not, label %kref_put.exit17.while.end_crit_edge, label %kref_put.exit17.while.body_crit_edge

kref_put.exit17.while.body_crit_edge:             ; preds = %kref_put.exit17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

kref_put.exit17.while.end_crit_edge:              ; preds = %kref_put.exit17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %kref_put.exit17.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @entry_lru_isolate(ptr noundef %item, ptr noundef %lru, ptr nocapture noundef readnone %lru_lock, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -12
  %bucket2 = getelementptr i8, ptr %item, i32 28
  %0 = ptrtoint ptr %bucket2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bucket2, align 4
  %cache3 = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cache3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache3, align 4
  %xattr_name = getelementptr i8, ptr %item, i32 16
  %4 = ptrtoint ptr %xattr_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xattr_name, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !52

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !53

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %hnode = getelementptr i8, ptr %item, i32 -8
  %pprev.i.i = getelementptr i8, ptr %item, i32 -4
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i, label %kref_get.exit.hlist_del_init.exit_crit_edge, label %if.then.i

kref_get.exit.hlist_del_init.exit_crit_edge:      ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %kref_get.exit
  %10 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hnode, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %9, align 4
  %tobool.not.i3.i = icmp eq ptr %11, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %14 = ptrtoint ptr %hnode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %hnode, align 4
  %15 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %kref_get.exit.hlist_del_init.exit_crit_edge
  %nent = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nent, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nent, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nent, ptr %nent, i32 1, ptr elementtype(i32) %nent) #10, !srcloc !59
  br label %if.end14

if.else:                                          ; preds = %entry
  %listxattr_lock = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 5
  %call.i32 = tail call i32 @_raw_spin_trylock(ptr noundef %listxattr_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool8.not = icmp eq i32 %call.i32, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %call.i.i.i.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !51
  %asmresult.i.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i34)
  %tobool1.not.i.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i34, 0
  br i1 %tobool1.not.i.i.i.i35, label %if.end10.if.end15.sink.split.i.i.i.i40_crit_edge, label %if.else.i.i.i.i38, !prof !52

if.end10.if.end15.sink.split.i.i.i.i40_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i40

if.else.i.i.i.i38:                                ; preds = %if.end10
  %add.i.i.i.i36 = add i32 %asmresult.i.i.i.i.i.i34, 1
  %18 = or i32 %add.i.i.i.i36, %asmresult.i.i.i.i.i.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i37 = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i37, label %if.else.i.i.i.i38.kref_get.exit41_crit_edge, label %if.else.i.i.i.i38.if.end15.sink.split.i.i.i.i40_crit_edge, !prof !53

if.else.i.i.i.i38.if.end15.sink.split.i.i.i.i40_crit_edge: ; preds = %if.else.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i40

if.else.i.i.i.i38.kref_get.exit41_crit_edge:      ; preds = %if.else.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit41

if.end15.sink.split.i.i.i.i40:                    ; preds = %if.else.i.i.i.i38.if.end15.sink.split.i.i.i.i40_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i40_crit_edge
  %.sink.i.i.i.i39 = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i40_crit_edge ], [ 1, %if.else.i.i.i.i38.if.end15.sink.split.i.i.i.i40_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i.i39) #10
  br label %kref_get.exit41

kref_get.exit41:                                  ; preds = %if.end15.sink.split.i.i.i.i40, %if.else.i.i.i.i38.kref_get.exit41_crit_edge
  %listxattr = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %listxattr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %listxattr, align 4
  br label %if.end14

if.end14:                                         ; preds = %kref_get.exit41, %hlist_del_init.exit
  %listxattr_lock.sink = phi ptr [ %listxattr_lock, %kref_get.exit41 ], [ %1, %hlist_del_init.exit ]
  tail call void @list_lru_isolate(ptr noundef %lru, ptr noundef %item) #10
  tail call void @_raw_spin_unlock(ptr noundef %listxattr_lock.sink) #10
  %dispose15 = getelementptr i8, ptr %item, i32 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef %dispose15, ptr noundef %21, ptr noundef %arg) #10
  br i1 %call.i.i42, label %if.end.i.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dispose15, ptr %prev.i, align 4
  %23 = ptrtoint ptr %dispose15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arg, ptr %dispose15, align 4
  %prev3.i.i = getelementptr i8, ptr %item, i32 12
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %dispose15, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end14.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then.cleanup_crit_edge ], [ 3, %if.else.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_cache_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcg.i, align 4
  %call.i = tail call i32 @list_lru_count_one(ptr noundef nonnull @nfs4_xattr_cache_lru, i32 noundef %1, ptr noundef %3) #10
  %call.i.frozen = freeze i32 %call.i
  %div.i = udiv i32 %call.i.frozen, 100
  %4 = mul i32 %div.i, 100
  %rem1.i.decomposed = sub i32 %call.i.frozen, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_vfs_cache_pressure to i32))
  %5 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %mul.i = mul i32 %5, %div.i
  %mul2.i = mul i32 %5, %rem1.i.decomposed
  %div3.i = udiv i32 %mul2.i, 100
  %add.i = add i32 %div3.i, %mul.i
  ret i32 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_cache_scan(ptr nocapture noundef readnone %shrink, ptr noundef %sc) #0 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %5 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = call i32 @list_lru_walk_one(ptr noundef nonnull @nfs4_xattr_cache_lru, i32 noundef %4, ptr noundef %6, ptr noundef nonnull @cache_lru_isolate, ptr noundef nonnull %dispose, ptr noundef %nr_to_scan.i) #10
  %7 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not7 = icmp eq ptr %8, %dispose
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %kref_put.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %9 = phi ptr [ %25, %kref_put.exit.while.body_crit_edge ], [ %8, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %9, i32 -3596
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i, align 4
  call fastcc void @nfs4_xattr_discard_cache(ptr noundef %add.ptr)
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.then.i
  %i.035.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %hlist.i = getelementptr %struct.nfs4_xattr_cache, ptr %add.ptr, i32 0, i32 1, i32 %i.035.i, i32 1
  %19 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.not.i, label %if.end24.i, label %do.end.i, !prof !53

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %kref_put.exit

if.end24.i:                                       ; preds = %for.body.i
  %draining.i = getelementptr %struct.nfs4_xattr_cache, ptr %add.ptr, i32 0, i32 1, i32 %i.035.i, i32 3
  %21 = ptrtoint ptr %draining.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %draining.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %listxattr.i = getelementptr i8, ptr %9, i32 60
  %22 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %listxattr.i, align 4
  %23 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  call void @kmem_cache_free(ptr noundef %23, ptr noundef %add.ptr) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %for.end.i, %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %24 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not = icmp eq ptr %25, %dispose
  br i1 %cmp.i.not, label %kref_put.exit.while.end_crit_edge, label %kref_put.exit.while.body_crit_edge

kref_put.exit.while.body_crit_edge:               ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

kref_put.exit.while.end_crit_edge:                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %kref_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_lru_isolate(ptr noundef %item, ptr noundef %lru, ptr nocapture noundef readnone %lru_lock, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -3588
  %nent = getelementptr i8, ptr %item, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nent, i32 noundef 4) #10
  %0 = ptrtoint ptr %nent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %inode1 = getelementptr i8, ptr %item, i32 64
  %2 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode1, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 18
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %i_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !52

if.end4.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !53

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %6 = ptrtoint ptr %inode1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inode1, align 4
  %xattr_cache = getelementptr i8, ptr %3, i32 784
  %7 = ptrtoint ptr %xattr_cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xattr_cache, align 8
  %cache_validity = getelementptr i8, ptr %3, i32 -304
  %8 = ptrtoint ptr %cache_validity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_validity, align 8
  %and = and i32 %9, -32769
  store i32 %and, ptr %cache_validity, align 8
  tail call void @list_lru_isolate(ptr noundef %lru, ptr noundef %item) #10
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #10
  %dispose10 = getelementptr i8, ptr %item, i32 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %dispose10, ptr noundef %11, ptr noundef %arg) #10
  br i1 %call.i.i22, label %if.end.i.i, label %kref_get.exit.cleanup_crit_edge

kref_get.exit.cleanup_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dispose10, ptr %prev.i, align 4
  %13 = ptrtoint ptr %dispose10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arg, ptr %dispose10, align 4
  %prev3.i.i = getelementptr i8, ptr %item, i32 12
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %dispose10, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %kref_get.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 0, %kref_get.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs42xattr.c", i32 624, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4_xattr_cache_get._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4_xattr_cache_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs42xattr.c", i32 637, i32 3}
!8 = !{ptr @nfs4_xattr_cache_get._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs4_xattr_cache_get._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs42xattr.c", i32 695, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nfs4_xattr_cache_add._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nfs4_xattr_cache_add._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/nfs42xattr.c", i32 725, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nfs4_xattr_cache_remove._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfs4_xattr_cache_remove._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/nfs/nfs42xattr.c", i32 999, i32 46}
!22 = !{ptr @nfs4_xattr_cache_lru, !23, !"nfs4_xattr_cache_lru", i1 false, i1 false}
!23 = !{!"../fs/nfs/nfs42xattr.c", i32 96, i32 24}
!24 = !{ptr @nfs4_xattr_entry_lru, !25, !"nfs4_xattr_entry_lru", i1 false, i1 false}
!25 = !{!"../fs/nfs/nfs42xattr.c", i32 97, i32 24}
!26 = !{ptr @nfs4_xattr_large_entry_lru, !27, !"nfs4_xattr_large_entry_lru", i1 false, i1 false}
!27 = !{!"../fs/nfs/nfs42xattr.c", i32 98, i32 24}
!28 = !{ptr @nfs4_xattr_cache_cachep, !29, !"nfs4_xattr_cache_cachep", i1 false, i1 false}
!29 = !{!"../fs/nfs/nfs42xattr.c", i32 100, i32 27}
!30 = !{ptr @nfs4_xattr_cache_init_once.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../fs/nfs/nfs42xattr.c", i32 987, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nfs4_xattr_hash_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/nfs/nfs42xattr.c", i32 112, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfs4_xattr_large_entry_shrinker, !37, !"nfs4_xattr_large_entry_shrinker", i1 false, i1 false}
!37 = !{!"../fs/nfs/nfs42xattr.c", i32 815, i32 24}
!38 = !{ptr @nfs4_xattr_entry_shrinker, !39, !"nfs4_xattr_entry_shrinker", i1 false, i1 false}
!39 = !{!"../fs/nfs/nfs42xattr.c", i32 807, i32 24}
!40 = !{ptr @nfs4_xattr_cache_shrinker, !41, !"nfs4_xattr_cache_shrinker", i1 false, i1 false}
!41 = !{!"../fs/nfs/nfs42xattr.c", i32 800, i32 24}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148318314, i64 2148318346, i64 2148318375, i64 2148318409, i64 2148318440, i64 2148318463}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2148406315}
!55 = !{i64 2148320779, i64 2148320811, i64 2148320840, i64 2148320874, i64 2148320905, i64 2148320928}
!56 = !{i64 2149342595}
!57 = !{i8 0, i8 2}
!58 = !{i64 2148316784, i64 2148316810, i64 2148316839, i64 2148316873, i64 2148316904, i64 2148316927}
!59 = !{i64 2148319249, i64 2148319275, i64 2148319304, i64 2148319338, i64 2148319369, i64 2148319392}
