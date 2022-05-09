; ModuleID = '/llk/IR_all_yes/fs/f2fs/xattr.c_pt.bc'
source_filename = "../fs/f2fs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%union.anon.73 = type { i32 }
%struct.xattr = type { ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.78 = type { %struct.callback_head }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.80 = type { ptr }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.89, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.90, [5 x i32] }
%union.anon.89 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.90 = type { [923 x i32] }
%struct.f2fs_xattr_header = type { i32, i32, [4 x i32] }
%struct.f2fs_xattr_entry = type { i8, i8, i16, [0 x i8] }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.7, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.free_segmap_info = type { i32, i32, i32, %struct.spinlock, ptr, ptr }
%struct.curseg_info = type { %struct.mutex, ptr, %struct.rw_semaphore, ptr, i8, i16, i32, i16, i32, i32, i32, i8 }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }
%struct.dnode_of_data = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@f2fs_xattr_user_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str, i32 1, ptr @f2fs_xattr_user_list, ptr @f2fs_xattr_generic_get, ptr @f2fs_xattr_generic_set }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@f2fs_xattr_trusted_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.1, i32 4, ptr @f2fs_xattr_trusted_list, ptr @f2fs_xattr_generic_get, ptr @f2fs_xattr_generic_set }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"system.advise\00", [18 x i8] zeroinitializer }, align 32
@f2fs_xattr_advise_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.2, ptr null, i32 7, ptr null, ptr @f2fs_xattr_advise_get, ptr @f2fs_xattr_advise_set }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@f2fs_xattr_security_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.3, i32 6, ptr null, ptr @f2fs_xattr_generic_get, ptr @f2fs_xattr_generic_set }, [40 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@f2fs_xattr_handlers = dso_local global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @f2fs_xattr_user_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @f2fs_xattr_trusted_handler, ptr @f2fs_xattr_security_handler, ptr @f2fs_xattr_advise_handler, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013inode (%lu) has corrupted xattr\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f2fs_xattr_entry-%u:%u\00", [41 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@f2fs_kmem_cache_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmem_cache_alloc = private unnamed_addr constant [22 x i8] c"f2fs_kmem_cache_alloc\00", align 1
@f2fs_kmem_cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.f2fs_kmem_cache_alloc, ptr @.str.8, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._entry_ptr = internal global ptr @f2fs_kmem_cache_alloc._entry, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@f2fs_kmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmalloc = private unnamed_addr constant [13 x i8] c"f2fs_kmalloc\00", align 1
@f2fs_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.f2fs_kmalloc, ptr @.str.8, i32 3219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._entry_ptr = internal global ptr @f2fs_kmalloc._entry, section ".printk_index", align 4
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@f2fs_xattr_handler_map = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr null, ptr @f2fs_xattr_user_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @f2fs_xattr_trusted_handler, ptr null, ptr @f2fs_xattr_security_handler, ptr @f2fs_xattr_advise_handler], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013inode (%lu) has invalid last xattr entry, entry_size: %zu\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 163, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"f2fs_xattr_user_handler\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 162, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 171, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"f2fs_xattr_trusted_handler\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 170, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 179, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"f2fs_xattr_advise_handler\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 178, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 186, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"f2fs_xattr_security_handler\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 185, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"f2fs_xattr_handlers\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 205, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 582, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 803, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 2650, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 3219, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 414, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 717, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"f2fs_xattr_handler_map\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 192, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 683, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [19 x i8] c"../fs/f2fs/xattr.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 748, i32 18 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @f2fs_kmalloc._entry, ptr @f2fs_kmalloc._entry_ptr, ptr @f2fs_kmem_cache_alloc._entry, ptr @f2fs_kmem_cache_alloc._entry_ptr, ptr @.str, ptr @f2fs_xattr_user_handler, ptr @.str.1, ptr @f2fs_xattr_trusted_handler, ptr @.str.2, ptr @f2fs_xattr_advise_handler, ptr @.str.3, ptr @f2fs_xattr_security_handler, ptr @f2fs_xattr_handlers, ptr @.str.4, ptr @.str.5, ptr @f2fs_kmem_cache_alloc._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @f2fs_kmalloc._rs, ptr @.str.10, ptr @.str.11, ptr @f2fs_xattr_handler_map, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_xattr_user_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_xattr_trusted_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_xattr_advise_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_xattr_handlers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_xattr_handler_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef %ipage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull @f2fs_initxattrs, ptr noundef %ipage) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_initxattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_array, align 4
  %cmp.not8 = icmp eq ptr %1, null
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.09, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %3, %for.cond.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %xattr.09 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %xattr_array, %entry.for.body_crit_edge ]
  %value = getelementptr inbounds %struct.xattr, ptr %xattr.09, i32 0, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.09, i32 0, i32 2
  %7 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_len, align 4
  %call = tail call i32 @f2fs_setxattr(ptr noundef %inode, i32 noundef 6, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %8, ptr noundef %page, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @f2fs_xattr_user_list(ptr nocapture noundef readonly %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %4 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt, align 8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_xattr_generic_get(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge6
  ]

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 73
  %7 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mount_opt, align 8
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge6
  %call3 = tail call i32 @f2fs_getxattr(ptr noundef %inode, i32 noundef %1, ptr noundef %name, ptr noundef %buffer, i32 noundef %size, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.epilog ], [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_xattr_generic_set(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge7
  ]

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 73
  %7 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mount_opt, align 8
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge7
  %call4 = tail call i32 @f2fs_setxattr(ptr noundef %inode, i32 noundef %1, ptr noundef %name, ptr noundef %value, i32 noundef %size, ptr noundef null, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.epilog ], [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @f2fs_xattr_trusted_list(ptr nocapture noundef readnone %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #14
  ret i1 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @f2fs_xattr_advise_get(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %name, ptr noundef writeonly %buffer, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_advise = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %0 = ptrtoint ptr %i_advise to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_advise, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %buffer, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_xattr_advise_set(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr noundef readonly %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_advise = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %0 = ptrtoint ptr %i_advise to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_advise, align 4
  %call1 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %inode) #14
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %value, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %4 = and i8 %3, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %and7 = and i8 %3, 33
  %5 = and i8 %1, -34
  %or23 = or i8 %and7, %5
  %6 = ptrtoint ptr %i_advise to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or23, ptr %i_advise, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_getxattr(ptr noundef %inode, i32 noundef %index, ptr noundef readonly %name, ptr noundef writeonly %buffer, i32 noundef %buffer_size, ptr noundef %ipage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %name, null
  br i1 %cmp, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup26

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp2 = icmp ugt i32 %call, 255
  br i1 %cmp2, label %if.end.cleanup26_crit_edge, label %if.end4

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup26

if.end4:                                          ; preds = %if.end
  %i_xattr_sem = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 28
  tail call void @down_read(ptr noundef %i_xattr_sem) #14
  %i_xattr_nid.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %0 = ptrtoint ptr %i_xattr_nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_xattr_nid.i, align 8
  %flags.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.end4.inline_xattr_size.exit.i_crit_edge, label %if.then.i.i

if.end4.inline_xattr_size.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit.i

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %5 = ptrtoint ptr %i_inline_xattr_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_inline_xattr_size.i.i.i, align 4
  %mul.i.i = shl i32 %6, 2
  br label %inline_xattr_size.exit.i

inline_xattr_size.exit.i:                         ; preds = %if.then.i.i, %if.end4.inline_xattr_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul.i.i, %if.then.i.i ], [ 0, %if.end4.inline_xattr_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool2.not.i = icmp eq i32 %retval.0.i.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool2.not.i, i1 false
  br i1 %or.cond.i, label %inline_xattr_size.exit.i.lookup_all_xattrs.exit.thread_crit_edge, label %if.end.i

inline_xattr_size.exit.i.lookup_all_xattrs.exit.thread_crit_edge: ; preds = %inline_xattr_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_all_xattrs.exit.thread

if.end.i:                                         ; preds = %inline_xattr_size.exit.i
  %7 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i93.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i93.i, label %if.end.i.inline_xattr_size.exit98.i_crit_edge, label %if.then.i96.i

if.end.i.inline_xattr_size.exit98.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit98.i

if.then.i96.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i94.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %10 = ptrtoint ptr %i_inline_xattr_size.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_inline_xattr_size.i.i94.i, align 4
  %mul.i95.i = shl i32 %11, 2
  br label %inline_xattr_size.exit98.i

inline_xattr_size.exit98.i:                       ; preds = %if.then.i96.i, %if.end.i.inline_xattr_size.exit98.i_crit_edge
  %retval.0.i97.i = phi i32 [ %mul.i95.i, %if.then.i96.i ], [ 0, %if.end.i.inline_xattr_size.exit98.i_crit_edge ]
  %add.i = select i1 %tobool.not.i, i32 4, i32 4076
  %add7.i = add i32 %retval.0.i97.i, %add.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %inline_xattr_slab_size.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %15, i32 0, i32 133
  %16 = ptrtoint ptr %inline_xattr_slab_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inline_xattr_slab_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add7.i)
  %cmp.i.i = icmp eq i32 %17, %add7.i
  br i1 %cmp.i.i, label %if.then.i99.i, label %if.end.i.i, !prof !55

if.then.i99.i:                                    ; preds = %inline_xattr_size.exit98.i
  %inline_xattr_slab.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %15, i32 0, i32 132
  %18 = ptrtoint ptr %inline_xattr_slab.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inline_xattr_slab.i.i, align 4
  %fault_info.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %15, i32 0, i32 73, i32 7
  %inject_rate.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %15, i32 0, i32 73, i32 7, i32 1
  %20 = ptrtoint ptr %inject_rate.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inject_rate.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i99.i.if.end8.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i99.i.if.end8.i.i.i_crit_edge:            ; preds = %if.then.i99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i99.i
  %inject_type.i.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %15, i32 0, i32 73, i32 7, i32 2
  %22 = ptrtoint ptr %inject_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inject_type.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i.i_crit_edge, label %if.end3.i.i.i.i

if.end.i.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i.i.i, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i.i.i, ptr %fault_info.i.i.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i.i.i) #14, !srcloc !56
  %call.i.i14.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i.i.i, i32 noundef 4) #14
  %25 = ptrtoint ptr %fault_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %fault_info.i.i.i.i, align 4
  %27 = ptrtoint ptr %inject_rate.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inject_rate.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not.i.i.i.i = icmp ult i32 %26, %28
  br i1 %cmp.not.i.i.i.i, label %if.end3.i.i.i.i.if.end8.i.i.i_crit_edge, label %if.then2.i.i.i

if.end3.i.i.i.i.if.end8.i.i.i_crit_edge:          ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end3.i.i.i.i
  %call.i.i15.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i.i, i32 noundef 4) #14
  %29 = ptrtoint ptr %fault_info.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %fault_info.i.i.i.i, align 4
  %call3.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmem_cache_alloc._rs, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.then2.i.i.i.lookup_all_xattrs.exit.thread_crit_edge, label %do.end.i.i.i

if.then2.i.i.i.lookup_all_xattrs.exit.thread_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_all_xattrs.exit.thread

do.end.i.i.i:                                     ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %15, align 8
  %s_id.i.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15), align 4
  %33 = tail call ptr @llvm.returnaddress(i32 0) #14
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef %s_id.i.i.i, ptr noundef %32, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc, ptr noundef %33) #18
  br label %lookup_all_xattrs.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end3.i.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.i.if.end8.i.i.i_crit_edge, %if.then.i99.i.if.end8.i.i.i_crit_edge
  %call9.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %19, i32 noundef 3392) #14
  br label %xattr_alloc.exit.i

if.end.i.i:                                       ; preds = %inline_xattr_size.exit98.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i = tail call fastcc ptr @f2fs_kzalloc(ptr noundef %15, i32 noundef %add7.i) #14
  br label %xattr_alloc.exit.i

xattr_alloc.exit.i:                               ; preds = %if.end.i.i, %if.end8.i.i.i
  %retval.0.i100.i = phi ptr [ %call9.i.i.i, %if.end8.i.i.i ], [ %call2.i.i, %if.end.i.i ]
  %tobool10.not.i = icmp eq ptr %retval.0.i100.i, null
  br i1 %tobool10.not.i, label %xattr_alloc.exit.i.lookup_all_xattrs.exit.thread_crit_edge, label %if.end12.i

xattr_alloc.exit.i.lookup_all_xattrs.exit.thread_crit_edge: ; preds = %xattr_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_all_xattrs.exit.thread

if.end12.i:                                       ; preds = %xattr_alloc.exit.i
  %34 = ptrtoint ptr %i_xattr_nid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_xattr_nid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool15.not.i = icmp eq i32 %35, 0
  %cond16.i = select i1 %tobool15.not.i, i32 0, i32 4072
  %36 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %38 = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i102.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i102.i, label %if.end12.i.inline_xattr_size.exit107.i_crit_edge, label %if.then.i105.i

if.end12.i.inline_xattr_size.exit107.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit107.i

if.then.i105.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i103.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %39 = ptrtoint ptr %i_inline_xattr_size.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_inline_xattr_size.i.i103.i, align 4
  %mul.i104.i = shl i32 %40, 2
  br label %inline_xattr_size.exit107.i

inline_xattr_size.exit107.i:                      ; preds = %if.then.i105.i, %if.end12.i.inline_xattr_size.exit107.i_crit_edge
  %retval.0.i106.i = phi i32 [ %mul.i104.i, %if.then.i105.i ], [ 0, %if.end12.i.inline_xattr_size.exit107.i_crit_edge ]
  %add18.i = add i32 %retval.0.i106.i, %cond16.i
  %add.ptr.i = getelementptr i8, ptr %retval.0.i100.i, i32 %add18.i
  br i1 %tobool2.not.i, label %inline_xattr_size.exit107.i.if.end29.i_crit_edge, label %if.then20.i

inline_xattr_size.exit107.i.if.end29.i_crit_edge: ; preds = %inline_xattr_size.exit107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then20.i:                                      ; preds = %inline_xattr_size.exit107.i
  %41 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %45 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %47 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %if.then20.i.inline_xattr_size.exit.i.i_crit_edge, label %if.then.i.i.i

if.then20.i.inline_xattr_size.exit.i.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %48 = ptrtoint ptr %i_inline_xattr_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_inline_xattr_size.i.i.i.i, align 4
  %mul.i.i.i = shl i32 %49, 2
  br label %inline_xattr_size.exit.i.i

inline_xattr_size.exit.i.i:                       ; preds = %if.then.i.i.i, %if.then20.i.inline_xattr_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %mul.i.i.i, %if.then.i.i.i ], [ 0, %if.then20.i.inline_xattr_size.exit.i.i_crit_edge ]
  %tobool.not.i108.i = icmp eq ptr %ipage, null
  br i1 %tobool.not.i108.i, label %if.else.i.i, label %if.then.i109.i

if.then.i109.i:                                   ; preds = %inline_xattr_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = tail call ptr @page_address(ptr noundef nonnull %ipage) #14
  br label %read_inline_xattr.exit.thread.i

if.else.i.i:                                      ; preds = %inline_xattr_size.exit.i.i
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %50 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_ino.i.i, align 8
  %call3.i.i = tail call ptr @f2fs_get_node_page(ptr noundef %44, i32 noundef %51) #14
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %read_inline_xattr.exit.i, label %if.end.i110.i

if.end.i110.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i21.i.i = tail call ptr @page_address(ptr noundef %call3.i.i) #14
  br label %read_inline_xattr.exit.thread.i

read_inline_xattr.exit.thread.i:                  ; preds = %if.end.i110.i, %if.then.i109.i
  %call.i.i21.sink.i.i = phi ptr [ %call.i.i21.i.i, %if.end.i110.i ], [ %call.i.i.i.i, %if.then.i109.i ]
  %page.0.i.i = phi ptr [ %call3.i.i, %if.end.i110.i ], [ null, %if.then.i109.i ]
  %52 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i21.sink.i.i, i32 0, i32 23
  %i_inline_xattr_size.i.i22.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %53 = ptrtoint ptr %i_inline_xattr_size.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_inline_xattr_size.i.i22.i.i, align 4
  %sub.i23.i.i = sub i32 923, %54
  %arrayidx.i24.i.i = getelementptr [923 x i32], ptr %52, i32 0, i32 %sub.i23.i.i
  %55 = call ptr @memcpy(ptr %retval.0.i100.i, ptr %arrayidx.i24.i.i, i32 %retval.0.i.i.i)
  tail call fastcc void @f2fs_put_page(ptr noundef %page.0.i.i) #14
  %56 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %58 = and i32 %57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i113.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i113.i, label %read_inline_xattr.exit.thread.i.inline_xattr_size.exit.i118.i_crit_edge, label %if.then.i.i116.i

read_inline_xattr.exit.thread.i.inline_xattr_size.exit.i118.i_crit_edge: ; preds = %read_inline_xattr.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit.i118.i

read_inline_xattr.exit.i:                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %call3.i.i to i32
  br label %out.i

if.then.i.i116.i:                                 ; preds = %read_inline_xattr.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %i_inline_xattr_size.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_inline_xattr_size.i.i22.i.i, align 4
  %mul.i.i115.i = shl i32 %61, 2
  br label %inline_xattr_size.exit.i118.i

inline_xattr_size.exit.i118.i:                    ; preds = %if.then.i.i116.i, %read_inline_xattr.exit.thread.i.inline_xattr_size.exit.i118.i_crit_edge
  %retval.0.i.i117.i = phi i32 [ %mul.i.i115.i, %if.then.i.i116.i ], [ 0, %read_inline_xattr.exit.thread.i.inline_xattr_size.exit.i118.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i100.i, i32 %retval.0.i.i117.i
  %add.ptr.i.i.i = getelementptr %struct.f2fs_xattr_header, ptr %retval.0.i100.i, i32 1
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not51.i.i.i = icmp eq i32 %63, 0
  br i1 %cmp.not51.i.i.i, label %inline_xattr_size.exit.i118.i.__find_xattr.exit.i.i_crit_edge, label %inline_xattr_size.exit.i118.i.for.body.i.i.i_crit_edge

inline_xattr_size.exit.i118.i.for.body.i.i.i_crit_edge: ; preds = %inline_xattr_size.exit.i118.i
  br label %for.body.i.i.i

inline_xattr_size.exit.i118.i.__find_xattr.exit.i.i_crit_edge: ; preds = %inline_xattr_size.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %inline_xattr_size.exit.i118.i.for.body.i.i.i_crit_edge
  %entry1.052.i.i.i = phi ptr [ %add.ptr7.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %inline_xattr_size.exit.i118.i.for.body.i.i.i_crit_edge ]
  %add.ptr2.i.i.i = getelementptr i8, ptr %entry1.052.i.i.i, i32 4
  %cmp3.i.i.i = icmp ugt ptr %add.ptr2.i.i.i, %add.ptr.i.i
  br i1 %cmp3.i.i.i, label %for.body.i.i.i.if.end29.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.i.if.end29.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i.i
  %e_name_len.i.i.i = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.052.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %e_name_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %e_name_len.i.i.i, align 1
  %conv.i.i.i = zext i8 %65 to i32
  %e_value_size.i.i.i = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.052.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %e_value_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %e_value_size.i.i.i, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #14
  %conv4.i.i.i = zext i16 %68 to i32
  %add5.i.i.i = add nuw nsw i32 %conv.i.i.i, 7
  %add6.i.i.i = add nuw nsw i32 %add5.i.i.i, %conv4.i.i.i
  %and.i.i.i = and i32 %add6.i.i.i, 131068
  %add.ptr7.i.i.i = getelementptr i8, ptr %entry1.052.i.i.i, i32 %and.i.i.i
  %cmp8.i.i.i = icmp ugt ptr %add.ptr7.i.i.i, %add.ptr.i.i
  br i1 %cmp8.i.i.i, label %lor.lhs.false.i.i.i.if.end29.i_crit_edge, label %if.end11.i.i.i

lor.lhs.false.i.i.i.if.end29.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.end11.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %69 = ptrtoint ptr %entry1.052.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %entry1.052.i.i.i, align 2
  %conv12.i.i.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i.i.i, i32 %index)
  %cmp13.not.i.i.i = icmp eq i32 %conv12.i.i.i, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv.i.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %call, %conv.i.i.i
  %or.cond.i.i.i = select i1 %cmp13.not.i.i.i, i1 %cmp19.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end22.i.i.i, label %if.end11.i.i.i.for.inc.i.i.i_crit_edge

if.end11.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.end22.i.i.i:                                   ; preds = %if.end11.i.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %add.ptr2.i.i.i, ptr nonnull %name, i32 %call) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.end22.i.i.i.__find_xattr.exit.i.i_crit_edge, label %if.end22.i.i.i.for.inc.i.i.i_crit_edge

if.end22.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.end22.i.i.i.__find_xattr.exit.i.i_crit_edge:   ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.end22.i.i.i.for.inc.i.i.i_crit_edge, %if.end11.i.i.i.for.inc.i.i.i_crit_edge
  %71 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr7.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq i32 %72, 0
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.__find_xattr.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.__find_xattr.exit.i.i_crit_edge:    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit.i.i

__find_xattr.exit.i.i:                            ; preds = %for.inc.i.i.i.__find_xattr.exit.i.i_crit_edge, %if.end22.i.i.i.__find_xattr.exit.i.i_crit_edge, %inline_xattr_size.exit.i118.i.__find_xattr.exit.i.i_crit_edge
  %retval.0.i18.i.i = phi ptr [ %add.ptr.i.i.i, %inline_xattr_size.exit.i118.i.__find_xattr.exit.i.i_crit_edge ], [ %add.ptr7.i.i.i, %for.inc.i.i.i.__find_xattr.exit.i.i_crit_edge ], [ %entry1.052.i.i.i, %if.end22.i.i.i.__find_xattr.exit.i.i_crit_edge ]
  %tobool.not.i119.i = icmp eq ptr %retval.0.i18.i.i, null
  br i1 %tobool.not.i119.i, label %__find_xattr.exit.i.i.if.end29.i_crit_edge, label %if.end.i121.i

__find_xattr.exit.i.i.if.end29.i_crit_edge:       ; preds = %__find_xattr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.end.i121.i:                                    ; preds = %__find_xattr.exit.i.i
  %73 = ptrtoint ptr %retval.0.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %retval.0.i18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i120.i = icmp eq i32 %74, 0
  %add.ptr3.i.i = getelementptr i8, ptr %retval.0.i18.i.i, i32 4
  %cmp4.i.i = icmp ugt ptr %add.ptr3.i.i, %add.ptr.i.i
  %or.cond.i.i = select i1 %cmp.i120.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i121.i.if.end29.i_crit_edge, label %if.end.i121.i.check.i_crit_edge

if.end.i121.i.check.i_crit_edge:                  ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %check.i

if.end.i121.i.if.end29.i_crit_edge:               ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end.i121.i.if.end29.i_crit_edge, %__find_xattr.exit.i.i.if.end29.i_crit_edge, %lor.lhs.false.i.i.i.if.end29.i_crit_edge, %for.body.i.i.i.if.end29.i_crit_edge, %inline_xattr_size.exit107.i.if.end29.i_crit_edge
  %last_addr.1.i = phi ptr [ null, %inline_xattr_size.exit107.i.if.end29.i_crit_edge ], [ null, %__find_xattr.exit.i.i.if.end29.i_crit_edge ], [ %retval.0.i18.i.i, %if.end.i121.i.if.end29.i_crit_edge ], [ %entry1.052.i.i.i, %lor.lhs.false.i.i.i.if.end29.i_crit_edge ], [ %entry1.052.i.i.i, %for.body.i.i.i.if.end29.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end29.i.if.end36.i_crit_edge, label %if.then31.i

if.end29.i.if.end36.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end29.i
  %75 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i124.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 33
  %77 = ptrtoint ptr %s_fs_info.i.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i.i.i124.i, align 16
  %79 = ptrtoint ptr %i_xattr_nid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_xattr_nid.i, align 8
  %81 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %83 = and i32 %82, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i126.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i126.i, label %if.then31.i.inline_xattr_size.exit.i133.i_crit_edge, label %if.then.i.i129.i

if.then31.i.inline_xattr_size.exit.i133.i_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit.i133.i

if.then.i.i129.i:                                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i.i127.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %84 = ptrtoint ptr %i_inline_xattr_size.i.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_inline_xattr_size.i.i.i127.i, align 4
  %mul.i.i128.i = shl i32 %85, 2
  br label %inline_xattr_size.exit.i133.i

inline_xattr_size.exit.i133.i:                    ; preds = %if.then.i.i129.i, %if.then31.i.inline_xattr_size.exit.i133.i_crit_edge
  %retval.0.i.i130.i = phi i32 [ %mul.i.i128.i, %if.then.i.i129.i ], [ 0, %if.then31.i.inline_xattr_size.exit.i133.i_crit_edge ]
  %call3.i131.i = tail call ptr @f2fs_get_node_page(ptr noundef %78, i32 noundef %80) #14
  %cmp.i.i132.i = icmp ugt ptr %call3.i131.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i132.i, label %read_xattr_block.exit.i, label %read_xattr_block.exit.thread.i

read_xattr_block.exit.thread.i:                   ; preds = %inline_xattr_size.exit.i133.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i.i = tail call ptr @page_address(ptr noundef %call3.i131.i) #14
  %add.ptr.i135.i = getelementptr i8, ptr %retval.0.i100.i, i32 %retval.0.i.i130.i
  %86 = call ptr @memcpy(ptr %add.ptr.i135.i, ptr %call6.i.i, i32 4072)
  tail call fastcc void @f2fs_put_page(ptr noundef %call3.i131.i) #14
  br label %if.end36.i

read_xattr_block.exit.i:                          ; preds = %inline_xattr_size.exit.i133.i
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %call3.i131.i to i32
  br label %out.i

if.end36.i:                                       ; preds = %read_xattr_block.exit.thread.i, %if.end29.i.if.end36.i_crit_edge
  %tobool37.not.i = icmp eq ptr %last_addr.1.i, null
  %add.ptr39.i = getelementptr %struct.f2fs_xattr_header, ptr %last_addr.1.i, i32 -1
  %cur_addr.0.i = select i1 %tobool37.not.i, ptr %retval.0.i100.i, ptr %add.ptr39.i
  %add.ptr.i138.i = getelementptr %struct.f2fs_xattr_header, ptr %cur_addr.0.i, i32 1
  %88 = ptrtoint ptr %add.ptr.i138.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.not51.i.i = icmp eq i32 %89, 0
  br i1 %cmp.not51.i.i, label %if.end36.i.__find_xattr.exit.i_crit_edge, label %if.end36.i.for.body.i.i_crit_edge

if.end36.i.for.body.i.i_crit_edge:                ; preds = %if.end36.i
  br label %for.body.i.i

if.end36.i.__find_xattr.exit.i_crit_edge:         ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end36.i.for.body.i.i_crit_edge
  %entry1.052.i.i = phi ptr [ %add.ptr7.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i138.i, %if.end36.i.for.body.i.i_crit_edge ]
  %add.ptr2.i.i = getelementptr i8, ptr %entry1.052.i.i, i32 4
  %cmp3.i.i = icmp ugt ptr %add.ptr2.i.i, %add.ptr.i
  br i1 %cmp3.i.i, label %for.body.i.i.if.then43.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.if.then43.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %e_name_len.i.i = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.052.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %e_name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %e_name_len.i.i, align 1
  %conv.i.i = zext i8 %91 to i32
  %e_value_size.i.i = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.052.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %e_value_size.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %e_value_size.i.i, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #14
  %conv4.i.i = zext i16 %94 to i32
  %add5.i.i = add nuw nsw i32 %conv.i.i, 7
  %add6.i.i = add nuw nsw i32 %add5.i.i, %conv4.i.i
  %and.i.i = and i32 %add6.i.i, 131068
  %add.ptr7.i.i = getelementptr i8, ptr %entry1.052.i.i, i32 %and.i.i
  %cmp8.i.i = icmp ugt ptr %add.ptr7.i.i, %add.ptr.i
  br i1 %cmp8.i.i, label %lor.lhs.false.i.i.if.then43.i_crit_edge, label %if.end11.i.i

lor.lhs.false.i.i.if.then43.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.i

if.end11.i.i:                                     ; preds = %lor.lhs.false.i.i
  %95 = ptrtoint ptr %entry1.052.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %entry1.052.i.i, align 2
  %conv12.i.i = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i.i, i32 %index)
  %cmp13.not.i.i = icmp eq i32 %conv12.i.i, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv.i.i)
  %cmp19.not.i.i = icmp eq i32 %call, %conv.i.i
  %or.cond.i140.i = select i1 %cmp13.not.i.i, i1 %cmp19.not.i.i, i1 false
  br i1 %or.cond.i140.i, label %if.end22.i.i, label %if.end11.i.i.for.inc.i.i_crit_edge

if.end11.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end22.i.i:                                     ; preds = %if.end11.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %add.ptr2.i.i, ptr nonnull %name, i32 %call) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool23.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end22.i.i.__find_xattr.exit.i_crit_edge, label %if.end22.i.i.for.inc.i.i_crit_edge

if.end22.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end22.i.i.__find_xattr.exit.i_crit_edge:       ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit.i

for.inc.i.i:                                      ; preds = %if.end22.i.i.for.inc.i.i_crit_edge, %if.end11.i.i.for.inc.i.i_crit_edge
  %97 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr7.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %98, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.__find_xattr.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.__find_xattr.exit.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit.i

__find_xattr.exit.i:                              ; preds = %for.inc.i.i.__find_xattr.exit.i_crit_edge, %if.end22.i.i.__find_xattr.exit.i_crit_edge, %if.end36.i.__find_xattr.exit.i_crit_edge
  %retval.0.i141.i = phi ptr [ %add.ptr.i138.i, %if.end36.i.__find_xattr.exit.i_crit_edge ], [ %entry1.052.i.i, %if.end22.i.i.__find_xattr.exit.i_crit_edge ], [ %add.ptr7.i.i, %for.inc.i.i.__find_xattr.exit.i_crit_edge ]
  %tobool42.not.i = icmp eq ptr %retval.0.i141.i, null
  br i1 %tobool42.not.i, label %__find_xattr.exit.i.if.then43.i_crit_edge, label %check.ithread-pre-split

__find_xattr.exit.i.if.then43.i_crit_edge:        ; preds = %__find_xattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.i

if.then43.i:                                      ; preds = %__find_xattr.exit.i.if.then43.i_crit_edge, %lor.lhs.false.i.i.if.then43.i_crit_edge, %for.body.i.i.if.then43.i_crit_edge
  %99 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i143.i = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 33
  %101 = ptrtoint ptr %s_fs_info.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i.i143.i, align 16
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %103 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %102, ptr noundef nonnull @.str.4, i32 noundef %104) #14
  %105 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i145.i = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 33
  %107 = ptrtoint ptr %s_fs_info.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_fs_info.i.i145.i, align 16
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %108, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i.i) #14
  br label %out.i

check.ithread-pre-split:                          ; preds = %__find_xattr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %retval.0.i141.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr = load i32, ptr %retval.0.i141.i, align 4
  br label %check.i

check.i:                                          ; preds = %check.ithread-pre-split, %if.end.i121.i.check.i_crit_edge
  %110 = phi i32 [ %.pr, %check.ithread-pre-split ], [ %74, %if.end.i121.i.check.i_crit_edge ]
  %entry1.2 = phi ptr [ %retval.0.i141.i, %check.ithread-pre-split ], [ %retval.0.i18.i.i, %if.end.i121.i.check.i_crit_edge ]
  %base_size.0 = phi i32 [ %add7.i, %check.ithread-pre-split ], [ %retval.0.i.i, %if.end.i121.i.check.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i = icmp eq i32 %110, 0
  br i1 %cmp.i, label %check.i.out.i_crit_edge, label %lookup_all_xattrs.exit.thread59

check.i.out.i_crit_edge:                          ; preds = %check.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

lookup_all_xattrs.exit.thread59:                  ; preds = %check.i
  tail call void @up_read(ptr noundef %i_xattr_sem) #14
  %e_value_size = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.2, i32 0, i32 2
  %111 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %e_value_size, align 2
  %113 = tail call i16 @llvm.bswap.i16(i16 %112)
  %conv = zext i16 %113 to i32
  %tobool11.not = icmp eq ptr %buffer, null
  %tobool11.not.not = xor i1 %tobool11.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %buffer_size)
  %cmp12 = icmp ugt i32 %conv, %buffer_size
  %or.cond = select i1 %tobool11.not.not, i1 %cmp12, i1 false
  %brmerge = or i1 %tobool11.not, %or.cond
  %.mux = select i1 %or.cond, i32 -34, i32 %conv
  br i1 %brmerge, label %lookup_all_xattrs.exit.thread59.out_crit_edge, label %if.then17

lookup_all_xattrs.exit.thread59.out_crit_edge:    ; preds = %lookup_all_xattrs.exit.thread59
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out.i:                                            ; preds = %check.i.out.i_crit_edge, %if.then43.i, %read_xattr_block.exit.i, %read_inline_xattr.exit.i
  %err.0.i = phi i32 [ -117, %if.then43.i ], [ -61, %check.i.out.i_crit_edge ], [ %87, %read_xattr_block.exit.i ], [ %59, %read_inline_xattr.exit.i ]
  br i1 %cmp.i.i, label %if.then.i149.i, label %if.else.i150.i

if.then.i149.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i147.i = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 33
  %116 = ptrtoint ptr %s_fs_info.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i.i147.i, align 16
  %inline_xattr_slab.i148.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %117, i32 0, i32 132
  %118 = ptrtoint ptr %inline_xattr_slab.i148.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %inline_xattr_slab.i148.i, align 4
  tail call void @kmem_cache_free(ptr noundef %119, ptr noundef nonnull %retval.0.i100.i) #14
  br label %lookup_all_xattrs.exit

if.else.i150.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %retval.0.i100.i) #14
  br label %lookup_all_xattrs.exit

lookup_all_xattrs.exit.thread:                    ; preds = %xattr_alloc.exit.i.lookup_all_xattrs.exit.thread_crit_edge, %do.end.i.i.i, %if.then2.i.i.i.lookup_all_xattrs.exit.thread_crit_edge, %inline_xattr_size.exit.i.lookup_all_xattrs.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then2.i.i.i.lookup_all_xattrs.exit.thread_crit_edge ], [ -12, %do.end.i.i.i ], [ -12, %xattr_alloc.exit.i.lookup_all_xattrs.exit.thread_crit_edge ], [ -61, %inline_xattr_size.exit.i.lookup_all_xattrs.exit.thread_crit_edge ]
  tail call void @up_read(ptr noundef %i_xattr_sem) #14
  br label %cleanup26

lookup_all_xattrs.exit:                           ; preds = %if.else.i150.i, %if.then.i149.i
  tail call void @up_read(ptr noundef %i_xattr_sem) #14
  br label %cleanup26

if.then17:                                        ; preds = %lookup_all_xattrs.exit.thread59
  %e_name = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.2, i32 0, i32 3
  %e_name_len = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.2, i32 0, i32 1
  %120 = ptrtoint ptr %e_name_len to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %e_name_len, align 1
  %conv18 = zext i8 %121 to i32
  %add.ptr = getelementptr i8, ptr %e_name, i32 %conv18
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %retval.0.i100.i to i32
  %sub.ptr.sub.neg = add i32 %base_size.0, %sub.ptr.rhs.cast
  %sub = sub i32 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp19 = icmp ult i32 %sub, %conv
  br i1 %cmp19, label %if.then17.out_crit_edge, label %cleanup.thread

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

cleanup.thread:                                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %122 = call ptr @memcpy(ptr %buffer, ptr %add.ptr, i32 %conv)
  br label %out

out:                                              ; preds = %cleanup.thread, %if.then17.out_crit_edge, %lookup_all_xattrs.exit.thread59.out_crit_edge
  %error.1 = phi i32 [ %.mux, %lookup_all_xattrs.exit.thread59.out_crit_edge ], [ -34, %if.then17.out_crit_edge ], [ %conv, %cleanup.thread ]
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %124, i32 0, i32 33
  %125 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %s_fs_info.i.i, align 16
  %inline_xattr_slab.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %126, i32 0, i32 132
  %127 = ptrtoint ptr %inline_xattr_slab.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %inline_xattr_slab.i, align 4
  tail call void @kmem_cache_free(ptr noundef %128, ptr noundef nonnull %retval.0.i100.i) #14
  br label %cleanup26

if.else.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %retval.0.i100.i) #14
  br label %cleanup26

cleanup26:                                        ; preds = %if.else.i, %if.then.i, %lookup_all_xattrs.exit, %lookup_all_xattrs.exit.thread, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup26_crit_edge ], [ -34, %if.end.cleanup26_crit_edge ], [ %err.0.i, %lookup_all_xattrs.exit ], [ %retval.0.i.ph, %lookup_all_xattrs.exit.thread ], [ %error.1, %if.then.i ], [ %error.1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_listxattr(ptr noundef %dentry, ptr noundef writeonly %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %base_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr) #14
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %base_addr, align 4, !annotation !57
  %i_xattr_sem = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 28
  tail call void @down_read(ptr noundef %i_xattr_sem) #14
  %call3 = call fastcc i32 @read_all_xattrs(ptr noundef %1, ptr noundef null, ptr noundef nonnull %base_addr)
  tail call void @up_read(ptr noundef %i_xattr_sem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup66

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr, align 4
  %i_xattr_nid = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_xattr_nid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool7.not, i32 0, i32 4072
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.inline_xattr_size.exit_crit_edge, label %if.then.i

if.end.inline_xattr_size.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %mul.i = shl i32 %11, 2
  br label %inline_xattr_size.exit

inline_xattr_size.exit:                           ; preds = %if.then.i, %if.end.inline_xattr_size.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.then.i ], [ 0, %if.end.inline_xattr_size.exit_crit_edge ]
  %add = add i32 %retval.0.i, %cond
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %add.ptr9 = getelementptr %struct.f2fs_xattr_header, ptr %4, i32 1
  %12 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not123 = icmp eq i32 %13, 0
  br i1 %cmp.not123, label %inline_xattr_size.exit.for.end_crit_edge, label %inline_xattr_size.exit.for.body_crit_edge

inline_xattr_size.exit.for.body_crit_edge:        ; preds = %inline_xattr_size.exit
  br label %for.body

inline_xattr_size.exit.for.end_crit_edge:         ; preds = %inline_xattr_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %inline_xattr_size.exit.for.body_crit_edge
  %rest.0129 = phi i32 [ %rest.1.ph, %for.inc.for.body_crit_edge ], [ %buffer_size, %inline_xattr_size.exit.for.body_crit_edge ]
  %entry1.0126 = phi ptr [ %add.ptr63, %for.inc.for.body_crit_edge ], [ %add.ptr9, %inline_xattr_size.exit.for.body_crit_edge ]
  %buffer.addr.0124 = phi ptr [ %buffer.addr.2.ph, %for.inc.for.body_crit_edge ], [ %buffer, %inline_xattr_size.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %entry1.0126 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %entry1.0126, align 2
  %conv = zext i8 %15 to i32
  %16 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %if.then.i110, label %for.body.f2fs_xattr_handler.exit_crit_edge

for.body.f2fs_xattr_handler.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_xattr_handler.exit

if.then.i110:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr [8 x ptr], ptr @f2fs_xattr_handler_map, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %f2fs_xattr_handler.exit

f2fs_xattr_handler.exit:                          ; preds = %if.then.i110, %for.body.f2fs_xattr_handler.exit_crit_edge
  %handler.0.i = phi ptr [ %19, %if.then.i110 ], [ null, %for.body.f2fs_xattr_handler.exit_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %entry1.0126, i32 4
  %cmp12 = icmp ugt ptr %add.ptr11, %add.ptr
  br i1 %cmp12, label %f2fs_xattr_handler.exit.if.then22_crit_edge, label %lor.lhs.false

f2fs_xattr_handler.exit.if.then22_crit_edge:      ; preds = %f2fs_xattr_handler.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

lor.lhs.false:                                    ; preds = %f2fs_xattr_handler.exit
  %e_name_len = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.0126, i32 0, i32 1
  %20 = ptrtoint ptr %e_name_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %e_name_len, align 1
  %conv14 = zext i8 %21 to i32
  %e_value_size = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.0126, i32 0, i32 2
  %22 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %e_value_size, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv16 = zext i16 %24 to i32
  %add17 = add nuw nsw i32 %conv14, 7
  %add18 = add nuw nsw i32 %add17, %conv16
  %and = and i32 %add18, 131068
  %add.ptr19 = getelementptr i8, ptr %entry1.0126, i32 %and
  %cmp20 = icmp ugt ptr %add.ptr19, %add.ptr
  br i1 %cmp20, label %lor.lhs.false.if.then22_crit_edge, label %if.end25

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %f2fs_xattr_handler.exit.if.then22_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %28, ptr noundef nonnull @.str.4, i32 noundef %30) #14
  %31 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i112 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i112, align 16
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %34, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #14
  br label %cleanup65

if.end25:                                         ; preds = %lor.lhs.false
  %tobool26.not = icmp eq ptr %handler.0.i, null
  br i1 %tobool26.not, label %if.end25.for.inc_crit_edge, label %lor.lhs.false27

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false27:                                  ; preds = %if.end25
  %list = getelementptr inbounds %struct.xattr_handler, ptr %handler.0.i, i32 0, i32 3
  %35 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %list, align 4
  %tobool28.not = icmp eq ptr %36, null
  br i1 %tobool28.not, label %lor.lhs.false27.if.end32_crit_edge, label %land.lhs.true

lor.lhs.false27.if.end32_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

land.lhs.true:                                    ; preds = %lor.lhs.false27
  %call30 = tail call zeroext i1 %36(ptr noundef %dentry) #14
  br i1 %call30, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %lor.lhs.false27.if.end32_crit_edge
  %prefix.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.0.i, i32 0, i32 1
  %37 = ptrtoint ptr %prefix.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prefix.i, align 4
  %tobool.not.i113 = icmp eq ptr %38, null
  br i1 %tobool.not.i113, label %cond.false.i, label %if.end32.xattr_prefix.exit_crit_edge

if.end32.xattr_prefix.exit_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %xattr_prefix.exit

cond.false.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %handler.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handler.0.i, align 4
  br label %xattr_prefix.exit

xattr_prefix.exit:                                ; preds = %cond.false.i, %if.end32.xattr_prefix.exit_crit_edge
  %cond.i = phi ptr [ %40, %cond.false.i ], [ %38, %if.end32.xattr_prefix.exit_crit_edge ]
  %call34 = tail call i32 @strlen(ptr noundef %cond.i) #17
  %41 = ptrtoint ptr %e_name_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %e_name_len, align 1
  %conv36 = zext i8 %42 to i32
  %add37 = add i32 %call34, 1
  %add38 = add i32 %add37, %conv36
  %tobool39.not = icmp eq ptr %buffer.addr.0124, null
  br i1 %tobool39.not, label %xattr_prefix.exit.if.end51_crit_edge, label %if.then40

xattr_prefix.exit.if.end51_crit_edge:             ; preds = %xattr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then40:                                        ; preds = %xattr_prefix.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %rest.0129, i32 %add38)
  %cmp41 = icmp ult i32 %rest.0129, %add38
  br i1 %cmp41, label %if.then40.cleanup65_crit_edge, label %if.end44

if.then40.cleanup65_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup65

if.end44:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %43 = call ptr @memcpy(ptr %buffer.addr.0124, ptr %cond.i, i32 %call34)
  %add.ptr45 = getelementptr i8, ptr %buffer.addr.0124, i32 %call34
  %44 = ptrtoint ptr %e_name_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %e_name_len, align 1
  %conv47 = zext i8 %45 to i32
  %46 = call ptr @memcpy(ptr %add.ptr45, ptr %add.ptr11, i32 %conv47)
  %47 = load i8, ptr %e_name_len, align 1
  %conv49 = zext i8 %47 to i32
  %add.ptr50 = getelementptr i8, ptr %add.ptr45, i32 %conv49
  %incdec.ptr = getelementptr i8, ptr %add.ptr50, i32 1
  %48 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %add.ptr50, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.end44, %xattr_prefix.exit.if.end51_crit_edge
  %buffer.addr.1 = phi ptr [ %incdec.ptr, %if.end44 ], [ null, %xattr_prefix.exit.if.end51_crit_edge ]
  %sub = sub i32 %rest.0129, %add38
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %land.lhs.true.for.inc_crit_edge, %if.end25.for.inc_crit_edge
  %buffer.addr.2.ph = phi ptr [ %buffer.addr.0124, %if.end25.for.inc_crit_edge ], [ %buffer.addr.0124, %land.lhs.true.for.inc_crit_edge ], [ %buffer.addr.1, %if.end51 ]
  %rest.1.ph = phi i32 [ %rest.0129, %if.end25.for.inc_crit_edge ], [ %rest.0129, %land.lhs.true.for.inc_crit_edge ], [ %sub, %if.end51 ]
  %49 = ptrtoint ptr %e_name_len to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %e_name_len, align 1
  %conv56 = zext i8 %50 to i32
  %51 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %e_value_size, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv59 = zext i16 %53 to i32
  %add60 = add nuw nsw i32 %conv56, 7
  %add61 = add nuw nsw i32 %add60, %conv59
  %and62 = and i32 %add61, 131068
  %add.ptr63 = getelementptr i8, ptr %entry1.0126, i32 %and62
  %54 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr63, align 4
  %cmp.not = icmp eq i32 %55, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %inline_xattr_size.exit.for.end_crit_edge
  %rest.0.lcssa = phi i32 [ %buffer_size, %inline_xattr_size.exit.for.end_crit_edge ], [ %rest.1.ph, %for.inc.for.end_crit_edge ]
  %sub64 = sub i32 %buffer_size, %rest.0.lcssa
  br label %cleanup65

cleanup65:                                        ; preds = %for.end, %if.then40.cleanup65_crit_edge, %if.then22
  %error.2 = phi i32 [ %sub64, %for.end ], [ -117, %if.then22 ], [ -34, %if.then40.cleanup65_crit_edge ]
  %56 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr, align 4
  tail call void @kfree(ptr noundef %57) #14
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup65, %entry.cleanup66_crit_edge
  %retval.0 = phi i32 [ %error.2, %cleanup65 ], [ %call3, %entry.cleanup66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_all_xattrs(ptr noundef %inode, ptr noundef %ipage, ptr nocapture noundef writeonly %base_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_xattr_nid = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %0 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_xattr_nid, align 8
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i.i, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.inline_xattr_size.exit_crit_edge, label %if.then.i

entry.inline_xattr_size.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %5 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %mul.i = shl i32 %6, 2
  br label %inline_xattr_size.exit

inline_xattr_size.exit:                           ; preds = %if.then.i, %entry.inline_xattr_size.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.then.i ], [ 0, %entry.inline_xattr_size.exit_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %add3 = add i32 %retval.0.i, 4076
  %call4 = tail call fastcc ptr @f2fs_kzalloc(ptr noundef %10, i32 noundef %add3)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %inline_xattr_size.exit.cleanup_crit_edge, label %if.end

inline_xattr_size.exit.cleanup_crit_edge:         ; preds = %inline_xattr_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %inline_xattr_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i.i, align 4
  %17 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.then6.inline_xattr_size.exit.i_crit_edge, label %if.then.i.i

if.then6.inline_xattr_size.exit.i_crit_edge:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit.i

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %18 = ptrtoint ptr %i_inline_xattr_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_inline_xattr_size.i.i.i, align 4
  %mul.i.i = shl i32 %19, 2
  br label %inline_xattr_size.exit.i

inline_xattr_size.exit.i:                         ; preds = %if.then.i.i, %if.then6.inline_xattr_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul.i.i, %if.then.i.i ], [ 0, %if.then6.inline_xattr_size.exit.i_crit_edge ]
  %tobool.not.i41 = icmp eq ptr %ipage, null
  br i1 %tobool.not.i41, label %if.else.i, label %if.then.i42

if.then.i42:                                      ; preds = %inline_xattr_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call ptr @page_address(ptr noundef nonnull %ipage) #14
  br label %read_inline_xattr.exit.thread

if.else.i:                                        ; preds = %inline_xattr_size.exit.i
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %call3.i = tail call ptr @f2fs_get_node_page(ptr noundef %14, i32 noundef %21) #14
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else.i.fail_crit_edge, label %if.end.i

if.else.i.fail_crit_edge:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i21.i = tail call ptr @page_address(ptr noundef %call3.i) #14
  br label %read_inline_xattr.exit.thread

read_inline_xattr.exit.thread:                    ; preds = %if.end.i, %if.then.i42
  %call.i.i21.sink.i = phi ptr [ %call.i.i21.i, %if.end.i ], [ %call.i.i.i, %if.then.i42 ]
  %page.0.i = phi ptr [ %call3.i, %if.end.i ], [ null, %if.then.i42 ]
  %22 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i21.sink.i, i32 0, i32 23
  %i_inline_xattr_size.i.i22.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %23 = ptrtoint ptr %i_inline_xattr_size.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_inline_xattr_size.i.i22.i, align 4
  %sub.i23.i = sub i32 923, %24
  %arrayidx.i24.i = getelementptr [923 x i32], ptr %22, i32 0, i32 %sub.i23.i
  %25 = call ptr @memcpy(ptr %call4, ptr %arrayidx.i24.i, i32 %retval.0.i.i)
  tail call fastcc void @f2fs_put_page(ptr noundef %page.0.i) #14
  br label %if.end11

if.end11:                                         ; preds = %read_inline_xattr.exit.thread, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i45 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i.i45, align 16
  %30 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_xattr_nid, align 8
  %32 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i.i.i, align 4
  %34 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i47 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i47, label %if.then13.inline_xattr_size.exit.i54_crit_edge, label %if.then.i.i50

if.then13.inline_xattr_size.exit.i54_crit_edge:   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit.i54

if.then.i.i50:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i.i48 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %35 = ptrtoint ptr %i_inline_xattr_size.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_inline_xattr_size.i.i.i48, align 4
  %mul.i.i49 = shl i32 %36, 2
  br label %inline_xattr_size.exit.i54

inline_xattr_size.exit.i54:                       ; preds = %if.then.i.i50, %if.then13.inline_xattr_size.exit.i54_crit_edge
  %retval.0.i.i51 = phi i32 [ %mul.i.i49, %if.then.i.i50 ], [ 0, %if.then13.inline_xattr_size.exit.i54_crit_edge ]
  %call3.i52 = tail call ptr @f2fs_get_node_page(ptr noundef %29, i32 noundef %31) #14
  %cmp.i.i53 = icmp ugt ptr %call3.i52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i53, label %inline_xattr_size.exit.i54.fail_crit_edge, label %read_xattr_block.exit.thread

inline_xattr_size.exit.i54.fail_crit_edge:        ; preds = %inline_xattr_size.exit.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

read_xattr_block.exit.thread:                     ; preds = %inline_xattr_size.exit.i54
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call ptr @page_address(ptr noundef %call3.i52) #14
  %add.ptr.i = getelementptr i8, ptr %call4, i32 %retval.0.i.i51
  %37 = call ptr @memcpy(ptr %add.ptr.i, ptr %call6.i, i32 4072)
  tail call fastcc void @f2fs_put_page(ptr noundef %call3.i52) #14
  br label %if.end18

if.end18:                                         ; preds = %read_xattr_block.exit.thread, %if.end11.if.end18_crit_edge
  %38 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 287372786, i32 %39)
  %cmp.not = icmp eq i32 %39, 287372786
  br i1 %cmp.not, label %if.end18.if.end21_crit_edge, label %if.then19

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 287372786, ptr %call4, align 4
  %h_refcount = getelementptr inbounds %struct.f2fs_xattr_header, ptr %call4, i32 0, i32 1
  %41 = ptrtoint ptr %h_refcount to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16777216, ptr %h_refcount, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18.if.end21_crit_edge
  %42 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call4, ptr %base_addr, align 4
  br label %cleanup

fail:                                             ; preds = %inline_xattr_size.exit.i54.fail_crit_edge, %if.else.i.fail_crit_edge
  %err.0.in = phi ptr [ %call3.i, %if.else.i.fail_crit_edge ], [ %call3.i52, %inline_xattr_size.exit.i54.fail_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  tail call void @kfree(ptr noundef nonnull %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end21, %inline_xattr_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail ], [ 0, %if.end21 ], [ -12, %inline_xattr_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_setxattr(ptr noundef %inode, i32 noundef %index, ptr noundef %name, ptr noundef %value, i32 noundef %size, ptr noundef %ipage, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %8 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.i.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !55

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %s_flag.i.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.if.end5_crit_edge, label %f2fs_is_checkpoint_ready.exit, !prof !55

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

f2fs_is_checkpoint_ready.exit:                    ; preds = %if.end
  %call3.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %3) #14
  br i1 %call3.i, label %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, label %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge

f2fs_is_checkpoint_ready.exit.if.end5_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

f2fs_is_checkpoint_ready.exit.cleanup_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %f2fs_is_checkpoint_ready.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @f2fs_dquot_initialize(ptr noundef %inode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %tobool10.not = icmp eq ptr %ipage, null
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call fastcc i32 @__f2fs_setxattr(ptr noundef %inode, i32 noundef %index, ptr noundef %name, ptr noundef %value, i32 noundef %size, ptr noundef nonnull %ipage, i32 noundef %flags)
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #14
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #14
  %i_xattr_sem = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 28
  tail call void @down_write(ptr noundef %i_xattr_sem) #14
  %call15 = tail call fastcc i32 @__f2fs_setxattr(ptr noundef %inode, i32 noundef %index, ptr noundef %name, ptr noundef %value, i32 noundef %size, ptr noundef null, i32 noundef %flags)
  tail call void @up_write(ptr noundef %i_xattr_sem) #14
  tail call void @up_read(ptr noundef %cp_rwsem.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 24, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 24, i32 2
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %arrayidx2.i, align 8
  %arrayidx4.i = getelementptr %struct.f2fs_sb_info, ptr %3, i32 0, i32 24, i32 3
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %arrayidx4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.end5.cleanup_crit_edge, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ %call15, %if.end13 ], [ -5, %entry.cleanup_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_dquot_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__f2fs_setxattr(ptr noundef %inode, i32 noundef %index, ptr noundef readonly %name, ptr noundef readonly %value, i32 noundef %size, ptr noundef %ipage, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %base_addr = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr) #14
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %base_addr, align 4, !annotation !57
  %cmp = icmp eq ptr %name, null
  br i1 %cmp, label %entry.cleanup172_crit_edge, label %if.end

entry.cleanup172_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %value, null
  %spec.select = select i1 %cmp1, i32 0, i32 %size
  %call = tail call i32 @strlen(ptr noundef nonnull %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp4 = icmp ugt i32 %call, 255
  br i1 %cmp4, label %if.end.cleanup172_crit_edge, label %if.end6

if.end.cleanup172_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end6:                                          ; preds = %if.end
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i.i.i, align 4
  %3 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end6.inline_xattr_size.exit_crit_edge, label %if.then.i

if.end6.inline_xattr_size.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %4 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %mul.i = shl i32 %5, 2
  br label %inline_xattr_size.exit

inline_xattr_size.exit:                           ; preds = %if.then.i, %if.end6.inline_xattr_size.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.then.i ], [ 0, %if.end6.inline_xattr_size.exit_crit_edge ]
  %6 = add i32 %retval.0.i, 4047
  %sub9 = and i32 %6, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %sub9)
  %cmp10 = icmp ugt i32 %spec.select, %sub9
  br i1 %cmp10, label %inline_xattr_size.exit.cleanup172_crit_edge, label %if.end12

inline_xattr_size.exit.cleanup172_crit_edge:      ; preds = %inline_xattr_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end12:                                         ; preds = %inline_xattr_size.exit
  %call13 = call fastcc i32 @read_all_xattrs(ptr noundef %inode, ptr noundef %ipage, ptr noundef nonnull %base_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end12.cleanup172_crit_edge

if.end12.cleanup172_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end15:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr, align 4
  %i_xattr_nid = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %9 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_xattr_nid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool17.not, i32 0, i32 4072
  %11 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i.i, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i269 = icmp eq i32 %13, 0
  br i1 %tobool.not.i269, label %if.end15.inline_xattr_size.exit274_crit_edge, label %if.then.i272

if.end15.inline_xattr_size.exit274_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit274

if.then.i272:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i270 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %14 = ptrtoint ptr %i_inline_xattr_size.i.i270 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_inline_xattr_size.i.i270, align 4
  %mul.i271 = shl i32 %15, 2
  br label %inline_xattr_size.exit274

inline_xattr_size.exit274:                        ; preds = %if.then.i272, %if.end15.inline_xattr_size.exit274_crit_edge
  %retval.0.i273 = phi i32 [ %mul.i271, %if.then.i272 ], [ 0, %if.end15.inline_xattr_size.exit274_crit_edge ]
  %add19 = add i32 %retval.0.i273, %cond
  %add.ptr = getelementptr i8, ptr %8, i32 %add19
  %add.ptr.i = getelementptr %struct.f2fs_xattr_header, ptr %8, i32 1
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not51.i = icmp eq i32 %17, 0
  br i1 %cmp.not51.i, label %inline_xattr_size.exit274.__find_xattr.exit_crit_edge, label %inline_xattr_size.exit274.for.body.i_crit_edge

inline_xattr_size.exit274.for.body.i_crit_edge:   ; preds = %inline_xattr_size.exit274
  br label %for.body.i

inline_xattr_size.exit274.__find_xattr.exit_crit_edge: ; preds = %inline_xattr_size.exit274
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %inline_xattr_size.exit274.for.body.i_crit_edge
  %entry1.052.i = phi ptr [ %add.ptr7.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %inline_xattr_size.exit274.for.body.i_crit_edge ]
  %add.ptr2.i = getelementptr i8, ptr %entry1.052.i, i32 4
  %cmp3.i = icmp ugt ptr %add.ptr2.i, %add.ptr
  br i1 %cmp3.i, label %for.body.i.if.then22_crit_edge, label %lor.lhs.false.i

for.body.i.if.then22_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

lor.lhs.false.i:                                  ; preds = %for.body.i
  %e_name_len.i = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.052.i, i32 0, i32 1
  %18 = ptrtoint ptr %e_name_len.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %e_name_len.i, align 1
  %conv.i = zext i8 %19 to i32
  %e_value_size.i = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %entry1.052.i, i32 0, i32 2
  %20 = ptrtoint ptr %e_value_size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %e_value_size.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #14
  %conv4.i = zext i16 %22 to i32
  %add5.i = add nuw nsw i32 %conv.i, 7
  %add6.i = add nuw nsw i32 %add5.i, %conv4.i
  %and.i = and i32 %add6.i, 131068
  %add.ptr7.i = getelementptr i8, ptr %entry1.052.i, i32 %and.i
  %cmp8.i = icmp ugt ptr %add.ptr7.i, %add.ptr
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then22_crit_edge, label %if.end11.i

lor.lhs.false.i.if.then22_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %entry1.052.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %entry1.052.i, align 2
  %conv12.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %index)
  %cmp13.not.i = icmp eq i32 %conv12.i, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv.i)
  %cmp19.not.i = icmp eq i32 %call, %conv.i
  %or.cond.i = select i1 %cmp13.not.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond.i, label %if.end22.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end11.i
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr2.i, ptr nonnull %name, i32 %call) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool23.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool23.not.i, label %if.end22.i.__find_xattr.exit_crit_edge, label %if.end22.i.for.inc.i_crit_edge

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end22.i.__find_xattr.exit_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit

for.inc.i:                                        ; preds = %if.end22.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr7.i, align 4
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %for.inc.i.__find_xattr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.__find_xattr.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__find_xattr.exit

__find_xattr.exit:                                ; preds = %for.inc.i.__find_xattr.exit_crit_edge, %if.end22.i.__find_xattr.exit_crit_edge, %inline_xattr_size.exit274.__find_xattr.exit_crit_edge
  %retval.0.i276 = phi ptr [ %add.ptr.i, %inline_xattr_size.exit274.__find_xattr.exit_crit_edge ], [ %add.ptr7.i, %for.inc.i.__find_xattr.exit_crit_edge ], [ %entry1.052.i, %if.end22.i.__find_xattr.exit_crit_edge ]
  %tobool21.not = icmp eq ptr %retval.0.i276, null
  br i1 %tobool21.not, label %__find_xattr.exit.if.then22_crit_edge, label %if.end25

__find_xattr.exit.if.then22_crit_edge:            ; preds = %__find_xattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22:                                        ; preds = %__find_xattr.exit.if.then22_crit_edge, %lor.lhs.false.i.if.then22_crit_edge, %for.body.i.if.then22_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %31 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %30, ptr noundef nonnull @.str.4, i32 noundef %32) #14
  %33 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i278 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i278 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i278, align 16
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %36, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #14
  br label %exit

if.end25:                                         ; preds = %__find_xattr.exit
  %37 = ptrtoint ptr %retval.0.i276 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval.0.i276, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp26.not = icmp eq i32 %38, 0
  br i1 %cmp26.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  %and30 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then29.exit_crit_edge

if.then29.exit_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end33:                                         ; preds = %if.then29
  br i1 %cmp1, label %if.end33.while.cond.preheader_crit_edge, label %land.lhs.true

if.end33.while.cond.preheader_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

land.lhs.true:                                    ; preds = %if.end33
  %e_value_size.i279 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %retval.0.i276, i32 0, i32 2
  %39 = ptrtoint ptr %e_value_size.i279 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %e_value_size.i279, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #14
  %conv2.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv2.i)
  %cmp.i = icmp eq i32 %spec.select, %conv2.i
  br i1 %cmp.i, label %f2fs_xattr_value_same.exit, label %land.lhs.true.while.cond.preheader_crit_edge

land.lhs.true.while.cond.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

f2fs_xattr_value_same.exit:                       ; preds = %land.lhs.true
  %e_name.i = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %retval.0.i276, i32 0, i32 3
  %e_name_len.i280 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %retval.0.i276, i32 0, i32 1
  %42 = ptrtoint ptr %e_name_len.i280 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %e_name_len.i280, align 1
  %conv.i281 = zext i8 %43 to i32
  %add.ptr.i282 = getelementptr i8, ptr %e_name.i, i32 %conv.i281
  %bcmp.i283 = tail call i32 @bcmp(ptr %add.ptr.i282, ptr nonnull %value, i32 %spec.select) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i283)
  %tobool.not.i284 = icmp eq i32 %bcmp.i283, 0
  br i1 %tobool.not.i284, label %f2fs_xattr_value_same.exit.same_crit_edge, label %f2fs_xattr_value_same.exit.while.cond.preheader_crit_edge

f2fs_xattr_value_same.exit.while.cond.preheader_crit_edge: ; preds = %f2fs_xattr_value_same.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

f2fs_xattr_value_same.exit.same_crit_edge:        ; preds = %f2fs_xattr_value_same.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %same

if.else:                                          ; preds = %if.end25
  %and38 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else.while.cond.preheader_crit_edge, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.else.while.cond.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else.while.cond.preheader_crit_edge, %f2fs_xattr_value_same.exit.while.cond.preheader_crit_edge, %land.lhs.true.while.cond.preheader_crit_edge, %if.end33.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false.while.cond_crit_edge, %while.cond.preheader
  %last.0 = phi ptr [ %add.ptr51, %lor.lhs.false.while.cond_crit_edge ], [ %retval.0.i276, %while.cond.preheader ]
  %44 = ptrtoint ptr %last.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp43.not = icmp eq i32 %45, 0
  br i1 %cmp43.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %add.ptr44 = getelementptr i8, ptr %last.0, i32 4
  %cmp45 = icmp ugt ptr %add.ptr44, %add.ptr
  br i1 %cmp45, label %while.body.if.then54_crit_edge, label %lor.lhs.false

while.body.if.then54_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then54

lor.lhs.false:                                    ; preds = %while.body
  %e_name_len = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %last.0, i32 0, i32 1
  %46 = ptrtoint ptr %e_name_len to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %e_name_len, align 1
  %conv = zext i8 %47 to i32
  %e_value_size = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %last.0, i32 0, i32 2
  %48 = ptrtoint ptr %e_value_size to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %e_value_size, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv47 = zext i16 %50 to i32
  %add48 = add nuw nsw i32 %conv, 7
  %add49 = add nuw nsw i32 %add48, %conv47
  %and50 = and i32 %add49, 131068
  %add.ptr51 = getelementptr i8, ptr %last.0, i32 %and50
  %cmp52 = icmp ugt ptr %add.ptr51, %add.ptr
  br i1 %cmp52, label %lor.lhs.false.if.then54_crit_edge, label %lor.lhs.false.while.cond_crit_edge

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

lor.lhs.false.if.then54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false.if.then54_crit_edge, %while.body.if.then54_crit_edge
  %i_sb.i285 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %51 = ptrtoint ptr %i_sb.i285 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb.i285, align 4
  %s_fs_info.i.i286 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i.i286 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i.i286, align 16
  %i_ino56 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %55 = ptrtoint ptr %i_ino56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_ino56, align 8
  %e_name_len57 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %last.0, i32 0, i32 1
  %57 = ptrtoint ptr %e_name_len57 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %e_name_len57, align 1
  %conv58 = zext i8 %58 to i32
  %e_value_size60 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %last.0, i32 0, i32 2
  %59 = ptrtoint ptr %e_value_size60 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %e_value_size60, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv61 = zext i16 %61 to i32
  %add62 = add nuw nsw i32 %conv58, 7
  %add63 = add nuw nsw i32 %add62, %conv61
  %and64 = and i32 %add63, 131068
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %54, ptr noundef nonnull @.str.12, i32 noundef %56, i32 noundef %and64) #14
  %62 = ptrtoint ptr %i_sb.i285 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb.i285, align 4
  %s_fs_info.i.i288 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i.i288 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i.i288, align 16
  %s_flag.i289 = getelementptr inbounds %struct.f2fs_sb_info, ptr %65, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i289) #14
  br label %exit

while.end:                                        ; preds = %while.cond
  %add77 = add i32 %spec.select, 7
  %add78 = add i32 %add77, %call
  %and79 = and i32 %add78, -4
  br i1 %cmp1, label %while.end.if.end106_crit_edge, label %if.then81

while.end.if.end106_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.then81:                                        ; preds = %while.end
  %66 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags.i.i.i, align 4
  %68 = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i291 = icmp eq i32 %68, 0
  br i1 %tobool.not.i291, label %if.then81.inline_xattr_size.exit296_crit_edge, label %if.then.i294

if.then81.inline_xattr_size.exit296_crit_edge:    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit296

if.then.i294:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i292 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %69 = ptrtoint ptr %i_inline_xattr_size.i.i292 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_inline_xattr_size.i.i292, align 4
  %mul.i293 = shl i32 %70, 2
  %phi.bo = add i32 %mul.i293, 4075
  %phi.bo305 = and i32 %phi.bo, -4
  br label %inline_xattr_size.exit296

inline_xattr_size.exit296:                        ; preds = %if.then.i294, %if.then81.inline_xattr_size.exit296_crit_edge
  %retval.0.i295 = phi i32 [ %phi.bo305, %if.then.i294 ], [ 4072, %if.then81.inline_xattr_size.exit296_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %last.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub86 = add i32 %retval.0.i295, %sub.ptr.sub.neg
  br i1 %cmp26.not, label %inline_xattr_size.exit296.if.end98_crit_edge, label %if.then88

inline_xattr_size.exit296.if.end98_crit_edge:     ; preds = %inline_xattr_size.exit296
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then88:                                        ; preds = %inline_xattr_size.exit296
  call void @__sanitizer_cov_trace_pc() #16
  %e_name_len89 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %retval.0.i276, i32 0, i32 1
  %71 = ptrtoint ptr %e_name_len89 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %e_name_len89, align 1
  %conv90 = zext i8 %72 to i32
  %e_value_size92 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %retval.0.i276, i32 0, i32 2
  %73 = ptrtoint ptr %e_value_size92 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %e_value_size92, align 2
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %conv93 = zext i16 %75 to i32
  %add94 = add nuw nsw i32 %conv90, 7
  %add95 = add nuw nsw i32 %add94, %conv93
  %and96 = and i32 %add95, 131068
  %add97 = add i32 %and96, %sub86
  br label %if.end98

if.end98:                                         ; preds = %if.then88, %inline_xattr_size.exit296.if.end98_crit_edge
  %free.0 = phi i32 [ %add97, %if.then88 ], [ %sub86, %inline_xattr_size.exit296.if.end98_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %free.0, i32 %and79)
  %cmp99 = icmp slt i32 %free.0, %and79
  br i1 %cmp99, label %if.end98.exit_crit_edge, label %if.end98.if.end106_crit_edge

if.end98.if.end106_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.end98.exit_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end106:                                        ; preds = %if.end98.if.end106_crit_edge, %while.end.if.end106_crit_edge
  br i1 %cmp26.not, label %if.end106.if.end130_crit_edge, label %if.then108

if.end106.if.end130_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  %e_name_len109 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %retval.0.i276, i32 0, i32 1
  %76 = ptrtoint ptr %e_name_len109 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %e_name_len109, align 1
  %conv110 = zext i8 %77 to i32
  %e_value_size112 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %retval.0.i276, i32 0, i32 2
  %78 = ptrtoint ptr %e_value_size112 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %e_value_size112, align 2
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %conv113 = zext i16 %80 to i32
  %add114 = add nuw nsw i32 %conv110, 7
  %add115 = add nuw nsw i32 %add114, %conv113
  %and116 = and i32 %add115, 131068
  %add.ptr117 = getelementptr i8, ptr %retval.0.i276, i32 %and116
  %sub.ptr.lhs.cast126 = ptrtoint ptr %last.0 to i32
  %sub.ptr.rhs.cast127 = ptrtoint ptr %add.ptr117 to i32
  %sub.ptr.sub128 = sub i32 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %81 = call ptr @memmove(ptr %retval.0.i276, ptr %add.ptr117, i32 %sub.ptr.sub128)
  %idx.neg = sub nsw i32 0, %and116
  %add.ptr129 = getelementptr i8, ptr %last.0, i32 %idx.neg
  %82 = call ptr @memset(ptr %add.ptr129, i32 0, i32 %and116)
  br label %if.end130

if.end130:                                        ; preds = %if.then108, %if.end106.if.end130_crit_edge
  %last.1 = phi ptr [ %add.ptr129, %if.then108 ], [ %last.0, %if.end106.if.end130_crit_edge ]
  %83 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_addr, align 4
  %sub.ptr.lhs.cast131 = ptrtoint ptr %last.1 to i32
  %sub.ptr.rhs.cast132 = ptrtoint ptr %84 to i32
  %sub.ptr.sub133 = sub i32 %sub.ptr.lhs.cast131, %sub.ptr.rhs.cast132
  br i1 %cmp1, label %if.end130.if.end145_crit_edge, label %if.then135

if.end130.if.end145_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end145

if.then135:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  %conv136 = trunc i32 %index to i8
  %85 = ptrtoint ptr %last.1 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv136, ptr %last.1, align 2
  %conv137 = trunc i32 %call to i8
  %e_name_len138 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %last.1, i32 0, i32 1
  %86 = ptrtoint ptr %e_name_len138 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv137, ptr %e_name_len138, align 1
  %e_name = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %last.1, i32 0, i32 3
  %87 = call ptr @memcpy(ptr %e_name, ptr %name, i32 %call)
  %add.ptr141 = getelementptr i8, ptr %e_name, i32 %call
  %88 = call ptr @memcpy(ptr %add.ptr141, ptr %value, i32 %spec.select)
  %conv142 = trunc i32 %spec.select to i16
  %89 = tail call i16 @llvm.bswap.i16(i16 %conv142)
  %e_value_size143 = getelementptr inbounds %struct.f2fs_xattr_entry, ptr %last.1, i32 0, i32 2
  %90 = ptrtoint ptr %e_value_size143 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %e_value_size143, align 2
  %add144 = add i32 %sub.ptr.sub133, %and79
  br label %if.end145

if.end145:                                        ; preds = %if.then135, %if.end130.if.end145_crit_edge
  %new_hsize.0 = phi i32 [ %add144, %if.then135 ], [ %sub.ptr.sub133, %if.end130.if.end145_crit_edge ]
  %91 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr, align 4
  %call146 = tail call fastcc i32 @write_all_xattrs(ptr noundef %inode, i32 noundef %new_hsize.0, ptr noundef %92, ptr noundef %ipage)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end145.exit_crit_edge

if.end145.exit_crit_edge:                         ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end149:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %index)
  %cmp150 = icmp eq i32 %index, 9
  br i1 %cmp150, label %land.lhs.true152, label %if.end149.if.end156_crit_edge

if.end149.if.end156_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

land.lhs.true152:                                 ; preds = %if.end149
  %call153 = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef nonnull dereferenceable(2) @.str.13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then155, label %land.lhs.true152.if.end156_crit_edge

land.lhs.true152.if.end156_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

if.then155:                                       ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @f2fs_set_encrypted_inode(ptr noundef %inode)
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %land.lhs.true152.if.end156_crit_edge, %if.end149.if.end156_crit_edge
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #14
  %93 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %inode, align 8
  %95 = and i16 %94, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %95)
  %cmp161 = icmp eq i16 %95, 16384
  br i1 %cmp161, label %if.then163, label %if.end156.same_crit_edge

if.end156.same_crit_edge:                         ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  br label %same

if.then163:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i297 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %96 = ptrtoint ptr %i_sb.i297 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_sb.i297, align 4
  %s_fs_info.i.i298 = getelementptr inbounds %struct.super_block, ptr %97, i32 0, i32 33
  %98 = ptrtoint ptr %s_fs_info.i.i298 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_fs_info.i.i298, align 16
  %s_flag.i299 = getelementptr inbounds %struct.f2fs_sb_info, ptr %99, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %s_flag.i299) #14
  br label %same

same:                                             ; preds = %if.then163, %if.end156.same_crit_edge, %f2fs_xattr_value_same.exit.same_crit_edge
  %100 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %flags.i.i.i, align 4
  %102 = and i32 %101, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool167.not = icmp eq i32 %102, 0
  br i1 %tobool167.not, label %same.exit_crit_edge, label %if.then168

same.exit_crit_edge:                              ; preds = %same
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.then168:                                       ; preds = %same
  call void @__sanitizer_cov_trace_pc() #16
  %i_acl_mode = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 7
  %103 = ptrtoint ptr %i_acl_mode to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %i_acl_mode, align 8
  %105 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %inode, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #14
  %106 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i.i.i) #14
  br label %exit

exit:                                             ; preds = %if.then168, %same.exit_crit_edge, %if.end145.exit_crit_edge, %if.end98.exit_crit_edge, %if.then54, %if.else.exit_crit_edge, %if.then29.exit_crit_edge, %if.then22
  %error.2 = phi i32 [ 0, %if.then168 ], [ 0, %same.exit_crit_edge ], [ -117, %if.then54 ], [ -7, %if.end98.exit_crit_edge ], [ %call146, %if.end145.exit_crit_edge ], [ -117, %if.then22 ], [ -17, %if.then29.exit_crit_edge ], [ -61, %if.else.exit_crit_edge ]
  %107 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base_addr, align 4
  call void @kfree(ptr noundef %108) #14
  br label %cleanup172

cleanup172:                                       ; preds = %exit, %if.end12.cleanup172_crit_edge, %inline_xattr_size.exit.cleanup172_crit_edge, %if.end.cleanup172_crit_edge, %entry.cleanup172_crit_edge
  %retval.0 = phi i32 [ %error.2, %exit ], [ -22, %entry.cleanup172_crit_edge ], [ -34, %if.end.cleanup172_crit_edge ], [ -7, %inline_xattr_size.exit.cleanup172_crit_edge ], [ %call13, %if.end12.cleanup172_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_balance_fs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_xattr_caches(ptr nocapture noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  %slab_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %slab_name) #14
  %shr = lshr i32 %5, 20
  %and = and i32 %5, 1048575
  %6 = call ptr @memset(ptr %slab_name, i32 255, i32 32)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %slab_name, ptr noundef nonnull @.str.5, i32 noundef %shr, i32 noundef %and)
  %inline_xattr_size = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 6
  %7 = ptrtoint ptr %inline_xattr_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inline_xattr_size, align 8
  %mul = shl i32 %8, 2
  %add = add i32 %mul, 4
  %inline_xattr_slab_size = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 133
  %9 = ptrtoint ptr %inline_xattr_slab_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %inline_xattr_slab_size, align 8
  %call.i = call ptr @kmem_cache_create(ptr noundef nonnull %slab_name, i32 noundef %add, i32 noundef 0, i32 noundef 131072, ptr noundef null) #14
  %inline_xattr_slab = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 132
  %10 = ptrtoint ptr %inline_xattr_slab to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %inline_xattr_slab, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %slab_name) #14
  ret i32 %.
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_destroy_xattr_caches(ptr nocapture noundef readonly %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %inline_xattr_slab = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 132
  %0 = ptrtoint ptr %inline_xattr_slab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inline_xattr_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_kzalloc(ptr noundef %sbi, i32 noundef %size) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %fault_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7
  %inject_rate.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 1
  %0 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.if.end8.i.i_crit_edge, label %if.end.i1.i

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end.i1.i:                                      ; preds = %entry
  %inject_type.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 73, i32 7, i32 2
  %2 = ptrtoint ptr %inject_type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inject_type.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i1.i.if.end8.i.i_crit_edge, label %if.end3.i.i

if.end.i1.i.if.end8.i.i_crit_edge:                ; preds = %if.end.i1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end3.i.i:                                      ; preds = %if.end.i1.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i, ptr %fault_info.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i) #14, !srcloc !56
  %call.i.i14.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i, i32 noundef 4) #14
  %5 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %fault_info.i.i, align 4
  %7 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %if.then.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.then.i:                                        ; preds = %if.end3.i.i
  %call.i.i15.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %fault_info.i.i, align 4
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmalloc._rs, ptr noundef nonnull @__func__.f2fs_kmalloc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.f2fs_kmalloc.exit_crit_edge, label %do.end.i

if.then.i.f2fs_kmalloc.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %f2fs_kmalloc.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbi, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_fault_name to i32))
  %12 = load ptr, ptr @f2fs_fault_name, align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0) #14
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef %s_id.i, ptr noundef %12, ptr noundef nonnull @__func__.f2fs_kmalloc, ptr noundef %13) #18
  br label %f2fs_kmalloc.exit

if.end8.i.i:                                      ; preds = %if.end3.i.i.if.end8.i.i_crit_edge, %if.end.i1.i.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3392) #20
  br label %f2fs_kmalloc.exit

f2fs_kmalloc.exit:                                ; preds = %if.end8.i.i, %do.end.i, %if.then.i.f2fs_kmalloc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ null, %if.then.i.f2fs_kmalloc.exit_crit_edge ], [ %call9.i.i, %if.end8.i.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_node_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !55

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !58

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !55

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.10) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #14, !srcloc !59
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !55

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !58

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #14, !srcloc !60
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  tail call void @unlock_page(ptr noundef nonnull %page) #14
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i1 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i2, label %if.end.i.i5, label %if.then.i.i4, !prof !55

if.then.i.i4:                                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i3 = add i32 %16, -1
  br label %_compound_head.exit.i7

if.end.i.i5:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i7

_compound_head.exit.i7:                           ; preds = %if.end.i.i5, %if.then.i.i4
  %retval.0.i.i6 = phi i32 [ %sub.i.i3, %if.then.i.i4 ], [ %17, %if.end.i.i5 ]
  %18 = inttoptr i32 %retval.0.i.i6 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !58

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.11) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !61
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i7
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !65

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %18) #14
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %segs_per_sec.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %0 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segs_per_sec.i, align 8
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %2 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i = mul i32 %3, %1
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = sext i32 %5 to i64
  %conv.i = zext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add nsw i64 %add.i, %conv.i.i
  %log_blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %6 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i = zext i32 %7 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %8 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %segs_per_sec.i, align 8
  %div.i = udiv i32 %conv1.i, %9
  %10 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i3 = mul i32 %11, %9
  %arrayidx.i.i4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 0
  %call.i.i.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #14
  %12 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %conv.i.i6 = sext i32 %13 to i64
  %conv.i7 = zext i32 %mul.i3 to i64
  %add.i8 = add nsw i64 %conv.i7, -1
  %sub.i9 = add nsw i64 %add.i8, %conv.i.i6
  %14 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i11 = zext i32 %15 to i64
  %shr.i12 = ashr i64 %sub.i9, %sh_prom.i11
  %conv1.i13 = trunc i64 %shr.i12 to i32
  %16 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %segs_per_sec.i, align 8
  %div.i14 = udiv i32 %conv1.i13, %17
  %18 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i17 = mul i32 %19, %17
  %arrayidx.i.i18 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  %call.i.i.i.i19 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i18, i32 noundef 4) #14
  %20 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i18, align 4
  %conv.i.i20 = sext i32 %21 to i64
  %conv.i21 = zext i32 %mul.i17 to i64
  %add.i22 = add nsw i64 %conv.i21, -1
  %sub.i23 = add nsw i64 %add.i22, %conv.i.i20
  %22 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i25 = zext i32 %23 to i64
  %shr.i26 = ashr i64 %sub.i23, %sh_prom.i25
  %conv1.i27 = trunc i64 %shr.i26 to i32
  %24 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %segs_per_sec.i, align 8
  %div.i28 = udiv i32 %conv1.i27, %25
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %26 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flag.i, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !55

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %29 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_info.i.i, align 4
  %free_sections.i = getelementptr inbounds %struct.free_segmap_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %free_sections.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_sections.i, align 4
  %reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 10
  %35 = ptrtoint ptr %reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reserved_segments.i.i, align 4
  %additional_reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 11
  %37 = ptrtoint ptr %additional_reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %additional_reserved_segments.i.i, align 4
  %add.i.i = add i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp.i = icmp eq i32 %add.i.i, -1
  br i1 %cmp.i, label %if.end.reserved_sections.exit_crit_edge, label %cond.false.i

if.end.reserved_sections.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %reserved_sections.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %div.i31 = udiv i32 %add.i.i, %25
  br label %reserved_sections.exit

reserved_sections.exit:                           ; preds = %cond.false.i, %if.end.reserved_sections.exit_crit_edge
  %cond.i = phi i32 [ %div.i31, %cond.false.i ], [ -1, %if.end.reserved_sections.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %cond.i)
  %cmp = icmp eq i32 %34, %cond.i
  br i1 %cmp, label %land.lhs.true, label %reserved_sections.exit.if.end10_crit_edge

reserved_sections.exit.if.end10_crit_edge:        ; preds = %reserved_sections.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %reserved_sections.exit
  %call.i.i.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #14
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i42.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #14
  %41 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %add.i34 = add i32 %42, %40
  %call.i.i.i45.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #14
  %43 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %45 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sm_info.i.i.i, align 8
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curseg_array.i.i, align 4
  %segno6.i = getelementptr %struct.curseg_info, ptr %48, i32 3, i32 6
  %49 = ptrtoint ptr %segno6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %segno6.i, align 4
  %call7.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %50) #14
  %51 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sm_info.i.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i47.i = getelementptr %struct.seg_entry, ptr %56, i32 %50
  %57 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load.i = load i32, ptr %arrayidx.i47.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 6
  %bf.clear.i = and i32 %bf.lshr.i, 1023
  %sub.i36 = sub i32 %call7.i, %bf.clear.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i36, i32 %add.i34)
  %cmp9.i = icmp ult i32 %sub.i36, %add.i34
  br i1 %cmp9.i, label %land.lhs.true.if.end10_crit_edge, label %for.cond.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.cond.i:                                       ; preds = %land.lhs.true
  %curseg_array.i.1.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %52, i32 0, i32 3
  %58 = ptrtoint ptr %curseg_array.i.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curseg_array.i.1.i, align 4
  %segno6.1.i = getelementptr %struct.curseg_info, ptr %59, i32 4, i32 6
  %60 = ptrtoint ptr %segno6.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %segno6.1.i, align 4
  %call7.1.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %61) #14
  %62 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sm_info.i.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %sentries.i.1.i = getelementptr inbounds %struct.sit_info, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %sentries.i.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sentries.i.1.i, align 4
  %arrayidx.i47.1.i = getelementptr %struct.seg_entry, ptr %67, i32 %61
  %68 = ptrtoint ptr %arrayidx.i47.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.1.i = load i32, ptr %arrayidx.i47.1.i, align 8
  %bf.lshr.1.i = lshr i32 %bf.load.1.i, 6
  %bf.clear.1.i = and i32 %bf.lshr.1.i, 1023
  %sub.1.i = sub i32 %call7.1.i, %bf.clear.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %add.i34)
  %cmp9.1.i = icmp ult i32 %sub.1.i, %add.i34
  br i1 %cmp9.1.i, label %for.cond.i.if.end10_crit_edge, label %for.cond.1.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.cond.1.i:                                     ; preds = %for.cond.i
  %curseg_array.i.2.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %63, i32 0, i32 3
  %69 = ptrtoint ptr %curseg_array.i.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %curseg_array.i.2.i, align 4
  %segno6.2.i = getelementptr %struct.curseg_info, ptr %70, i32 5, i32 6
  %71 = ptrtoint ptr %segno6.2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %segno6.2.i, align 4
  %call7.2.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %72) #14
  %73 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sm_info.i.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %sentries.i.2.i = getelementptr inbounds %struct.sit_info, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %sentries.i.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sentries.i.2.i, align 4
  %arrayidx.i47.2.i = getelementptr %struct.seg_entry, ptr %78, i32 %72
  %79 = ptrtoint ptr %arrayidx.i47.2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load.2.i = load i32, ptr %arrayidx.i47.2.i, align 8
  %bf.lshr.2.i = lshr i32 %bf.load.2.i, 6
  %bf.clear.2.i = and i32 %bf.lshr.2.i, 1023
  %sub.2.i = sub i32 %call7.2.i, %bf.clear.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %add.i34)
  %cmp9.2.i = icmp ult i32 %sub.2.i, %add.i34
  br i1 %cmp9.2.i, label %for.cond.1.i.if.end10_crit_edge, label %has_curseg_enough_space.exit

for.cond.1.i.if.end10_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

has_curseg_enough_space.exit:                     ; preds = %for.cond.1.i
  %curseg_array.i49.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %74, i32 0, i32 3
  %80 = ptrtoint ptr %curseg_array.i49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %curseg_array.i49.i, align 4
  %segno12.i = getelementptr inbounds %struct.curseg_info, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %segno12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %segno12.i, align 4
  %call13.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %83) #14
  %84 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sm_info.i.i.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %sentries.i51.i = getelementptr inbounds %struct.sit_info, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %sentries.i51.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sentries.i51.i, align 4
  %arrayidx.i52.i = getelementptr %struct.seg_entry, ptr %89, i32 %83
  %90 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load15.i = load i32, ptr %arrayidx.i52.i, align 8
  %bf.lshr16.i = lshr i32 %bf.load15.i, 6
  %bf.clear17.i = and i32 %bf.lshr16.i, 1023
  %sub18.i = sub i32 %call13.i, %bf.clear17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %44)
  %cmp19.i.not = icmp ult i32 %sub18.i, %44
  br i1 %cmp19.i.not, label %has_curseg_enough_space.exit.if.end10_crit_edge, label %has_curseg_enough_space.exit.cleanup_crit_edge

has_curseg_enough_space.exit.cleanup_crit_edge:   ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

has_curseg_enough_space.exit.if.end10_crit_edge:  ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %has_curseg_enough_space.exit.if.end10_crit_edge, %for.cond.1.i.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %reserved_sections.exit.if.end10_crit_edge
  %91 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i38 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %free_info.i.i38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %free_info.i.i38, align 4
  %free_sections.i39 = getelementptr inbounds %struct.free_segmap_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %free_sections.i39 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %free_sections.i39, align 4
  %mul = shl i32 %div.i14, 1
  %add13 = add i32 %mul, %div.i
  %add14 = add i32 %add13, %div.i28
  %reserved_segments.i.i41 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 10
  %97 = ptrtoint ptr %reserved_segments.i.i41 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reserved_segments.i.i41, align 4
  %additional_reserved_segments.i.i42 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 11
  %99 = ptrtoint ptr %additional_reserved_segments.i.i42 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %additional_reserved_segments.i.i42, align 4
  %add.i.i43 = add i32 %100, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i43)
  %cmp.i44 = icmp eq i32 %add.i.i43, -1
  br i1 %cmp.i44, label %if.end10.reserved_sections.exit49_crit_edge, label %cond.false.i47

if.end10.reserved_sections.exit49_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %reserved_sections.exit49

cond.false.i47:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %segs_per_sec.i, align 8
  %div.i46 = udiv i32 %add.i.i43, %102
  br label %reserved_sections.exit49

reserved_sections.exit49:                         ; preds = %cond.false.i47, %if.end10.reserved_sections.exit49_crit_edge
  %cond.i48 = phi i32 [ %div.i46, %cond.false.i47 ], [ -1, %if.end10.reserved_sections.exit49_crit_edge ]
  %add16 = add i32 %add14, %cond.i48
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add16)
  %cmp18 = icmp ule i32 %96, %add16
  br label %cleanup

cleanup:                                          ; preds = %reserved_sections.exit49, %has_curseg_enough_space.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp18, %reserved_sections.exit49 ], [ false, %entry.cleanup_crit_edge ], [ false, %has_curseg_enough_space.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_usable_blks_in_seg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_all_xattrs(ptr noundef %inode, i32 noundef %hsize, ptr nocapture noundef readonly %txattr_addr, ptr noundef %ipage) unnamed_addr #8 align 64 {
entry:
  %new_nid = alloca i32, align 4
  %dn = alloca %struct.dnode_of_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.inline_xattr_size.exit_crit_edge, label %if.then.i

entry.inline_xattr_size.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_xattr_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %7 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %mul.i = shl i32 %8, 2
  br label %inline_xattr_size.exit

inline_xattr_size.exit:                           ; preds = %if.then.i, %entry.inline_xattr_size.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.then.i ], [ 0, %entry.inline_xattr_size.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_nid) #14
  %9 = ptrtoint ptr %new_nid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %new_nid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %hsize)
  %cmp = icmp ult i32 %retval.0.i, %hsize
  br i1 %cmp, label %land.lhs.true, label %inline_xattr_size.exit.if.end5_crit_edge

inline_xattr_size.exit.if.end5_crit_edge:         ; preds = %inline_xattr_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %inline_xattr_size.exit
  %i_xattr_nid = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %10 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_xattr_nid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call3 = call zeroext i1 @f2fs_alloc_nid(ptr noundef %3, ptr noundef nonnull %new_nid) #14
  br i1 %call3, label %if.then.if.end5_crit_edge, label %if.then.cleanup76_crit_edge

if.then.cleanup76_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup76

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %inline_xattr_size.exit.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %if.end5.if.end32_crit_edge, label %if.then7

if.end5.if.end32_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then7:                                         ; preds = %if.end5
  %tobool8.not = icmp eq ptr %ipage, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call ptr @page_address(ptr noundef nonnull %ipage) #14
  br label %if.end17

if.else:                                          ; preds = %if.then7
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %call11 = call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %13) #14
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %new_nid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_nid, align 4
  call void @f2fs_alloc_nid_failed(ptr noundef %3, i32 noundef %15) #14
  %16 = ptrtoint ptr %call11 to i32
  br label %cleanup76

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i138 = call ptr @page_address(ptr noundef %call11) #14
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then9
  %call.i.i138.sink = phi ptr [ %call.i.i138, %if.end15 ], [ %call.i.i, %if.then9 ]
  %in_page.0.ipage = phi ptr [ %call11, %if.end15 ], [ %ipage, %if.then9 ]
  %in_page.0 = phi ptr [ %call11, %if.end15 ], [ null, %if.then9 ]
  %17 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i138.sink, i32 0, i32 23
  %i_inline_xattr_size.i.i139 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %18 = ptrtoint ptr %i_inline_xattr_size.i.i139 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_inline_xattr_size.i.i139, align 4
  %sub.i140 = sub i32 923, %19
  %arrayidx.i141 = getelementptr [923 x i32], ptr %17, i32 0, i32 %sub.i140
  call void @f2fs_wait_on_page_writeback(ptr noundef %in_page.0.ipage, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #14
  br i1 %cmp, label %if.end17.if.end32_crit_edge, label %if.then20

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then20:                                        ; preds = %if.end17
  %call21 = call i32 @f2fs_truncate_xattr_node(ptr noundef %inode) #14
  %20 = ptrtoint ptr %new_nid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_nid, align 4
  call void @f2fs_alloc_nid_failed(ptr noundef %3, i32 noundef %21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @f2fs_put_page(ptr noundef %in_page.0)
  br label %cleanup76

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %22 = call ptr @memcpy(ptr %arrayidx.i141, ptr %txattr_addr, i32 %retval.0.i)
  %call30 = call zeroext i1 @set_page_dirty(ptr noundef %in_page.0.ipage) #14
  br label %in_page_out

if.end32:                                         ; preds = %if.end17.if.end32_crit_edge, %if.end5.if.end32_crit_edge
  %in_page.1 = phi ptr [ %in_page.0, %if.end17.if.end32_crit_edge ], [ null, %if.end5.if.end32_crit_edge ]
  %inline_addr.1 = phi ptr [ %arrayidx.i141, %if.end17.if.end32_crit_edge ], [ null, %if.end5.if.end32_crit_edge ]
  %i_xattr_nid34 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %23 = ptrtoint ptr %i_xattr_nid34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_xattr_nid34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool35.not = icmp eq i32 %24, 0
  br i1 %tobool35.not, label %if.else55, label %if.then36

if.then36:                                        ; preds = %if.end32
  %call39 = call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %24) #14
  %cmp.i142 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then41, label %do.body

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %call39 to i32
  %26 = ptrtoint ptr %new_nid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %new_nid, align 4
  call void @f2fs_alloc_nid_failed(ptr noundef %3, i32 noundef %27) #14
  br label %in_page_out

do.body:                                          ; preds = %if.then36
  %28 = ptrtoint ptr %new_nid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %new_nid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool44.not = icmp eq i32 %29, 0
  br i1 %tobool44.not, label %do.end54, label %do.body48, !prof !55

do.body48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #14, !srcloc !66
  unreachable

do.end54:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @f2fs_wait_on_page_writeback(ptr noundef %call39, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #14
  br label %if.end61

if.else55:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn) #14
  %30 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %31 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %32 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 3
  %33 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %34 = ptrtoint ptr %new_nid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %new_nid, align 4
  %36 = call ptr @memset(ptr %33, i32 0, i32 12)
  %37 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %inode, ptr %dn, align 4
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %30, align 4
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %31, align 4
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %35, ptr %32, align 4
  %call56 = call ptr @f2fs_new_node_page(ptr noundef nonnull %dn, i32 noundef 536870911) #14
  %cmp.i143 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %new_nid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %new_nid, align 4
  call void @f2fs_alloc_nid_done(ptr noundef %3, i32 noundef %42) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn) #14
  br label %if.end61

cleanup:                                          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %call56 to i32
  %44 = ptrtoint ptr %new_nid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %new_nid, align 4
  call void @f2fs_alloc_nid_failed(ptr noundef %3, i32 noundef %45) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn) #14
  br label %in_page_out

if.end61:                                         ; preds = %cleanup.thread, %do.end54
  %xpage.0 = phi ptr [ %call39, %do.end54 ], [ %call56, %cleanup.thread ]
  %call62 = call ptr @page_address(ptr noundef %xpage.0) #14
  br i1 %tobool6.not, label %if.end74.critedge, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %46 = call ptr @memcpy(ptr %inline_addr.1, ptr %txattr_addr, i32 %retval.0.i)
  %add.ptr.c = getelementptr i8, ptr %txattr_addr, i32 %retval.0.i
  %47 = call ptr @memcpy(ptr %call62, ptr %add.ptr.c, i32 4072)
  %tobool68.not = icmp eq ptr %ipage, null
  %cond72 = select i1 %tobool68.not, ptr %in_page.1, ptr %ipage
  %call73 = call zeroext i1 @set_page_dirty(ptr noundef %cond72) #14
  br label %if.end74

if.end74.critedge:                                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %48 = call ptr @memcpy(ptr %call62, ptr %txattr_addr, i32 4072)
  br label %if.end74

if.end74:                                         ; preds = %if.end74.critedge, %if.then64
  %call75 = call zeroext i1 @set_page_dirty(ptr noundef %xpage.0) #14
  call fastcc void @f2fs_put_page(ptr noundef %xpage.0)
  br label %in_page_out

in_page_out:                                      ; preds = %if.end74, %cleanup, %if.then41, %if.end24
  %in_page.2 = phi ptr [ %in_page.0, %if.end24 ], [ %in_page.1, %if.then41 ], [ %in_page.1, %if.end74 ], [ %in_page.1, %cleanup ]
  %err.2 = phi i32 [ 0, %if.end24 ], [ %25, %if.then41 ], [ 0, %if.end74 ], [ %43, %cleanup ]
  call fastcc void @f2fs_put_page(ptr noundef %in_page.2)
  br label %cleanup76

cleanup76:                                        ; preds = %in_page_out, %if.then23, %if.then13, %if.then.cleanup76_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then23 ], [ %err.2, %in_page_out ], [ %16, %if.then13 ], [ -28, %if.then.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_nid) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_set_encrypted_inode(ptr noundef %inode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_advise.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %0 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_advise.i.i, align 4
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.set_file.exit_crit_edge

entry.set_file.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_file.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = or i8 %1, 4
  %4 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %i_advise.i.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #14
  br label %set_file.exit

set_file.exit:                                    ; preds = %if.end.i, %entry.set_file.exit_crit_edge
  tail call void @f2fs_set_inode_flags(ptr noundef %inode) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_alloc_nid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_alloc_nid_failed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_truncate_xattr_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_new_node_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_alloc_nid_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_set_inode_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/xattr.c", i32 163, i32 12}
!2 = !{ptr @f2fs_xattr_user_handler, !3, !"f2fs_xattr_user_handler", i1 false, i1 false}
!3 = !{!"../fs/f2fs/xattr.c", i32 162, i32 28}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/f2fs/xattr.c", i32 171, i32 12}
!6 = !{ptr @f2fs_xattr_trusted_handler, !7, !"f2fs_xattr_trusted_handler", i1 false, i1 false}
!7 = !{!"../fs/f2fs/xattr.c", i32 170, i32 28}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/f2fs/xattr.c", i32 179, i32 10}
!10 = !{ptr @f2fs_xattr_advise_handler, !11, !"f2fs_xattr_advise_handler", i1 false, i1 false}
!11 = !{!"../fs/f2fs/xattr.c", i32 178, i32 28}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/f2fs/xattr.c", i32 186, i32 12}
!14 = !{ptr @f2fs_xattr_security_handler, !15, !"f2fs_xattr_security_handler", i1 false, i1 false}
!15 = !{!"../fs/f2fs/xattr.c", i32 185, i32 28}
!16 = !{ptr @f2fs_xattr_handlers, !17, !"f2fs_xattr_handlers", i1 false, i1 false}
!17 = !{!"../fs/f2fs/xattr.c", i32 205, i32 29}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/f2fs/xattr.c", i32 582, i32 4}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/f2fs/xattr.c", i32 803, i32 21}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/f2fs/f2fs.h", i32 2650, i32 3}
!24 = !{ptr @f2fs_kmem_cache_alloc._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @__func__.f2fs_kmem_cache_alloc, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @f2fs_kmem_cache_alloc._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @f2fs_kmem_cache_alloc._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @f2fs_kmalloc._rs, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../fs/f2fs/f2fs.h", i32 3219, i32 3}
!33 = !{ptr @__func__.f2fs_kmalloc, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @f2fs_kmalloc._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @f2fs_kmalloc._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = !{ptr @f2fs_xattr_handler_map, !41, !"f2fs_xattr_handler_map", i1 false, i1 false}
!41 = !{!"../fs/f2fs/xattr.c", i32 192, i32 36}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/f2fs/xattr.c", i32 683, i32 4}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/f2fs/xattr.c", i32 748, i32 18}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148503440, i64 2148503466, i64 2148503495, i64 2148503529, i64 2148503560, i64 2148503583}
!57 = !{!"auto-init"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2150308575, i64 2150309066, i64 2150308612, i64 2150308668, i64 2150308702, i64 2150308726, i64 2150308767, i64 2150308788, i64 2150308816, i64 2150308850}
!60 = !{i64 2154895674, i64 2154896154, i64 2154895711, i64 2154895767, i64 2154895801, i64 2154895825, i64 2154895866, i64 2154895887, i64 2154895915, i64 2154895949}
!61 = !{i64 2153188079, i64 2153188562, i64 2153188116, i64 2153188172, i64 2153188206, i64 2153188230, i64 2153188271, i64 2153188292, i64 2153188320, i64 2153188354}
!62 = !{i64 2148591916}
!63 = !{i64 2148506625, i64 2148506657, i64 2148506686, i64 2148506720, i64 2148506751, i64 2148506774}
!64 = !{i64 2148592145}
!65 = !{i64 2148328038, i64 2148328043, i64 2148328056, i64 2148328100, i64 2148328134, i64 2148328155}
!66 = !{i64 2155447097, i64 2155447577, i64 2155447134, i64 2155447190, i64 2155447224, i64 2155447248, i64 2155447289, i64 2155447310, i64 2155447338, i64 2155447372}
