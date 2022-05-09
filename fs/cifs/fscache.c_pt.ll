; ModuleID = '/llk/IR_all_yes/fs/cifs/fscache.c_pt.bc'
source_filename = "../fs/cifs/fscache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cifs_fscache_volume_coherency_data = type <{ i64, i64, i32 }>
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.134, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.kuid_t = type { i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.130 }
%union.anon.130 = type { ptr, [124 x i8] }
%struct.cifs_fscache_inode_coherency_data = type { i64, i64, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.127 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.129 = type { ptr }
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
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.36, %union.anon.37 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.124, %union.anon.125 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.124 = type { ptr, [12 x i8] }
%union.anon.125 = type { ptr, [4 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.netfs_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cifs_fscache_get_super_cookie._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cifs_fscache_get_super_cookie = private unnamed_addr constant [30 x i8] c"cifs_fscache_get_super_cookie\00", align 1
@cifs_fscache_get_super_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.cifs_fscache_get_super_cookie, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: Unknown network family '%d'\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/cifs/fscache.c\00", [46 x i8] zeroinitializer }, align 32
@cifs_fscache_get_super_cookie._entry_ptr = internal global ptr @cifs_fscache_get_super_cookie._entry, section ".printk_index", align 4
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_fscache_get_super_cookie._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_fscache_get_super_cookie.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @__func__.cifs_fscache_get_super_cookie, ptr @.str.2, ptr @.str.5, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: couldn't extract sharename\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs,%pISpc,%s\00", [17 x i8] zeroinitializer }, align 32
@cifs_fscache_get_super_cookie._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_fscache_get_super_cookie.descriptor.8 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @__func__.cifs_fscache_get_super_cookie, ptr @.str.2, ptr @.str.9, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CIFS: %s: %s: (%s/0x%p)\0A\00", [39 x i8] zeroinitializer }, align 32
@cifs_fscache_get_super_cookie._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.cifs_fscache_get_super_cookie, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: Cache volume key already in use (%s)\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_fscache_get_super_cookie._entry_ptr.12 = internal global ptr @cifs_fscache_get_super_cookie._entry.10, section ".printk_index", align 4
@cifs_fscache_release_super_cookie._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_fscache_release_super_cookie.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cifs_fscache_release_super_cookie\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIFS: %s: %s: (0x%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@cifs_fscache_release_inode_cookie._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_fscache_release_inode_cookie.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.15, ptr @.str.2, ptr @.str.14, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cifs_fscache_release_inode_cookie\00", [62 x i8] zeroinitializer }, align 32
@__cifs_readpage_from_fscache._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__cifs_readpage_from_fscache.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__cifs_readpage_from_fscache\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: %s: (fsc:%p, p:%p, i:0x%p\0A\00", [59 x i8] zeroinitializer }, align 32
@__cifs_readpage_to_fscache._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__cifs_readpage_to_fscache.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__cifs_readpage_to_fscache\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: %s: (fsc: %p, p: %p, i: %p)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 42, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 50, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 59, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 67, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 73, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 90, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 131, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 211, i32 2 }
@___asan_gen_.86 = private constant [21 x i8] c"../fs/cifs/fscache.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 225, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 260, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @cifs_fscache_get_super_cookie._entry, ptr @cifs_fscache_get_super_cookie._entry.10, ptr @cifs_fscache_get_super_cookie._entry_ptr, ptr @cifs_fscache_get_super_cookie._entry_ptr.12, ptr @cifs_fscache_get_super_cookie._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cifs_fscache_get_super_cookie._rs.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cifs_fscache_get_super_cookie._rs.7, ptr @.str.9, ptr @.str.11, ptr @cifs_fscache_release_super_cookie._rs, ptr @.str.13, ptr @.str.14, ptr @cifs_fscache_release_inode_cookie._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fscache_get_super_cookie._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fscache_get_super_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fscache_get_super_cookie._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fscache_get_super_cookie._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fscache_get_super_cookie._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fscache_release_super_cookie._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fscache_release_inode_cookie._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_fscache_get_super_cookie(ptr noundef %tcon) local_unnamed_addr #0 align 64 {
entry:
  %cd = alloca %struct.cifs_fscache_volume_coherency_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cd) #8
  %0 = getelementptr inbounds %struct.cifs_fscache_volume_coherency_data, ptr %cd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cifs_fscache_volume_coherency_data, ptr %cd, i32 0, i32 2
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %2 = call ptr @memset(ptr %cd, i32 255, i32 20)
  %3 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ses, align 8
  %server1 = getelementptr inbounds %struct.cifs_ses, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server1, align 8
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %6, i32 0, i32 10
  %fscache = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 41
  %7 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fscache, align 8
  %8 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dstaddr, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %do.body2 [
    i16 2, label %entry.sw.epilog_crit_edge
    i16 10, label %entry.sw.epilog_crit_edge132
  ]

entry.sw.epilog_crit_edge132:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_fscache_get_super_cookie._rs, ptr noundef nonnull @__func__.cifs_fscache_get_super_cookie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2.cleanup_crit_edge, label %do.end

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dstaddr, align 2
  %conv5 = zext i16 %12 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv5) #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge132
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %call11 = tail call ptr @extract_sharename(ptr noundef %treeName) #8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body15, label %if.end35

do.body15:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body15.cleanup_crit_edge, label %do.body18

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_fscache_get_super_cookie.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_fscache_get_super_cookie, %land.lhs.true)) #8
          to label %cleanup [label %land.lhs.true], !srcloc !55

land.lhs.true:                                    ; preds = %do.body18
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_fscache_get_super_cookie._rs.3, ptr noundef nonnull @__func__.cifs_fscache_get_super_cookie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %if.then26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_fscache_get_super_cookie.descriptor, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cifs_fscache_get_super_cookie) #8
  br label %cleanup

if.end35:                                         ; preds = %sw.epilog
  %call36 = tail call i32 @strlen(ptr noundef %call11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp130.not = icmp eq i32 %call36, 0
  br i1 %cmp130.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %i.0131 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call11, i32 %i.0131
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %15)
  %cmp39 = icmp eq i8 %15, 47
  br i1 %cmp39, label %if.then41, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 59, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, %call36
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %call44 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %dstaddr, ptr noundef %call11) #8
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %for.end.out_crit_edge, label %if.end47

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end47:                                         ; preds = %for.end
  %resource_id.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 40
  %17 = ptrtoint ptr %resource_id.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %resource_id.i, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #8
  %20 = ptrtoint ptr %cd to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %cd, align 8
  %vol_create_time.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 32
  %21 = ptrtoint ptr %vol_create_time.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vol_create_time.i, align 8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %0, align 8
  %vol_serial_number.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 31
  %24 = ptrtoint ptr %vol_serial_number.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vol_serial_number.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %1, align 8
  %call.i = call ptr @__fscache_acquire_volume(ptr noundef nonnull %call44, ptr noundef null, ptr noundef nonnull %cd, i32 noundef 20) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %28 = load i32, ptr @cifsFYI, align 4
  %and51 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end47.do.end78_crit_edge, label %do.body54

if.end47.do.end78_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78

do.body54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_fscache_get_super_cookie.descriptor.8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_fscache_get_super_cookie, %land.lhs.true66)) #8
          to label %do.end78 [label %land.lhs.true66], !srcloc !55

land.lhs.true66:                                  ; preds = %do.body54
  %call67 = call i32 @___ratelimit(ptr noundef nonnull @cifs_fscache_get_super_cookie._rs.7, ptr noundef nonnull @__func__.cifs_fscache_get_super_cookie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.do.end78_crit_edge, label %if.then69

land.lhs.true66.do.end78_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78

if.then69:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_fscache_get_super_cookie.descriptor.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cifs_fscache_get_super_cookie, ptr noundef nonnull %call44, ptr noundef %call.i) #8
  br label %do.end78

do.end78:                                         ; preds = %if.then69, %land.lhs.true66.do.end78_crit_edge, %do.body54, %if.end47.do.end78_crit_edge
  %cmp.i127 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then80, label %do.end78.if.end92_crit_edge

do.end78.if.end92_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then80:                                        ; preds = %do.end78
  %cmp82.not = icmp eq ptr %call.i, inttoptr (i32 -16 to ptr)
  br i1 %cmp82.not, label %do.end89, label %if.then84

if.then84:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call.i to i32
  br label %out_2

do.end89:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call44) #11
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %do.end78.if.end92_crit_edge
  %vcookie.0 = phi ptr [ null, %do.end89 ], [ %call.i, %do.end78.if.end92_crit_edge ]
  %30 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %vcookie.0, ptr %fscache, align 8
  br label %out_2

out_2:                                            ; preds = %if.end92, %if.then84
  %ret.0 = phi i32 [ %29, %if.then84 ], [ 0, %if.end92 ]
  call void @kfree(ptr noundef nonnull %call44) #8
  br label %out

out:                                              ; preds = %out_2, %for.end.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_2 ], [ -12, %for.end.out_crit_edge ]
  call void @kfree(ptr noundef %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then26, %land.lhs.true.cleanup_crit_edge, %do.body18, %do.body15.cleanup_crit_edge, %do.end, %do.body2.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -22, %do.end ], [ -22, %do.body2.cleanup_crit_edge ], [ -22, %do.body15.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then26 ], [ -22, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cd) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extract_sharename(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_fscache_release_super_cookie(ptr nocapture noundef %tcon) local_unnamed_addr #0 align 64 {
entry:
  %cd = alloca %struct.cifs_fscache_volume_coherency_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cd) #8
  %0 = getelementptr inbounds %struct.cifs_fscache_volume_coherency_data, ptr %cd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cifs_fscache_volume_coherency_data, ptr %cd, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_fscache_release_super_cookie.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_fscache_release_super_cookie, %land.lhs.true)) #8
          to label %do.end13 [label %land.lhs.true], !srcloc !55

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_fscache_release_super_cookie._rs, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fscache = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 41
  %3 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fscache, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_fscache_release_super_cookie.descriptor, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, ptr noundef %4) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %resource_id.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 40
  %5 = ptrtoint ptr %resource_id.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %resource_id.i, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #8
  %8 = ptrtoint ptr %cd to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cd, align 8
  %vol_create_time.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 32
  %9 = ptrtoint ptr %vol_create_time.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vol_create_time.i, align 8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %0, align 8
  %vol_serial_number.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 31
  %12 = ptrtoint ptr %vol_serial_number.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vol_serial_number.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 8
  %fscache14 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 41
  %16 = ptrtoint ptr %fscache14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fscache14, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end13.fscache_relinquish_volume.exit_crit_edge, label %if.then.i

do.end13.fscache_relinquish_volume.exit_crit_edge: ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_relinquish_volume.exit

if.then.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @__fscache_relinquish_volume(ptr noundef nonnull %17, ptr noundef nonnull %cd, i1 noundef zeroext false) #8
  br label %fscache_relinquish_volume.exit

fscache_relinquish_volume.exit:                   ; preds = %if.then.i, %do.end13.fscache_relinquish_volume.exit_crit_edge
  %18 = ptrtoint ptr %fscache14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fscache14, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_fscache_get_inode_cookie(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %cd = alloca %struct.cifs_fscache_inode_coherency_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cd) #8
  %0 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 3
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %6) #8
  %i_mtime.i = getelementptr i8, ptr %inode, i32 80
  %7 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_mtime.i, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #8
  %10 = ptrtoint ptr %cd to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %cd, align 8
  %tv_nsec.i = getelementptr i8, ptr %inode, i32 88
  %11 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %1, align 8
  %i_ctime.i = getelementptr i8, ptr %inode, i32 96
  %15 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_ctime.i, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %0, align 8
  %tv_nsec7.i = getelementptr i8, ptr %inode, i32 104
  %19 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tv_nsec7.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %2, align 4
  %fscache = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 41
  %23 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fscache, align 8
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %entry.fscache_acquire_cookie.exit_crit_edge, label %if.end.i

entry.fscache_acquire_cookie.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_acquire_cookie.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %uniqueid = getelementptr i8, ptr %inode, i32 -40
  %call.i = call ptr @__fscache_acquire_cookie(ptr noundef nonnull %24, i8 noundef zeroext 0, ptr noundef %uniqueid, i32 noundef 8, ptr noundef nonnull %cd, i32 noundef 24, i64 noundef %call4) #8
  br label %fscache_acquire_cookie.exit

fscache_acquire_cookie.exit:                      ; preds = %if.end.i, %entry.fscache_acquire_cookie.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %entry.fscache_acquire_cookie.exit_crit_edge ]
  %fscache6 = getelementptr i8, ptr %inode, i32 -8
  %25 = ptrtoint ptr %fscache6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i, ptr %fscache6, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !56
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !58

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !59
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !61
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_fscache_unuse_inode_cookie(ptr noundef %inode, i1 noundef zeroext %update) local_unnamed_addr #0 align 64 {
entry:
  %cd = alloca %struct.cifs_fscache_inode_coherency_data, align 8
  %i_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %update, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cd) #8
  %0 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_size) #8
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call, ptr %i_size, align 8
  %i_mtime.i = getelementptr i8, ptr %inode, i32 80
  %4 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_mtime.i, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #8
  %7 = ptrtoint ptr %cd to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %cd, align 8
  %tv_nsec.i = getelementptr i8, ptr %inode, i32 88
  %8 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec.i, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 8
  %i_ctime.i = getelementptr i8, ptr %inode, i32 96
  %12 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_ctime.i, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %0, align 8
  %tv_nsec7.i = getelementptr i8, ptr %inode, i32 104
  %16 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec7.i, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %2, align 4
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %20 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fscache.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then.fscache_unuse_cookie.exit_crit_edge, label %if.then.i

if.then.fscache_unuse_cookie.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_unuse_cookie.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__fscache_unuse_cookie(ptr noundef nonnull %21, ptr noundef nonnull %cd, ptr noundef nonnull %i_size) #8
  br label %fscache_unuse_cookie.exit

fscache_unuse_cookie.exit:                        ; preds = %if.then.i, %if.then.fscache_unuse_cookie.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_size) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cd) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %fscache.i6 = getelementptr i8, ptr %inode, i32 -8
  %22 = ptrtoint ptr %fscache.i6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fscache.i6, align 8
  %tobool.not.i7 = icmp eq ptr %23, null
  br i1 %tobool.not.i7, label %if.else.if.end_crit_edge, label %if.then.i8

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i8:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %23, ptr noundef null, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i8, %if.else.if.end_crit_edge, %fscache_unuse_cookie.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_fscache_release_inode_cookie(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fscache = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.body1

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body1.do.end17_crit_edge, label %do.body4

do.body1.do.end17_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.body4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_fscache_release_inode_cookie.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_fscache_release_inode_cookie, %land.lhs.true)) #8
          to label %do.end17 [label %land.lhs.true], !srcloc !55

land.lhs.true:                                    ; preds = %do.body4
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_fscache_release_inode_cookie._rs, ptr noundef nonnull @.str.15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end17_crit_edge, label %if.then11

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fscache, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_fscache_release_inode_cookie.descriptor, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15, ptr noundef %4) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %land.lhs.true.do.end17_crit_edge, %do.body4, %do.body1.do.end17_crit_edge
  %5 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fscache, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end17.fscache_relinquish_cookie.exit_crit_edge, label %if.then.i

do.end17.fscache_relinquish_cookie.exit_crit_edge: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_relinquish_cookie.exit

if.then.i:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__fscache_relinquish_cookie(ptr noundef nonnull %6, i1 noundef zeroext false) #8
  br label %fscache_relinquish_cookie.exit

fscache_relinquish_cookie.exit:                   ; preds = %if.then.i, %do.end17.fscache_relinquish_cookie.exit_crit_edge
  %7 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fscache, align 8
  br label %if.end20

if.end20:                                         ; preds = %fscache_relinquish_cookie.exit, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cifs_readpage_from_fscache(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %cres.i = alloca %struct.netfs_cache_resources, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %bvec.i = alloca [1 x %struct.bio_vec], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cifs_readpage_from_fscache.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cifs_readpage_from_fscache, %land.lhs.true)) #8
          to label %do.end14 [label %land.lhs.true], !srcloc !55

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @__cifs_readpage_from_fscache._rs, ptr noundef nonnull @.str.16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end14_crit_edge, label %if.then8

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %1 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fscache.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cifs_readpage_from_fscache.descriptor, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, ptr noundef %2, ptr noundef %page, ptr noundef %inode) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cres.i) #8
  %3 = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres.i, i32 0, i32 1
  %fscache.i.i = getelementptr i8, ptr %inode, i32 -8
  %4 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fscache.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #8
  %6 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i) #8
  %7 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 2
  %9 = call ptr @memset(ptr %cres.i, i32 0, i32 20)
  %10 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %page, ptr %bvec.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %8, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %7, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef nonnull %bvec.i, i32 noundef 1, i32 noundef 4096) #8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.end14.fscache_fallback_read_page.exit.thread_crit_edge, label %land.lhs.true.i.i

do.end14.fscache_fallback_read_page.exit.thread_crit_edge: ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_read_page.exit.thread

land.lhs.true.i.i:                                ; preds = %do.end14
  %flags.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i.i, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i.i, label %fscache_begin_read_operation.exit.i, label %land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge

land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_read_page.exit.thread

fscache_begin_read_operation.exit.i:              ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @__fscache_begin_read_operation(ptr noundef nonnull %cres.i, ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge, label %if.end.i

fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge: ; preds = %fscache_begin_read_operation.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_read_page.exit.thread

if.end.i:                                         ; preds = %fscache_begin_read_operation.exit.i
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %17 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %tobool.not.i.i.i23 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i23, label %if.end.i.fscache_read.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.fscache_read.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_read.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cres.i, align 4
  br label %fscache_read.exit.i

fscache_read.exit.i:                              ; preds = %cond.true.i.i.i, %if.end.i.fscache_read.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %21, %cond.true.i.i.i ], [ null, %if.end.i.fscache_read.exit.i_crit_edge ]
  %read.i.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %cond.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i.i, align 4
  %call1.i.i = call i32 %23(ptr noundef nonnull %cres.i, i64 noundef %shl.i.i, ptr noundef nonnull %iter.i, i32 noundef 2, ptr noundef null, ptr noundef null) #8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %tobool.not.i.i14.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i14.i, label %fscache_read.exit.i.fscache_fallback_read_page.exit_crit_edge, label %fscache_operation_valid.exit.i.i

fscache_read.exit.i.fscache_fallback_read_page.exit_crit_edge: ; preds = %fscache_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_read_page.exit

fscache_operation_valid.exit.i.i:                 ; preds = %fscache_read.exit.i
  %26 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cres.i, align 4
  %tobool.not.i15.i = icmp eq ptr %27, null
  br i1 %tobool.not.i15.i, label %fscache_operation_valid.exit.i.i.fscache_fallback_read_page.exit_crit_edge, label %if.then.i16.i

fscache_operation_valid.exit.i.i.fscache_fallback_read_page.exit_crit_edge: ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_read_page.exit

if.then.i16.i:                                    ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  call void %29(ptr noundef nonnull %cres.i) #8
  br label %fscache_fallback_read_page.exit

fscache_fallback_read_page.exit.thread:           ; preds = %fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge, %land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge, %do.end14.fscache_fallback_read_page.exit.thread_crit_edge
  %retval.0.i24.ph = phi i32 [ -105, %do.end14.fscache_fallback_read_page.exit.thread_crit_edge ], [ -105, %land.lhs.true.i.i.fscache_fallback_read_page.exit.thread_crit_edge ], [ %call2.i.i, %fscache_begin_read_operation.exit.i.fscache_fallback_read_page.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cres.i) #8
  br label %cleanup

fscache_fallback_read_page.exit:                  ; preds = %if.then.i16.i, %fscache_operation_valid.exit.i.i.fscache_fallback_read_page.exit_crit_edge, %fscache_read.exit.i.fscache_fallback_read_page.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cres.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp = icmp slt i32 %call1.i.i, 0
  br i1 %cmp, label %fscache_fallback_read_page.exit.cleanup_crit_edge, label %if.end17

fscache_fallback_read_page.exit.cleanup_crit_edge: ; preds = %fscache_fallback_read_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %fscache_fallback_read_page.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  %30 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !65

if.then.i.i.i:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %cleanup

cleanup:                                          ; preds = %SetPageUptodate.exit, %fscache_fallback_read_page.exit.cleanup_crit_edge, %fscache_fallback_read_page.exit.thread
  %retval.0 = phi i32 [ 0, %SetPageUptodate.exit ], [ %call1.i.i, %fscache_fallback_read_page.exit.cleanup_crit_edge ], [ %retval.0.i24.ph, %fscache_fallback_read_page.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cifs_readpage_to_fscache(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %cres.i = alloca %struct.netfs_cache_resources, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %bvec.i = alloca [1 x %struct.bio_vec], align 4
  %start.i = alloca i64, align 8
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body2

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cifs_readpage_to_fscache.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cifs_readpage_to_fscache, %land.lhs.true)) #8
          to label %do.end12 [label %land.lhs.true], !srcloc !55

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @__cifs_readpage_to_fscache._rs, ptr noundef nonnull @.str.18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %if.then8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %1 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fscache.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cifs_readpage_to_fscache.descriptor, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18, ptr noundef %2, ptr noundef %page, ptr noundef %inode) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %land.lhs.true.do.end12_crit_edge, %do.body2, %entry.do.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cres.i) #8
  %3 = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres.i, i32 0, i32 1
  %fscache.i.i = getelementptr i8, ptr %inode, i32 -8
  %4 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fscache.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #8
  %6 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i) #8
  %7 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #8
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %10 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %11 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shl.i.i, ptr %start.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %len.i, align 4
  %13 = call ptr @memset(ptr %cres.i, i32 0, i32 20)
  %14 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %page, ptr %bvec.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %8, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %7, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i, i32 noundef 1, ptr noundef nonnull %bvec.i, i32 noundef 1, i32 noundef 4096) #8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.end12.fscache_fallback_write_page.exit_crit_edge, label %land.lhs.true.i.i

do.end12.fscache_fallback_write_page.exit_crit_edge: ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_write_page.exit

land.lhs.true.i.i:                                ; preds = %do.end12
  %flags.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 14
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i.i, label %fscache_begin_write_operation.exit.i, label %land.lhs.true.i.i.fscache_fallback_write_page.exit_crit_edge

land.lhs.true.i.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_write_page.exit

fscache_begin_write_operation.exit.i:             ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @__fscache_begin_write_operation(ptr noundef nonnull %cres.i, ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %fscache_begin_write_operation.exit.i.fscache_fallback_write_page.exit_crit_edge, label %if.end.i

fscache_begin_write_operation.exit.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %fscache_begin_write_operation.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_write_page.exit

if.end.i:                                         ; preds = %fscache_begin_write_operation.exit.i
  %20 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cres.i, align 4
  %prepare_write.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %prepare_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prepare_write.i, align 4
  %call5.i = call fastcc i64 @i_size_read(ptr noundef %inode) #8
  %call6.i = call i32 %23(ptr noundef nonnull %cres.i, ptr noundef nonnull %start.i, ptr noundef nonnull %len.i, i64 noundef %call5.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  %24 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i, align 4
  %conv.i2.i = zext i32 %25 to i64
  %shl.i3.i = shl nuw nsw i64 %conv.i2.i, 12
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.then8.i.fscache_write.exit.i_crit_edge, label %cond.true.i.i.i

if.then8.i.fscache_write.exit.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_write.exit.i

cond.true.i.i.i:                                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cres.i, align 4
  br label %fscache_write.exit.i

fscache_write.exit.i:                             ; preds = %cond.true.i.i.i, %if.then8.i.fscache_write.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %29, %cond.true.i.i.i ], [ null, %if.then8.i.fscache_write.exit.i_crit_edge ]
  %write.i.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %cond.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i.i, align 4
  %call1.i.i = call i32 %31(ptr noundef nonnull %cres.i, i64 noundef %shl.i3.i, ptr noundef nonnull %iter.i, ptr noundef null, ptr noundef null) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %fscache_write.exit.i, %if.end.i.if.end11.i_crit_edge
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %tobool.not.i.i5.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i5.i, label %if.end11.i.fscache_fallback_write_page.exit_crit_edge, label %fscache_operation_valid.exit.i.i

if.end11.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_write_page.exit

fscache_operation_valid.exit.i.i:                 ; preds = %if.end11.i
  %34 = ptrtoint ptr %cres.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cres.i, align 4
  %tobool.not.i6.i = icmp eq ptr %35, null
  br i1 %tobool.not.i6.i, label %fscache_operation_valid.exit.i.i.fscache_fallback_write_page.exit_crit_edge, label %if.then.i7.i

fscache_operation_valid.exit.i.i.fscache_fallback_write_page.exit_crit_edge: ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_fallback_write_page.exit

if.then.i7.i:                                     ; preds = %fscache_operation_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  call void %37(ptr noundef nonnull %cres.i) #8
  br label %fscache_fallback_write_page.exit

fscache_fallback_write_page.exit:                 ; preds = %if.then.i7.i, %fscache_operation_valid.exit.i.i.fscache_fallback_write_page.exit_crit_edge, %if.end11.i.fscache_fallback_write_page.exit_crit_edge, %fscache_begin_write_operation.exit.i.fscache_fallback_write_page.exit_crit_edge, %land.lhs.true.i.i.fscache_fallback_write_page.exit_crit_edge, %do.end12.fscache_fallback_write_page.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cres.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cifs_fscache_query_occupancy(ptr nocapture noundef readonly %inode, i32 noundef %first, i32 noundef %nr_pages, ptr nocapture noundef writeonly %_data_first, ptr nocapture noundef writeonly %_data_nr_pages) local_unnamed_addr #0 align 64 {
entry:
  %cres = alloca %struct.netfs_cache_resources, align 4
  %data_start = alloca i64, align 8
  %data_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cres) #8
  %0 = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 1
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %1 = call ptr @memset(ptr %cres, i32 255, i32 20)
  %2 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fscache.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_start) #8
  %4 = ptrtoint ptr %data_start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %data_start, align 8, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_len) #8
  %5 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %data_len, align 4, !annotation !67
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %fscache_begin_read_operation.exit, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fscache_begin_read_operation.exit:                ; preds = %land.lhs.true.i
  %call2.i = call i32 @__fscache_begin_read_operation(ptr noundef nonnull %cres, ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %fscache_begin_read_operation.exit.cleanup_crit_edge, label %if.end

fscache_begin_read_operation.exit.cleanup_crit_edge: ; preds = %fscache_begin_read_operation.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %fscache_begin_read_operation.exit
  %mul = shl i32 %first, 12
  %conv = zext i32 %mul to i64
  %mul2 = shl i32 %nr_pages, 12
  %9 = ptrtoint ptr %cres to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cres, align 4
  %query_occupancy = getelementptr inbounds %struct.netfs_cache_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %query_occupancy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %query_occupancy, align 4
  %call3 = call i32 %12(ptr noundef nonnull %cres, i64 noundef %conv, i32 noundef %mul2, i32 noundef 4096, ptr noundef nonnull %data_start, ptr noundef nonnull %data_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %data_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data_start, align 8
  %div = sdiv i64 %14, 4096
  %conv7 = trunc i64 %div to i32
  %15 = ptrtoint ptr %_data_first to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv7, ptr %_data_first, align 4
  %div820 = and i32 %nr_pages, 1048575
  %16 = ptrtoint ptr %_data_nr_pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div820, ptr %_data_nr_pages, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end9.cleanup_crit_edge, label %fscache_operation_valid.exit.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fscache_operation_valid.exit.i:                   ; preds = %if.end9
  %19 = ptrtoint ptr %cres to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cres, align 4
  %tobool.not.i21 = icmp eq ptr %20, null
  br i1 %tobool.not.i21, label %fscache_operation_valid.exit.i.cleanup_crit_edge, label %if.then.i22

fscache_operation_valid.exit.i.cleanup_crit_edge: ; preds = %fscache_operation_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i22:                                      ; preds = %fscache_operation_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  call void %22(ptr noundef nonnull %cres) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i22, %fscache_operation_valid.exit.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %fscache_begin_read_operation.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %fscache_begin_read_operation.exit.cleanup_crit_edge ], [ %call3, %if.end9.cleanup_crit_edge ], [ %call3, %fscache_operation_valid.exit.i.cleanup_crit_edge ], [ %call3, %if.then.i22 ], [ -105, %land.lhs.true.i.cleanup_crit_edge ], [ -105, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_start) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cres) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_volume(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_volume(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

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
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscache_begin_write_operation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscache_begin_read_operation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/fscache.c", i32 42, i32 3}
!2 = !{ptr @cifs_fscache_get_super_cookie._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.cifs_fscache_get_super_cookie, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cifs_fscache_get_super_cookie._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cifs_fscache_get_super_cookie._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @cifs_fscache_get_super_cookie._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/fscache.c", i32 50, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_fscache_get_super_cookie.descriptor, !9, !"descriptor", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/cifs/fscache.c", i32 59, i32 30}
!15 = !{ptr @cifs_fscache_get_super_cookie._rs.7, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../fs/cifs/fscache.c", i32 67, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cifs_fscache_get_super_cookie.descriptor.8, !16, !"descriptor", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/cifs/fscache.c", i32 73, i32 3}
!21 = !{ptr @cifs_fscache_get_super_cookie._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cifs_fscache_get_super_cookie._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @cifs_fscache_release_super_cookie._rs, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../fs/cifs/fscache.c", i32 90, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cifs_fscache_release_super_cookie.descriptor, !24, !"descriptor", i1 false, i1 false}
!28 = !{ptr @cifs_fscache_release_inode_cookie._rs, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../fs/cifs/fscache.c", i32 131, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cifs_fscache_release_inode_cookie.descriptor, !29, !"descriptor", i1 false, i1 false}
!32 = !{ptr @__cifs_readpage_from_fscache._rs, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../fs/cifs/fscache.c", i32 211, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__cifs_readpage_from_fscache.descriptor, !33, !"descriptor", i1 false, i1 false}
!37 = !{ptr @__cifs_readpage_to_fscache._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../fs/cifs/fscache.c", i32 225, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__cifs_readpage_to_fscache.descriptor, !38, !"descriptor", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148335430, i64 2148335435, i64 2148335448, i64 2148335492, i64 2148335526, i64 2148335547}
!56 = !{i64 915512, i64 915573}
!57 = !{i64 918244}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 918529}
!60 = !{i64 2152611319}
!61 = !{i64 2152611161}
!62 = !{i64 2152611489}
!63 = !{i64 2149739063}
!64 = !{i64 2150870168}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2150119205, i64 2150119696, i64 2150119242, i64 2150119298, i64 2150119332, i64 2150119356, i64 2150119397, i64 2150119418, i64 2150119446, i64 2150119480}
!67 = !{!"auto-init"}
