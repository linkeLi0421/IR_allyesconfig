; ModuleID = '/llk/IR_all_yes/fs/nfs/fscache.c_pt.bc'
source_filename = "../fs/nfs/fscache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_fscache_open_file\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_fscache_open_file\09\09\09\09"
module asm "\09.long\09__crc_nfs_fscache_open_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_fscache_open_file:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_fscache_open_file\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_fscache_open_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.125 }
%union.anon.125 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.62 }
%union.anon.62 = type { [4 x i32] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.130, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.130 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.nfs_fscache_inode_auxdata = type { i64, i64, i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.121, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.122, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.123, ptr, %struct.address_space, %struct.list_head, %union.anon.142, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.121 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.122 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.142 = type { ptr }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.168, %union.anon.169 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.168 = type { ptr, [12 x i8] }
%union.anon.169 = type { ptr, [4 x i8] }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.37, %union.anon.38 }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.19, %union.anon.120, %struct.atomic_t, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.120 = type { %struct.atomic_t }
%struct.netfs_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_iostats = type { [8 x i64], [5 x i64], [27 x i32], [44 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_fscache_get_super_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFS: get superblock cookie (0x%p/0x%p)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfs_fscache_get_super_cookie\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nfs/fscache.c\00", [47 x i8] zeroinitializer }, align 32
@nfs_fscache_get_super_cookie._entry_ptr = internal global ptr @nfs_fscache_get_super_cookie._entry, section ".printk_index", align 4
@nfs_fscache_get_super_cookie._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013NFS: Cache volume key already in use (%s)\0A\00", [51 x i8] zeroinitializer }, align 32
@nfs_fscache_get_super_cookie._entry_ptr.6 = internal global ptr @nfs_fscache_get_super_cookie._entry.4, section ".printk_index", align 4
@nfs_fscache_release_super_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFS: releasing superblock cookie (0x%p/0x%p)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfs_fscache_release_super_cookie\00", [63 x i8] zeroinitializer }, align 32
@nfs_fscache_release_super_cookie._entry_ptr = internal global ptr @nfs_fscache_release_super_cookie._entry, section ".printk_index", align 4
@nfs_fscache_clear_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFS: clear cookie (0x%p/0x%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfs_fscache_clear_inode\00", [40 x i8] zeroinitializer }, align 32
@nfs_fscache_clear_inode._entry_ptr = internal global ptr @nfs_fscache_clear_inode._entry, section ".printk_index", align 4
@nfs_fscache_open_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFS: nfsi 0x%p disabling cache\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfs_fscache_open_file\00", [42 x i8] zeroinitializer }, align 32
@nfs_fscache_open_file._entry_ptr = internal global ptr @nfs_fscache_open_file._entry, section ".printk_index", align 4
@__kstrtab_nfs_fscache_open_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_fscache_open_file = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_fscache_open_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_fscache_open_file to i32), ptr @__kstrtab_nfs_fscache_open_file, ptr @__kstrtabns_nfs_fscache_open_file }, section "___ksymtab_gpl+nfs_fscache_open_file", align 4
@__nfs_readpage_from_fscache._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 328, ptr null, ptr null }, align 1
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"NFS: readpage_from_fscache(fsc:%p/p:%p(i:%lx f:%lx)/0x%p)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__nfs_readpage_from_fscache\00", [36 x i8] zeroinitializer }, align 32
@__nfs_readpage_from_fscache._entry_ptr = internal global ptr @__nfs_readpage_from_fscache._entry, section ".printk_index", align 4
@__nfs_readpage_from_fscache._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 331, ptr null, ptr null }, align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFS:    readpage_from_fscache: PageChecked\0A\00", [52 x i8] zeroinitializer }, align 32
@__nfs_readpage_from_fscache._entry_ptr.17 = internal global ptr @__nfs_readpage_from_fscache._entry.15, section ".printk_index", align 4
@__nfs_readpage_from_fscache._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 340, ptr null, ptr null }, align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFS:    readpage_from_fscache failed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__nfs_readpage_from_fscache._entry_ptr.20 = internal global ptr @__nfs_readpage_from_fscache._entry.18, section ".printk_index", align 4
@__nfs_readpage_from_fscache._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.3, i32 346, ptr null, ptr null }, align 1
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFS:    readpage_from_fscache: read successful\0A\00", [48 x i8] zeroinitializer }, align 32
@__nfs_readpage_from_fscache._entry_ptr.23 = internal global ptr @__nfs_readpage_from_fscache._entry.21, section ".printk_index", align 4
@__nfs_readpage_to_fscache._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 362, ptr null, ptr null }, align 1
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx))\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__nfs_readpage_to_fscache\00", [38 x i8] zeroinitializer }, align 32
@__nfs_readpage_to_fscache._entry_ptr = internal global ptr @__nfs_readpage_to_fscache._entry, section ".printk_index", align 4
@__nfs_readpage_to_fscache._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 368, ptr null, ptr null }, align 1
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__nfs_readpage_to_fscache._entry_ptr.28 = internal global ptr @__nfs_readpage_to_fscache._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",%u.%u,%x\00", [22 x i8] zeroinitializer }, align 32
@nfs_fscache_get_client_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014NFS: Unknown network family '%d'\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfs_fscache_get_client_key\00", [37 x i8] zeroinitializer }, align 32
@nfs_fscache_get_client_key._entry_ptr = internal global ptr @nfs_fscache_get_client_key._entry, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",%llx\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 103, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 131, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 138, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 155, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 195, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 232, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 326, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 331, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 339, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 346, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 360, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 366, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 51, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 73, i32 3 }
@___asan_gen_.122 = private constant [20 x i8] c"../fs/nfs/fscache.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 34, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 430, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 260, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__ksymtab_nfs_fscache_open_file, ptr @__nfs_readpage_from_fscache._entry, ptr @__nfs_readpage_from_fscache._entry.15, ptr @__nfs_readpage_from_fscache._entry.18, ptr @__nfs_readpage_from_fscache._entry.21, ptr @__nfs_readpage_from_fscache._entry_ptr, ptr @__nfs_readpage_from_fscache._entry_ptr.17, ptr @__nfs_readpage_from_fscache._entry_ptr.20, ptr @__nfs_readpage_from_fscache._entry_ptr.23, ptr @__nfs_readpage_to_fscache._entry, ptr @__nfs_readpage_to_fscache._entry.26, ptr @__nfs_readpage_to_fscache._entry_ptr, ptr @__nfs_readpage_to_fscache._entry_ptr.28, ptr @nfs_fscache_clear_inode._entry, ptr @nfs_fscache_clear_inode._entry_ptr, ptr @nfs_fscache_get_client_key._entry, ptr @nfs_fscache_get_client_key._entry_ptr, ptr @nfs_fscache_get_super_cookie._entry, ptr @nfs_fscache_get_super_cookie._entry.4, ptr @nfs_fscache_get_super_cookie._entry_ptr, ptr @nfs_fscache_get_super_cookie._entry_ptr.6, ptr @nfs_fscache_open_file._entry, ptr @nfs_fscache_open_file._entry_ptr, ptr @nfs_fscache_release_super_cookie._entry, ptr @nfs_fscache_release_super_cookie._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fscache_get_super_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fscache_get_super_cookie._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fscache_release_super_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fscache_clear_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fscache_open_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_fscache_get_client_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_fscache_get_super_cookie(ptr nocapture noundef readonly %sb, ptr noundef %uniq, i32 noundef %ulen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %uniq, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @kmemdup_nul(ptr noundef nonnull %uniq, i32 noundef %ulen, i32 noundef 3264) #9
  %fscache_uniq = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %fscache_uniq, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1024) #12
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %4 = call ptr @memcpy(ptr %call7.i, ptr @.str, i32 3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %cl_addr.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 5
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 3
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rpc_ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %cl_minorversion.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 15
  %11 = ptrtoint ptr %cl_minorversion.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cl_minorversion.i, align 8
  %13 = ptrtoint ptr %cl_addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cl_addr.i, align 4
  %conv.i = zext i16 %14 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef 997, ptr noundef nonnull @.str.29, i32 noundef %10, i32 noundef %12, i32 noundef %conv.i) #9
  %add.i = add i32 %call.i, 3
  %15 = ptrtoint ptr %cl_addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cl_addr.i, align 4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %do.end.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end9
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %cl_addr.i, i32 0, i32 1
  %18 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sin_port.i, align 2
  %conv6.i = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add.i)
  %cmp.i.i = icmp sgt i32 %add.i, 1000
  br i1 %cmp.i.i, label %sw.bb.i.out_crit_edge, label %if.end.i.i

sw.bb.i.out_crit_edge:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp1.i.i = icmp eq i16 %19, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.i = add i32 %call.i, 4
  %arrayidx.i.i = getelementptr i8, ptr %call7.i, i32 %add.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 44, ptr %arrayidx.i.i, align 1
  br label %lor.lhs.false.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 %add.i
  %call.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.32, i64 noundef %conv6.i) #9
  %add.i.i = add i32 %call.i.i, %add.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.else.i.i, %if.then2.i.i
  %len.0 = phi i32 [ %inc.i.i, %if.then2.i.i ], [ %add.i.i, %if.else.i.i ]
  %sin_addr.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sin_addr.i, align 4
  %conv8.i = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.0)
  %cmp.i69.i = icmp sgt i32 %len.0, 1000
  br i1 %cmp.i69.i, label %lor.lhs.false.i.out_crit_edge, label %if.end.i71.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i71.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.i70.i = icmp eq i32 %22, 0
  br i1 %cmp1.i70.i, label %if.then2.i74.i, label %if.else.i78.i

if.then2.i74.i:                                   ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i72.i = add nsw i32 %len.0, 1
  %arrayidx.i73.i = getelementptr i8, ptr %call7.i, i32 %len.0
  %23 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 44, ptr %arrayidx.i73.i, align 1
  br label %lor.lhs.false

if.else.i78.i:                                    ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i75.i = getelementptr i8, ptr %call7.i, i32 %len.0
  %call.i76.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i75.i, ptr noundef nonnull @.str.32, i64 noundef %conv8.i) #9
  %add.i77.i = add i32 %call.i76.i, %len.0
  br label %lor.lhs.false

sw.bb10.i:                                        ; preds = %if.end9
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %cl_addr.i, i32 0, i32 1
  %24 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sin6_port.i, align 2
  %conv11.i = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add.i)
  %cmp.i80.i = icmp sgt i32 %add.i, 1000
  br i1 %cmp.i80.i, label %sw.bb10.i.out_crit_edge, label %if.end.i82.i

sw.bb10.i.out_crit_edge:                          ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i82.i:                                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp1.i81.i = icmp eq i16 %25, 0
  br i1 %cmp1.i81.i, label %if.then2.i85.i, label %if.else.i89.i

if.then2.i85.i:                                   ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i83.i = add i32 %call.i, 4
  %arrayidx.i84.i = getelementptr i8, ptr %call7.i, i32 %add.i
  %26 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 44, ptr %arrayidx.i84.i, align 1
  br label %lor.lhs.false13.i

if.else.i89.i:                                    ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i86.i = getelementptr i8, ptr %call7.i, i32 %add.i
  %call.i87.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i86.i, ptr noundef nonnull @.str.32, i64 noundef %conv11.i) #9
  %add.i88.i = add i32 %call.i87.i, %add.i
  br label %lor.lhs.false13.i

lor.lhs.false13.i:                                ; preds = %if.else.i89.i, %if.then2.i85.i
  %len.2 = phi i32 [ %inc.i83.i, %if.then2.i85.i ], [ %add.i88.i, %if.else.i89.i ]
  %sin6_addr.i = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin6_addr.i, align 4
  %conv14.i = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.2)
  %cmp.i91.i = icmp sgt i32 %len.2, 1000
  br i1 %cmp.i91.i, label %lor.lhs.false13.i.out_crit_edge, label %if.end.i93.i

lor.lhs.false13.i.out_crit_edge:                  ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i93.i:                                     ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.i92.i = icmp eq i32 %28, 0
  br i1 %cmp1.i92.i, label %if.then2.i96.i, label %if.else.i100.i

if.then2.i96.i:                                   ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i94.i = add nsw i32 %len.2, 1
  %arrayidx.i95.i = getelementptr i8, ptr %call7.i, i32 %len.2
  %29 = ptrtoint ptr %arrayidx.i95.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 44, ptr %arrayidx.i95.i, align 1
  br label %lor.lhs.false16.i

if.else.i100.i:                                   ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i97.i = getelementptr i8, ptr %call7.i, i32 %len.2
  %call.i98.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i97.i, ptr noundef nonnull @.str.32, i64 noundef %conv14.i) #9
  %add.i99.i = add i32 %call.i98.i, %len.2
  br label %lor.lhs.false16.i

lor.lhs.false16.i:                                ; preds = %if.else.i100.i, %if.then2.i96.i
  %len.3 = phi i32 [ %inc.i94.i, %if.then2.i96.i ], [ %add.i99.i, %if.else.i100.i ]
  %arrayidx19.i = getelementptr %struct.nfs_client, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19.i, align 4
  %conv20.i = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.3)
  %cmp.i102.i = icmp sgt i32 %len.3, 1000
  br i1 %cmp.i102.i, label %lor.lhs.false16.i.out_crit_edge, label %if.end.i104.i

lor.lhs.false16.i.out_crit_edge:                  ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i104.i:                                    ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.i103.i = icmp eq i32 %31, 0
  br i1 %cmp1.i103.i, label %if.then2.i107.i, label %if.else.i111.i

if.then2.i107.i:                                  ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i105.i = add nsw i32 %len.3, 1
  %arrayidx.i106.i = getelementptr i8, ptr %call7.i, i32 %len.3
  %32 = ptrtoint ptr %arrayidx.i106.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 44, ptr %arrayidx.i106.i, align 1
  br label %lor.lhs.false22.i

if.else.i111.i:                                   ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i108.i = getelementptr i8, ptr %call7.i, i32 %len.3
  %call.i109.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i108.i, ptr noundef nonnull @.str.32, i64 noundef %conv20.i) #9
  %add.i110.i = add i32 %call.i109.i, %len.3
  br label %lor.lhs.false22.i

lor.lhs.false22.i:                                ; preds = %if.else.i111.i, %if.then2.i107.i
  %len.4 = phi i32 [ %inc.i105.i, %if.then2.i107.i ], [ %add.i110.i, %if.else.i111.i ]
  %arrayidx25.i = getelementptr %struct.nfs_client, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 12
  %33 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx25.i, align 4
  %conv26.i = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.4)
  %cmp.i113.i = icmp sgt i32 %len.4, 1000
  br i1 %cmp.i113.i, label %lor.lhs.false22.i.out_crit_edge, label %if.end.i115.i

lor.lhs.false22.i.out_crit_edge:                  ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i115.i:                                    ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.i114.i = icmp eq i32 %34, 0
  br i1 %cmp1.i114.i, label %if.then2.i118.i, label %if.else.i122.i

if.then2.i118.i:                                  ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i116.i = add nsw i32 %len.4, 1
  %arrayidx.i117.i = getelementptr i8, ptr %call7.i, i32 %len.4
  %35 = ptrtoint ptr %arrayidx.i117.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 44, ptr %arrayidx.i117.i, align 1
  br label %lor.lhs.false28.i

if.else.i122.i:                                   ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i119.i = getelementptr i8, ptr %call7.i, i32 %len.4
  %call.i120.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i119.i, ptr noundef nonnull @.str.32, i64 noundef %conv26.i) #9
  %add.i121.i = add i32 %call.i120.i, %len.4
  br label %lor.lhs.false28.i

lor.lhs.false28.i:                                ; preds = %if.else.i122.i, %if.then2.i118.i
  %len.5 = phi i32 [ %inc.i116.i, %if.then2.i118.i ], [ %add.i121.i, %if.else.i122.i ]
  %arrayidx31.i = getelementptr %struct.nfs_client, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 16
  %36 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx31.i, align 4
  %conv32.i = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.5)
  %cmp.i124.i = icmp sgt i32 %len.5, 1000
  br i1 %cmp.i124.i, label %lor.lhs.false28.i.out_crit_edge, label %if.end.i126.i

lor.lhs.false28.i.out_crit_edge:                  ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i126.i:                                    ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.i125.i = icmp eq i32 %37, 0
  br i1 %cmp1.i125.i, label %if.then2.i129.i, label %if.else.i133.i

if.then2.i129.i:                                  ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i127.i = add nsw i32 %len.5, 1
  %arrayidx.i128.i = getelementptr i8, ptr %call7.i, i32 %len.5
  %38 = ptrtoint ptr %arrayidx.i128.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 44, ptr %arrayidx.i128.i, align 1
  br label %lor.lhs.false

if.else.i133.i:                                   ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i130.i = getelementptr i8, ptr %call7.i, i32 %len.5
  %call.i131.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i130.i, ptr noundef nonnull @.str.32, i64 noundef %conv32.i) #9
  %add.i132.i = add i32 %call.i131.i, %len.5
  br label %lor.lhs.false

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i = zext i16 %16 to i32
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv5.i) #13
  br label %out

lor.lhs.false:                                    ; preds = %if.else.i133.i, %if.then2.i129.i, %if.else.i78.i, %if.then2.i74.i
  %len.7278 = phi i32 [ %add.i132.i, %if.else.i133.i ], [ %inc.i127.i, %if.then2.i129.i ], [ %add.i77.i, %if.else.i78.i ], [ %inc.i72.i, %if.then2.i74.i ]
  %fsid = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 30
  %39 = ptrtoint ptr %fsid to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %fsid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.7278)
  %cmp.i = icmp sgt i32 %len.7278, 1000
  br i1 %cmp.i, label %lor.lhs.false.out_crit_edge, label %if.end.i

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp1.i = icmp eq i64 %40, 0
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 %len.7278
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 44, ptr %arrayidx.i, align 1
  br label %lor.lhs.false12

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i125 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.32, i64 noundef %40) #9
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else.i, %if.then2.i
  %call.i125.pn = phi i32 [ %call.i125, %if.else.i ], [ 1, %if.then2.i ]
  %len.8.ph = add i32 %call.i125.pn, %len.7278
  %minor = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 30, i32 1
  %42 = ptrtoint ptr %minor to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.8.ph)
  %cmp.i127 = icmp sgt i32 %len.8.ph, 1000
  br i1 %cmp.i127, label %lor.lhs.false12.out_crit_edge, label %if.end.i129

lor.lhs.false12.out_crit_edge:                    ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i129:                                      ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp1.i128 = icmp eq i64 %43, 0
  %arrayidx.i131 = getelementptr i8, ptr %call7.i, i32 %len.8.ph
  br i1 %cmp1.i128, label %if.then2.i132, label %if.else.i136

if.then2.i132:                                    ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 44, ptr %arrayidx.i131, align 1
  br label %lor.lhs.false15

if.else.i136:                                     ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #11
  %call.i134 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i131, ptr noundef nonnull @.str.32, i64 noundef %43) #9
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.else.i136, %if.then2.i132
  %call.i134.pn = phi i32 [ %call.i134, %if.else.i136 ], [ 1, %if.then2.i132 ]
  %len.9.ph = add i32 %call.i134.pn, %len.8.ph
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %45 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_flags, align 4
  %and = and i32 %46, 31
  %conv = zext i32 %and to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.9.ph)
  %cmp.i138 = icmp sgt i32 %len.9.ph, 1000
  br i1 %cmp.i138, label %lor.lhs.false15.out_crit_edge, label %if.end.i140

lor.lhs.false15.out_crit_edge:                    ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i140:                                      ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.i139 = icmp eq i32 %and, 0
  %arrayidx.i142 = getelementptr i8, ptr %call7.i, i32 %len.9.ph
  br i1 %cmp1.i139, label %if.then2.i143, label %if.else.i147

if.then2.i143:                                    ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 44, ptr %arrayidx.i142, align 1
  br label %lor.lhs.false17

if.else.i147:                                     ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #11
  %call.i145 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i142, ptr noundef nonnull @.str.32, i64 noundef %conv) #9
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.else.i147, %if.then2.i143
  %call.i145.pn = phi i32 [ %call.i145, %if.else.i147 ], [ 1, %if.then2.i143 ]
  %len.10.ph = add i32 %call.i145.pn, %len.9.ph
  %flags = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 8
  %conv18 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.10.ph)
  %cmp.i149 = icmp sgt i32 %len.10.ph, 1000
  br i1 %cmp.i149, label %lor.lhs.false17.out_crit_edge, label %if.end.i151

lor.lhs.false17.out_crit_edge:                    ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i151:                                      ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1.i150 = icmp eq i32 %49, 0
  %arrayidx.i153 = getelementptr i8, ptr %call7.i, i32 %len.10.ph
  br i1 %cmp1.i150, label %if.then2.i154, label %if.else.i158

if.then2.i154:                                    ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 44, ptr %arrayidx.i153, align 1
  br label %lor.lhs.false20

if.else.i158:                                     ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  %call.i156 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i153, ptr noundef nonnull @.str.32, i64 noundef %conv18) #9
  br label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else.i158, %if.then2.i154
  %call.i156.pn = phi i32 [ %call.i156, %if.else.i158 ], [ 1, %if.then2.i154 ]
  %len.11.ph = add i32 %call.i156.pn, %len.10.ph
  %rsize = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rsize, align 4
  %conv21 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.11.ph)
  %cmp.i160 = icmp sgt i32 %len.11.ph, 1000
  br i1 %cmp.i160, label %lor.lhs.false20.out_crit_edge, label %if.end.i162

lor.lhs.false20.out_crit_edge:                    ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i162:                                      ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp1.i161 = icmp eq i32 %52, 0
  %arrayidx.i164 = getelementptr i8, ptr %call7.i, i32 %len.11.ph
  br i1 %cmp1.i161, label %if.then2.i165, label %if.else.i169

if.then2.i165:                                    ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 44, ptr %arrayidx.i164, align 1
  br label %lor.lhs.false23

if.else.i169:                                     ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #11
  %call.i167 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i164, ptr noundef nonnull @.str.32, i64 noundef %conv21) #9
  br label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.else.i169, %if.then2.i165
  %call.i167.pn = phi i32 [ %call.i167, %if.else.i169 ], [ 1, %if.then2.i165 ]
  %len.12.ph = add i32 %call.i167.pn, %len.11.ph
  %wsize = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wsize, align 4
  %conv24 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.12.ph)
  %cmp.i171 = icmp sgt i32 %len.12.ph, 1000
  br i1 %cmp.i171, label %lor.lhs.false23.out_crit_edge, label %if.end.i173

lor.lhs.false23.out_crit_edge:                    ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i173:                                      ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.i172 = icmp eq i32 %55, 0
  %arrayidx.i175 = getelementptr i8, ptr %call7.i, i32 %len.12.ph
  br i1 %cmp1.i172, label %if.then2.i176, label %if.else.i180

if.then2.i176:                                    ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 44, ptr %arrayidx.i175, align 1
  br label %lor.lhs.false26

if.else.i180:                                     ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #11
  %call.i178 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i175, ptr noundef nonnull @.str.32, i64 noundef %conv24) #9
  br label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.else.i180, %if.then2.i176
  %call.i178.pn = phi i32 [ %call.i178, %if.else.i180 ], [ 1, %if.then2.i176 ]
  %len.13.ph = add i32 %call.i178.pn, %len.12.ph
  %acregmin = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 22
  %57 = ptrtoint ptr %acregmin to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %acregmin, align 8
  %conv27 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.13.ph)
  %cmp.i182 = icmp sgt i32 %len.13.ph, 1000
  br i1 %cmp.i182, label %lor.lhs.false26.out_crit_edge, label %if.end.i184

lor.lhs.false26.out_crit_edge:                    ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i184:                                      ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp1.i183 = icmp eq i32 %58, 0
  %arrayidx.i186 = getelementptr i8, ptr %call7.i, i32 %len.13.ph
  br i1 %cmp1.i183, label %if.then2.i187, label %if.else.i191

if.then2.i187:                                    ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 44, ptr %arrayidx.i186, align 1
  br label %lor.lhs.false29

if.else.i191:                                     ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #11
  %call.i189 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i186, ptr noundef nonnull @.str.32, i64 noundef %conv27) #9
  br label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.else.i191, %if.then2.i187
  %call.i189.pn = phi i32 [ %call.i189, %if.else.i191 ], [ 1, %if.then2.i187 ]
  %len.14.ph = add i32 %call.i189.pn, %len.13.ph
  %acregmax = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 23
  %60 = ptrtoint ptr %acregmax to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %acregmax, align 4
  %conv30 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.14.ph)
  %cmp.i193 = icmp sgt i32 %len.14.ph, 1000
  br i1 %cmp.i193, label %lor.lhs.false29.out_crit_edge, label %if.end.i195

lor.lhs.false29.out_crit_edge:                    ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i195:                                      ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1.i194 = icmp eq i32 %61, 0
  %arrayidx.i197 = getelementptr i8, ptr %call7.i, i32 %len.14.ph
  br i1 %cmp1.i194, label %if.then2.i198, label %if.else.i202

if.then2.i198:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 44, ptr %arrayidx.i197, align 1
  br label %lor.lhs.false32

if.else.i202:                                     ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #11
  %call.i200 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i197, ptr noundef nonnull @.str.32, i64 noundef %conv30) #9
  br label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.else.i202, %if.then2.i198
  %call.i200.pn = phi i32 [ %call.i200, %if.else.i202 ], [ 1, %if.then2.i198 ]
  %len.15.ph = add i32 %call.i200.pn, %len.14.ph
  %acdirmin = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 24
  %63 = ptrtoint ptr %acdirmin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %acdirmin, align 8
  %conv33 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.15.ph)
  %cmp.i204 = icmp sgt i32 %len.15.ph, 1000
  br i1 %cmp.i204, label %lor.lhs.false32.out_crit_edge, label %if.end.i206

lor.lhs.false32.out_crit_edge:                    ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i206:                                      ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1.i205 = icmp eq i32 %64, 0
  %arrayidx.i208 = getelementptr i8, ptr %call7.i, i32 %len.15.ph
  br i1 %cmp1.i205, label %if.then2.i209, label %if.else.i213

if.then2.i209:                                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 44, ptr %arrayidx.i208, align 1
  br label %lor.lhs.false35

if.else.i213:                                     ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #11
  %call.i211 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i208, ptr noundef nonnull @.str.32, i64 noundef %conv33) #9
  br label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.else.i213, %if.then2.i209
  %call.i211.pn = phi i32 [ %call.i211, %if.else.i213 ], [ 1, %if.then2.i209 ]
  %len.16.ph = add i32 %call.i211.pn, %len.15.ph
  %acdirmax = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 25
  %66 = ptrtoint ptr %acdirmax to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %acdirmax, align 4
  %conv36 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.16.ph)
  %cmp.i215 = icmp sgt i32 %len.16.ph, 1000
  br i1 %cmp.i215, label %lor.lhs.false35.out_crit_edge, label %if.end.i217

lor.lhs.false35.out_crit_edge:                    ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i217:                                      ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1.i216 = icmp eq i32 %67, 0
  %arrayidx.i219 = getelementptr i8, ptr %call7.i, i32 %len.16.ph
  br i1 %cmp1.i216, label %if.then2.i220, label %if.else.i224

if.then2.i220:                                    ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 44, ptr %arrayidx.i219, align 1
  br label %lor.lhs.false38

if.else.i224:                                     ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #11
  %call.i222 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i219, ptr noundef nonnull @.str.32, i64 noundef %conv36) #9
  br label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.else.i224, %if.then2.i220
  %call.i222.pn = phi i32 [ %call.i222, %if.else.i224 ], [ 1, %if.then2.i220 ]
  %len.17.ph = add i32 %call.i222.pn, %len.16.ph
  %client = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client, align 4
  %cl_auth = getelementptr inbounds %struct.rpc_clnt, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %cl_auth to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cl_auth, align 4
  %au_flavor = getelementptr inbounds %struct.rpc_auth, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %au_flavor to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %au_flavor, align 4
  %conv39 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %len.17.ph)
  %cmp.i226 = icmp sgt i32 %len.17.ph, 1000
  br i1 %cmp.i226, label %lor.lhs.false38.out_crit_edge, label %if.end.i228

lor.lhs.false38.out_crit_edge:                    ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i228:                                      ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp1.i227 = icmp eq i32 %74, 0
  %arrayidx.i230 = getelementptr i8, ptr %call7.i, i32 %len.17.ph
  br i1 %cmp1.i227, label %if.then2.i231, label %if.else.i235

if.then2.i231:                                    ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 44, ptr %arrayidx.i230, align 1
  br label %if.end42

if.else.i235:                                     ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #11
  %call.i233 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx.i230, ptr noundef nonnull @.str.32, i64 noundef %conv39) #9
  br label %if.end42

if.end42:                                         ; preds = %if.else.i235, %if.then2.i231
  %call.i233.pn = phi i32 [ %call.i233, %if.else.i235 ], [ 1, %if.then2.i231 ]
  %len.18.ph = add i32 %call.i233.pn, %len.17.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulen)
  %cmp = icmp sgt i32 %ulen, 0
  br i1 %cmp, label %if.then44, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  %sub = sub i32 1000, %len.18.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %ulen)
  %cmp45 = icmp ult i32 %sub, %ulen
  br i1 %cmp45, label %if.then44.out_crit_edge, label %if.end48

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end48:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %len.18.ph, 1
  %arrayidx = getelementptr i8, ptr %call7.i, i32 %len.18.ph
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 44, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %inc
  %77 = call ptr @memcpy(ptr %add.ptr, ptr %uniq, i32 %ulen)
  %add = add i32 %inc, %ulen
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end42.if.end49_crit_edge
  %len.19 = phi i32 [ %add, %if.end48 ], [ %len.18.ph, %if.end42.if.end49_crit_edge ]
  %arrayidx50 = getelementptr i8, ptr %call7.i, i32 %len.19
  %78 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx50, align 1
  %call.i237 = tail call ptr @__fscache_acquire_volume(ptr noundef nonnull %call7.i, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %79 = load i32, ptr @nfs_debug, align 4
  %and52 = and i32 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.do.end61_crit_edge, label %do.end, !prof !81

if.end49.do.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

do.end:                                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %call.i237) #13
  br label %do.end61

do.end61:                                         ; preds = %do.end, %if.end49.do.end61_crit_edge
  %cmp.i238 = icmp ugt ptr %call.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i238, label %if.then63, label %do.end61.if.end75_crit_edge

do.end61.if.end75_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then63:                                        ; preds = %do.end61
  %cmp65.not = icmp eq ptr %call.i237, inttoptr (i32 -16 to ptr)
  br i1 %cmp65.not, label %do.end72, label %if.then67

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  %80 = ptrtoint ptr %call.i237 to i32
  br label %cleanup

do.end72:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %call7.i) #13
  br label %if.end75

if.end75:                                         ; preds = %do.end72, %do.end61.if.end75_crit_edge
  %vcookie.0 = phi ptr [ null, %do.end72 ], [ %call.i237, %do.end61.if.end75_crit_edge ]
  %fscache = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 37
  %81 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %vcookie.0, ptr %fscache, align 8
  br label %out

out:                                              ; preds = %if.end75, %if.then44.out_crit_edge, %lor.lhs.false38.out_crit_edge, %lor.lhs.false35.out_crit_edge, %lor.lhs.false32.out_crit_edge, %lor.lhs.false29.out_crit_edge, %lor.lhs.false26.out_crit_edge, %lor.lhs.false23.out_crit_edge, %lor.lhs.false20.out_crit_edge, %lor.lhs.false17.out_crit_edge, %lor.lhs.false15.out_crit_edge, %lor.lhs.false12.out_crit_edge, %lor.lhs.false.out_crit_edge, %do.end.i, %lor.lhs.false28.i.out_crit_edge, %lor.lhs.false22.i.out_crit_edge, %lor.lhs.false16.i.out_crit_edge, %lor.lhs.false13.i.out_crit_edge, %sw.bb10.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %sw.bb.i.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then67, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %80, %if.then67 ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_fscache_release_super_cookie(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !81

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fscache = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fscache, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1, ptr noundef %4) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %fscache7 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 37
  %5 = ptrtoint ptr %fscache7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fscache7, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end6.fscache_relinquish_volume.exit_crit_edge, label %if.then.i

do.end6.fscache_relinquish_volume.exit_crit_edge: ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_relinquish_volume.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__fscache_relinquish_volume(ptr noundef nonnull %6, ptr noundef null, i1 noundef zeroext false) #9
  br label %fscache_relinquish_volume.exit

fscache_relinquish_volume.exit:                   ; preds = %if.then.i, %do.end6.fscache_relinquish_volume.exit_crit_edge
  %7 = ptrtoint ptr %fscache7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fscache7, align 8
  %fscache_uniq = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 38
  %8 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fscache_uniq, align 4
  tail call void @kfree(ptr noundef %9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_fscache_init_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %auxdata = alloca %struct.nfs_fscache_inode_auxdata, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %auxdata) #9
  %0 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 4
  %i_sb.i = getelementptr %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %fscache = getelementptr i8, ptr %inode, i32 -8
  %8 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fscache, align 8
  %fscache2 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 37
  %9 = ptrtoint ptr %fscache2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fscache2, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %13)
  %cmp = icmp eq i16 %13, -32768
  br i1 %cmp, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %14 = getelementptr inbounds i8, ptr %auxdata, i32 32
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %14, align 8
  %i_mtime.i = getelementptr i8, ptr %inode, i32 80
  %16 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_mtime.i, align 8
  %18 = ptrtoint ptr %auxdata to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %auxdata, align 8
  %tv_nsec.i = getelementptr i8, ptr %inode, i32 88
  %19 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %20 to i64
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %0, align 8
  %i_ctime.i = getelementptr i8, ptr %inode, i32 96
  %22 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_ctime.i, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %1, align 8
  %tv_nsec7.i = getelementptr i8, ptr %inode, i32 104
  %25 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec7.i, align 8
  %conv8.i = sext i32 %26 to i64
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv8.i, ptr %2, align 8
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rpc_ops.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp.i = icmp eq i32 %37, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.nfs_fscache_update_auxdata.exit_crit_edge

if.end.nfs_fscache_update_auxdata.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_fscache_update_auxdata.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_version.i.i = getelementptr i8, ptr %inode, i32 368
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #9
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #9
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call.i.i.i, ptr %3, align 8
  br label %nfs_fscache_update_auxdata.exit

nfs_fscache_update_auxdata.exit:                  ; preds = %if.then.i, %if.end.nfs_fscache_update_auxdata.exit_crit_edge
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %fscache5 = getelementptr inbounds %struct.nfs_server, ptr %42, i32 0, i32 37
  %43 = ptrtoint ptr %fscache5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fscache5, align 8
  %fh = getelementptr i8, ptr %inode, i32 -440
  %45 = ptrtoint ptr %fh to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %fh, align 8
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %nfs_fscache_update_auxdata.exit.fscache_acquire_cookie.exit_crit_edge, label %if.end.i

nfs_fscache_update_auxdata.exit.fscache_acquire_cookie.exit_crit_edge: ; preds = %nfs_fscache_update_auxdata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_acquire_cookie.exit

if.end.i:                                         ; preds = %nfs_fscache_update_auxdata.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv7 = zext i16 %46 to i32
  %data = getelementptr i8, ptr %inode, i32 -438
  %call.i = call ptr @__fscache_acquire_cookie(ptr noundef nonnull %44, i8 noundef zeroext 0, ptr noundef %data, i32 noundef %conv7, ptr noundef nonnull %auxdata, i32 noundef 40, i64 noundef %call8) #9
  br label %fscache_acquire_cookie.exit

fscache_acquire_cookie.exit:                      ; preds = %if.end.i, %nfs_fscache_update_auxdata.exit.fscache_acquire_cookie.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %nfs_fscache_update_auxdata.exit.fscache_acquire_cookie.exit_crit_edge ]
  %47 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i, ptr %fscache, align 8
  br label %cleanup

cleanup:                                          ; preds = %fscache_acquire_cookie.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %auxdata) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !82
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !84

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !85
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !87
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_fscache_clear_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %2 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !81

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -448
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %add.ptr.i, ptr noundef %1) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end7.fscache_relinquish_cookie.exit_crit_edge, label %if.then.i

do.end7.fscache_relinquish_cookie.exit_crit_edge: ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_relinquish_cookie.exit

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__fscache_relinquish_cookie(ptr noundef nonnull %1, i1 noundef zeroext false) #9
  br label %fscache_relinquish_cookie.exit

fscache_relinquish_cookie.exit:                   ; preds = %if.then.i, %do.end7.fscache_relinquish_cookie.exit_crit_edge
  %3 = ptrtoint ptr %fscache.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fscache.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_fscache_open_file(ptr noundef %inode, ptr nocapture readnone %filp) #0 align 64 {
entry:
  %auxdata = alloca %struct.nfs_fscache_inode_auxdata, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %auxdata) #9
  %0 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -448
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %4 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fscache.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_writecount.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %fscache_use_cookie.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fscache_use_cookie.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp sgt i32 %7, 0
  tail call void @__fscache_use_cookie(ptr noundef nonnull %5, i1 noundef zeroext %cmp.i) #9
  br i1 %cmp.i, label %do.body, label %fscache_use_cookie.exit.cleanup_crit_edge

fscache_use_cookie.exit.cleanup_crit_edge:        ; preds = %fscache_use_cookie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %fscache_use_cookie.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %8 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end14_crit_edge, label %do.end, !prof !81

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %add.ptr.i) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %9 = getelementptr inbounds i8, ptr %auxdata, i32 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %9, align 8
  %i_mtime.i = getelementptr i8, ptr %inode, i32 80
  %11 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_mtime.i, align 8
  %13 = ptrtoint ptr %auxdata to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %auxdata, align 8
  %tv_nsec.i = getelementptr i8, ptr %inode, i32 88
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %15 to i64
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %0, align 8
  %i_ctime.i = getelementptr i8, ptr %inode, i32 96
  %17 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_ctime.i, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %1, align 8
  %tv_nsec7.i = getelementptr i8, ptr %inode, i32 104
  %20 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tv_nsec7.i, align 8
  %conv8.i = sext i32 %21 to i64
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv8.i, ptr %2, align 8
  %i_sb.i.i = getelementptr i8, ptr %inode, i32 28
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rpc_ops.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp.i27 = icmp eq i32 %32, 4
  br i1 %cmp.i27, label %if.then.i29, label %do.end14.land.lhs.true.i_crit_edge

do.end14.land.lhs.true.i_crit_edge:               ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.then.i29:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %i_version.i.i = getelementptr i8, ptr %inode, i32 368
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #9
  %call.i.i.i28 = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #9
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call.i.i.i28, ptr %3, align 8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i29, %do.end14.land.lhs.true.i_crit_edge
  %call15 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %flags1.i = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 14
  %34 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags1.i, align 4
  %36 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not.i = icmp eq i32 %36, 0
  br i1 %tobool2.not.i, label %if.then.i31, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i31:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__fscache_invalidate(ptr noundef nonnull %5, ptr noundef nonnull %auxdata, i64 noundef %call15, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i31, %land.lhs.true.i.cleanup_crit_edge, %fscache_use_cookie.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %auxdata) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_fscache_release_file(ptr noundef %inode, ptr nocapture noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  %auxdata = alloca %struct.nfs_fscache_inode_auxdata, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %auxdata) #9
  %0 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 4
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %1 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fscache.i, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 3
  %4 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 2
  %5 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, ptr %auxdata, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %auxdata, i32 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %6, align 8
  %i_mtime.i = getelementptr i8, ptr %inode, i32 80
  %8 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_mtime.i, align 8
  %10 = ptrtoint ptr %auxdata to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %auxdata, align 8
  %tv_nsec.i = getelementptr i8, ptr %inode, i32 88
  %11 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %12 to i64
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %5, align 8
  %i_ctime.i = getelementptr i8, ptr %inode, i32 96
  %14 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_ctime.i, align 8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %4, align 8
  %tv_nsec7.i = getelementptr i8, ptr %inode, i32 104
  %17 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec7.i, align 8
  %conv8.i = sext i32 %18 to i64
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv8.i, ptr %3, align 8
  %i_sb.i.i = getelementptr i8, ptr %inode, i32 28
  %20 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %rpc_ops.i = getelementptr inbounds %struct.nfs_client, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %rpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rpc_ops.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp.i = icmp eq i32 %29, 4
  br i1 %cmp.i, label %if.then.i, label %if.then.fscache_unuse_cookie.exit_crit_edge

if.then.fscache_unuse_cookie.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_unuse_cookie.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %i_version.i.i = getelementptr i8, ptr %inode, i32 368
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #9
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #9
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call.i.i.i, ptr %0, align 8
  br label %fscache_unuse_cookie.exit

fscache_unuse_cookie.exit:                        ; preds = %if.then.i, %if.then.fscache_unuse_cookie.exit_crit_edge
  call void @__fscache_unuse_cookie(ptr noundef nonnull %2, ptr noundef nonnull %auxdata, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %fscache_unuse_cookie.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %auxdata) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfs_readpage_from_fscache(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %cres.i = alloca %struct.netfs_cache_resources, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %bvec.i = alloca [1 x %struct.bio_vec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !81

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %1 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fscache.i, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %page, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %2, ptr noundef %page, i32 noundef %4, i32 noundef %6, ptr noundef %inode) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !84

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.33) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

PageChecked.exit:                                 ; preds = %do.end6
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %page, align 4
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end28, label %do.body10

do.body10:                                        ; preds = %PageChecked.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %12 = load i32, ptr @nfs_debug, align 4
  %and11 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end27_crit_edge, label %do.end22, !prof !81

do.body10.do.end27_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end22:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %do.body10.do.end27_crit_edge
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %do.end27.if.then.i81_crit_edge

do.end27.if.then.i81_crit_edge:                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i81

PageCompound.exit.i:                              ; preds = %do.end27
  %16 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i81_crit_edge, !prof !81

PageCompound.exit.i.if.then.i81_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i81

if.then.i81:                                      ; preds = %PageCompound.exit.i.if.then.i81_crit_edge, %do.end27.if.then.i81_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !91
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i82 = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i82, label %if.then16.i, label %ClearPageChecked.exit, !prof !84

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.33) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #9
  br label %cleanup

if.end28:                                         ; preds = %PageChecked.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cres.i) #9
  %21 = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres.i, i32 0, i32 1
  %fscache.i.i = getelementptr i8, ptr %inode, i32 -8
  %22 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fscache.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #9
  %24 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i) #9
  %25 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 2
  %27 = call ptr @memset(ptr %cres.i, i32 0, i32 20)
  %28 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %page, ptr %bvec.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %26, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4096, ptr %25, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef nonnull %bvec.i, i32 noundef 1, i32 noundef 4096) #9
  %tobool.not.i.i91 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i91, label %if.end28.fscache_fallback_read_page.exit.thread_crit_edge, label %land.lhs.true.i.i

if.end28.fscache_fallback_read_page.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_read_page.exit.thread

land.lhs.true.i.i:                                ; preds = %if.end28
  %flags.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %23, i32 0, i32 14
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i.i, align 4
  %33 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool1.not.i.i, label %fscache_begin_read_operation.exit.i, label %land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge

land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_read_page.exit.thread

fscache_begin_read_operation.exit.i:              ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @__fscache_begin_read_operation(ptr noundef nonnull %cres.i, ptr noundef nonnull %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge, label %if.end.i

fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge: ; preds = %fscache_begin_read_operation.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_read_page.exit.thread

if.end.i:                                         ; preds = %fscache_begin_read_operation.exit.i
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %35 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %21, align 4
  %tobool.not.i.i.i92 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i92, label %if.end.i.fscache_read.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.fscache_read.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_read.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cres.i, align 4
  br label %fscache_read.exit.i

fscache_read.exit.i:                              ; preds = %cond.true.i.i.i, %if.end.i.fscache_read.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %39, %cond.true.i.i.i ], [ null, %if.end.i.fscache_read.exit.i_crit_edge ]
  %read.i.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %cond.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = call i32 %41(ptr noundef nonnull %cres.i, i64 noundef %shl.i.i, ptr noundef nonnull %iter.i, i32 noundef 2, ptr noundef null, ptr noundef null) #9
  %42 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %21, align 4
  %tobool.not.i.i14.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i14.i, label %fscache_read.exit.i.fscache_fallback_read_page.exit_crit_edge, label %fscache_operation_valid.exit.i.i

fscache_read.exit.i.fscache_fallback_read_page.exit_crit_edge: ; preds = %fscache_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_read_page.exit

fscache_operation_valid.exit.i.i:                 ; preds = %fscache_read.exit.i
  %44 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cres.i, align 4
  %tobool.not.i15.i = icmp eq ptr %45, null
  br i1 %tobool.not.i15.i, label %fscache_operation_valid.exit.i.i.fscache_fallback_read_page.exit_crit_edge, label %if.then.i16.i

fscache_operation_valid.exit.i.i.fscache_fallback_read_page.exit_crit_edge: ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_read_page.exit

if.then.i16.i:                                    ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  call void %47(ptr noundef nonnull %cres.i) #9
  br label %fscache_fallback_read_page.exit

fscache_fallback_read_page.exit.thread:           ; preds = %fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge, %land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge, %if.end28.fscache_fallback_read_page.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -105, %if.end28.fscache_fallback_read_page.exit.thread_crit_edge ], [ -105, %land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge ], [ %call2.i.i, %fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cres.i) #9
  br label %if.then30

fscache_fallback_read_page.exit:                  ; preds = %if.then.i16.i, %fscache_operation_valid.exit.i.i.fscache_fallback_read_page.exit_crit_edge, %fscache_read.exit.i.fscache_fallback_read_page.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cres.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp = icmp slt i32 %call1.i.i, 0
  br i1 %cmp, label %fscache_fallback_read_page.exit.if.then30_crit_edge, label %do.body50

fscache_fallback_read_page.exit.if.then30_crit_edge: ; preds = %fscache_fallback_read_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %fscache_fallback_read_page.exit.if.then30_crit_edge, %fscache_fallback_read_page.exit.thread
  %retval.0.i111 = phi i32 [ %retval.0.i.ph, %fscache_fallback_read_page.exit.thread ], [ %call1.i.i, %fscache_fallback_read_page.exit.if.then30_crit_edge ]
  %48 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !82
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %49 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %io_stats.i = getelementptr inbounds %struct.nfs_server, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %io_stats.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_stats.i, align 8
  %arrayidx.i = getelementptr %struct.nfs_iostats, ptr %54, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx.i to i32
  %56 = call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %61, %55
  %62 = inttoptr i32 %add.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %62, align 8
  %add15.i = add i64 %64, 1
  store i64 %add15.i, ptr %62, align 8
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %and.i.i.i93 = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i93)
  %tobool.not.i94 = icmp eq i32 %and.i.i.i93, 0
  br i1 %tobool.not.i94, label %if.then.i95, label %if.then30.nfs_inc_fscache_stats.exit_crit_edge, !prof !84

if.then30.nfs_inc_fscache_stats.exit_crit_edge:   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inc_fscache_stats.exit

if.then.i95:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %nfs_inc_fscache_stats.exit

nfs_inc_fscache_stats.exit:                       ; preds = %if.then.i95, %if.then30.nfs_inc_fscache_stats.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #9, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %66 = load i32, ptr @nfs_debug, align 4
  %and32 = and i32 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %nfs_inc_fscache_stats.exit.do.end48_crit_edge, label %do.end43, !prof !81

nfs_inc_fscache_stats.exit.do.end48_crit_edge:    ; preds = %nfs_inc_fscache_stats.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.end43:                                         ; preds = %nfs_inc_fscache_stats.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %retval.0.i111) #13
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %nfs_inc_fscache_stats.exit.do.end48_crit_edge
  %67 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %page, align 4
  %69 = and i32 %68, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i83 = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i83, label %PageCompound.exit.i86, label %do.end48.if.then.i87_crit_edge

do.end48.if.then.i87_crit_edge:                   ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i87

PageCompound.exit.i86:                            ; preds = %do.end48
  %70 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %and.i.i.i84 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i84)
  %tobool.not.i85 = icmp eq i32 %and.i.i.i84, 0
  br i1 %tobool.not.i85, label %do.body7.i89, label %PageCompound.exit.i86.if.then.i87_crit_edge, !prof !81

PageCompound.exit.i86.if.then.i87_crit_edge:      ; preds = %PageCompound.exit.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i87

if.then.i87:                                      ; preds = %PageCompound.exit.i86.if.then.i87_crit_edge, %do.end48.if.then.i87_crit_edge
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.34) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !93
  unreachable

do.body7.i89:                                     ; preds = %PageCompound.exit.i86
  %73 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i.not.i88 = icmp eq i32 %74, -1
  br i1 %cmp.i.not.i88, label %if.then16.i90, label %SetPageChecked.exit, !prof !84

if.then16.i90:                                    ; preds = %do.body7.i89
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.33) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i89
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 10, ptr noundef %page) #9
  br label %cleanup

do.body50:                                        ; preds = %fscache_fallback_read_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %75 = load i32, ptr @nfs_debug, align 4
  %and51 = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.do.end67_crit_edge, label %do.end62, !prof !81

do.body50.do.end67_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end62:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %do.end67

do.end67:                                         ; preds = %do.end62, %do.body50.do.end67_crit_edge
  %76 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !82
  %i_sb.i.i96 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %77 = ptrtoint ptr %i_sb.i.i96 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_sb.i.i96, align 4
  %s_fs_info.i.i.i97 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 33
  %79 = ptrtoint ptr %s_fs_info.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i.i.i97, align 16
  %io_stats.i98 = getelementptr inbounds %struct.nfs_server, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %io_stats.i98 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_stats.i98, align 8
  %arrayidx.i99 = getelementptr %struct.nfs_iostats, ptr %82, i32 0, i32 1, i32 0
  %83 = ptrtoint ptr %arrayidx.i99 to i32
  %84 = call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i100 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i100 to ptr
  %cpu.i101 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %cpu.i101 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i101, align 4
  %arrayidx14.i102 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx14.i102 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx14.i102, align 4
  %add.i103 = add i32 %89, %83
  %90 = inttoptr i32 %add.i103 to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %90, align 8
  %add15.i104 = add i64 %92, 1
  store i64 %add15.i104, ptr %90, align 8
  %93 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %and.i.i.i105 = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105)
  %tobool.not.i106 = icmp eq i32 %and.i.i.i105, 0
  br i1 %tobool.not.i106, label %if.then.i107, label %do.end67.nfs_inc_fscache_stats.exit108_crit_edge, !prof !84

do.end67.nfs_inc_fscache_stats.exit108_crit_edge: ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inc_fscache_stats.exit108

if.then.i107:                                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %nfs_inc_fscache_stats.exit108

nfs_inc_fscache_stats.exit108:                    ; preds = %if.then.i107, %do.end67.nfs_inc_fscache_stats.exit108_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #9, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %94 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  %and.i.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !81

if.then.i.i.i:                                    ; preds = %nfs_inc_fscache_stats.exit108
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.35) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

SetPageUptodate.exit:                             ; preds = %nfs_inc_fscache_stats.exit108
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #9
  br label %cleanup

cleanup:                                          ; preds = %SetPageUptodate.exit, %SetPageChecked.exit, %ClearPageChecked.exit
  %retval.0 = phi i32 [ 1, %ClearPageChecked.exit ], [ %retval.0.i111, %SetPageChecked.exit ], [ 0, %SetPageUptodate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__nfs_readpage_to_fscache(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %cres.i = alloca %struct.netfs_cache_resources, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %bvec.i = alloca [1 x %struct.bio_vec], align 4
  %start.i = alloca i64, align 8
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %0 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !81

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %1 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fscache.i, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %page, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %2, ptr noundef %page, i32 noundef %4, i32 noundef %6) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cres.i) #9
  %7 = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres.i, i32 0, i32 1
  %fscache.i.i = getelementptr i8, ptr %inode, i32 -8
  %8 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fscache.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #9
  %10 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i) #9
  %11 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #9
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %14 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %15 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %shl.i.i, ptr %start.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #9
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %len.i, align 4
  %17 = call ptr @memset(ptr %cres.i, i32 0, i32 20)
  %18 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %page, ptr %bvec.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %12, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4096, ptr %11, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i, i32 noundef 1, ptr noundef nonnull %bvec.i, i32 noundef 1, i32 noundef 4096) #9
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %do.end6.fscache_fallback_write_page.exit_crit_edge, label %land.lhs.true.i.i

do.end6.fscache_fallback_write_page.exit_crit_edge: ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_write_page.exit

land.lhs.true.i.i:                                ; preds = %do.end6
  %flags.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %9, i32 0, i32 14
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool1.not.i.i, label %fscache_begin_write_operation.exit.i, label %land.lhs.true.i.i.fscache_fallback_write_page.exit_crit_edge

land.lhs.true.i.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_write_page.exit

fscache_begin_write_operation.exit.i:             ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @__fscache_begin_write_operation(ptr noundef nonnull %cres.i, ptr noundef nonnull %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %fscache_begin_write_operation.exit.i.fscache_fallback_write_page.exit_crit_edge, label %if.end.i

fscache_begin_write_operation.exit.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %fscache_begin_write_operation.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_write_page.exit

if.end.i:                                         ; preds = %fscache_begin_write_operation.exit.i
  %24 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cres.i, align 4
  %prepare_write.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %prepare_write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prepare_write.i, align 4
  %call5.i = call fastcc i64 @i_size_read(ptr noundef %inode) #9
  %call6.i = call i32 %27(ptr noundef nonnull %cres.i, ptr noundef nonnull %start.i, ptr noundef nonnull %len.i, i64 noundef %call5.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  %28 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i, align 4
  %conv.i2.i = zext i32 %29 to i64
  %shl.i3.i = shl nuw nsw i64 %conv.i2.i, 12
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.then8.i.fscache_write.exit.i_crit_edge, label %cond.true.i.i.i

if.then8.i.fscache_write.exit.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_write.exit.i

cond.true.i.i.i:                                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cres.i, align 4
  br label %fscache_write.exit.i

fscache_write.exit.i:                             ; preds = %cond.true.i.i.i, %if.then8.i.fscache_write.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %33, %cond.true.i.i.i ], [ null, %if.then8.i.fscache_write.exit.i_crit_edge ]
  %write.i.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %cond.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i.i, align 4
  %call1.i.i = call i32 %35(ptr noundef nonnull %cres.i, i64 noundef %shl.i3.i, ptr noundef nonnull %iter.i, ptr noundef null, ptr noundef null) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %fscache_write.exit.i, %if.end.i.if.end11.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i.i, %fscache_write.exit.i ], [ %call6.i, %if.end.i.if.end11.i_crit_edge ]
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %tobool.not.i.i5.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i5.i, label %if.end11.i.fscache_fallback_write_page.exit_crit_edge, label %fscache_operation_valid.exit.i.i

if.end11.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_write_page.exit

fscache_operation_valid.exit.i.i:                 ; preds = %if.end11.i
  %38 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cres.i, align 4
  %tobool.not.i6.i = icmp eq ptr %39, null
  br i1 %tobool.not.i6.i, label %fscache_operation_valid.exit.i.i.fscache_fallback_write_page.exit_crit_edge, label %if.then.i7.i

fscache_operation_valid.exit.i.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fscache_fallback_write_page.exit

if.then.i7.i:                                     ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void %41(ptr noundef nonnull %cres.i) #9
  br label %fscache_fallback_write_page.exit

fscache_fallback_write_page.exit:                 ; preds = %if.then.i7.i, %fscache_operation_valid.exit.i.i.fscache_fallback_write_page.exit_crit_edge, %if.end11.i.fscache_fallback_write_page.exit_crit_edge, %fscache_begin_write_operation.exit.i.fscache_fallback_write_page.exit_crit_edge, %land.lhs.true.i.i.fscache_fallback_write_page.exit_crit_edge, %do.end6.fscache_fallback_write_page.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i.i, %fscache_begin_write_operation.exit.i.fscache_fallback_write_page.exit_crit_edge ], [ %ret.0.i, %if.end11.i.fscache_fallback_write_page.exit_crit_edge ], [ %ret.0.i, %fscache_operation_valid.exit.i.i.fscache_fallback_write_page.exit_crit_edge ], [ %ret.0.i, %if.then.i7.i ], [ -105, %land.lhs.true.i.i.fscache_fallback_write_page.exit_crit_edge ], [ -105, %do.end6.fscache_fallback_write_page.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cres.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %42 = load i32, ptr @nfs_debug, align 4
  %and9 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %fscache_fallback_write_page.exit.do.end27_crit_edge, label %do.end20, !prof !81

fscache_fallback_write_page.exit.do.end27_crit_edge: ; preds = %fscache_fallback_write_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end20:                                         ; preds = %fscache_fallback_write_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i.i, align 4
  %45 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page, align 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %page, i32 noundef %44, i32 noundef %46, i32 noundef %retval.0.i) #13
  br label %do.end27

do.end27:                                         ; preds = %do.end20, %fscache_fallback_write_page.exit.do.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9
  %i_sb.i.i54 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %48 = ptrtoint ptr %i_sb.i.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i.i54, align 4
  %s_fs_info.i.i.i55 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i.i.i55, align 16
  %io_stats.i56 = getelementptr inbounds %struct.nfs_server, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %io_stats.i56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_stats.i56, align 8
  br i1 %cmp.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %do.end27
  %arrayidx.i = getelementptr %struct.nfs_iostats, ptr %53, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %arrayidx.i to i32
  %55 = call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %60, %54
  %61 = inttoptr i32 %add.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %61, align 8
  %add15.i = add i64 %63, 1
  store i64 %add15.i, ptr %61, align 8
  %64 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %and.i.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then28.nfs_inc_fscache_stats.exit_crit_edge, !prof !84

if.then28.nfs_inc_fscache_stats.exit_crit_edge:   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inc_fscache_stats.exit

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %nfs_inc_fscache_stats.exit

nfs_inc_fscache_stats.exit:                       ; preds = %if.then.i, %if.then28.nfs_inc_fscache_stats.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #9, !srcloc !85
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !82
  %66 = ptrtoint ptr %i_sb.i.i54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb.i.i54, align 4
  %s_fs_info.i.i.i42 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 33
  %68 = ptrtoint ptr %s_fs_info.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i.i42, align 16
  %io_stats.i43 = getelementptr inbounds %struct.nfs_server, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %io_stats.i43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_stats.i43, align 8
  %arrayidx.i44 = getelementptr %struct.nfs_iostats, ptr %71, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %arrayidx.i44 to i32
  %73 = call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i45 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i45 to ptr
  %cpu.i46 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i46, align 4
  %arrayidx14.i47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx14.i47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx14.i47, align 4
  %add.i48 = add i32 %78, %72
  %79 = inttoptr i32 %add.i48 to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %79, align 8
  %add15.i49 = add i64 %81, 1
  store i64 %add15.i49, ptr %79, align 8
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %and.i.i.i50 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i50)
  %tobool.not.i51 = icmp eq i32 %and.i.i.i50, 0
  br i1 %tobool.not.i51, label %if.then.i52, label %nfs_inc_fscache_stats.exit.nfs_inc_fscache_stats.exit53_crit_edge, !prof !84

nfs_inc_fscache_stats.exit.nfs_inc_fscache_stats.exit53_crit_edge: ; preds = %nfs_inc_fscache_stats.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inc_fscache_stats.exit53

if.then.i52:                                      ; preds = %nfs_inc_fscache_stats.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %nfs_inc_fscache_stats.exit53

nfs_inc_fscache_stats.exit53:                     ; preds = %if.then.i52, %nfs_inc_fscache_stats.exit.nfs_inc_fscache_stats.exit53_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #9, !srcloc !85
  br label %if.end29

if.else:                                          ; preds = %do.end27
  %arrayidx.i57 = getelementptr %struct.nfs_iostats, ptr %53, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %arrayidx.i57 to i32
  %84 = call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i58 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i58 to ptr
  %cpu.i59 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %cpu.i59 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i59, align 4
  %arrayidx14.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx14.i60 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx14.i60, align 4
  %add.i61 = add i32 %89, %83
  %90 = inttoptr i32 %add.i61 to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %90, align 8
  %add15.i62 = add i64 %92, 1
  store i64 %add15.i62, ptr %90, align 8
  %93 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %and.i.i.i63 = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i63)
  %tobool.not.i64 = icmp eq i32 %and.i.i.i63, 0
  br i1 %tobool.not.i64, label %if.then.i65, label %if.else.nfs_inc_fscache_stats.exit66_crit_edge, !prof !84

if.else.nfs_inc_fscache_stats.exit66_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_inc_fscache_stats.exit66

if.then.i65:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %nfs_inc_fscache_stats.exit66

nfs_inc_fscache_stats.exit66:                     ; preds = %if.then.i65, %if.else.nfs_inc_fscache_stats.exit66_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #9, !srcloc !85
  br label %if.end29

if.end29:                                         ; preds = %nfs_inc_fscache_stats.exit66, %nfs_inc_fscache_stats.exit53
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_volume(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_volume(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_cookie(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_invalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscache_begin_read_operation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscache_begin_write_operation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !67, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/fscache.c", i32 103, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nfs/fscache.c", i32 131, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfs_fscache_get_super_cookie._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfs_fscache_get_super_cookie._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nfs/fscache.c", i32 138, i32 3}
!10 = !{ptr @nfs_fscache_get_super_cookie._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nfs_fscache_get_super_cookie._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/fscache.c", i32 155, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfs_fscache_release_super_cookie._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfs_fscache_release_super_cookie._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nfs/fscache.c", i32 195, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfs_fscache_clear_inode._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfs_fscache_clear_inode._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfs/fscache.c", i32 232, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nfs_fscache_open_file._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfs_fscache_open_file._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_nfs_fscache_open_file, !28, !"__ksymtab_nfs_fscache_open_file", i1 false, i1 false}
!28 = !{!"../fs/nfs/fscache.c", i32 238, i32 1}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nfs/fscache.c", i32 326, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__nfs_readpage_from_fscache._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @__nfs_readpage_from_fscache._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfs/fscache.c", i32 331, i32 3}
!36 = !{ptr @__nfs_readpage_from_fscache._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @__nfs_readpage_from_fscache._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/nfs/fscache.c", i32 339, i32 3}
!40 = !{ptr @__nfs_readpage_from_fscache._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @__nfs_readpage_from_fscache._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/nfs/fscache.c", i32 346, i32 2}
!44 = !{ptr @__nfs_readpage_from_fscache._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @__nfs_readpage_from_fscache._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/nfs/fscache.c", i32 360, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__nfs_readpage_to_fscache._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @__nfs_readpage_to_fscache._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nfs/fscache.c", i32 366, i32 2}
!53 = !{ptr @__nfs_readpage_to_fscache._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @__nfs_readpage_to_fscache._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nfs/fscache.c", i32 51, i32 6}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nfs/fscache.c", i32 73, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nfs_fscache_get_client_key._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nfs_fscache_get_client_key._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/nfs/fscache.c", i32 34, i32 33}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 623345, i64 623406}
!83 = !{i64 626077}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 626362}
!86 = !{i64 2153064529}
!87 = !{i64 2153064371}
!88 = !{i64 2153064699}
!89 = !{i64 2150182967}
!90 = !{i64 2151012414, i64 2151012905, i64 2151012451, i64 2151012507, i64 2151012541, i64 2151012565, i64 2151012606, i64 2151012627, i64 2151012655, i64 2151012689}
!91 = !{i64 2151028604, i64 2151028777, i64 2151028792, i64 2151028844, i64 2151028903, i64 2151028927, i64 2151028968, i64 2151028989, i64 2151029017, i64 2151029049}
!92 = !{i64 2151029375, i64 2151029548, i64 2151029563, i64 2151029615, i64 2151029674, i64 2151029698, i64 2151029739, i64 2151029760, i64 2151029788, i64 2151029820}
!93 = !{i64 2151020457, i64 2151020630, i64 2151020645, i64 2151020697, i64 2151020756, i64 2151020780, i64 2151020821, i64 2151020842, i64 2151020870, i64 2151020902}
!94 = !{i64 2151021228, i64 2151021401, i64 2151021416, i64 2151021468, i64 2151021527, i64 2151021551, i64 2151021592, i64 2151021613, i64 2151021641, i64 2151021673}
!95 = !{i64 2151515038}
!96 = !{i64 2150764075, i64 2150764566, i64 2150764112, i64 2150764168, i64 2150764202, i64 2150764226, i64 2150764267, i64 2150764288, i64 2150764316, i64 2150764350}
