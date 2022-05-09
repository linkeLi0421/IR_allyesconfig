; ModuleID = '/llk/IR_all_yes/fs/orangefs/dcache.c_pt.bc'
source_filename = "../fs/orangefs/dcache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.84, %struct.list_head, %struct.list_head, %union.anon.85 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.84 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.85 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
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
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }

@orangefs_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @orangefs_d_revalidate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_d_revalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: called on dentry %p.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orangefs_d_revalidate\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/orangefs/dcache.c\00", [43 x i8] zeroinitializer }, align 32
@orangefs_d_revalidate._entry_ptr = internal global ptr @orangefs_d_revalidate._entry, section ".printk_index", align 4
@orangefs_d_revalidate._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: negative dentry or positive dentry and inode valid.\0A\00", [37 x i8] zeroinitializer }, align 32
@orangefs_d_revalidate._entry_ptr.5 = internal global ptr @orangefs_d_revalidate._entry.3, section ".printk_index", align 4
@orangefs_d_revalidate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:%s:%d getattr failure.\0A\00", [35 x i8] zeroinitializer }, align 32
@orangefs_d_revalidate._entry_ptr.8 = internal global ptr @orangefs_d_revalidate._entry.6, section ".printk_index", align 4
@is_root_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: root handle: %pU, this handle: %pU:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_root_handle\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/orangefs/orangefs-kernel.h\00", [34 x i8] zeroinitializer }, align 32
@is_root_handle._entry_ptr = internal global ptr @is_root_handle._entry, section ".printk_index", align 4
@orangefs_revalidate_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 26, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: attempting lookup.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_revalidate_lookup\00", [37 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry_ptr = internal global ptr @orangefs_revalidate_lookup._entry, section ".printk_index", align 4
@orangefs_revalidate_lookup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:%s:%d interrupt flag [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry_ptr.16 = internal global ptr @orangefs_revalidate_lookup._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"orangefs_lookup\00", [16 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:%s:%d lookup failure.\0A\00", [36 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry_ptr.20 = internal global ptr @orangefs_revalidate_lookup._entry.18, section ".printk_index", align 4
@orangefs_revalidate_lookup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s:%s:%d no match.\0A\00", [42 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry_ptr.23 = internal global ptr @orangefs_revalidate_lookup._entry.21, section ".printk_index", align 4
@orangefs_revalidate_lookup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: negative dentry.\0A\00", [40 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry_ptr.26 = internal global ptr @orangefs_revalidate_lookup._entry.24, section ".printk_index", align 4
@orangefs_revalidate_lookup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry_ptr.28 = internal global ptr @orangefs_revalidate_lookup._entry.27, section ".printk_index", align 4
@orangefs_revalidate_lookup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:%s:%d revalidate failed\0A\00", [34 x i8] zeroinitializer }, align 32
@orangefs_revalidate_lookup._entry_ptr.31 = internal global ptr @orangefs_revalidate_lookup._entry.29, section ".printk_index", align 4
@match_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.11, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: one handle: %pU, another handle:%pU:\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"match_handle\00", [19 x i8] zeroinitializer }, align 32
@match_handle._entry_ptr = internal global ptr @match_handle._entry, section ".printk_index", align 4
@orangefs_dcache_timeout_msecs = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 124, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 134, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 287, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 26, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 40, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 47, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 53, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 60, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 68, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 72, i32 5 }
@___asan_gen_.113 = private constant [24 x i8] c"../fs/orangefs/dcache.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 87, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [33 x i8] c"../fs/orangefs/orangefs-kernel.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 303, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @is_root_handle._entry, ptr @is_root_handle._entry_ptr, ptr @match_handle._entry, ptr @match_handle._entry_ptr, ptr @orangefs_d_revalidate._entry, ptr @orangefs_d_revalidate._entry.3, ptr @orangefs_d_revalidate._entry.6, ptr @orangefs_d_revalidate._entry_ptr, ptr @orangefs_d_revalidate._entry_ptr.5, ptr @orangefs_d_revalidate._entry_ptr.8, ptr @orangefs_revalidate_lookup._entry, ptr @orangefs_revalidate_lookup._entry.14, ptr @orangefs_revalidate_lookup._entry.18, ptr @orangefs_revalidate_lookup._entry.21, ptr @orangefs_revalidate_lookup._entry.24, ptr @orangefs_revalidate_lookup._entry.27, ptr @orangefs_revalidate_lookup._entry.29, ptr @orangefs_revalidate_lookup._entry_ptr, ptr @orangefs_revalidate_lookup._entry_ptr.16, ptr @orangefs_revalidate_lookup._entry_ptr.20, ptr @orangefs_revalidate_lookup._entry_ptr.23, ptr @orangefs_revalidate_lookup._entry_ptr.26, ptr @orangefs_revalidate_lookup._entry_ptr.28, ptr @orangefs_revalidate_lookup._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.30, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_d_revalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_d_revalidate._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_d_revalidate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_root_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_revalidate_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_revalidate_lookup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_revalidate_lookup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_revalidate_lookup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_revalidate_lookup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_revalidate_lookup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_revalidate_lookup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_d_revalidate(ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %resp_handle.i.i = alloca %struct.orangefs_khandle, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %3, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and3 = and i64 %4, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %dentry) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode, align 8
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.end9.if.end15_crit_edge, label %land.lhs.true

do.end9.if.end15_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end9
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i = and i64 %7, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.is_root_handle.exit_crit_edge, label %do.end.i

land.lhs.true.is_root_handle.exit_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_root_handle.exit

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 -376
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %11, ptr noundef %add.ptr.i.i.i) #9
  br label %is_root_handle.exit

is_root_handle.exit:                              ; preds = %do.end.i, %land.lhs.true.is_root_handle.exit_crit_edge
  %i_sb5.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb5.i, align 4
  %s_fs_info.i15.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i15.i, align 16
  %add.ptr.i.i16.i = getelementptr i8, ptr %6, i32 -376
  %call9.i = tail call fastcc i32 @ORANGEFS_khandle_cmp(ptr noundef %15, ptr noundef %add.ptr.i.i16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i.not = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i.not, label %is_root_handle.exit.cleanup_crit_edge, label %is_root_handle.exit.if.end15_crit_edge

is_root_handle.exit.if.end15_crit_edge:           ; preds = %is_root_handle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

is_root_handle.exit.cleanup_crit_edge:            ; preds = %is_root_handle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %is_root_handle.exit.if.end15_crit_edge, %do.end9.if.end15_crit_edge
  %call.i = tail call ptr @dget_parent(ptr noundef %dentry) #6
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -376
  %18 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %20 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i63 = and i64 %20, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i63)
  %tobool.not.i64 = icmp eq i64 %and.i63, 0
  br i1 %tobool.not.i64, label %if.end15.do.end6.i_crit_edge, label %do.end.i65

if.end15.do.end6.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i65:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i65, %if.end15.do.end6.i_crit_edge
  %call7.i = tail call ptr @op_alloc(i32 noundef -16777214) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %orangefs_revalidate_lookup.exit.thread, label %if.end10.i

orangefs_revalidate_lookup.exit.thread:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dput(ptr noundef %call.i) #6
  br label %if.end19

if.end10.i:                                       ; preds = %do.end6.i
  %req.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %req.i, align 8
  %parent_refn.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 3, i32 7, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %parent_refn.i, ptr %add.ptr.i.i, i32 24)
  %d_name.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i, align 8
  %call16.i = tail call ptr @strncpy(ptr noundef %d_name.i, ptr noundef %24, i32 noundef 255) #6
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %25 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and18.i = and i64 %25, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end10.i.do.end31.i_crit_edge, label %do.end23.i

if.end10.i.do.end31.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.i

do.end23.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb.i66 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i66, align 4
  %s_fs_info.i.i67 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i67, align 16
  %flags.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %and26.i = and i32 %31, 1
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, i32 noundef 45, i32 noundef %and26.i) #9
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end23.i, %if.end10.i.do.end31.i_crit_edge
  %i_sb32.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb32.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb32.i, align 4
  %s_fs_info.i139.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i139.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i139.i, align 16
  %flags34.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags34.i, align 8
  %and35.i = and i32 %37, 1
  %call38.i = tail call i32 @service_operation(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.17, i32 noundef %and35.i) #6
  %tobool39.not.i = icmp eq ptr %19, null
  br i1 %tobool39.not.i, label %do.body73.i, label %if.then40.i

if.then40.i:                                      ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool41.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool41.not.i, label %if.end55.i, label %do.body43.i

do.body43.i:                                      ; preds = %if.then40.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %38 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and44.i = and i64 %38, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44.i)
  %tobool45.not.i = icmp eq i64 %and44.i, 0
  br i1 %tobool45.not.i, label %do.body43.i.do.body105.i_crit_edge, label %do.end49.i

do.body43.i.do.body105.i_crit_edge:               ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body105.i

do.end49.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, i32 noundef 55) #9
  br label %do.body105.i

if.end55.i:                                       ; preds = %if.then40.i
  %resp.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack.i = load i32, ptr %resp.i, align 8
  %.elt133.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 4, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %.elt133.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack134.i = load i32, ptr %.elt133.i, align 4
  %.elt135.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 4, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %.elt135.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack136.i = load i32, ptr %.elt135.i, align 8
  %.elt137.i = getelementptr inbounds [4 x i32], ptr %resp.i, i32 0, i32 3
  %42 = ptrtoint ptr %.elt137.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack138.i = load i32, ptr %.elt137.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp_handle.i.i) #6
  %43 = ptrtoint ptr %resp_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.unpack.i, ptr %resp_handle.i.i, align 8
  %resp_handle.coerce.fca.1.gep.i.i = getelementptr inbounds [4 x i32], ptr %resp_handle.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %resp_handle.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.unpack134.i, ptr %resp_handle.coerce.fca.1.gep.i.i, align 4
  %resp_handle.coerce.fca.2.gep.i.i = getelementptr inbounds [4 x i32], ptr %resp_handle.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %resp_handle.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.unpack136.i, ptr %resp_handle.coerce.fca.2.gep.i.i, align 8
  %resp_handle.coerce.fca.3.gep.i.i = getelementptr inbounds [4 x i32], ptr %resp_handle.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %resp_handle.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.unpack138.i, ptr %resp_handle.coerce.fca.3.gep.i.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %47 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i.i = and i64 %47, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end55.i.match_handle.exit.i_crit_edge, label %do.end.i.i

if.end55.i.match_handle.exit.i_crit_edge:         ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %match_handle.exit.i

do.end.i.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 -376
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull %resp_handle.i.i, ptr noundef %add.ptr.i.i.i.i) #9
  br label %match_handle.exit.i

match_handle.exit.i:                              ; preds = %do.end.i.i, %if.end55.i.match_handle.exit.i_crit_edge
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %19, i32 -376
  %call5.i.i = call fastcc i32 @ORANGEFS_khandle_cmp(ptr noundef nonnull %resp_handle.i.i, ptr noundef %add.ptr.i.i9.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.not.i = icmp eq i32 %call5.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp_handle.i.i) #6
  br i1 %tobool6.not.i.not.i, label %match_handle.exit.i.if.end104.i_crit_edge, label %do.body60.i

match_handle.exit.i.if.end104.i_crit_edge:        ; preds = %match_handle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i

do.body60.i:                                      ; preds = %match_handle.exit.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %48 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and61.i = and i64 %48, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and61.i)
  %tobool62.not.i = icmp eq i64 %and61.i, 0
  br i1 %tobool62.not.i, label %do.body60.i.do.body105.i_crit_edge, label %do.end66.i

do.body60.i.do.body105.i_crit_edge:               ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body105.i

do.end66.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #8
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, i32 noundef 62) #9
  br label %do.body105.i

do.body73.i:                                      ; preds = %do.end31.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %49 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and74.i = and i64 %49, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and74.i)
  %tobool75.not.i = icmp eq i64 %and74.i, 0
  br i1 %tobool75.not.i, label %do.body73.i.do.end84.i_crit_edge, label %do.end79.i

do.body73.i.do.end84.i_crit_edge:                 ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end84.i

do.end79.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #8
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.13) #9
  br label %do.end84.i

do.end84.i:                                       ; preds = %do.end79.i, %do.body73.i.do.end84.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call38.i)
  %cond.i = icmp eq i32 %call38.i, -2
  br i1 %cond.i, label %do.end84.i.if.end104.i_crit_edge, label %if.then86.i

do.end84.i.if.end104.i_crit_edge:                 ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i

if.then86.i:                                      ; preds = %do.end84.i
  %status.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp88.not.i = icmp eq i32 %51, 0
  br i1 %cmp88.not.i, label %if.then86.i.do.body105.i_crit_edge, label %do.body90.i

if.then86.i.do.body105.i_crit_edge:               ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body105.i

do.body90.i:                                      ; preds = %if.then86.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %52 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and91.i = and i64 %52, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and91.i)
  %tobool92.not.i = icmp eq i64 %and91.i, 0
  br i1 %tobool92.not.i, label %do.body90.i.do.body105.i_crit_edge, label %do.end96.i

do.body90.i.do.body105.i_crit_edge:               ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body105.i

do.end96.i:                                       ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, i32 noundef 74) #9
  br label %do.body105.i

if.end104.i:                                      ; preds = %do.end84.i.if.end104.i_crit_edge, %match_handle.exit.i.if.end104.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_dcache_timeout_msecs to i32))
  %54 = load i32, ptr @orangefs_dcache_timeout_msecs, align 4
  %mul.i.i = mul i32 %54, 100
  %div.i.i = sdiv i32 %mul.i.i, 1000
  %add.i.i = add i32 %div.i.i, %53
  %55 = inttoptr i32 %add.i.i to ptr
  %56 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %d_fsdata, align 4
  call void @op_release(ptr noundef nonnull %call7.i) #6
  call void @dput(ptr noundef %call.i) #6
  br label %if.end19

do.body105.i:                                     ; preds = %do.end96.i, %do.body90.i.do.body105.i_crit_edge, %if.then86.i.do.body105.i_crit_edge, %do.end66.i, %do.body60.i.do.body105.i_crit_edge, %do.end49.i, %do.body43.i.do.body105.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %57 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and106.i = and i64 %57, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and106.i)
  %tobool107.not.i = icmp eq i64 %and106.i, 0
  br i1 %tobool107.not.i, label %do.body105.i.orangefs_revalidate_lookup.exit_crit_edge, label %do.end111.i

do.body105.i.orangefs_revalidate_lookup.exit_crit_edge: ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %orangefs_revalidate_lookup.exit

do.end111.i:                                      ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #8
  %call113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, i32 noundef 88) #9
  br label %orangefs_revalidate_lookup.exit

orangefs_revalidate_lookup.exit:                  ; preds = %do.end111.i, %do.body105.i.orangefs_revalidate_lookup.exit_crit_edge
  call void @op_release(ptr noundef nonnull %call7.i) #6
  call void @dput(ptr noundef %call.i) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end104.i, %orangefs_revalidate_lookup.exit.thread
  %58 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d_inode, align 8
  %tobool21.not = icmp eq ptr %59, null
  br i1 %tobool21.not, label %do.body23, label %if.end35

do.body23:                                        ; preds = %if.end19
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %60 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and24 = and i64 %60, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %do.end29

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end19
  %call37 = call i32 @orangefs_inode_check_changed(ptr noundef nonnull %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.body40, label %if.end52

do.body40:                                        ; preds = %if.end35
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %61 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and41 = and i64 %61, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41)
  %tobool42.not = icmp eq i64 %and41, 0
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %do.end46

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 135) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool53.not = icmp eq i32 %call37, 0
  %lnot.ext = zext i1 %tobool53.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end46, %do.body40.cleanup_crit_edge, %do.end29, %do.body23.cleanup_crit_edge, %orangefs_revalidate_lookup.exit, %is_root_handle.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end52 ], [ 1, %entry.cleanup_crit_edge ], [ -10, %if.end.cleanup_crit_edge ], [ 1, %is_root_handle.exit.cleanup_crit_edge ], [ 0, %orangefs_revalidate_lookup.exit ], [ 1, %do.end29 ], [ 1, %do.body23.cleanup_crit_edge ], [ 0, %do.end46 ], [ 0, %do.body40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_check_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ORANGEFS_khandle_cmp(ptr nocapture noundef readonly %kh1, ptr nocapture noundef readonly %kh2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [16 x i8], ptr %kh1, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 15
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp4 = icmp ugt i8 %1, %3
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 14
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 14
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp4.1 = icmp ugt i8 %5, %7
  br i1 %cmp4.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp12.1 = icmp ult i8 %5, %7
  br i1 %cmp12.1, label %if.end.1.cleanup_crit_edge, label %for.cond.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %arrayidx.2 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 13
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 13
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp4.2 = icmp ugt i8 %9, %11
  br i1 %cmp4.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp12.2 = icmp ult i8 %9, %11
  br i1 %cmp12.2, label %if.end.2.cleanup_crit_edge, label %for.cond.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  %arrayidx.3 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 12
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 12
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp4.3 = icmp ugt i8 %13, %15
  br i1 %cmp4.3, label %for.cond.2.cleanup_crit_edge, label %if.end.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp12.3 = icmp ult i8 %13, %15
  br i1 %cmp12.3, label %if.end.3.cleanup_crit_edge, label %for.cond.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %if.end.3
  %arrayidx.4 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 11
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 11
  %18 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp4.4 = icmp ugt i8 %17, %19
  br i1 %cmp4.4, label %for.cond.3.cleanup_crit_edge, label %if.end.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp12.4 = icmp ult i8 %17, %19
  br i1 %cmp12.4, label %if.end.4.cleanup_crit_edge, label %for.cond.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %if.end.4
  %arrayidx.5 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 10
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5, align 1
  %arrayidx2.5 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 10
  %22 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp4.5 = icmp ugt i8 %21, %23
  br i1 %cmp4.5, label %for.cond.4.cleanup_crit_edge, label %if.end.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp12.5 = icmp ult i8 %21, %23
  br i1 %cmp12.5, label %if.end.5.cleanup_crit_edge, label %for.cond.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.5:                                       ; preds = %if.end.5
  %arrayidx.6 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 9
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.6, align 1
  %arrayidx2.6 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp4.6 = icmp ugt i8 %25, %27
  br i1 %cmp4.6, label %for.cond.5.cleanup_crit_edge, label %if.end.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.6:                                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp12.6 = icmp ult i8 %25, %27
  br i1 %cmp12.6, label %if.end.6.cleanup_crit_edge, label %for.cond.6

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.6:                                       ; preds = %if.end.6
  %arrayidx.7 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.7, align 1
  %arrayidx2.7 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp4.7 = icmp ugt i8 %29, %31
  br i1 %cmp4.7, label %for.cond.6.cleanup_crit_edge, label %if.end.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.7:                                         ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp12.7 = icmp ult i8 %29, %31
  br i1 %cmp12.7, label %if.end.7.cleanup_crit_edge, label %for.cond.7

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.7:                                       ; preds = %if.end.7
  %arrayidx.8 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.8, align 1
  %arrayidx2.8 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 7
  %34 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp4.8 = icmp ugt i8 %33, %35
  br i1 %cmp4.8, label %for.cond.7.cleanup_crit_edge, label %if.end.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.8:                                         ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp12.8 = icmp ult i8 %33, %35
  br i1 %cmp12.8, label %if.end.8.cleanup_crit_edge, label %for.cond.8

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.8:                                       ; preds = %if.end.8
  %arrayidx.9 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.9, align 1
  %arrayidx2.9 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp4.9 = icmp ugt i8 %37, %39
  br i1 %cmp4.9, label %for.cond.8.cleanup_crit_edge, label %if.end.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.9:                                         ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp12.9 = icmp ult i8 %37, %39
  br i1 %cmp12.9, label %if.end.9.cleanup_crit_edge, label %for.cond.9

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.9:                                       ; preds = %if.end.9
  %arrayidx.10 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 5
  %40 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.10, align 1
  %arrayidx2.10 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp4.10 = icmp ugt i8 %41, %43
  br i1 %cmp4.10, label %for.cond.9.cleanup_crit_edge, label %if.end.10

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.10:                                        ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp12.10 = icmp ult i8 %41, %43
  br i1 %cmp12.10, label %if.end.10.cleanup_crit_edge, label %for.cond.10

if.end.10.cleanup_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.10:                                      ; preds = %if.end.10
  %arrayidx.11 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.11, align 1
  %arrayidx2.11 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx2.11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp4.11 = icmp ugt i8 %45, %47
  br i1 %cmp4.11, label %for.cond.10.cleanup_crit_edge, label %if.end.11

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.11:                                        ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp12.11 = icmp ult i8 %45, %47
  br i1 %cmp12.11, label %if.end.11.cleanup_crit_edge, label %for.cond.11

if.end.11.cleanup_crit_edge:                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.11:                                      ; preds = %if.end.11
  %arrayidx.12 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.12, align 1
  %arrayidx2.12 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp4.12 = icmp ugt i8 %49, %51
  br i1 %cmp4.12, label %for.cond.11.cleanup_crit_edge, label %if.end.12

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.12:                                        ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp12.12 = icmp ult i8 %49, %51
  br i1 %cmp12.12, label %if.end.12.cleanup_crit_edge, label %for.cond.12

if.end.12.cleanup_crit_edge:                      ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.12:                                      ; preds = %if.end.12
  %arrayidx.13 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.13, align 1
  %arrayidx2.13 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp4.13 = icmp ugt i8 %53, %55
  br i1 %cmp4.13, label %for.cond.12.cleanup_crit_edge, label %if.end.13

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.13:                                        ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp12.13 = icmp ult i8 %53, %55
  br i1 %cmp12.13, label %if.end.13.cleanup_crit_edge, label %for.cond.13

if.end.13.cleanup_crit_edge:                      ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.13:                                      ; preds = %if.end.13
  %arrayidx.14 = getelementptr [16 x i8], ptr %kh1, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.14, align 1
  %arrayidx2.14 = getelementptr [16 x i8], ptr %kh2, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx2.14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp4.14 = icmp ugt i8 %57, %59
  br i1 %cmp4.14, label %for.cond.13.cleanup_crit_edge, label %if.end.14

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.14:                                        ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp12.14 = icmp ult i8 %57, %59
  br i1 %cmp12.14, label %if.end.14.cleanup_crit_edge, label %for.cond.14

if.end.14.cleanup_crit_edge:                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.14:                                      ; preds = %if.end.14
  %60 = ptrtoint ptr %kh1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %kh1, align 1
  %62 = ptrtoint ptr %kh2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %kh2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp4.15 = icmp ugt i8 %61, %63
  br i1 %cmp4.15, label %for.cond.14.cleanup_crit_edge, label %if.end.15

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.15:                                        ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp12.15 = icmp ult i8 %61, %63
  %spec.select = sext i1 %cmp12.15 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp12 = icmp ult i8 %1, %3
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.15, %for.cond.14.cleanup_crit_edge, %if.end.14.cleanup_crit_edge, %for.cond.13.cleanup_crit_edge, %if.end.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %if.end.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %if.end.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %if.end.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %if.end.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ -1, %if.end.1.cleanup_crit_edge ], [ 1, %for.cond.1.cleanup_crit_edge ], [ -1, %if.end.2.cleanup_crit_edge ], [ 1, %for.cond.2.cleanup_crit_edge ], [ -1, %if.end.3.cleanup_crit_edge ], [ 1, %for.cond.3.cleanup_crit_edge ], [ -1, %if.end.4.cleanup_crit_edge ], [ 1, %for.cond.4.cleanup_crit_edge ], [ -1, %if.end.5.cleanup_crit_edge ], [ 1, %for.cond.5.cleanup_crit_edge ], [ -1, %if.end.6.cleanup_crit_edge ], [ 1, %for.cond.6.cleanup_crit_edge ], [ -1, %if.end.7.cleanup_crit_edge ], [ 1, %for.cond.7.cleanup_crit_edge ], [ -1, %if.end.8.cleanup_crit_edge ], [ 1, %for.cond.8.cleanup_crit_edge ], [ -1, %if.end.9.cleanup_crit_edge ], [ 1, %for.cond.9.cleanup_crit_edge ], [ -1, %if.end.10.cleanup_crit_edge ], [ 1, %for.cond.10.cleanup_crit_edge ], [ -1, %if.end.11.cleanup_crit_edge ], [ 1, %for.cond.11.cleanup_crit_edge ], [ -1, %if.end.12.cleanup_crit_edge ], [ 1, %for.cond.12.cleanup_crit_edge ], [ -1, %if.end.13.cleanup_crit_edge ], [ 1, %for.cond.13.cleanup_crit_edge ], [ -1, %if.end.14.cleanup_crit_edge ], [ 1, %for.cond.14.cleanup_crit_edge ], [ %spec.select, %if.end.15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @orangefs_dentry_operations, !1, !"orangefs_dentry_operations", i1 false, i1 false}
!1 = !{!"../fs/orangefs/dcache.c", i32 141, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/orangefs/dcache.c", i32 108, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @orangefs_d_revalidate._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @orangefs_d_revalidate._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/orangefs/dcache.c", i32 124, i32 3}
!10 = !{ptr @orangefs_d_revalidate._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @orangefs_d_revalidate._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/orangefs/dcache.c", i32 134, i32 3}
!14 = !{ptr @orangefs_d_revalidate._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @orangefs_d_revalidate._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/orangefs/orangefs-kernel.h", i32 287, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @is_root_handle._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @is_root_handle._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/orangefs/dcache.c", i32 26, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @orangefs_revalidate_lookup._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @orangefs_revalidate_lookup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/orangefs/dcache.c", i32 40, i32 2}
!29 = !{ptr @orangefs_revalidate_lookup._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @orangefs_revalidate_lookup._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/orangefs/dcache.c", i32 47, i32 34}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/orangefs/dcache.c", i32 53, i32 4}
!35 = !{ptr @orangefs_revalidate_lookup._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @orangefs_revalidate_lookup._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/orangefs/dcache.c", i32 60, i32 4}
!39 = !{ptr @orangefs_revalidate_lookup._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @orangefs_revalidate_lookup._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/orangefs/dcache.c", i32 68, i32 3}
!43 = !{ptr @orangefs_revalidate_lookup._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @orangefs_revalidate_lookup._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @orangefs_revalidate_lookup._entry.27, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../fs/orangefs/dcache.c", i32 72, i32 5}
!47 = !{ptr @orangefs_revalidate_lookup._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/orangefs/dcache.c", i32 87, i32 2}
!50 = !{ptr @orangefs_revalidate_lookup._entry.29, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @orangefs_revalidate_lookup._entry_ptr.31, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/orangefs/orangefs-kernel.h", i32 303, i32 2}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @match_handle._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @match_handle._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
