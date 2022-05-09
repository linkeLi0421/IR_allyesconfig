; ModuleID = '/llk/IR_all_yes/fs/ceph/quota.c_pt.bc'
source_filename = "../fs/ceph/quota.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.105, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.106, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.107, ptr, %struct.address_space, %struct.list_head, %union.anon.108, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.105 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.108 = type { ptr }
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
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ceph_vino = type { i64, i64 }
%struct.ceph_msg = type { %struct.ceph_msg_header, %union.anon.113, %struct.kvec, ptr, i32, ptr, i32, i32, %struct.ceph_msg_data_cursor, ptr, %struct.list_head, %struct.kref, i8, i8, i32, ptr }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%union.anon.113 = type { %struct.ceph_msg_footer }
%struct.ceph_msg_footer = type <{ i32, i32, i32, i64, i8 }>
%struct.kvec = type { ptr, i32 }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.117 }
%union.anon.117 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ceph_mds_session = type { ptr, i32, i32, i32, i32, i64, %struct.mutex, [4 x i8], %struct.ceph_connection, %struct.ceph_auth_handshake, %struct.atomic_t, i32, %struct.spinlock, %struct.refcount_struct, %struct.list_head, ptr, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.list_head, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.122 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.111 }
%union.anon.111 = type { ptr, [124 x i8] }
%union.anon.122 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.123 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.123 = type { i8, %union.anon.124 }
%union.anon.124 = type <{ %struct.anon.125, [3 x i8] }>
%struct.anon.125 = type { i32, i32, i32 }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_mds_quota = type <{ i64, %struct.ceph_timespec, i64, i64, i64, i8, i8, i32, i64, i64 }>
%struct.ceph_timespec = type { i32, i32 }
%struct.ceph_quotarealm_inode = type { %struct.rb_node, i64, i32, %struct.mutex, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_snap_realm = type { i64, ptr, %struct.atomic_t, %struct.rb_node, i64, i64, i64, i64, ptr, i32, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.103, %struct.list_head, %struct.list_head, %union.anon.104 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.103 = type { %struct.list_head }
%union.anon.104 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@ceph_handle_quota._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ceph: %s corrupt message mds%d len %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_handle_quota\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/quota.c\00", [16 x i8] zeroinitializer }, align 32
@ceph_handle_quota._entry_ptr = internal global ptr @ceph_handle_quota._entry, section ".printk_index", align 4
@ceph_handle_quota._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014ceph: Failed to find inode %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_handle_quota._entry_ptr.5 = internal global ptr @ceph_handle_quota._entry.3, section ".printk_index", align 4
@ceph_vino_is_reserved._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ceph_vino_is_reserved = private unnamed_addr constant [22 x i8] c"ceph_vino_is_reserved\00", align 1
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/super.h\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Attempt to access reserved inode number 0x%llx\00", [49 x i8] zeroinitializer }, align 32
@get_quota_realm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_quota_realm = private unnamed_addr constant [16 x i8] c"get_quota_realm\00", align 1
@get_quota_realm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.get_quota_realm, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ceph: get_quota_realm: ino (%llx.%llx) null i_snap_realm\0A\00", [36 x i8] zeroinitializer }, align 32
@get_quota_realm._entry_ptr = internal global ptr @get_quota_realm._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lookup_quotarealm_inode.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lookup_quotarealm_inode\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : Can't lookup inode %llx (err: %ld)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : Can't lookup inode %llx (err: %ld)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@find_quotarealm_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&qri->mutex\00", [20 x i8] zeroinitializer }, align 32
@find_quotarealm_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014ceph: Failed to alloc quotarealms_inode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"find_quotarealm_inode\00", [42 x i8] zeroinitializer }, align 32
@find_quotarealm_inode._entry_ptr = internal global ptr @find_quotarealm_inode._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_quota_exceeded._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_quota_exceeded = private unnamed_addr constant [21 x i8] c"check_quota_exceeded\00", align 1
@check_quota_exceeded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.check_quota_exceeded, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ceph: check_quota_exceeded: ino (%llx.%llx) null i_snap_realm\0A\00", [63 x i8] zeroinitializer }, align 32
@check_quota_exceeded._entry_ptr = internal global ptr @check_quota_exceeded._entry, section ".printk_index", align 4
@check_quota_exceeded._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.check_quota_exceeded, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014ceph: Invalid quota check op (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@check_quota_exceeded._entry_ptr.21 = internal global ptr @check_quota_exceeded._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 51, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 67, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"../fs/ceph/super.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 552, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 227, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 164, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 109, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 113, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 333, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [19 x i8] c"../fs/ceph/quota.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 384, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @ceph_handle_quota._entry, ptr @ceph_handle_quota._entry.3, ptr @ceph_handle_quota._entry_ptr, ptr @ceph_handle_quota._entry_ptr.5, ptr @check_quota_exceeded._entry, ptr @check_quota_exceeded._entry.19, ptr @check_quota_exceeded._entry_ptr, ptr @check_quota_exceeded._entry_ptr.21, ptr @find_quotarealm_inode._entry, ptr @find_quotarealm_inode._entry_ptr, ptr @get_quota_realm._entry, ptr @get_quota_realm._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ceph_vino_is_reserved._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @get_quota_realm._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @find_quotarealm_inode.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @check_quota_exceeded._rs, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_handle_quota._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_handle_quota._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_vino_is_reserved._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_quota_realm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_quota_realm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_quotarealm_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_quotarealm_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_quota_exceeded._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_quota_exceeded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_quota_exceeded._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_adjust_quota_realms_count(ptr nocapture noundef readonly %inode, i1 noundef zeroext %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i, align 8
  %quotarealms_count = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %quotarealms_count, i32 noundef 8) #8
  br i1 %inc, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %quotarealms_count) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %quotarealms_count) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_handle_quota(ptr nocapture noundef readonly %mdsc, ptr noundef %session, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %vino.i = alloca %struct.ceph_vino, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %front = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %front to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %front, align 4
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %3)
  %cmp = icmp ult i32 %3, 62
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_mds = getelementptr inbounds %struct.ceph_mds_session, ptr %session, i32 0, i32 1
  %4 = ptrtoint ptr %s_mds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mds, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %3) #11
  tail call void @ceph_msg_dump(ptr noundef %msg) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %s_mutex = getelementptr inbounds %struct.ceph_mds_session, ptr %session, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #8
  tail call void @inc_session_sequence(ptr noundef %session) #8
  tail call void @mutex_unlock(ptr noundef %s_mutex) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %1, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vino.i)
  %13 = ptrtoint ptr %vino.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %vino.i, align 8
  %vino.coerce.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %vino.i, i32 0, i32 1
  %14 = ptrtoint ptr %vino.coerce.fca.1.gep.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -2, ptr %vino.coerce.fca.1.gep.i, align 8
  %15 = add i64 %12, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %15)
  %16 = icmp ult i64 %15, 3584
  br i1 %16, label %land.rhs.i.i, label %ceph_vino_is_reserved.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %land.rhs.i.i.ceph_find_inode.exit.thread_crit_edge, label %do.end.critedge.i.i, !prof !56

land.rhs.i.i.ceph_find_inode.exit.thread_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_find_inode.exit.thread

do.end.critedge.i.i:                              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %12) #8
  br label %ceph_find_inode.exit.thread

ceph_vino_is_reserved.exit.i:                     ; preds = %if.end
  %17 = add i64 %12, -256
  call void @__sanitizer_cov_trace_const_cmp8(i64 3840, i64 %17)
  %18 = icmp ult i64 %17, 3840
  br i1 %18, label %ceph_vino_is_reserved.exit.i.ceph_find_inode.exit.thread_crit_edge, label %ceph_find_inode.exit

ceph_vino_is_reserved.exit.i.ceph_find_inode.exit.thread_crit_edge: ; preds = %ceph_vino_is_reserved.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_find_inode.exit.thread

ceph_find_inode.exit.thread:                      ; preds = %ceph_vino_is_reserved.exit.i.ceph_find_inode.exit.thread_crit_edge, %do.end.critedge.i.i, %land.rhs.i.i.ceph_find_inode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vino.i)
  br label %do.end11

ceph_find_inode.exit:                             ; preds = %ceph_vino_is_reserved.exit.i
  %conv.i = trunc i64 %12 to i32
  %call1.i = call ptr @ilookup5(ptr noundef %9, i32 noundef %conv.i, ptr noundef nonnull @ceph_ino_compare, ptr noundef nonnull %vino.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vino.i)
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %ceph_find_inode.exit.do.end11_crit_edge, label %if.end15

ceph_find_inode.exit.do.end11_crit_edge:          ; preds = %ceph_find_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end11:                                         ; preds = %ceph_find_inode.exit.do.end11_crit_edge, %ceph_find_inode.exit.thread
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %12) #11
  br label %cleanup

if.end15:                                         ; preds = %ceph_find_inode.exit
  %i_ceph_lock = getelementptr i8, ptr %call1.i, i32 -936
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #8
  %rbytes = getelementptr inbounds %struct.ceph_mds_quota, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %rbytes to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %rbytes, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20)
  %i_rbytes = getelementptr i8, ptr %call1.i, i32 -736
  %22 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %i_rbytes, align 8
  %rfiles = getelementptr inbounds %struct.ceph_mds_quota, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %rfiles to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %rfiles, align 1
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %i_rfiles = getelementptr i8, ptr %call1.i, i32 -728
  %26 = ptrtoint ptr %i_rfiles to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %i_rfiles, align 8
  %rsubdirs = getelementptr inbounds %struct.ceph_mds_quota, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %rsubdirs to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %rsubdirs, align 1
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  %i_rsubdirs = getelementptr i8, ptr %call1.i, i32 -720
  %30 = ptrtoint ptr %i_rsubdirs to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %i_rsubdirs, align 8
  %max_bytes = getelementptr inbounds %struct.ceph_mds_quota, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %max_bytes to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %max_bytes, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %32)
  %max_files = getelementptr inbounds %struct.ceph_mds_quota, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %max_files to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %max_files, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  %i_max_files.i.i = getelementptr i8, ptr %call1.i, i32 -680
  %37 = ptrtoint ptr %i_max_files.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_max_files.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool.not.i.i = icmp eq i64 %38, 0
  %i_max_bytes.i.i = getelementptr i8, ptr %call1.i, i32 -688
  br i1 %tobool.not.i.i, label %__ceph_has_any_quota.exit.i, label %__ceph_has_any_quota.exit.thread.i

__ceph_has_any_quota.exit.i:                      ; preds = %if.end15
  %39 = ptrtoint ptr %i_max_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_max_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool1.i.i = icmp ne i64 %40, 0
  %41 = ptrtoint ptr %i_max_bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %33, ptr %i_max_bytes.i.i, align 8
  %42 = ptrtoint ptr %i_max_files.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %36, ptr %i_max_files.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.not.i13.i = icmp eq i64 %35, 0
  br i1 %tobool.not.i13.i, label %__ceph_has_any_quota.exit17.i, label %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i

__ceph_has_any_quota.exit.thread.i:               ; preds = %if.end15
  %43 = ptrtoint ptr %i_max_bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %33, ptr %i_max_bytes.i.i, align 8
  %44 = ptrtoint ptr %i_max_files.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %36, ptr %i_max_files.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool1.i1520.i = icmp ne i64 %32, 0
  %45 = or i64 %36, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %.not.i = icmp eq i64 %45, 0
  br i1 %.not.i, label %__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge, label %__ceph_has_any_quota.exit.thread.i.__ceph_update_quota.exit_crit_edge

__ceph_has_any_quota.exit.thread.i.__ceph_update_quota.exit_crit_edge: ; preds = %__ceph_has_any_quota.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_update_quota.exit

__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge: ; preds = %__ceph_has_any_quota.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i: ; preds = %__ceph_has_any_quota.exit.i
  br i1 %tobool1.i.i, label %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.__ceph_update_quota.exit_crit_edge, label %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge

__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge: ; preds = %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.__ceph_update_quota.exit_crit_edge: ; preds = %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_update_quota.exit

__ceph_has_any_quota.exit17.i:                    ; preds = %__ceph_has_any_quota.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool1.i15.i = icmp ne i64 %32, 0
  %46 = xor i1 %tobool1.i15.i, %tobool1.i.i
  br i1 %46, label %__ceph_has_any_quota.exit17.i.if.then.i_crit_edge, label %__ceph_has_any_quota.exit17.i.__ceph_update_quota.exit_crit_edge

__ceph_has_any_quota.exit17.i.__ceph_update_quota.exit_crit_edge: ; preds = %__ceph_has_any_quota.exit17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_update_quota.exit

__ceph_has_any_quota.exit17.i.if.then.i_crit_edge: ; preds = %__ceph_has_any_quota.exit17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %__ceph_has_any_quota.exit17.i.if.then.i_crit_edge, %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge, %__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge
  %47 = phi i1 [ true, %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge ], [ %tobool1.i15.i, %__ceph_has_any_quota.exit17.i.if.then.i_crit_edge ], [ %tobool1.i1520.i, %__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge ]
  %i_sb.i.i = getelementptr i8, ptr %call1.i, i32 28
  %48 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %mdsc.i.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %mdsc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdsc.i.i.i, align 8
  %quotarealms_count.i.i = getelementptr inbounds %struct.ceph_mds_client, ptr %53, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %quotarealms_count.i.i, i32 noundef 8) #8
  br i1 %47, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %quotarealms_count.i.i) #8
  br label %__ceph_update_quota.exit

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %quotarealms_count.i.i) #8
  br label %__ceph_update_quota.exit

__ceph_update_quota.exit:                         ; preds = %if.else.i.i, %if.then.i.i, %__ceph_has_any_quota.exit17.i.__ceph_update_quota.exit_crit_edge, %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.__ceph_update_quota.exit_crit_edge, %__ceph_has_any_quota.exit.thread.i.__ceph_update_quota.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #8
  call void @iput(ptr noundef nonnull %call1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %__ceph_update_quota.exit, %do.end11, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msg_dump(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_session_sequence(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_cleanup_quotarealms_inodes(ptr noundef %mdsc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %quotarealms_inodes_mutex = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %quotarealms_inodes_mutex, i32 noundef 0) #8
  %quotarealms_inodes = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 12
  %0 = ptrtoint ptr %quotarealms_inodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %quotarealms_inodes, align 8
  %cmp.not11 = icmp eq ptr %1, null
  br i1 %cmp.not11, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call = tail call ptr @rb_first(ptr noundef %quotarealms_inodes) #8
  tail call void @rb_erase(ptr noundef %call, ptr noundef %quotarealms_inodes) #8
  %inode = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 8
  tail call void @iput(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %call) #8
  %4 = ptrtoint ptr %quotarealms_inodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %quotarealms_inodes, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %quotarealms_inodes_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_quota_is_same_realm(ptr nocapture noundef readonly %old, ptr nocapture noundef readonly %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i, align 8
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %snap_rwsem) #8
  %call131 = tail call fastcc ptr @get_quota_realm(ptr noundef %5, ptr noundef %old, i1 noundef zeroext true)
  %call232 = tail call fastcc ptr @get_quota_realm(ptr noundef %5, ptr noundef %new, i1 noundef zeroext false)
  %cmp33 = icmp eq ptr %call232, inttoptr (i32 -11 to ptr)
  br i1 %cmp33, label %entry.if.then_crit_edge, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %call134 = phi ptr [ %call1, %if.end.if.then_crit_edge ], [ %call131, %entry.if.then_crit_edge ]
  tail call void @up_read(ptr noundef %snap_rwsem) #8
  %tobool.not = icmp eq ptr %call134, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_put_snap_realm(ptr noundef %5, ptr noundef nonnull %call134) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call void @down_read(ptr noundef %snap_rwsem) #8
  %call1 = tail call fastcc ptr @get_quota_realm(ptr noundef %5, ptr noundef %old, i1 noundef zeroext true)
  %call2 = tail call fastcc ptr @get_quota_realm(ptr noundef %5, ptr noundef %new, i1 noundef zeroext false)
  %cmp = icmp eq ptr %call2, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.end.if.then_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call1.lcssa = phi ptr [ %call131, %entry.if.end6_crit_edge ], [ %call1, %if.end.if.end6_crit_edge ]
  %call2.lcssa = phi ptr [ %call232, %entry.if.end6_crit_edge ], [ %call2, %if.end.if.end6_crit_edge ]
  tail call void @up_read(ptr noundef %snap_rwsem) #8
  %tobool9.not = icmp eq ptr %call1.lcssa, null
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_put_snap_realm(ptr noundef %5, ptr noundef nonnull %call1.lcssa) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %call2.lcssa, null
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_put_snap_realm(ptr noundef %5, ptr noundef nonnull %call2.lcssa) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %cmp7 = icmp eq ptr %call1.lcssa, %call2.lcssa
  ret i1 %cmp7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_quota_realm(ptr noundef %mdsc, ptr nocapture noundef readonly %inode, i1 noundef zeroext %retry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %0 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %1)
  %cmp.not = icmp eq i64 %1, -2
  br i1 %cmp.not, label %restart.preheader, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

restart.preheader:                                ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %2 = getelementptr i8, ptr %inode, i32 -108
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %restart

restart:                                          ; preds = %if.end30.restart_crit_edge, %restart.preheader
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_get_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %4) #8
  br label %if.end11

if.else:                                          ; preds = %restart
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @get_quota_realm._rs, ptr noundef nonnull @__func__.get_quota_realm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end11_crit_edge, label %do.end

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  %7 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %snap.i, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %6, i64 noundef %8) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.else.if.end11_crit_edge, %if.then2
  %tobool12.not118 = icmp eq ptr %4, null
  br i1 %tobool12.not118, label %if.end11.cleanup46_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  br label %while.body

if.end11.cleanup46_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

while.body:                                       ; preds = %cleanup, %if.end11.while.body_crit_edge
  %realm.0119 = phi ptr [ %19, %cleanup ], [ %4, %if.end11.while.body_crit_edge ]
  %inodes_with_caps_lock = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.0119, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %inodes_with_caps_lock) #8
  %inode13 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.0119, i32 0, i32 1
  %9 = ptrtoint ptr %inode13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode13, align 8
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %while.body.cond.end_crit_edge, label %cond.true

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call ptr @igrab(ptr noundef nonnull %10) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.body.cond.end_crit_edge
  %cond = phi ptr [ %call18, %cond.true ], [ null, %while.body.cond.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock) #8
  %tobool14.not.not = xor i1 %tobool14.not, true
  %tobool21.not = icmp eq ptr %cond, null
  %or.cond = select i1 %tobool14.not.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %cond.end.if.then44_crit_edge, label %if.end23

cond.end.if.then44_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.end23:                                         ; preds = %cond.end
  br i1 %tobool21.not, label %if.then25, label %if.end35

if.then25:                                        ; preds = %if.end23
  tail call void @up_read(ptr noundef %snap_rwsem) #8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call26 = tail call fastcc ptr @lookup_quotarealm_inode(ptr noundef %mdsc, ptr noundef %12, ptr noundef nonnull %realm.0119)
  tail call void @down_read(ptr noundef %snap_rwsem) #8
  %tobool.not.i = icmp eq ptr %call26, null
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then25.if.then44_crit_edge, label %if.end30

if.then25.if.then44_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.end30:                                         ; preds = %if.then25
  tail call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %realm.0119) #8
  br i1 %retry, label %if.end30.restart_crit_edge, label %if.end30.cleanup46_crit_edge

if.end30.cleanup46_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.end30.restart_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %restart

if.end35:                                         ; preds = %if.end23
  %i_max_files.i = getelementptr i8, ptr %cond, i32 -680
  %13 = ptrtoint ptr %i_max_files.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_max_files.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i88 = icmp eq i64 %14, 0
  br i1 %tobool.not.i88, label %lor.rhs.i, label %if.end35.__ceph_has_any_quota.exit_crit_edge

if.end35.__ceph_has_any_quota.exit_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_has_any_quota.exit

lor.rhs.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %i_max_bytes.i = getelementptr i8, ptr %cond, i32 -688
  %15 = ptrtoint ptr %i_max_bytes.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_max_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool1.i = icmp ne i64 %16, 0
  br label %__ceph_has_any_quota.exit

__ceph_has_any_quota.exit:                        ; preds = %lor.rhs.i, %if.end35.__ceph_has_any_quota.exit_crit_edge
  %17 = phi i1 [ true, %if.end35.__ceph_has_any_quota.exit_crit_edge ], [ %tobool1.i, %lor.rhs.i ]
  tail call void @iput(ptr noundef nonnull %cond) #8
  %parent = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.0119, i32 0, i32 12
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %tobool40.not = icmp eq ptr %19, null
  %or.cond84 = select i1 %17, i1 true, i1 %tobool40.not
  br i1 %or.cond84, label %__ceph_has_any_quota.exit.cleanup46_crit_edge, label %cleanup

__ceph_has_any_quota.exit.cleanup46_crit_edge:    ; preds = %__ceph_has_any_quota.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

cleanup:                                          ; preds = %__ceph_has_any_quota.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_get_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %19) #8
  tail call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %realm.0119) #8
  br label %while.body

if.then44:                                        ; preds = %if.then25.if.then44_crit_edge, %cond.end.if.then44_crit_edge
  tail call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %realm.0119) #8
  br label %cleanup46

cleanup46:                                        ; preds = %if.then44, %__ceph_has_any_quota.exit.cleanup46_crit_edge, %if.end30.cleanup46_crit_edge, %if.end11.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.3 = phi ptr [ null, %entry.cleanup46_crit_edge ], [ null, %if.then44 ], [ %realm.0119, %__ceph_has_any_quota.exit.cleanup46_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.end30.cleanup46_crit_edge ], [ null, %if.end11.cleanup46_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_snap_realm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_quota_is_max_files_exceeded(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mdsc.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i.i, align 8
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %quotarealms_count.i = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %quotarealms_count.i, i32 noundef 8) #8
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %quotarealms_count.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp.i = icmp sgt i64 %call.i.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -952
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %11)
  %cmp4.i = icmp eq i64 %11, 1
  br i1 %cmp4.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -952
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %.unpack.i = load i64, ptr %add.ptr.i.i, align 8
  %13 = add i64 %.unpack.i, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %13)
  %14 = icmp ult i64 %13, 3584
  br i1 %14, label %land.rhs.i.i, label %ceph_has_realms_with_quotas.exit

land.rhs.i.i:                                     ; preds = %if.end6.i
  %call.i18.i = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool6.not.i.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool6.not.i.i, label %land.rhs.i.i.return_crit_edge, label %do.end.critedge.i.i, !prof !56

land.rhs.i.i.return_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end.critedge.i.i:                              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %.unpack.i) #8
  br label %return

ceph_has_realms_with_quotas.exit:                 ; preds = %if.end6.i
  %15 = add i64 %.unpack.i, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3840, i64 %15)
  %16 = icmp ult i64 %15, -3840
  br i1 %16, label %ceph_has_realms_with_quotas.exit.if.end_crit_edge, label %ceph_has_realms_with_quotas.exit.return_crit_edge

ceph_has_realms_with_quotas.exit.return_crit_edge: ; preds = %ceph_has_realms_with_quotas.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

ceph_has_realms_with_quotas.exit.if.end_crit_edge: ; preds = %ceph_has_realms_with_quotas.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %ceph_has_realms_with_quotas.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %inode, align 8
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %cmp.not = icmp eq i16 %19, 16384
  br i1 %cmp.not, label %if.end.if.end16_crit_edge, label %do.end, !prof !56

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %call23 = tail call fastcc zeroext i1 @check_quota_exceeded(ptr noundef %inode, i32 noundef 0, i64 noundef 1)
  br label %return

return:                                           ; preds = %if.end16, %ceph_has_realms_with_quotas.exit.return_crit_edge, %do.end.critedge.i.i, %land.rhs.i.i.return_crit_edge, %land.lhs.true.i.return_crit_edge
  %retval.0 = phi i1 [ %call23, %if.end16 ], [ false, %ceph_has_realms_with_quotas.exit.return_crit_edge ], [ false, %land.lhs.true.i.return_crit_edge ], [ false, %land.rhs.i.i.return_crit_edge ], [ false, %do.end.critedge.i.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_quota_exceeded(ptr nocapture noundef readonly %inode, i32 noundef %op, i64 noundef %delta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i, align 8
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %6 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %7)
  %cmp.not = icmp eq i64 %7, -2
  br i1 %cmp.not, label %if.end, label %entry.cleanup68_crit_edge

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end:                                           ; preds = %entry
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %snap_rwsem) #8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %8 = getelementptr i8, ptr %inode, i32 -108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp35 = icmp eq i32 %op, 0
  br label %restart

restart.loopexit:                                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_put_snap_realm(ptr noundef %5, ptr noundef nonnull %realm.0176) #8
  br label %restart

restart:                                          ; preds = %restart.loopexit, %if.end
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_get_snap_realm(ptr noundef %5, ptr noundef nonnull %10) #8
  br label %if.end12

if.else:                                          ; preds = %restart
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @check_quota_exceeded._rs, ptr noundef nonnull @__func__.check_quota_exceeded) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.if.end12_crit_edge, label %do.end

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i, align 8
  %13 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %snap.i, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %12, i64 noundef %14) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.else.if.end12_crit_edge, %if.then3
  %tobool13.not175 = icmp eq ptr %10, null
  br i1 %tobool13.not175, label %if.end12.if.end65_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

if.end12.if.end65_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

while.body:                                       ; preds = %cleanup, %if.end12.while.body_crit_edge
  %realm.0176 = phi ptr [ %30, %cleanup ], [ %10, %if.end12.while.body_crit_edge ]
  %inodes_with_caps_lock = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.0176, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %inodes_with_caps_lock) #8
  %inode14 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.0176, i32 0, i32 1
  %15 = ptrtoint ptr %inode14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inode14, align 8
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %while.body.cond.end_crit_edge, label %cond.true

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call ptr @igrab(ptr noundef nonnull %16) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.body.cond.end_crit_edge
  %cond = phi ptr [ %call18, %cond.true ], [ null, %while.body.cond.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock) #8
  %tobool15.not.not = xor i1 %tobool15.not, true
  %tobool21.not = icmp eq ptr %cond, null
  %or.cond = select i1 %tobool15.not.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %cond.end.if.then64_crit_edge, label %if.end23

cond.end.if.then64_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

if.end23:                                         ; preds = %cond.end
  br i1 %tobool21.not, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end23
  tail call void @up_read(ptr noundef %snap_rwsem) #8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %call28 = tail call fastcc ptr @lookup_quotarealm_inode(ptr noundef %5, ptr noundef %18, ptr noundef nonnull %realm.0176)
  tail call void @down_read(ptr noundef %snap_rwsem) #8
  %tobool.not.i = icmp eq ptr %call28, null
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then25.if.then64_crit_edge, label %restart.loopexit

if.then25.if.then64_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

if.end33:                                         ; preds = %if.end23
  %i_ceph_lock = getelementptr i8, ptr %cond, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #8
  br i1 %cmp35, label %if.end38.thread, label %if.end38

if.end38.thread:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %i_max_files = getelementptr i8, ptr %cond, i32 -680
  %i_rfiles = getelementptr i8, ptr %cond, i32 -728
  %19 = ptrtoint ptr %i_rfiles to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_rfiles, align 8
  %i_rsubdirs = getelementptr i8, ptr %cond, i32 -720
  %21 = ptrtoint ptr %i_rsubdirs to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_rsubdirs, align 8
  %add = add i64 %22, %20
  %23 = ptrtoint ptr %i_max_files to i32
  call void @__asan_load8_noabort(i32 %23)
  %max.0145 = load i64, ptr %i_max_files, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #8
  br label %sw.bb

if.end38:                                         ; preds = %if.end33
  %i_max_bytes = getelementptr i8, ptr %cond, i32 -688
  %i_rbytes = getelementptr i8, ptr %cond, i32 -736
  %24 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_rbytes, align 8
  %26 = ptrtoint ptr %i_max_bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %max.0 = load i64, ptr %i_max_bytes, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #8
  %27 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %do.end56 [
    i32 2, label %sw.bb44
    i32 1, label %if.end38.sw.bb_crit_edge
  ]

if.end38.sw.bb_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end38.sw.bb_crit_edge, %if.end38.thread
  %max.0148 = phi i64 [ %max.0145, %if.end38.thread ], [ %max.0, %if.end38.sw.bb_crit_edge ]
  %rvalue.0146 = phi i64 [ %add, %if.end38.thread ], [ %25, %if.end38.sw.bb_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max.0148)
  %tobool40.not = icmp ne i64 %max.0148, 0
  %add41 = add i64 %rvalue.0146, %delta
  call void @__sanitizer_cov_trace_cmp8(i64 %add41, i64 %max.0148)
  %cmp42 = icmp ugt i64 %add41, %max.0148
  %28 = select i1 %tobool40.not, i1 %cmp42, i1 false
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max.0)
  %tobool45.not = icmp eq i64 %max.0, 0
  br i1 %tobool45.not, label %sw.bb44.sw.epilog_crit_edge, label %if.then46

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then46:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_cmp8(i64 %max.0, i64 %25)
  %cmp47.not = icmp ugt i64 %max.0, %25
  br i1 %cmp47.not, label %if.else49, label %if.then46.sw.epilog_crit_edge

if.then46.sw.epilog_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %max.0, %25
  %shr = lshr i64 %sub, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %delta)
  %cmp50 = icmp ult i64 %shr, %delta
  br label %sw.epilog

do.end56:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %op) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end56, %if.else49, %if.then46.sw.epilog_crit_edge, %sw.bb44.sw.epilog_crit_edge, %sw.bb
  %exceeded.2.off0 = phi i1 [ true, %do.end56 ], [ %cmp50, %if.else49 ], [ false, %sw.bb44.sw.epilog_crit_edge ], [ %28, %sw.bb ], [ true, %if.then46.sw.epilog_crit_edge ]
  tail call void @iput(ptr noundef nonnull %cond) #8
  %parent = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.0176, i32 0, i32 12
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 8
  %tobool60.not = icmp eq ptr %30, null
  %or.cond139 = select i1 %exceeded.2.off0, i1 true, i1 %tobool60.not
  br i1 %or.cond139, label %sw.epilog.if.then64_crit_edge, label %cleanup

sw.epilog.if.then64_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

cleanup:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_get_snap_realm(ptr noundef %5, ptr noundef nonnull %30) #8
  tail call void @ceph_put_snap_realm(ptr noundef %5, ptr noundef nonnull %realm.0176) #8
  br label %while.body

if.then64:                                        ; preds = %sw.epilog.if.then64_crit_edge, %if.then25.if.then64_crit_edge, %cond.end.if.then64_crit_edge
  %exceeded.4.off0.ph = phi i1 [ false, %cond.end.if.then64_crit_edge ], [ %exceeded.2.off0, %sw.epilog.if.then64_crit_edge ], [ false, %if.then25.if.then64_crit_edge ]
  tail call void @ceph_put_snap_realm(ptr noundef %5, ptr noundef nonnull %realm.0176) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end12.if.end65_crit_edge
  %exceeded.4.off0157 = phi i1 [ %exceeded.4.off0.ph, %if.then64 ], [ false, %if.end12.if.end65_crit_edge ]
  tail call void @up_read(ptr noundef %snap_rwsem) #8
  br label %cleanup68

cleanup68:                                        ; preds = %if.end65, %entry.cleanup68_crit_edge
  %retval.0 = phi i1 [ %exceeded.4.off0157, %if.end65 ], [ false, %entry.cleanup68_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_quota_is_max_bytes_exceeded(ptr noundef %inode, i64 noundef %newsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !58
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !59

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !60
  %6 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !62
  %8 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %9, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %10 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %13, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mdsc.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %mdsc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdsc.i.i, align 8
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 13
  %20 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i, align 8
  %quotarealms_count.i = getelementptr inbounds %struct.ceph_mds_client, ptr %19, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %quotarealms_count.i, i32 noundef 8) #8
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %quotarealms_count.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp.i = icmp sgt i64 %call.i.i, 0
  br i1 %cmp.i, label %i_size_read.exit.ceph_has_realms_with_quotas.exit_crit_edge, label %if.end.i

i_size_read.exit.ceph_has_realms_with_quotas.exit_crit_edge: ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_has_realms_with_quotas.exit

if.end.i:                                         ; preds = %i_size_read.exit
  %tobool.not.i9 = icmp eq ptr %23, null
  br i1 %tobool.not.i9, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 -952
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %25)
  %cmp4.i = icmp eq i64 %25, 1
  br i1 %cmp4.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -952
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %.unpack.i = load i64, ptr %add.ptr.i.i, align 8
  %27 = add i64 %.unpack.i, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %27)
  %28 = icmp ult i64 %27, 3584
  br i1 %28, label %land.rhs.i.i, label %if.end6.i.ceph_vino_is_reserved.exit.i_crit_edge

if.end6.i.ceph_vino_is_reserved.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_vino_is_reserved.exit.i

land.rhs.i.i:                                     ; preds = %if.end6.i
  %call.i18.i = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool6.not.i.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool6.not.i.i, label %land.rhs.i.i.ceph_vino_is_reserved.exit.i_crit_edge, label %do.end.critedge.i.i, !prof !56

land.rhs.i.i.ceph_vino_is_reserved.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_vino_is_reserved.exit.i

do.end.critedge.i.i:                              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %.unpack.i) #8
  br label %ceph_vino_is_reserved.exit.i

ceph_vino_is_reserved.exit.i:                     ; preds = %do.end.critedge.i.i, %land.rhs.i.i.ceph_vino_is_reserved.exit.i_crit_edge, %if.end6.i.ceph_vino_is_reserved.exit.i_crit_edge
  %29 = add i64 %.unpack.i, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3840, i64 %29)
  %30 = icmp ult i64 %29, -3840
  br label %ceph_has_realms_with_quotas.exit

ceph_has_realms_with_quotas.exit:                 ; preds = %ceph_vino_is_reserved.exit.i, %i_size_read.exit.ceph_has_realms_with_quotas.exit_crit_edge
  %retval.0.i = phi i1 [ true, %i_size_read.exit.ceph_has_realms_with_quotas.exit_crit_edge ], [ %30, %ceph_vino_is_reserved.exit.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %newsize)
  %cmp.not = icmp slt i64 %11, %newsize
  %or.cond = select i1 %retval.0.i, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end3, label %ceph_has_realms_with_quotas.exit.cleanup_crit_edge

ceph_has_realms_with_quotas.exit.cleanup_crit_edge: ; preds = %ceph_has_realms_with_quotas.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %ceph_has_realms_with_quotas.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %newsize, %11
  %call4 = tail call fastcc zeroext i1 @check_quota_exceeded(ptr noundef %inode, i32 noundef 1, i64 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %ceph_has_realms_with_quotas.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %call4, %if.end3 ], [ false, %ceph_has_realms_with_quotas.exit.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_quota_is_max_bytes_approaching(ptr nocapture noundef readonly %inode, i64 noundef %newsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_reported_size = getelementptr i8, ptr %inode, i32 -240
  %0 = ptrtoint ptr %i_reported_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_reported_size, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mdsc.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %mdsc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsc.i.i, align 8
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i, align 8
  %quotarealms_count.i = getelementptr inbounds %struct.ceph_mds_client, ptr %7, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %quotarealms_count.i, i32 noundef 8) #8
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %quotarealms_count.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp.i = icmp sgt i64 %call.i.i, 0
  br i1 %cmp.i, label %entry.ceph_has_realms_with_quotas.exit_crit_edge, label %if.end.i

entry.ceph_has_realms_with_quotas.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_has_realms_with_quotas.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -952
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %13)
  %cmp4.i = icmp eq i64 %13, 1
  br i1 %cmp4.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack.i = load i64, ptr %add.ptr.i, align 8
  %15 = add i64 %.unpack.i, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %15)
  %16 = icmp ult i64 %15, 3584
  br i1 %16, label %land.rhs.i.i, label %if.end6.i.ceph_vino_is_reserved.exit.i_crit_edge

if.end6.i.ceph_vino_is_reserved.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_vino_is_reserved.exit.i

land.rhs.i.i:                                     ; preds = %if.end6.i
  %call.i18.i = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool6.not.i.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool6.not.i.i, label %land.rhs.i.i.ceph_vino_is_reserved.exit.i_crit_edge, label %do.end.critedge.i.i, !prof !56

land.rhs.i.i.ceph_vino_is_reserved.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_vino_is_reserved.exit.i

do.end.critedge.i.i:                              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %.unpack.i) #8
  br label %ceph_vino_is_reserved.exit.i

ceph_vino_is_reserved.exit.i:                     ; preds = %do.end.critedge.i.i, %land.rhs.i.i.ceph_vino_is_reserved.exit.i_crit_edge, %if.end6.i.ceph_vino_is_reserved.exit.i_crit_edge
  %17 = add i64 %.unpack.i, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3840, i64 %17)
  %18 = icmp ult i64 %17, -3840
  br label %ceph_has_realms_with_quotas.exit

ceph_has_realms_with_quotas.exit:                 ; preds = %ceph_vino_is_reserved.exit.i, %entry.ceph_has_realms_with_quotas.exit_crit_edge
  %retval.0.i = phi i1 [ true, %entry.ceph_has_realms_with_quotas.exit_crit_edge ], [ %18, %ceph_vino_is_reserved.exit.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %newsize)
  %cmp.not = icmp slt i64 %1, %newsize
  %or.cond = select i1 %retval.0.i, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end3, label %ceph_has_realms_with_quotas.exit.cleanup_crit_edge

ceph_has_realms_with_quotas.exit.cleanup_crit_edge: ; preds = %ceph_has_realms_with_quotas.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %ceph_has_realms_with_quotas.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %newsize, %1
  %call4 = tail call fastcc zeroext i1 @check_quota_exceeded(ptr noundef %inode, i32 noundef 2, i64 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %ceph_has_realms_with_quotas.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %call4, %if.end3 ], [ false, %ceph_has_realms_with_quotas.exit.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_quota_update_statfs(ptr nocapture noundef readonly %fsc, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 9
  %0 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsc1, align 8
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %snap_rwsem) #8
  %2 = ptrtoint ptr %fsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsc, align 8
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %call2 = tail call fastcc ptr @get_quota_realm(ptr noundef %1, ptr noundef %7, i1 noundef zeroext true)
  tail call void @up_read(ptr noundef %snap_rwsem) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inodes_with_caps_lock = getelementptr inbounds %struct.ceph_snap_realm, ptr %call2, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %inodes_with_caps_lock) #8
  %inode = getelementptr inbounds %struct.ceph_snap_realm, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inode, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock) #8
  br label %if.end39

cond.end:                                         ; preds = %if.end
  %call6 = tail call ptr @igrab(ptr noundef nonnull %9) #8
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock) #8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %cond.end.if.end39_crit_edge, label %if.then9

cond.end.if.end39_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then9:                                         ; preds = %cond.end
  %i_ceph_lock = getelementptr i8, ptr %call6, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #8
  %i_max_bytes = getelementptr i8, ptr %call6, i32 -688
  %10 = ptrtoint ptr %i_max_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_max_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool11.not = icmp eq i64 %11, 0
  br i1 %tobool11.not, label %if.end34, label %if.then12

if.then12:                                        ; preds = %if.then9
  %shr = lshr i64 %11, 22
  %i_rbytes = getelementptr i8, ptr %call6, i32 -736
  %12 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_rbytes, align 8
  %shr14 = lshr i64 %13, 22
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %11)
  %tobool15.not = icmp ult i64 %11, 4194304
  br i1 %tobool15.not, label %if.then16, label %if.then12.if.end21_crit_edge

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %shr18 = lshr i64 %11, 12
  %shr20 = lshr i64 %13, 12
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 9
  %14 = ptrtoint ptr %f_frsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %f_frsize, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then12.if.end21_crit_edge
  %total.0 = phi i64 [ %shr, %if.then12.if.end21_crit_edge ], [ %shr18, %if.then16 ]
  %used.0 = phi i64 [ %shr14, %if.then12.if.end21_crit_edge ], [ %shr20, %if.then16 ]
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %total.0, i64 %used.0)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %total.0)
  %tobool26.not = icmp eq i64 %total.0, 0
  br i1 %tobool26.not, label %if.then27, label %if.end21.if.then37_crit_edge

if.end21.if.then37_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %i_max_bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_max_bytes, align 8
  %18 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_rbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp30 = icmp ugt i64 %17, %19
  %20 = zext i1 %cmp30 to i64
  %f_frsize32 = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 9
  %21 = ptrtoint ptr %f_frsize32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %f_frsize32, align 4
  br label %if.then37

if.end34:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #8
  br label %if.end38

if.then37:                                        ; preds = %if.then27, %if.end21.if.then37_crit_edge
  %total.1.ph = phi i64 [ 1, %if.then27 ], [ %total.0, %if.end21.if.then37_crit_edge ]
  %free.0.ph = phi i64 [ %20, %if.then27 ], [ %15, %if.end21.if.then37_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %total.1.ph, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %23 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %free.0.ph, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %24 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %free.0.ph, ptr %f_bavail, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34
  %25 = xor i1 %tobool11.not, true
  tail call void @iput(ptr noundef nonnull %call6) #8
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %cond.end.if.end39_crit_edge, %cond.end.thread
  %is_updated.1.off0 = phi i1 [ %25, %if.end38 ], [ false, %cond.end.if.end39_crit_edge ], [ false, %cond.end.thread ]
  tail call void @ceph_put_snap_realm(ptr noundef %1, ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %is_updated.1.off0, %if.end39 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ceph_ino_compare(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %snap = getelementptr i8, ptr %inode, i32 -944
  %4 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %snap, align 8
  %snap3 = getelementptr inbounds %struct.ceph_vino, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %snap3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp4 = icmp eq i64 %5, %7
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_get_snap_realm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_quotarealm_inode(ptr noundef %mdsc, ptr noundef %sb, ptr nocapture noundef readonly %realm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %realm, align 8
  %quotarealms_inodes_mutex.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %quotarealms_inodes_mutex.i, i32 noundef 0) #8
  %quotarealms_inodes.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 12
  %2 = ptrtoint ptr %quotarealms_inodes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quotarealms_inodes.i, align 4
  %tobool.not58.i = icmp eq ptr %3, null
  br i1 %tobool.not58.i, label %entry.if.then10.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.then10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %8, %if.end6.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %node.059.i = phi ptr [ %node.1.i, %if.end6.i.while.body.i_crit_edge ], [ %quotarealms_inodes.i, %entry.while.body.i_crit_edge ]
  %ino1.i = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ino1.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ino1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %1)
  %cmp.i = icmp ugt i64 %6, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %1)
  %cmp3.i = icmp ult i64 %6, %1
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.lor.lhs.false.i_crit_edge

if.else.i.lor.lhs.false.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %node.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %7 = ptrtoint ptr %node.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node.1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end6.i.lor.lhs.false.i_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end6.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end6.i.lor.lhs.false.i_crit_edge, %if.else.i.lor.lhs.false.i_crit_edge
  %node.056.i = phi ptr [ %node.1.i, %if.end6.i.lor.lhs.false.i_crit_edge ], [ %node.059.i, %if.else.i.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %1)
  %cmp9.not.i = icmp eq i64 %6, %1
  br i1 %cmp9.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %entry.if.then10.i_crit_edge
  %node.057.i = phi ptr [ %node.056.i, %lor.lhs.false.i.if.then10.i_crit_edge ], [ %quotarealms_inodes.i, %entry.if.then10.i_crit_edge ]
  %qri.152.i = phi ptr [ %4, %lor.lhs.false.i.if.then10.i_crit_edge ], [ null, %entry.if.then10.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 128) #12
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %find_quotarealm_inode.exit, label %if.then12.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %ino13.i = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ino13.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %1, ptr %ino13.i, align 8
  %inode.i = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %inode.i, align 8
  %timeout.i = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %timeout.i, align 8
  %mutex.i = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @find_quotarealm_inode.__key) #8
  %13 = ptrtoint ptr %qri.152.i to i32
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call7.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i.i, align 8
  %17 = ptrtoint ptr %node.057.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %node.057.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %quotarealms_inodes.i) #8
  br label %if.end

find_quotarealm_inode.exit:                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  tail call void @mutex_unlock(ptr noundef %quotarealms_inodes_mutex.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.then12.i, %lor.lhs.false.i.if.end_crit_edge
  %qri.2.i.ph = phi ptr [ %4, %lor.lhs.false.i.if.end_crit_edge ], [ %call7.i.i, %if.then12.i ]
  tail call void @mutex_unlock(ptr noundef %quotarealms_inodes_mutex.i) #8
  %mutex = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %qri.2.i.ph, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %inode = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %qri.2.i.ph, i32 0, i32 4
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode, align 8
  %tobool1.not = icmp eq ptr %19, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @ceph_is_any_caps(ptr noundef nonnull %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then5

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode, align 8
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %timeout = getelementptr inbounds %struct.ceph_quotarealm_inode, ptr %qri.2.i.ph, i32 0, i32 2
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not = icmp eq i32 %23, 0
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %land.lhs.true10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true10:                                  ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then12, label %land.lhs.true10.if.end14_crit_edge

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true10.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inode, align 8
  %tobool16.not = icmp eq ptr %26, null
  br i1 %tobool16.not, label %if.else25, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call19 = tail call i32 @__ceph_do_getattr(ptr noundef nonnull %26, ptr noundef null, i32 noundef 1, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp20 = icmp sgt i32 %call19, -1
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inode, align 8
  br label %if.end28

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %29 = inttoptr i32 %call19 to ptr
  br label %if.end28

if.else25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %realm, align 8
  %call27 = tail call ptr @ceph_lookup_inode(ptr noundef %sb, i64 noundef %31) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.else, %if.then21
  %in.1 = phi ptr [ %call27, %if.else25 ], [ %28, %if.then21 ], [ %29, %if.else ]
  %cmp.i71 = icmp ugt ptr %in.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %do.body, label %if.else42

do.body:                                          ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_quotarealm_inode.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lookup_quotarealm_inode, %if.then35)) #8
          to label %do.end [label %if.then35], !srcloc !65

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %realm, align 8
  %34 = ptrtoint ptr %in.1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lookup_quotarealm_inode.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.13, i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 165, i64 noundef %33, i32 noundef %34) #8
  br label %do.end

do.end:                                           ; preds = %if.then35, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 6000
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %timeout, align 8
  br label %if.end45

if.else42:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %timeout, align 8
  %38 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %in.1, ptr %inode, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %do.end
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then12, %if.then5, %find_quotarealm_inode.exit
  %retval.0 = phi ptr [ %21, %if.then5 ], [ null, %if.then12 ], [ %in.1, %if.end45 ], [ null, %find_quotarealm_inode.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_is_any_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_do_getattr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_lookup_inode(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/quota.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ceph_handle_quota._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ceph_handle_quota._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ceph/quota.c", i32 67, i32 3}
!8 = !{ptr @ceph_handle_quota._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ceph_handle_quota._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ceph/super.h", i32 552, i32 2}
!12 = !{ptr @ceph_vino_is_reserved._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.ceph_vino_is_reserved, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @get_quota_realm._rs, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../fs/ceph/quota.c", i32 227, i32 3}
!18 = !{ptr @__func__.get_quota_realm, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @get_quota_realm._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @get_quota_realm._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ceph/quota.c", i32 164, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lookup_quotarealm_inode.__UNIQUE_ID_ddebug314, !23, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!27 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @find_quotarealm_inode.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../fs/ceph/quota.c", i32 109, i32 4}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ceph/quota.c", i32 113, i32 4}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @find_quotarealm_inode._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @find_quotarealm_inode._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @check_quota_exceeded._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../fs/ceph/quota.c", i32 333, i32 3}
!39 = !{ptr @__func__.check_quota_exceeded, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @check_quota_exceeded._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @check_quota_exceeded._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ceph/quota.c", i32 384, i32 4}
!45 = !{ptr @check_quota_exceeded._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @check_quota_exceeded._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 733903, i64 733964}
!58 = !{i64 736635}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 736920}
!61 = !{i64 2152567639}
!62 = !{i64 2152567481}
!63 = !{i64 2152567809}
!64 = !{i64 2150166032}
!65 = !{i64 2148791846, i64 2148791851, i64 2148791864, i64 2148791908, i64 2148791942, i64 2148791963}
