; ModuleID = '/llk/IR_all_yes/fs/ksmbd/vfs_cache.c_pt.bc'
source_filename = "../fs/ksmbd/vfs_cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.167, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.168, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.169, ptr, %struct.address_space, %struct.list_head, %union.anon.170, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.167 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.168 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.169 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.170 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ksmbd_inode = type { %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32 }
%struct.ksmbd_file = type { ptr, ptr, i64, i64, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i64, i64, i8, i8, [16 x i8], [16 x i8], [16 x i8], %struct.stream, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_readdir_data, [2 x i32] }
%struct.stream = type { ptr, i32 }
%struct.ksmbd_readdir_data = type { %struct.dir_context, %union.anon.192, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%union.anon.192 = type { ptr }
%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.190 }
%union.anon.190 = type { ptr, [124 x i8] }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.165, %struct.list_head, %struct.list_head, %union.anon.166 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.165 = type { %struct.list_head }
%union.anon.166 = type { %struct.hlist_node }

@fd_limit = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@inode_hash_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@inode_hash_shift = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@inode_hash_mask = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@inode_hashtable = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@global_ft = internal global { %struct.ksmbd_file_table, [48 x i8] } zeroinitializer, align 32
@filp_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ksmbd_open_fd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ksmbd: Failed to allocate memory\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ksmbd_open_fd\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/ksmbd/vfs_cache.c\00", [43 x i8] zeroinitializer }, align 32
@ksmbd_open_fd._entry_ptr = internal global ptr @ksmbd_open_fd._entry, section ".printk_index", align 4
@ksmbd_open_fd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fp->f_lock\00", [20 x i8] zeroinitializer }, align 32
@ksmbd_init_file_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ft->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksmbd_file_cache\00", [47 x i8] zeroinitializer }, align 32
@ksmbd_init_file_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ksmbd: failed to allocate file cache\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ksmbd_init_file_cache\00", [42 x i8] zeroinitializer }, align 32
@ksmbd_init_file_cache._entry_ptr = internal global ptr @ksmbd_init_file_cache._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inode_hash_lock\00", [16 x i8] zeroinitializer }, align 32
@__ksmbd_inode_close._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 259, ptr null, ptr null }, align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ksmbd: remove xattr failed : %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__ksmbd_inode_close\00", [44 x i8] zeroinitializer }, align 32
@__ksmbd_inode_close._entry_ptr = internal global ptr @__ksmbd_inode_close._entry, section ".printk_index", align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_inode_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ksmbd: inode initialized failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ksmbd_inode_get\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_inode_get._entry_ptr = internal global ptr @ksmbd_inode_get._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ksmbd_inode_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ci->m_lock\00", [20 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"fd_limit\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 30, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"inode_hash_lock\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"global_ft\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 29, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"filp_cache\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 31, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 561, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 568, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 676, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 693, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 702, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 27, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 258, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 36, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 188, i32 3 }
@___asan_gen_.97 = private constant [24 x i8] c"../fs/ksmbd/vfs_cache.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 167, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 378, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksmbd_inode_close._entry, ptr @__ksmbd_inode_close._entry_ptr, ptr @ksmbd_init_file_cache._entry, ptr @ksmbd_init_file_cache._entry_ptr, ptr @ksmbd_inode_get._entry, ptr @ksmbd_inode_get._entry_ptr, ptr @ksmbd_open_fd._entry, ptr @ksmbd_open_fd._entry_ptr, ptr @fd_limit, ptr @inode_hash_lock, ptr @global_ft, ptr @filp_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ksmbd_open_fd.__key, ptr @.str.3, ptr @ksmbd_init_file_table.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ksmbd_inode_init.__key, ptr @.str.16, ptr @xa_init_flags.__key, ptr @.str.17], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fd_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_hash_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_ft to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filp_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_open_fd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_open_fd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_init_file_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_init_file_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_inode_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_inode_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_set_fd_limit(i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_max_files() #16
  %0 = tail call i32 @llvm.umin.i32(i32 %call, i32 %limit)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fd_limit, i32 noundef 4) #16
  store volatile i32 %0, ptr @fd_limit, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_max_files() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_query_inode_status(ptr noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @inode_hash_lock) #16
  %0 = load ptr, ptr @inode_hashtable, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino.i, align 8
  %5 = ptrtoint ptr %2 to i32
  %mul.i.i = mul i32 %4, %5
  %add.i.i = add i32 %4, 1640531527
  %div7.i.i = lshr i32 %add.i.i, 7
  %xor.i.i = xor i32 %div7.i.i, %mul.i.i
  %xor1.i.i = xor i32 %xor.i.i, 1640531527
  %.b.i.i = load i1, ptr @inode_hash_shift, align 4
  %6 = select i1 %.b.i.i, i32 14, i32 0
  %shr.i.i = lshr i32 %xor1.i.i, %6
  %xor2.i.i = xor i32 %shr.i.i, %xor.i.i
  %.b6.i.i = load i1, ptr @inode_hash_mask, align 4
  %7 = select i1 %.b6.i.i, i32 16383, i32 0
  %and.i.i = and i32 %xor2.i.i, %7
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %0, i32 %and.i.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %add.ptr2.i = getelementptr i8, ptr %9, i32 -64
  %tobool3.not3134.i = icmp eq ptr %add.ptr2.i, null
  %tobool3.not31.i = or i1 %tobool.not.i, %tobool3.not3134.i
  br i1 %tobool3.not31.i, label %entry.if.end3_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ci.032.i = phi ptr [ %add.ptr13.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr2.i, %entry.for.body.i_crit_edge ]
  %m_inode.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i, i32 0, i32 4
  %10 = ptrtoint ptr %m_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_inode.i, align 4
  %cmp.i = icmp eq ptr %11, %inode
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %m_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %m_count.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i, ptr %m_count.i, i32 0, i32 1, ptr elementtype(i32) %m_count.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.end3_crit_edge, label %if.then

if.then.i.if.end3_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

for.inc.i:                                        ; preds = %for.body.i
  %m_hash.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i, i32 0, i32 6
  %13 = ptrtoint ptr %m_hash.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_hash.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  %add.ptr13.i = getelementptr i8, ptr %14, i32 -64
  %tobool3.not36.i = icmp eq ptr %add.ptr13.i, null
  %tobool3.not.i = or i1 %tobool9.not.i, %tobool3.not36.i
  br i1 %tobool3.not.i, label %for.inc.i.if.end3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end3_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  %m_flags = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i, i32 0, i32 5
  %15 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_flags, align 4
  %and = shl i32 %16, 1
  %17 = and i32 %and, 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %m_count.i, i32 1, i32 3, i32 1) #16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i, ptr %m_count.i, i32 1, ptr elementtype(i32) %m_count.i) #16, !srcloc !67
  br label %if.end3

if.end3:                                          ; preds = %if.then, %for.inc.i.if.end3_crit_edge, %if.then.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %17, %if.then ], [ 1, %entry.if.end3_crit_edge ], [ 1, %if.then.i.if.end3_crit_edge ], [ 1, %for.inc.i.if.end3_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @inode_hash_lock) #16
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ksmbd_inode_pending_delete(ptr nocapture noundef readonly %fp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %0 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_ci, align 4
  %m_flags = getelementptr inbounds %struct.ksmbd_inode, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ksmbd_set_inode_pending_delete(ptr nocapture noundef readonly %fp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %0 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_ci, align 4
  %m_flags = getelementptr inbounds %struct.ksmbd_inode, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %m_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ksmbd_clear_inode_pending_delete(ptr nocapture noundef readonly %fp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %0 = ptrtoint ptr %f_ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_ci, align 4
  %m_flags = getelementptr inbounds %struct.ksmbd_inode, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_flags, align 4
  %and = and i32 %3, -2
  store i32 %and, ptr %m_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ksmbd_fd_set_delete_on_close(ptr nocapture noundef readonly %fp, i32 noundef %file_info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stream.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22
  %0 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream.i, align 4
  %cmp.i.not = icmp eq ptr %1, null
  %f_ci1 = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %2 = ptrtoint ptr %f_ci1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_ci1, align 4
  %m_flags2 = getelementptr inbounds %struct.ksmbd_inode, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %m_flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_flags2, align 4
  %. = select i1 %cmp.i.not, i32 2, i32 8
  %or3 = or i32 %5, %.
  store i32 %or3, ptr %m_flags2, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_inode_hash_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @inode_hash_shift, align 4
  store i1 true, ptr @inode_hash_mask, align 4
  %call7 = tail call noalias ptr @vmalloc(i32 noundef 65536) #19
  store ptr %call7, ptr @inode_hashtable, align 4
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %.b = load i1, ptr @inode_hash_shift, align 4
  %shl8 = select i1 %.b, i32 65536, i32 4
  %0 = call ptr @memset(ptr %call7, i32 0, i32 %shl8)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_release_inode_hash() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  tail call void @vfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_close_fd(ptr nocapture noundef readonly %work, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %id)
  %cmp.i = icmp ult i64 %id, 2147483647
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %sess = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %file_table = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20
  tail call void @_raw_read_lock(ptr noundef %file_table) #16
  %idr = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idr, align 4
  %conv = trunc i64 %id to i32
  %call1 = tail call ptr @idr_find(ptr noundef %3, i32 noundef %conv) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.if.end6.thread_crit_edge, label %if.then2

if.end.if.end6.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.thread

if.then2:                                         ; preds = %if.end
  %f_lock.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock.i) #16
  %blocked_works.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1, i32 0, i32 24
  %4 = ptrtoint ptr %blocked_works.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blocked_works.i, align 4
  %cmp.not24.i = icmp eq ptr %5, %blocked_works.i
  br i1 %cmp.not24.i, label %if.then2.set_close_state_blocked_works.exit_crit_edge, label %if.then2.for.body.i_crit_edge

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

if.then2.set_close_state_blocked_works.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_close_state_blocked_works.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %if.then2.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %state.i = getelementptr i8, ptr %.pn.in25.i, i32 -80
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %state.i, align 8
  %cancel_fn.i = getelementptr i8, ptr %.pn.in25.i, i32 -64
  %16 = ptrtoint ptr %cancel_fn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cancel_fn.i, align 8
  %cancel_argv.i = getelementptr i8, ptr %.pn.in25.i, i32 -68
  %18 = ptrtoint ptr %cancel_argv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cancel_argv.i, align 4
  tail call void %17(ptr noundef %19) #16
  %cmp.not.i = icmp eq ptr %.pn.i, %blocked_works.i
  br i1 %cmp.not.i, label %list_del.exit.i.set_close_state_blocked_works.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.set_close_state_blocked_works.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_close_state_blocked_works.exit

set_close_state_blocked_works.exit:               ; preds = %list_del.exit.i.set_close_state_blocked_works.exit_crit_edge, %if.then2.set_close_state_blocked_works.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %f_lock.i) #16
  %refcount = getelementptr inbounds %struct.ksmbd_file, ptr %call1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end6, label %set_close_state_blocked_works.exit.if.end6.thread_crit_edge

set_close_state_blocked_works.exit.if.end6.thread_crit_edge: ; preds = %set_close_state_blocked_works.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %set_close_state_blocked_works.exit.if.end6.thread_crit_edge, %if.end.if.end6.thread_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %file_table) #16
  br label %cleanup

if.end6:                                          ; preds = %set_close_state_blocked_works.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_read_unlock(ptr noundef %file_table) #16
  %21 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sess, align 4
  %file_table.i = getelementptr inbounds %struct.ksmbd_session, ptr %22, i32 0, i32 20
  tail call fastcc void @__ksmbd_close_fd(ptr noundef %file_table.i, ptr noundef nonnull %call1) #16
  %23 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %work, align 8
  %stats.i = getelementptr inbounds %struct.ksmbd_conn, ptr %24, i32 0, i32 23
  %call.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats.i, i32 1, i32 3, i32 1) #16
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats.i, ptr %stats.i, i32 1, ptr elementtype(i32) %stats.i) #16, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end6.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end6.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_fd_put(ptr nocapture noundef readonly %work, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sess.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %1 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sess.i, align 4
  %file_table.i = getelementptr inbounds %struct.ksmbd_session, ptr %2, i32 0, i32 20
  tail call fastcc void @__ksmbd_close_fd(ptr noundef %file_table.i, ptr noundef nonnull %fp) #16
  %3 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %work, align 8
  %stats.i = getelementptr inbounds %struct.ksmbd_conn, ptr %4, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats.i, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats.i, ptr %stats.i, i32 1, ptr elementtype(i32) %stats.i) #16, !srcloc !67
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_lookup_foreign_fd(ptr nocapture noundef readonly %work, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %file_table = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %id)
  %cmp.i.i = icmp ult i64 %id, 2147483647
  br i1 %cmp.i.i, label %if.end.i, label %entry.__ksmbd_lookup_fd.exit_crit_edge

entry.__ksmbd_lookup_fd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_lookup_fd.exit

if.end.i:                                         ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef %file_table) #16
  %idr.i = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %idr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idr.i, align 4
  %conv.i = trunc i64 %id to i32
  %call1.i = tail call ptr @idr_find(ptr noundef %3, i32 noundef %conv.i) #16
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then2.i.if.end4.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then2.i.if.end4.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end11.i.i.i.i.i.i, %if.then2.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %fp.0.i = phi ptr [ null, %if.end.i.if.end4.i_crit_edge ], [ null, %if.then2.i.if.end4.i_crit_edge ], [ %call1.i, %do.end11.i.i.i.i.i.i ]
  tail call void @_raw_read_unlock(ptr noundef %file_table) #16
  br label %__ksmbd_lookup_fd.exit

__ksmbd_lookup_fd.exit:                           ; preds = %if.end4.i, %entry.__ksmbd_lookup_fd.exit_crit_edge
  %retval.0.i = phi ptr [ %fp.0.i, %if.end4.i ], [ null, %entry.__ksmbd_lookup_fd.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_lookup_fd_fast(ptr nocapture noundef readonly %work, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %file_table = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %id)
  %cmp.i.i = icmp ult i64 %id, 2147483647
  br i1 %cmp.i.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef %file_table) #16
  %idr.i = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %idr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idr.i, align 4
  %conv.i = trunc i64 %id to i32
  %call1.i = tail call ptr @idr_find(ptr noundef %3, i32 noundef %conv.i) #16
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.__ksmbd_lookup_fd.exit.thread18_crit_edge, label %if.then2.i

if.end.i.__ksmbd_lookup_fd.exit.thread18_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_lookup_fd.exit.thread18

if.then2.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then2.i.__ksmbd_lookup_fd.exit.thread18_crit_edge, label %__sanity_check.exit

if.then2.i.__ksmbd_lookup_fd.exit.thread18_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_lookup_fd.exit.thread18

__ksmbd_lookup_fd.exit.thread18:                  ; preds = %if.then2.i.__ksmbd_lookup_fd.exit.thread18_crit_edge, %if.end.i.__ksmbd_lookup_fd.exit.thread18_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %file_table) #16
  br label %cleanup

__sanity_check.exit:                              ; preds = %if.then2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  tail call void @_raw_read_unlock(ptr noundef %file_table) #16
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %5 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcon, align 8
  %tcon1.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1.i, i32 0, i32 9
  %7 = ptrtoint ptr %tcon1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcon1.i, align 4
  %cmp.not.i = icmp eq ptr %8, %6
  br i1 %cmp.not.i, label %__sanity_check.exit.cleanup_crit_edge, label %if.end.i11

__sanity_check.exit.cleanup_crit_edge:            ; preds = %__sanity_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i11:                                       ; preds = %__sanity_check.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !69
  %asmresult.i.i.i.i.i.i10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i10)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i10, 0
  br i1 %cmp.i.i.i, label %if.end2.i, label %if.end.i11.cleanup_crit_edge

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sess, align 4
  %file_table.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %11, i32 0, i32 20
  tail call fastcc void @__ksmbd_close_fd(ptr noundef %file_table.i.i, ptr noundef nonnull %call1.i) #16
  %12 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %work, align 8
  %stats.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %13, i32 0, i32 23
  %call.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats.i.i, i32 1, i32 3, i32 1) #16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats.i.i, ptr %stats.i.i, i32 1, ptr elementtype(i32) %stats.i.i) #16, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.i11.cleanup_crit_edge, %__sanity_check.exit.cleanup_crit_edge, %__ksmbd_lookup_fd.exit.thread18, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i, %__sanity_check.exit.cleanup_crit_edge ], [ null, %if.end.i11.cleanup_crit_edge ], [ null, %if.end2.i ], [ null, %entry.cleanup_crit_edge ], [ null, %__ksmbd_lookup_fd.exit.thread18 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_lookup_fd_slow(ptr nocapture noundef readonly %work, i64 noundef %id, i64 noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %id)
  %cmp.i = icmp ult i64 %id, 2147483647
  br i1 %cmp.i, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t = trunc i64 %id to i32
  br label %if.end.i

if.end:                                           ; preds = %entry
  %compound_fid = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 8
  %0 = ptrtoint ptr %compound_fid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %compound_fid, align 8
  %compound_pfid = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 9
  %2 = ptrtoint ptr %compound_pfid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %compound_pfid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %1)
  %cmp.i.i = icmp ult i64 %1, 2147483647
  %extract.t71 = trunc i64 %1 to i32
  br i1 %cmp.i.i, label %if.end.if.end.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.thread
  %pid.addr.043 = phi i64 [ %pid, %if.end.thread ], [ %3, %if.end.if.end.i_crit_edge ]
  %id.addr.041.off0 = phi i32 [ %extract.t, %if.end.thread ], [ %extract.t71, %if.end.if.end.i_crit_edge ]
  %sess45 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %4 = ptrtoint ptr %sess45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %sess45, align 4
  %file_table46 = getelementptr inbounds %struct.ksmbd_session, ptr %.pn, i32 0, i32 20
  tail call void @_raw_read_lock(ptr noundef %file_table46) #16
  %idr.i = getelementptr inbounds %struct.ksmbd_session, ptr %.pn, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %idr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idr.i, align 4
  %call1.i = tail call ptr @idr_find(ptr noundef %6, i32 noundef %id.addr.041.off0) #16
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.__ksmbd_lookup_fd.exit.thread56_crit_edge, label %if.then2.i

if.end.i.__ksmbd_lookup_fd.exit.thread56_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_lookup_fd.exit.thread56

if.then2.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then2.i.__ksmbd_lookup_fd.exit.thread56_crit_edge, label %__sanity_check.exit

if.then2.i.__ksmbd_lookup_fd.exit.thread56_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_lookup_fd.exit.thread56

__ksmbd_lookup_fd.exit.thread56:                  ; preds = %if.then2.i.__ksmbd_lookup_fd.exit.thread56_crit_edge, %if.end.i.__ksmbd_lookup_fd.exit.thread56_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %file_table46) #16
  br label %cleanup

__sanity_check.exit:                              ; preds = %if.then2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  tail call void @_raw_read_unlock(ptr noundef %file_table46) #16
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %8 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcon, align 8
  %tcon1.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1.i, i32 0, i32 9
  %10 = ptrtoint ptr %tcon1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcon1.i, align 4
  %cmp.not.i = icmp eq ptr %11, %9
  br i1 %cmp.not.i, label %if.end4, label %if.end.i22

if.end.i22:                                       ; preds = %__sanity_check.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !69
  %asmresult.i.i.i.i.i.i21 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i21)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i21, 0
  br i1 %cmp.i.i.i, label %if.end2.i, label %if.end.i22.cleanup_crit_edge

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %sess45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sess45, align 4
  %file_table.i.i = getelementptr inbounds %struct.ksmbd_session, ptr %14, i32 0, i32 20
  tail call fastcc void @__ksmbd_close_fd(ptr noundef %file_table.i.i, ptr noundef nonnull %call1.i) #16
  %15 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %work, align 8
  %stats.i.i = getelementptr inbounds %struct.ksmbd_conn, ptr %16, i32 0, i32 23
  %call.i.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats.i.i, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats.i.i, ptr %stats.i.i, i32 1, ptr elementtype(i32) %stats.i.i) #16, !srcloc !67
  br label %cleanup

if.end4:                                          ; preds = %__sanity_check.exit
  %persistent_id = getelementptr inbounds %struct.ksmbd_file, ptr %call1.i, i32 0, i32 2
  %18 = ptrtoint ptr %persistent_id to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %persistent_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %pid.addr.043)
  %cmp.not = icmp eq i64 %19, %pid.addr.043
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %if.end.i29

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i29:                                       ; preds = %if.end4
  %call.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !69
  %asmresult.i.i.i.i.i.i27 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i27)
  %cmp.i.i.i28 = icmp eq i32 %asmresult.i.i.i.i.i.i27, 0
  br i1 %cmp.i.i.i28, label %if.end2.i34, label %if.end.i29.cleanup_crit_edge

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2.i34:                                      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %sess45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sess45, align 4
  %file_table.i.i31 = getelementptr inbounds %struct.ksmbd_session, ptr %22, i32 0, i32 20
  tail call fastcc void @__ksmbd_close_fd(ptr noundef %file_table.i.i31, ptr noundef nonnull %call1.i) #16
  %23 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %work, align 8
  %stats.i.i32 = getelementptr inbounds %struct.ksmbd_conn, ptr %24, i32 0, i32 23
  %call.i.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats.i.i32, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats.i.i32, i32 1, i32 3, i32 1) #16
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats.i.i32, ptr %stats.i.i32, i32 1, ptr elementtype(i32) %stats.i.i32) #16, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i34, %if.end.i29.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end2.i, %if.end.i22.cleanup_crit_edge, %__ksmbd_lookup_fd.exit.thread56, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i, %if.end4.cleanup_crit_edge ], [ null, %if.end.i22.cleanup_crit_edge ], [ null, %if.end2.i ], [ null, %if.end.i29.cleanup_crit_edge ], [ null, %if.end2.i34 ], [ null, %if.end.cleanup_crit_edge ], [ null, %__ksmbd_lookup_fd.exit.thread56 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_lookup_durable_fd(i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %id)
  %cmp.i.i = icmp ult i64 %id, 2147483647
  br i1 %cmp.i.i, label %if.end.i, label %entry.__ksmbd_lookup_fd.exit_crit_edge

entry.__ksmbd_lookup_fd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_lookup_fd.exit

if.end.i:                                         ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @global_ft) #16
  %0 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %conv.i = trunc i64 %id to i32
  %call1.i = tail call ptr @idr_find(ptr noundef %0, i32 noundef %conv.i) #16
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %call1.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then2.i.if.end4.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then2.i.if.end4.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end11.i.i.i.i.i.i, %if.then2.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %fp.0.i = phi ptr [ null, %if.end.i.if.end4.i_crit_edge ], [ null, %if.then2.i.if.end4.i_crit_edge ], [ %call1.i, %do.end11.i.i.i.i.i.i ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @global_ft) #16
  br label %__ksmbd_lookup_fd.exit

__ksmbd_lookup_fd.exit:                           ; preds = %if.end4.i, %entry.__ksmbd_lookup_fd.exit_crit_edge
  %retval.0.i = phi ptr [ %fp.0.i, %if.end4.i ], [ null, %entry.__ksmbd_lookup_fd.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_lookup_fd_cguid(ptr nocapture noundef readonly %cguid) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #16
  tail call void @_raw_read_lock(ptr noundef nonnull @global_ft) #16
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %call6 = call ptr @idr_get_next(ptr noundef %1, ptr noundef nonnull %id) #16
  %cmp.not7 = icmp eq ptr %call6, null
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %call8 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call6, %entry.for.body_crit_edge ]
  %create_guid = getelementptr inbounds %struct.ksmbd_file, ptr %call8, i32 0, i32 20
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %create_guid, ptr noundef dereferenceable(16) %cguid, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.ksmbd_file, ptr %call8, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #16
  %2 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 0, i32 1, ptr elementtype(i32) %refcount.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.for.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.end11.i.i.i.i.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  br label %for.end

for.inc:                                          ; preds = %for.body
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %add = add i32 %4, 1
  store i32 %add, ptr %id, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %call = call ptr @idr_get_next(ptr noundef %5, ptr noundef nonnull %id) #16
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end11.i.i.i.i.i, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %fp.0 = phi ptr [ null, %if.then.for.end_crit_edge ], [ %call8, %do.end11.i.i.i.i.i ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @global_ft) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #16
  ret ptr %fp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_lookup_fd_inode(ptr noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @inode_hash_lock) #16
  %0 = load ptr, ptr @inode_hashtable, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino.i.i, align 8
  %5 = ptrtoint ptr %2 to i32
  %mul.i.i.i = mul i32 %4, %5
  %add.i.i.i = add i32 %4, 1640531527
  %div7.i.i.i = lshr i32 %add.i.i.i, 7
  %xor.i.i.i = xor i32 %div7.i.i.i, %mul.i.i.i
  %xor1.i.i.i = xor i32 %xor.i.i.i, 1640531527
  %.b.i.i.i = load i1, ptr @inode_hash_shift, align 4
  %6 = select i1 %.b.i.i.i, i32 14, i32 0
  %shr.i.i.i = lshr i32 %xor1.i.i.i, %6
  %xor2.i.i.i = xor i32 %shr.i.i.i, %xor.i.i.i
  %.b6.i.i.i = load i1, ptr @inode_hash_mask, align 4
  %7 = select i1 %.b6.i.i.i, i32 16383, i32 0
  %and.i.i.i = and i32 %xor2.i.i.i, %7
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %0, i32 %and.i.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %add.ptr2.i.i = getelementptr i8, ptr %9, i32 -64
  %tobool3.not3134.i.i = icmp eq ptr %add.ptr2.i.i, null
  %tobool3.not31.i.i = or i1 %tobool.not.i.i, %tobool3.not3134.i.i
  br i1 %tobool3.not31.i.i, label %entry.cleanup_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %ci.032.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr2.i.i, %entry.for.body.i.i_crit_edge ]
  %m_inode.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %m_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_inode.i.i, align 4
  %cmp.i.i = icmp eq ptr %11, %inode
  br i1 %cmp.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %m_count.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %m_count.i.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i.i, ptr %m_count.i.i, i32 0, i32 1, ptr elementtype(i32) %m_count.i.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.body.i.i
  %m_hash.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %m_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_hash.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %14, null
  %add.ptr13.i.i = getelementptr i8, ptr %14, i32 -64
  %tobool3.not36.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool3.not.i.i = or i1 %tobool9.not.i.i, %tobool3.not36.i.i
  br i1 %tobool3.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  tail call void @_raw_read_unlock(ptr noundef nonnull @inode_hash_lock) #16
  tail call void @_raw_read_lock(ptr noundef nonnull %ci.032.i.i) #16
  %m_fp_list = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i.i, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %m_fp_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %m_fp_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %lfp.0 = getelementptr i8, ptr %.pn, i32 -188
  %16 = ptrtoint ptr %lfp.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lfp.0, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_inode.i, align 8
  %cmp3 = icmp eq ptr %19, %inode
  br i1 %cmp3, label %if.then4, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %lfp.0.le = getelementptr i8, ptr %.pn, i32 -188
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %m_count.i.i, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i.i, ptr %m_count.i.i, i32 1, ptr elementtype(i32) %m_count.i.i) #16, !srcloc !67
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %m_count.i.i, i32 1, i32 3, i32 1) #16
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i.i, ptr %m_count.i.i, i32 1, ptr elementtype(i32) %m_count.i.i) #16, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then4, %for.inc.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %inode_hash_lock.sink = phi ptr [ %ci.032.i.i, %for.end ], [ %ci.032.i.i, %if.then4 ], [ @inode_hash_lock, %entry.cleanup_crit_edge ], [ @inode_hash_lock, %if.then.i.i.cleanup_crit_edge ], [ @inode_hash_lock, %for.inc.i.i.cleanup_crit_edge ]
  %retval.0 = phi ptr [ null, %for.end ], [ %lfp.0.le, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then.i.i.cleanup_crit_edge ], [ null, %for.inc.i.i.cleanup_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull %inode_hash_lock.sink) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_open_durable_fd(ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__open_id(ptr noundef nonnull @global_ft, ptr noundef %fp, i32 noundef 1)
  %persistent_id = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 2
  %0 = ptrtoint ptr %persistent_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %persistent_id, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__open_id(ptr noundef %ft, ptr noundef %fp, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fd_limit, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr nonnull @fd_limit, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fd_limit, ptr nonnull @fd_limit, i32 1, ptr nonnull elementtype(i32) @fd_limit) #16, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, -1
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fd_limit, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @fd_limit, i32 1, i32 3, i32 1) #16
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fd_limit, ptr nonnull @fd_limit, i32 1, ptr nonnull elementtype(i32) @fd_limit) #16, !srcloc !71
  %volatile_id.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 3
  %2 = ptrtoint ptr %volatile_id.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2147483647, ptr %volatile_id.i, align 8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @idr_preload(i32 noundef 3264) #16
  tail call void @_raw_write_lock(ptr noundef %ft) #16
  %idr = getelementptr inbounds %struct.ksmbd_file_table, ptr %ft, i32 0, i32 1
  %3 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %idr, align 4
  %call1 = tail call i32 @idr_alloc_cyclic(ptr noundef %4, ptr noundef %fp, i32 noundef 0, i32 noundef 2147483646, i32 noundef 2048) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv17 = zext i32 %call1 to i64
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fd_limit, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @fd_limit, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fd_limit, ptr nonnull @fd_limit, i32 1, ptr nonnull elementtype(i32) @fd_limit) #16, !srcloc !71
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %id.0 = phi i64 [ %conv17, %if.then3 ], [ 2147483647, %if.else ]
  %ret.0 = phi i32 [ 0, %if.then3 ], [ %call1, %if.else ]
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end4.__open_id_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
  ]

if.end4.__open_id_set.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %__open_id_set.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %volatile_id.i16 = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 3
  br label %if.end3.sink.split.i

if.then2.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %persistent_id.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 2
  br label %if.end3.sink.split.i

if.end3.sink.split.i:                             ; preds = %if.then2.i, %if.then.i
  %volatile_id.sink.i = phi ptr [ %volatile_id.i16, %if.then.i ], [ %persistent_id.i, %if.then2.i ]
  %7 = ptrtoint ptr %volatile_id.sink.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %id.0, ptr %volatile_id.sink.i, align 8
  br label %__open_id_set.exit

__open_id_set.exit:                               ; preds = %if.end3.sink.split.i, %if.end4.__open_id_set.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %ft) #16
  %8 = tail call i32 @llvm.read_register.i32(metadata !54) #16
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr @radix_tree_preloads to i32)
  %14 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %14) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !72
  %15 = tail call i32 @llvm.read_register.i32(metadata !54) #16
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %__open_id_set.exit, %if.then
  %retval.0 = phi i32 [ -24, %if.then ], [ %ret.0, %__open_id_set.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_open_fd(ptr nocapture noundef readonly %work, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @filp_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %blocked_works = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 24
  %1 = ptrtoint ptr %blocked_works to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %blocked_works, ptr %blocked_works, align 4
  %prev.i = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %blocked_works, ptr %prev.i, align 8
  %node = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 23
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %node, ptr %node, align 4
  %prev.i46 = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node, ptr %prev.i46, align 8
  %lock_list = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 25
  %5 = ptrtoint ptr %lock_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %lock_list, ptr %lock_list, align 4
  %prev.i47 = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 25, i32 1
  %6 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock_list, ptr %prev.i47, align 8
  %f_lock = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %f_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ksmbd_open_fd.__key, i16 noundef signext 3) #16
  %refcount = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refcount, align 8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %filp, ptr %call.i, align 8
  %sess = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %9 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sess, align 4
  %conn = getelementptr inbounds %struct.ksmbd_session, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn, align 4
  %conn8 = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %conn8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %conn8, align 8
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %14 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcon, align 8
  %tcon9 = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %tcon9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %tcon9, align 4
  %volatile_id = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %volatile_id to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 2147483647, ptr %volatile_id, align 8
  %persistent_id = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %persistent_id to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 2147483647, ptr %persistent_id, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call.i48 = tail call fastcc ptr @ksmbd_inode_lookup(ptr noundef nonnull %call.i) #16
  tail call void @_raw_read_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %tobool.not.i = icmp eq ptr %call.i48, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 96) #22
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %ksmbd_inode_get.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_inode.i.i.i, align 8
  %m_inode.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %m_inode.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %m_inode.i.i, align 8
  %m_count.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i.i, i32 noundef 4) #16
  %25 = ptrtoint ptr %m_count.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %m_count.i.i, align 4
  %op_count.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 2
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %op_count.i.i, i32 noundef 4) #16
  %26 = ptrtoint ptr %op_count.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %op_count.i.i, align 8
  %sop_count.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 3
  %call.i.i2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sop_count.i.i, i32 noundef 4) #16
  %27 = ptrtoint ptr %sop_count.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %sop_count.i.i, align 4
  %m_flags.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %m_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %m_flags.i.i, align 4
  %m_fattr.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %m_fattr.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %m_fattr.i.i, align 4
  %m_fp_list.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %m_fp_list.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %m_fp_list.i.i, ptr %m_fp_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %m_fp_list.i.i, ptr %prev.i.i.i, align 4
  %m_op_list.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %m_op_list.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %m_op_list.i.i, ptr %m_op_list.i.i, align 8
  %prev.i3.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m_op_list.i.i, ptr %prev.i3.i.i, align 4
  tail call void @__rwlock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @ksmbd_inode_init.__key) #16
  tail call void @_raw_write_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call10.i = tail call fastcc ptr @ksmbd_inode_lookup(ptr noundef nonnull %call.i) #16
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end4.i
  %34 = load ptr, ptr @inode_hashtable, align 4
  %35 = ptrtoint ptr %m_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino.i.i, align 8
  %41 = ptrtoint ptr %38 to i32
  %mul.i.i.i = mul i32 %40, %41
  %add.i.i.i = add i32 %40, 1640531527
  %div7.i.i.i = lshr i32 %add.i.i.i, 7
  %xor.i.i.i = xor i32 %div7.i.i.i, %mul.i.i.i
  %xor1.i.i.i = xor i32 %xor.i.i.i, 1640531527
  %.b.i.i.i = load i1, ptr @inode_hash_shift, align 4
  %42 = select i1 %.b.i.i.i, i32 14, i32 0
  %shr.i.i.i = lshr i32 %xor1.i.i.i, %42
  %xor2.i.i.i = xor i32 %shr.i.i.i, %xor.i.i.i
  %.b6.i.i.i = load i1, ptr @inode_hash_mask, align 4
  %43 = select i1 %.b6.i.i.i, i32 16383, i32 0
  %and.i.i.i = and i32 %xor2.i.i.i, %43
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %34, i32 %and.i.i.i
  %m_hash.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i, align 4
  %46 = ptrtoint ptr %m_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %45, ptr %m_hash.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %if.then12.i.ksmbd_inode_hash.exit.i_crit_edge, label %do.body12.i.i.i

if.then12.i.ksmbd_inode_hash.exit.i_crit_edge:    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ksmbd_inode_hash.exit.i

do.body12.i.i.i:                                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %m_hash.i.i, ptr %pprev.i.i.i, align 4
  br label %ksmbd_inode_hash.exit.i

ksmbd_inode_hash.exit.i:                          ; preds = %do.body12.i.i.i, %if.then12.i.ksmbd_inode_hash.exit.i_crit_edge
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %m_hash.i.i, ptr %add.ptr.i.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %call7.i.i, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %add.ptr.i.i, ptr %pprev34.i.i.i, align 4
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %ksmbd_inode_hash.exit.i
  %ci.0.i = phi ptr [ %call10.i, %if.else.i ], [ %call7.i.i, %ksmbd_inode_hash.exit.i ]
  tail call void @_raw_write_unlock(ptr noundef nonnull @inode_hash_lock) #16
  br label %if.end14

ksmbd_inode_get.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %f_ci = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 5
  %50 = ptrtoint ptr %f_ci to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %f_ci, align 4
  br label %err_out

if.end14:                                         ; preds = %if.end13.i, %if.end.if.end14_crit_edge
  %retval.0.i.ph = phi ptr [ %call.i48, %if.end.if.end14_crit_edge ], [ %ci.0.i, %if.end13.i ]
  %f_ci51 = getelementptr inbounds %struct.ksmbd_file, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %f_ci51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i.ph, ptr %f_ci51, align 4
  %52 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sess, align 4
  %file_table = getelementptr inbounds %struct.ksmbd_session, ptr %53, i32 0, i32 20
  %call16 = tail call fastcc i32 @__open_id(ptr noundef %file_table, ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end14
  %54 = ptrtoint ptr %f_ci51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f_ci51, align 4
  %m_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %55, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %m_count.i, i32 1, i32 3, i32 1) #16
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i, ptr %m_count.i, i32 1, ptr elementtype(i32) %m_count.i) #16, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then18.err_out_crit_edge

if.then18.err_out_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out

if.then.i:                                        ; preds = %if.then18
  tail call void @_raw_write_lock(ptr noundef nonnull @inode_hash_lock) #16
  %m_hash.i.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %55, i32 0, i32 6
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %55, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.not.i.i.i.i, label %if.then.i.ksmbd_inode_free.exit.i_crit_edge, label %if.then.i.i.i.i

if.then.i.ksmbd_inode_free.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ksmbd_inode_free.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i
  %59 = ptrtoint ptr %m_hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %m_hash.i.i.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %60, ptr %58, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %58, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %63 = ptrtoint ptr %m_hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %m_hash.i.i.i, align 4
  %64 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %ksmbd_inode_free.exit.i

ksmbd_inode_free.exit.i:                          ; preds = %__hlist_del.exit.i.i.i.i, %if.then.i.ksmbd_inode_free.exit.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @inode_hash_lock) #16
  tail call void @kfree(ptr noundef %55) #16
  br label %err_out

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %work, align 8
  %stats = getelementptr inbounds %struct.ksmbd_conn, ptr %66, i32 0, i32 23
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats, i32 1, i32 3, i32 1) #16
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats, ptr %stats, i32 1, ptr elementtype(i32) %stats) #16, !srcloc !71
  br label %cleanup

err_out:                                          ; preds = %ksmbd_inode_free.exit.i, %if.then18.err_out_crit_edge, %ksmbd_inode_get.exit
  %ret.0 = phi i32 [ -12, %ksmbd_inode_get.exit ], [ %call16, %if.then18.err_out_crit_edge ], [ %call16, %ksmbd_inode_free.exit.i ]
  %68 = load ptr, ptr @filp_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %68, ptr noundef nonnull %call.i) #16
  %69 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end20, %do.end
  %retval.0 = phi ptr [ %69, %err_out ], [ %call.i, %if.end20 ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_close_tree_conn_fds(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %file_table = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcon, align 8
  %call = tail call fastcc i32 @__close_file_table_ids(ptr noundef %file_table, ptr noundef %3, ptr noundef nonnull @tree_conn_fd_check)
  %4 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %work, align 8
  %stats = getelementptr inbounds %struct.ksmbd_conn, ptr %5, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats, ptr %stats, i32 %call, ptr elementtype(i32) %stats) #16, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__close_file_table_ids(ptr noundef %ft, ptr noundef %tcon, ptr nocapture noundef readonly %skip) unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #16
  %idr = getelementptr inbounds %struct.ksmbd_file_table, ptr %ft, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %1 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %idr, align 4
  %call10 = call ptr @idr_get_next(ptr noundef %2, ptr noundef nonnull %id) #16
  %cmp.not11 = icmp eq ptr %call10, null
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %call13 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call10, %entry.for.body_crit_edge ]
  %num.012 = phi i32 [ %num.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = call zeroext i1 %skip(ptr noundef %tcon, ptr noundef nonnull %call13) #16, !callees !73
  br i1 %call1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %f_lock.i = getelementptr inbounds %struct.ksmbd_file, ptr %call13, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %f_lock.i) #16
  %blocked_works.i = getelementptr inbounds %struct.ksmbd_file, ptr %call13, i32 0, i32 24
  %3 = ptrtoint ptr %blocked_works.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %blocked_works.i, align 4
  %cmp.not24.i = icmp eq ptr %4, %blocked_works.i
  br i1 %cmp.not24.i, label %if.end.set_close_state_blocked_works.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.set_close_state_blocked_works.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_close_state_blocked_works.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %4, %if.end.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %state.i = getelementptr i8, ptr %.pn.in25.i, i32 -80
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %state.i, align 8
  %cancel_fn.i = getelementptr i8, ptr %.pn.in25.i, i32 -64
  %15 = ptrtoint ptr %cancel_fn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cancel_fn.i, align 8
  %cancel_argv.i = getelementptr i8, ptr %.pn.in25.i, i32 -68
  %17 = ptrtoint ptr %cancel_argv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cancel_argv.i, align 4
  call void %16(ptr noundef %18) #16
  %cmp.not.i = icmp eq ptr %.pn.i, %blocked_works.i
  br i1 %cmp.not.i, label %list_del.exit.i.set_close_state_blocked_works.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.set_close_state_blocked_works.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_close_state_blocked_works.exit

set_close_state_blocked_works.exit:               ; preds = %list_del.exit.i.set_close_state_blocked_works.exit_crit_edge, %if.end.set_close_state_blocked_works.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %f_lock.i) #16
  %refcount = getelementptr inbounds %struct.ksmbd_file, ptr %call13, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end4, label %set_close_state_blocked_works.exit.for.inc_crit_edge

set_close_state_blocked_works.exit.for.inc_crit_edge: ; preds = %set_close_state_blocked_works.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end4:                                          ; preds = %set_close_state_blocked_works.exit
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @__ksmbd_close_fd(ptr noundef %ft, ptr noundef nonnull %call13)
  %inc = add i32 %num.012, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %set_close_state_blocked_works.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num.1 = phi i32 [ %num.012, %for.body.for.inc_crit_edge ], [ %inc, %if.end4 ], [ %num.012, %set_close_state_blocked_works.exit.for.inc_crit_edge ]
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %add = add i32 %21, 1
  store i32 %add, ptr %id, align 4
  %22 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %idr, align 4
  %call = call ptr @idr_get_next(ptr noundef %23, ptr noundef nonnull %id) #16
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %num.1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #16
  ret i32 %num.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tree_conn_fd_check(ptr noundef readnone %tcon, ptr nocapture noundef readonly %fp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tcon1 = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 9
  %0 = ptrtoint ptr %tcon1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon1, align 4
  %cmp = icmp ne ptr %1, %tcon
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_close_session_fds(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %file_table = getelementptr inbounds %struct.ksmbd_session, ptr %1, i32 0, i32 20
  %tcon = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcon, align 8
  %call = tail call fastcc i32 @__close_file_table_ids(ptr noundef %file_table, ptr noundef %3, ptr noundef nonnull @session_fd_check)
  %4 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %work, align 8
  %stats = getelementptr inbounds %struct.ksmbd_conn, ptr %5, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %stats, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats, ptr %stats, i32 %call, ptr elementtype(i32) %stats) #16, !srcloc !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @session_fd_check(ptr nocapture noundef readnone %tcon, ptr nocapture noundef readnone %fp) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_init_global_file_table() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #22
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.ksmbd_init_file_table.exit_crit_edge, label %if.end.i

entry.ksmbd_init_file_table.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ksmbd_init_file_table.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #16
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i.i.i.i, align 8
  %idr_base.i.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idr_next.i.i.i, align 8
  tail call void @__rwlock_init(ptr noundef nonnull @global_ft, ptr noundef nonnull @.str.4, ptr noundef nonnull @ksmbd_init_file_table.__key) #16
  br label %ksmbd_init_file_table.exit

ksmbd_init_file_table.exit:                       ; preds = %if.end.i, %entry.ksmbd_init_file_table.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.ksmbd_init_file_table.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_init_file_table(ptr noundef %ft) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #22
  %idr = getelementptr inbounds %struct.ksmbd_file_table, ptr %ft, i32 0, i32 1
  %1 = ptrtoint ptr %idr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %idr, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #16
  %xa_flags.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idr_next.i.i, align 8
  tail call void @__rwlock_init(ptr noundef %ft, ptr noundef nonnull @.str.4, ptr noundef nonnull @ksmbd_init_file_table.__key) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_free_global_file_table() local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #16
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %call3 = call ptr @idr_get_next(ptr noundef %1, ptr noundef nonnull %id) #16
  %cmp.not4 = icmp eq ptr %call3, null
  br i1 %cmp.not4, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %__ksmbd_remove_durable_fd.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %call5 = phi ptr [ %call, %__ksmbd_remove_durable_fd.exit.for.body_crit_edge ], [ %call3, %entry.for.body_crit_edge ]
  %persistent_id.i = getelementptr inbounds %struct.ksmbd_file, ptr %call5, i32 0, i32 2
  %2 = ptrtoint ptr %persistent_id.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %persistent_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %3)
  %cmp.i.i = icmp ult i64 %3, 2147483647
  br i1 %cmp.i.i, label %if.end.i, label %for.body.__ksmbd_remove_durable_fd.exit_crit_edge

for.body.__ksmbd_remove_durable_fd.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_remove_durable_fd.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_write_lock(ptr noundef nonnull @global_ft) #16
  %4 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %persistent_id.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %persistent_id.i, align 8
  %conv.i = trunc i64 %6 to i32
  %call2.i = call ptr @idr_remove(ptr noundef %4, i32 noundef %conv.i) #16
  call void @_raw_write_unlock(ptr noundef nonnull @global_ft) #16
  br label %__ksmbd_remove_durable_fd.exit

__ksmbd_remove_durable_fd.exit:                   ; preds = %if.end.i, %for.body.__ksmbd_remove_durable_fd.exit_crit_edge
  %7 = load ptr, ptr @filp_cache, align 4
  call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %call5) #16
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %add = add i32 %9, 1
  store i32 %add, ptr %id, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %call = call ptr @idr_get_next(ptr noundef %10, ptr noundef nonnull %id) #16
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %__ksmbd_remove_durable_fd.exit.for.end_crit_edge, label %__ksmbd_remove_durable_fd.exit.for.body_crit_edge

__ksmbd_remove_durable_fd.exit.for.body_crit_edge: ; preds = %__ksmbd_remove_durable_fd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

__ksmbd_remove_durable_fd.exit.for.end_crit_edge: ; preds = %__ksmbd_remove_durable_fd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %__ksmbd_remove_durable_fd.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.end.ksmbd_destroy_file_table.exit_crit_edge, label %if.end.i2

for.end.ksmbd_destroy_file_table.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ksmbd_destroy_file_table.exit

if.end.i2:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call fastcc i32 @__close_file_table_ids(ptr noundef nonnull @global_ft, ptr noundef null, ptr noundef nonnull @session_fd_check) #16
  %12 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  call void @idr_destroy(ptr noundef %12) #16
  %13 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  call void @kfree(ptr noundef %13) #16
  store ptr null, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  br label %ksmbd_destroy_file_table.exit

ksmbd_destroy_file_table.exit:                    ; preds = %if.end.i2, %for.end.ksmbd_destroy_file_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_destroy_file_table(ptr noundef %ft) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idr = getelementptr inbounds %struct.ksmbd_file_table, ptr %ft, i32 0, i32 1
  %0 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call fastcc i32 @__close_file_table_ids(ptr noundef %ft, ptr noundef null, ptr noundef nonnull @session_fd_check)
  %2 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idr, align 4
  tail call void @idr_destroy(ptr noundef %3) #16
  %4 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idr, align 4
  tail call void @kfree(ptr noundef %5) #16
  %6 = ptrtoint ptr %idr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %idr, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_init_file_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 256, i32 noundef 0, i32 noundef 8192, ptr noundef null) #16
  store ptr %call, ptr @filp_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_exit_file_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @filp_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ksmbd_close_fd(ptr noundef %ft, ptr noundef %fp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fd_limit, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @fd_limit, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fd_limit, ptr nonnull @fd_limit, i32 1, ptr nonnull elementtype(i32) @fd_limit) #16, !srcloc !71
  %persistent_id.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 2
  %1 = ptrtoint ptr %persistent_id.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %persistent_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %2)
  %cmp.i.i = icmp ult i64 %2, 2147483647
  br i1 %cmp.i.i, label %if.end.i, label %entry.__ksmbd_remove_durable_fd.exit_crit_edge

entry.__ksmbd_remove_durable_fd.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_remove_durable_fd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_write_lock(ptr noundef nonnull @global_ft) #16
  %3 = load ptr, ptr getelementptr inbounds (%struct.ksmbd_file_table, ptr @global_ft, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %persistent_id.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %persistent_id.i, align 8
  %conv.i = trunc i64 %5 to i32
  %call2.i = tail call ptr @idr_remove(ptr noundef %3, i32 noundef %conv.i) #16
  tail call void @_raw_write_unlock(ptr noundef nonnull @global_ft) #16
  br label %__ksmbd_remove_durable_fd.exit

__ksmbd_remove_durable_fd.exit:                   ; preds = %if.end.i, %entry.__ksmbd_remove_durable_fd.exit_crit_edge
  %volatile_id.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 3
  %6 = ptrtoint ptr %volatile_id.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %volatile_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %7)
  %cmp.i.i39 = icmp ult i64 %7, 2147483647
  br i1 %cmp.i.i39, label %if.end.i41, label %__ksmbd_remove_durable_fd.exit.__ksmbd_remove_fd.exit_crit_edge

__ksmbd_remove_durable_fd.exit.__ksmbd_remove_fd.exit_crit_edge: ; preds = %__ksmbd_remove_durable_fd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_remove_fd.exit

if.end.i41:                                       ; preds = %__ksmbd_remove_durable_fd.exit
  %f_ci.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %8 = ptrtoint ptr %f_ci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_ci.i, align 4
  tail call void @_raw_write_lock(ptr noundef %9) #16
  %node.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 23
  %call.i.i.i40 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #16
  br i1 %call.i.i.i40, label %if.end.i.i.i, label %if.end.i41.list_del_init.exit.i_crit_edge

if.end.i41.list_del_init.exit.i_crit_edge:        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i41.list_del_init.exit.i_crit_edge
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 23, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node.i, ptr %prev.i3.i.i, align 4
  %18 = ptrtoint ptr %f_ci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_ci.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %19) #16
  tail call void @_raw_write_lock(ptr noundef %ft) #16
  %idr.i = getelementptr inbounds %struct.ksmbd_file_table, ptr %ft, i32 0, i32 1
  %20 = ptrtoint ptr %idr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idr.i, align 4
  %22 = ptrtoint ptr %volatile_id.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %volatile_id.i, align 8
  %conv.i42 = trunc i64 %23 to i32
  %call4.i = tail call ptr @idr_remove(ptr noundef %21, i32 noundef %conv.i42) #16
  tail call void @_raw_write_unlock(ptr noundef %ft) #16
  br label %__ksmbd_remove_fd.exit

__ksmbd_remove_fd.exit:                           ; preds = %list_del_init.exit.i, %__ksmbd_remove_durable_fd.exit.__ksmbd_remove_fd.exit_crit_edge
  tail call void @close_id_del_oplock(ptr noundef %fp) #16
  %24 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fp, align 8
  %f_ci.i43 = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 5
  %26 = ptrtoint ptr %f_ci.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_ci.i43, align 4
  %stream.i.i = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 22
  %28 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %29, null
  br i1 %cmp.i.not.i, label %__ksmbd_remove_fd.exit.if.end12.i_crit_edge, label %land.lhs.true.i

__ksmbd_remove_fd.exit.if.end12.i_crit_edge:      ; preds = %__ksmbd_remove_fd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %__ksmbd_remove_fd.exit
  %m_flags.i = getelementptr inbounds %struct.ksmbd_inode, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %m_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_flags.i, align 4
  %and.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %and3.i = and i32 %31, -9
  %32 = ptrtoint ptr %m_flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and3.i, ptr %m_flags.i, align 4
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !74
  %dentry5.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %dentry5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentry5.i, align 4
  %39 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream.i.i, align 4
  %call6.i = tail call i32 @ksmbd_vfs_remove_xattr(ptr noundef %36, ptr noundef %38, ptr noundef %40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end12.i_crit_edge, label %do.end.i

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream.i.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %42) #21
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.then.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %__ksmbd_remove_fd.exit.if.end12.i_crit_edge
  %m_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %27, i32 0, i32 1
  %call.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %m_count.i, i32 1, i32 3, i32 1) #16
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i, ptr %m_count.i, i32 1, ptr elementtype(i32) %m_count.i) #16, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then14.i, label %if.end12.i.__ksmbd_inode_close.exit_crit_edge

if.end12.i.__ksmbd_inode_close.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_inode_close.exit

if.then14.i:                                      ; preds = %if.end12.i
  tail call void @_raw_write_lock(ptr noundef %27) #16
  %m_flags15.i = getelementptr inbounds %struct.ksmbd_inode, ptr %27, i32 0, i32 5
  %44 = ptrtoint ptr %m_flags15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_flags15.i, align 4
  %and16.i = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.if.end27.i_crit_edge, label %if.then18.i

if.then14.i.if.end27.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  %dentry20.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %dentry20.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dentry20.i, align 4
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_parent.i, align 8
  %and22.i = and i32 %45, -4
  %50 = ptrtoint ptr %m_flags15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and22.i, ptr %m_flags15.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %27) #16
  %f_path.i47.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 1
  %51 = ptrtoint ptr %f_path.i47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %f_path.i47.i, align 8
  %mnt_userns.i.i48.i = getelementptr inbounds %struct.vfsmount, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %mnt_userns.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %mnt_userns.i.i48.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !74
  %call25.i = tail call i32 @ksmbd_vfs_unlink(ptr noundef %54, ptr noundef %49, ptr noundef %47) #16
  tail call void @_raw_write_lock(ptr noundef %27) #16
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then18.i, %if.then14.i.if.end27.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %27) #16
  tail call void @_raw_write_lock(ptr noundef nonnull @inode_hash_lock) #16
  %m_hash.i.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %27, i32 0, i32 6
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.ksmbd_inode, ptr %27, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.not.i.i.i.i, label %if.end27.i.ksmbd_inode_free.exit.i_crit_edge, label %if.then.i.i.i.i

if.end27.i.ksmbd_inode_free.exit.i_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ksmbd_inode_free.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end27.i
  %57 = ptrtoint ptr %m_hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m_hash.i.i.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %58, ptr %56, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %56, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %61 = ptrtoint ptr %m_hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %m_hash.i.i.i, align 4
  %62 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %ksmbd_inode_free.exit.i

ksmbd_inode_free.exit.i:                          ; preds = %__hlist_del.exit.i.i.i.i, %if.end27.i.ksmbd_inode_free.exit.i_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @inode_hash_lock) #16
  tail call void @kfree(ptr noundef %27) #16
  br label %__ksmbd_inode_close.exit

__ksmbd_inode_close.exit:                         ; preds = %ksmbd_inode_free.exit.i, %if.end12.i.__ksmbd_inode_close.exit_crit_edge
  %tobool.not.i45 = icmp eq ptr %25, null
  %cmp.i = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i45, %cmp.i
  br i1 %spec.select.i, label %__ksmbd_inode_close.exit.if.end_crit_edge, label %if.then

__ksmbd_inode_close.exit.if.end_crit_edge:        ; preds = %__ksmbd_inode_close.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %__ksmbd_inode_close.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @fput(ptr noundef nonnull %25) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %__ksmbd_inode_close.exit.if.end_crit_edge
  %lock_list = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 25
  %63 = ptrtoint ptr %lock_list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lock_list, align 4
  %cmp.not53 = icmp eq ptr %64, %lock_list
  br i1 %cmp.not53, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conn = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %list_del.exit51.for.body_crit_edge, %for.body.lr.ph
  %.pn.in54 = phi ptr [ %64, %for.body.lr.ph ], [ %.pn, %list_del.exit51.for.body_crit_edge ]
  %smb_lock.0 = getelementptr i8, ptr %.pn.in54, i32 -12
  %65 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load ptr, ptr %.pn.in54, align 4
  %66 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %conn, align 8
  %llist_lock = getelementptr inbounds %struct.ksmbd_conn, ptr %67, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %llist_lock) #16
  %clist = getelementptr i8, ptr %.pn.in54, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %clist) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr i8, ptr %.pn.in54, i32 -4
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %clist to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %74 = ptrtoint ptr %clist to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %clist, align 4
  %prev.i = getelementptr i8, ptr %.pn.in54, i32 -4
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %76 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %conn, align 8
  %llist_lock9 = getelementptr inbounds %struct.ksmbd_conn, ptr %77, i32 0, i32 26
  tail call void @_raw_spin_unlock(ptr noundef %llist_lock9) #16
  %call.i.i46 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in54) #16
  br i1 %call.i.i46, label %if.end.i.i49, label %list_del.exit.list_del.exit51_crit_edge

list_del.exit.list_del.exit51_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit51

if.end.i.i49:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i47 = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i47, align 4
  %80 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %.pn.in54, align 4
  %prev1.i.i.i48 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i48, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit51

list_del.exit51:                                  ; preds = %if.end.i.i49, %list_del.exit.list_del.exit51_crit_edge
  %84 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in54, align 4
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i50, align 4
  %86 = ptrtoint ptr %smb_lock.0 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %smb_lock.0, align 8
  tail call void @locks_free_lock(ptr noundef %87) #16
  tail call void @kfree(ptr noundef %smb_lock.0) #16
  %cmp.not = icmp eq ptr %.pn, %lock_list
  br i1 %cmp.not, label %list_del.exit51.for.end_crit_edge, label %list_del.exit51.for.body_crit_edge

list_del.exit51.for.body_crit_edge:               ; preds = %list_del.exit51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit51.for.end_crit_edge:                ; preds = %list_del.exit51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit51.for.end_crit_edge, %if.end.for.end_crit_edge
  %filename = getelementptr inbounds %struct.ksmbd_file, ptr %fp, i32 0, i32 1
  %88 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %filename, align 4
  tail call void @kfree(ptr noundef %89) #16
  %90 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %stream.i.i, align 4
  %cmp.i52.not = icmp eq ptr %91, null
  br i1 %cmp.i52.not, label %for.end.if.end18_crit_edge, label %if.then17

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %91) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end.if.end18_crit_edge
  %92 = load ptr, ptr @filp_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %92, ptr noundef %fp) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_id_del_oplock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_free_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_vfs_remove_xattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_vfs_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !54) #16
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !75

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ksmbd_inode_lookup(ptr nocapture noundef readonly %fp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = load ptr, ptr @inode_hashtable, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino.i, align 8
  %9 = ptrtoint ptr %6 to i32
  %mul.i.i = mul i32 %8, %9
  %add.i.i = add i32 %8, 1640531527
  %div7.i.i = lshr i32 %add.i.i, 7
  %xor.i.i = xor i32 %div7.i.i, %mul.i.i
  %xor1.i.i = xor i32 %xor.i.i, 1640531527
  %.b.i.i = load i1, ptr @inode_hash_shift, align 4
  %10 = select i1 %.b.i.i, i32 14, i32 0
  %shr.i.i = lshr i32 %xor1.i.i, %10
  %xor2.i.i = xor i32 %shr.i.i, %xor.i.i
  %.b6.i.i = load i1, ptr @inode_hash_mask, align 4
  %11 = select i1 %.b6.i.i, i32 16383, i32 0
  %and.i.i = and i32 %xor2.i.i, %11
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %4, i32 %and.i.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %add.ptr2.i = getelementptr i8, ptr %13, i32 -64
  %tobool3.not3134.i = icmp eq ptr %add.ptr2.i, null
  %tobool3.not31.i = or i1 %tobool.not.i, %tobool3.not3134.i
  br i1 %tobool3.not31.i, label %entry.__ksmbd_inode_lookup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__ksmbd_inode_lookup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_inode_lookup.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ci.032.i = phi ptr [ %add.ptr13.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr2.i, %entry.for.body.i_crit_edge ]
  %m_inode.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i, i32 0, i32 4
  %14 = ptrtoint ptr %m_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m_inode.i, align 4
  %cmp.i = icmp eq ptr %15, %3
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %m_count.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %m_count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %m_count.i, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %m_count.i, ptr %m_count.i, i32 0, i32 1, ptr elementtype(i32) %m_count.i) #16, !srcloc !65
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.__ksmbd_inode_lookup.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.__ksmbd_inode_lookup.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_inode_lookup.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !66
  br label %__ksmbd_inode_lookup.exit

for.inc.i:                                        ; preds = %for.body.i
  %m_hash.i = getelementptr inbounds %struct.ksmbd_inode, ptr %ci.032.i, i32 0, i32 6
  %17 = ptrtoint ptr %m_hash.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_hash.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  %add.ptr13.i = getelementptr i8, ptr %18, i32 -64
  %tobool3.not36.i = icmp eq ptr %add.ptr13.i, null
  %tobool3.not.i = or i1 %tobool9.not.i, %tobool3.not36.i
  br i1 %tobool3.not.i, label %for.inc.i.__ksmbd_inode_lookup.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.__ksmbd_inode_lookup.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ksmbd_inode_lookup.exit

__ksmbd_inode_lookup.exit:                        ; preds = %for.inc.i.__ksmbd_inode_lookup.exit_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.__ksmbd_inode_lookup.exit_crit_edge, %entry.__ksmbd_inode_lookup.exit_crit_edge
  %ret_ci.0.i = phi ptr [ null, %entry.__ksmbd_inode_lookup.exit_crit_edge ], [ null, %if.then.i.__ksmbd_inode_lookup.exit_crit_edge ], [ %ci.032.i, %do.end11.i.i.i.i.i ], [ null, %for.inc.i.__ksmbd_inode_lookup.exit_crit_edge ]
  ret ptr %ret_ci.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/vfs_cache.c", i32 561, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_open_fd._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_open_fd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @ksmbd_open_fd.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/vfs_cache.c", i32 568, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ksmbd_init_file_table.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/ksmbd/vfs_cache.c", i32 676, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ksmbd/vfs_cache.c", i32 693, i32 33}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/vfs_cache.c", i32 702, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ksmbd_init_file_cache._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @ksmbd_init_file_cache._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"inode_hash_mask", i1 false, i1 false}
!20 = !{!"../fs/ksmbd/vfs_cache.c", i32 24, i32 21}
!21 = distinct !{null, !22, !"inode_hash_shift", i1 false, i1 false}
!22 = !{!"../fs/ksmbd/vfs_cache.c", i32 25, i32 21}
!23 = !{ptr @inode_hashtable, !24, !"inode_hashtable", i1 false, i1 false}
!24 = !{!"../fs/ksmbd/vfs_cache.c", i32 26, i32 27}
!25 = !{ptr @global_ft, !26, !"global_ft", i1 false, i1 false}
!26 = !{!"../fs/ksmbd/vfs_cache.c", i32 29, i32 32}
!27 = !{ptr @fd_limit, !28, !"fd_limit", i1 false, i1 false}
!28 = !{!"../fs/ksmbd/vfs_cache.c", i32 30, i32 22}
!29 = !{ptr @filp_cache, !30, !"filp_cache", i1 false, i1 false}
!30 = !{!"../fs/ksmbd/vfs_cache.c", i32 31, i32 27}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ksmbd/vfs_cache.c", i32 27, i32 8}
!33 = !{ptr @inode_hash_lock, !32, !"inode_hash_lock", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ksmbd/vfs_cache.c", i32 258, i32 4}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__ksmbd_inode_close._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @__ksmbd_inode_close._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ksmbd/vfs_cache.c", i32 188, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ksmbd_inode_get._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ksmbd_inode_get._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ksmbd_inode_init.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../fs/ksmbd/vfs_cache.c", i32 167, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @xa_init_flags.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148664780}
!65 = !{i64 1151380, i64 1151405, i64 1151427, i64 1151443, i64 1151455, i64 1151475, i64 1151499, i64 1151515, i64 1151527}
!66 = !{i64 2148664968}
!67 = !{i64 2148667826, i64 2148667852, i64 2148667881, i64 2148667915, i64 2148667946, i64 2148667969}
!68 = !{i64 2148753837}
!69 = !{i64 2148668546, i64 2148668578, i64 2148668607, i64 2148668641, i64 2148668672, i64 2148668695}
!70 = !{i64 2148754066}
!71 = !{i64 2148665361, i64 2148665387, i64 2148665416, i64 2148665450, i64 2148665481, i64 2148665504}
!72 = !{i64 2153014781}
!73 = !{ptr @session_fd_check, ptr @tree_conn_fd_check}
!74 = !{i64 2152416821}
!75 = !{!"branch_weights", i32 2000, i32 1}
